#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sstream>

#include "memcheck.hh"
#include "syscall-check.hh"
#include "flags.hh"
#include "config.hh"
#include "log.hh"

namespace memcheck {

  const Memcheck::RoundArray<uint8_t> Memcheck::fills = {{0x00, 0xff}};

  Memcheck::Memcheck():
    patcher(),
    vars(),
    stack_tracker(thd_map, vars),
    syscall_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(syscall_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); },
      taint_state,
      tracked_pages,
      syscall_args,
      *this
      ),
    call_tracker(thd_map, vars),
    ret_tracker(thd_map, vars),
    jcc_tracker(thd_map, vars),
    lock_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(lock_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      ),
    rtm_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(rtm_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      ),
    rdtsc_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(rdtsc_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      )
  {}
  

  void Memcheck::write_maps() const {
    if (g_conf.map_file) {
      tracee().cat_maps(g_conf.map_file).flush();
    }
  }

  Memcheck *Memcheck::cur_memcheck = nullptr;

  bool Memcheck::open(const char *file, char * const argv[]) {
    cur_memcheck = this;
  
    const pid_t child = ::fork();
    if (child == 0) {
      if (g_conf.preload) {
	setenv("LD_PRELOAD", MEMCHECK_LIBC, true);
	assert(getenv("LD_PRELOAD") != nullptr);
      }
    
      ::ptrace(PTRACE_TRACEME, 0, nullptr, nullptr);
      ::execvp(file, argv);
      return false;
    }

    ::signal(SIGINT, sigint_handler);

    dbi::Decoder::Init(); // TODO: remove

    dbi::Tracees tmp_tracees;
    tmp_tracees.emplace_back(child, file, false);
    patcher.open(std::move(tmp_tracees), [this] (auto&&... args) {
      return this->transformer(args...);
    });
    
    vars.open(tracee(), patcher, thd_map);
    
    patcher.start();

    maps_gen.open(child);
    tracked_pages.add_maps(maps_gen);
   
    patcher.signal(SIGSTOP, sigignore);
    patcher.signal(SIGCONT, sigignore);
    patcher.signal(SIGINT,  sigignore);
    patcher.signal(SIGTSTP, sigignore);
    patcher.sigaction(SIGSEGV, [this] (auto&&... args) { this->segfault_handler(args...); });

    get_writable_pages();
    save_state(tracee(), pre_state);
    init_taint(taint_state, true); // also taint shadow stack

    /* initialize thread map */
    patcher.for_each_tracee([&] (const dbi::Tracee& tracee) {
      thd_map.emplace(tracee.pid(), ThreadEntry{fills[thd_map.size()], FlagChecksum{}, 0, State{}});
    });

    // TEMP
    protect_map("[vdso]", PROT_READ);
    protect_map("[vvar]", PROT_NONE);

    return true;
  }


  void Memcheck::transformer(uint8_t *addr, dbi::Instruction& inst,
			     const dbi::Patcher::TransformerInfo& info) {
    (void) addr;

    bool match = false;

    stack_tracker.add(addr, inst, info, match);
    if (match) { return; }

    addr = syscall_tracker.add(addr, inst, info, match);
    if (match) { return; }

    if (CALL_TRACKER) {
      addr = call_tracker.add(addr, inst, info, match);
      if (match) { return; }
    }

    if (RET_TRACKER) {
      addr = ret_tracker.add(addr, inst, info, match);
      if (match) { return; }
    }
  
    if (JCC_TRACKER) {
      addr = jcc_tracker.add(addr, inst, info, match);
      if (match) { return; }
    }

    if (LOCK_TRACKER) {
      addr = lock_tracker.add(addr, inst, info, match);
      if (match) { return; }
    }

    if (RDTSC_TRACKER) {
      addr = rdtsc_tracker.add(addr, inst, info, match);
      if (match) { return; }
    }

    // DEBUG
    if (inst.xed_iclass() == XED_ICLASS_RDTSC) {
      auto bkpt = dbi::Instruction::int3(addr);
      addr = info.writer(bkpt);
      info.rb(bkpt.pc(), [] (auto& tracee, auto addr) {
	*dbi::g_conf.log << "RDTSC @ " << (void *) addr << "\n";
      });
      addr = info.writer(inst);
      return;
    }
  
    addr = info.writer(inst);
  }

  void Memcheck::run() {
    start_round();
    patcher.run();
  }

  void Memcheck::save_state(dbi::Tracee& tracee, State& state) {
    state.save(tracee, tmp_writable_pages.begin(), tmp_writable_pages.end());
  }

  void *Memcheck::stack_begin() {
    const auto stack_end = dbi::pagealign_up(tracee().get_sp());
    auto stack_begin = stack_end;

    while (true) {
      stack_begin = dbi::pageidx(stack_begin, -1);
      const auto it = tracked_pages.find(stack_begin);
      if (it == tracked_pages.end() || !(it->second.orig_prot() & PROT_WRITE)) {
	break;
      }
    }

    stack_begin = dbi::pageidx(stack_begin, 1);
    return stack_begin;
  }

  /* Rewind to pre_state, flipping bits in taint_state */
  void Memcheck::set_state_with_taint(dbi::Tracee& tracee, State& state, const State& taint) {
    state.xor_subset_inplace(taint);
    state.restore(tracee);
  }

  template <typename InputIt>
  void Memcheck::update_taint_state(InputIt begin, InputIt end, State& taint_state) {
    assert(std::distance(begin, end) >= 2);

    /* taint stack */
    init_taint(taint_state, false); // TODO: Could be optimized.

    util::for_each_pair(begin, end, [&] (const auto& lhs, const auto& rhs) {
      const State& l_state = lhs.second.state;
      const State& r_state = rhs.second.state;
      assert(l_state.similar(r_state));
      taint_state.or_superset_inplace(l_state ^ r_state); // because the taint mask is a superset
    });
  }

  template <class SequencePoint>
  void Memcheck::check_round(SequencePoint& seq_pt) {
    // TODO: should return bool.

    /* get taint mask */
    update_taint_state(thd_map.begin(), thd_map.end(), taint_state);

    const auto bkpt_cksums =
      util::make_transform_container<const FlagChecksum &>
      (thd_map, [] (const auto& pair) -> const FlagChecksum& {
	return pair.second.bkpt_cksum;
      });
    const auto incore_cksums =
      util::make_transform_container<uint32_t>(thd_map, [] (const auto& pair) -> uint32_t {
	return pair.second.incore_cksum;
      });
    
    if (JCC_TRACKER_BKPT) {
      util::for_each_pair(thd_map.begin(), thd_map.end(), [this] (const auto& thd_l,
								  const auto& thd_r) {
	const auto& l = thd_l.second.bkpt_cksum;
	const auto& r = thd_r.second.bkpt_cksum;
	l.diff(r, [this] (const auto addr, const auto& flags1, const auto& flags2,
			  const auto& data1, const auto& data2) {
	  *dbi::g_conf.log << "JCC MISMATCH @ " << (void *) addr << ", flags ";
	  for (auto flag : FlagSet(flags1)) {
	    *dbi::g_conf.log << flag << " ";
	  }
	  *dbi::g_conf.log << "vs ";
	  for (auto flag : FlagSet(flags2)) {
	    *dbi::g_conf.log << flag << " ";
	  }
	  *dbi::g_conf.log << "\n";
	  const auto loc = this->orig_loc(addr);
	  *dbi::g_conf.log << loc.first << " " << loc.second << "\n";
	  *dbi::g_conf.log << "orig: "
			   << dbi::Instruction((uint8_t *) loc.first,
					       this->tracee())
			   << "\n";
	  *dbi::g_conf.log << "new:  "
			   << dbi::Instruction((uint8_t *) addr + 1,
					       this->tracee())
			   << "\n";
	  *dbi::g_conf.log << "data: " << data1 << " vs " << data2 << "\n";
	  if (ABORT_ON_TAINT) {
	    dbi::g_conf.abort(this->tracee());
	  }
	});
      });

      check_checksums(bkpt_cksums, "BKPT");
    }

    if (JCC_TRACKER_INCORE) {
      check_checksums(incore_cksums, "INCORE");
    }

    if (JCC_TRACKER_INCORE && JCC_TRACKER_BKPT) {
      /* ensure cksums agree */
      if (!std::equal(bkpt_cksums.begin(), bkpt_cksums.end(), incore_cksums.begin(),
		      incore_cksums.end(),
		      [] (const auto& bkpt_cksum, auto incore_cksum) {
			return bkpt_cksum.cksum() == incore_cksum;
		      }))
	{
	  *dbi::g_conf.log << "JCC incore and bkpt checksums disagree\n";
	  dbi::g_conf.abort(tracee());
	}
    }

    seq_pt.check(tracee());
  }

  template <typename InputIt>
  void Memcheck::check_checksums(InputIt begin, InputIt end, const char *desc) {
    if (!util::all_equal(begin, end)) {
      warning() << Error::JCC_CKSUMS_DIFFER;
      if (desc) {
	g_conf.log() << " (" << desc << ")";
      }
      g_conf.log() << "\n";
      if (ABORT_ON_TAINT) {
	g_conf.abort(tracee());
      }
    }
  }

  Memcheck::Loc Memcheck::orig_loc(uint8_t *addr) {
    const auto orig_addr = patcher.orig_block_addr(addr);
    std::vector<Map> maps;
    maps_gen.get_maps(std::back_inserter(maps));
    for (const auto& map : maps) {
      if (map.has_addr(orig_addr)) {
	return {orig_addr, map.desc};
      }
    }
    abort();
  }

#if 0
  void Memcheck::start_subround() {
    if (!CHANGE_PRE_STATE) {
      pre_state.restore(tracee());
    } else {
      set_state_with_taint(pre_state, taint_state);
    }

    cksum.clear();
    set_cur_fill(); // MUST come before used by vars.init_for_subround()
    vars.init_for_subround();
  }
#endif

#if 0
  void Memcheck::stop_subround() {
    save_state(cur_post_state());

    if (JCC_TRACKER_BKPT) {
      cur_bkpt_cksum() = cksum;
    }
    if (JCC_TRACKER_INCORE) {
      cur_incore_cksum() = vars.jcc_cksum_val();
    }
  }
#endif

  void Memcheck::fork() {
    const auto ntracees = patcher.ntracees();
    assert(ntracees == 1);
#ifndef NASSERT
    const auto rax = tracee().get_gpregs().rax;
#endif
    dbi::Status status;
    dbi::Tracee forked_tracee;
    const auto pid = tracee().fork(status, forked_tracee);
    if (pid < 0) {
      internal_error() << "failed to fork process\n";
      g_conf.abort(tracee());
    }
    patcher.add_tracee(std::move(forked_tracee));

    /* update fill map */
    thd_map.emplace(pid, ThreadEntry{fills[1], FlagChecksum{}, 0, State{}});

    assert(patcher.ntracees() == 2);
    assert(thd_map.size() == 2);
    patcher.for_each_tracee([rax] (auto& tracee) {
      assert(tracee.get_gpregs().rax == rax);
    });
  }

  void Memcheck::kill() {
    dbi::Tracee& tracee = tracee2();
    thd_map.erase(tracee.pid());
    tracee.kill();
  }
  
  void Memcheck::start_round() {
    // 1: Unlock pages.
    dbi::for_each_page(stack_begin(), dbi::pageidx(dbi::pagealign_up(tracee().get_sp()), -16),
		  [this] (const auto pageaddr) {
		    const auto it = tracked_pages.find(pageaddr);
		    if (tracked_pages.tier(*it) == PageInfo::Tier::RDWR_UNLOCKED) {
		      tracked_pages.lock(*it, this->tracee(), PROT_WRITE);
		    }
		  });
    
    // 2: Get writable pages.
    get_writable_pages();

    // 3: Save state.
    save_state(tracee(), pre_state);

    // 4: Update taint state.
    // TODO: OPTIM
    std::unordered_set<void *> orig_writable_pages;
    for (const auto& pair : tracked_pages) {
      switch (tracked_pages.tier(pair)) {
      case PageInfo::Tier::RDWR_LOCKED:
      case PageInfo::Tier::RDWR_UNLOCKED:
	orig_writable_pages.insert(pair.first);
	break;
      }
    }
    taint_state.snapshot().update(orig_writable_pages, 0);
  
    // 5: Fork.
    fork();

    // 6: Change the duplicate thread.
    if (CHANGE_PRE_STATE) {
      assert(patcher.ntracees() == 2);
      set_state_with_taint(tracee2(), pre_state, taint_state);
    }
    
    // 7: Clear checksums
    for (auto& pair : thd_map) {
      ThreadEntry& entry = pair.second;
      entry.bkpt_cksum.clear();
    }
  
    // 8: Set variables in all threads
    patcher.for_each_tracee([&] (dbi::Tracee& tracee) {
      vars.init_for_subround(tracee);
    });
    
  // start_subround();
  
    assert_taint_zero();
    patcher.for_each_tracee([&] (auto& tracee) {
      assert(vars.jcc_cksum_val(tracee) == 0U);
    });
  }

  void Memcheck::stop_round() {
    /* save state of each thread */
    patcher.for_each_tracee([&] (dbi::Tracee& tracee) {
      save_state(tracee, thd_map.at(tracee.pid()).state);
    });

    /* save incore breakpoints */
    patcher.for_each_tracee([&] (dbi::Tracee& tracee) {
      thd_map.at(tracee.pid()).incore_cksum = vars.jcc_cksum_val(tracee);
    });
  }

  template <typename SequencePoint>
  void Memcheck::sequence_point_handler_pre(SequencePoint& seq_pt) {
    stop_round();
    check_round(seq_pt);
    kill(); // kill 2nd thread
  }

  void Memcheck::sequence_point_handler_post() {
    start_round();
  }


  void Memcheck::init_taint(State& taint_state, bool taint_shadow_stack) {
    /* taint memory below stack */
    std::vector<void *> orig_writable_pages;
    for (auto& page : tracked_pages) {
      switch (tracked_pages.tier(page)) {
      case PageInfo::Tier::RDWR_LOCKED:
      case PageInfo::Tier::RDWR_UNLOCKED:
	orig_writable_pages.push_back(page.first);
	break;
      }
    }
    taint_state.save(orig_writable_pages.begin(), orig_writable_pages.end(), 0);

    if (TAINT_STACK) {
      const auto padding = taint_shadow_stack ? 0 : SHADOW_STACK_SIZE;
      taint_state.fill(stack_begin(), static_cast<char *>(tracee().get_sp()) - padding, -1);
    }
  }

  void Memcheck::sigint_handler(int signum) {
    cur_memcheck->write_maps();
    std::exit(0);
  }

  void Memcheck::protect_map(const std::string& name, int prot) {
    std::vector<Map> maps;
    maps_gen.get_maps(std::back_inserter(maps));
    for (const auto& map : maps) {
      if (map.desc == name) {
	tracee().syscall(dbi::Syscall::MPROTECT, (uintptr_t) map.begin, (uintptr_t) map.size(),
			 prot);
	return;
      }
    }
    abort();
  }

  void Memcheck::segfault_handler(int signal, const siginfo_t& siginfo) {
    /* check status of page at which fault occurred */
    void *faultaddr = siginfo.si_addr;
    void *pageaddr = dbi::pagealign(faultaddr);

    auto page_it = tracked_pages.find(pageaddr);
    if (page_it == tracked_pages.end()) {
      // TODO: Pass on to patcher
      log_signal() << ::strsignal(signal) << "\n";
      // std::exit(139);
      const auto loc = orig_loc(tracee().get_pc());
      g_conf.log() << "orig loc: " << loc.first << " " << loc.second << "\n";
      g_conf.log() << "faultaddr = " << faultaddr << "\n";
      g_conf.abort(tracee());
    }

    using Tier = PageInfo::Tier;
    switch (tracked_pages.tier(*page_it)) {
    case Tier::SHARED:
      {
	const auto loc = orig_loc(tracee().get_pc());
	*dbi::g_conf.log << loc.first << " " << loc.second << "\n";
	*dbi::g_conf.log << "orig inst: " << dbi::Instruction((uint8_t *) loc.first, tracee())
			 << "\n";
	*dbi::g_conf.log << "pool inst: " << dbi::Instruction(tracee().get_pc(), tracee()) << "\n";
	*dbi::g_conf.log << "fault addr: " << faultaddr << "\n";

	// TODO: properly specify permissions
	SharedMemSeqPt seq_pt(*this, taint_state);
	sequence_point_handler_pre(seq_pt);
      }
      break;

    case Tier::RDONLY:
    case Tier::RDWR_UNLOCKED:
      dbi::g_conf.abort(tracee());
      break;

    case Tier::RDWR_LOCKED:
      {
	/* 1. Unlock
	 * 2. Add to pre_state.
	 */
	tracked_pages.unlock(*page_it, tracee());
	assert(!pre_state.snapshot().contains(pageaddr));
	pre_state.snapshot().add(pageaddr, tracee());
	const auto& taint_page = taint_state.snapshot().at(pageaddr);
	auto& pre_state_page = pre_state.snapshot().at(pageaddr);
	pre_state_page ^= taint_page;
	pre_state_page.restore(pageaddr, tracee());
      }
      break;
    
    default:
      assert(false);
      break;
    }
  
  }

  void Memcheck::get_writable_pages() {
    tmp_writable_pages.clear();
    for (const auto& tracked_page : tracked_pages) {
      switch (tracked_pages.tier(tracked_page)) {
      case PageInfo::Tier::RDWR_UNLOCKED:
      case PageInfo::Tier::RDWR_LOCKED:
	tmp_writable_pages.emplace(tracked_page.first);
	break;
      }
    }
  }

  void Memcheck::lock_pages() {
    for (auto& page : tracked_pages) {
      if (tracked_pages.tier(page) == PageInfo::Tier::RDWR_UNLOCKED) {
	tracked_pages.lock(page, tracee(), PROT_WRITE);
      }
    }
  }

  void Memcheck::unlock_pages() {
    for (auto& page : tracked_pages) {
      if (tracked_pages.tier(page) == PageInfo::Tier::RDWR_LOCKED) {
	tracked_pages.unlock(page, tracee());
      }
    }
  }

}

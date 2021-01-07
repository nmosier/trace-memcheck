#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sstream>
#include <set>

#include "memcheck.hh"
#include "syscall-check.hh"
#include "flags.hh"
#include "config.hh"
#include "log.hh"
#include "shared-util.hh"

namespace memcheck {

  /*** Static Variables ***/
  Memcheck *Memcheck::cur_memcheck = nullptr;
  const Memcheck::RoundArray<uint8_t> Memcheck::fills = {{0x00, 0xff}};

  /*** Memcheck Initializers ***/
  Memcheck::Memcheck():
    patcher(),
    vars(),
    stack_tracker(thd_map, vars),
    syscall_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(tracee, syscall_tracker);
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
      this->sequence_point_handler_pre(tracee, lock_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      ),
    rtm_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(tracee, rtm_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      ),
    rdtsc_tracker([this] (auto& tracee, auto addr) {
      this->sequence_point_handler_pre(tracee, rdtsc_tracker);
    },
      [this] (auto& tracee, auto addr) { this->start_round(); }
      )
  {}

  bool Memcheck::open(const char *file, char * const argv[]) {
    /* Target-Independent Initialization */
    cur_memcheck = this;
    ::signal(SIGINT, sigint_handler);
    dbi::Decoder::Init(); // TODO: remove
    
    dbi::Tracees tmp_tracees;
    tmp_tracees.emplace_back(dbi::Tracee(file, argv, [=] () {
      if (g_conf.preload) {
	::setenv("LD_PRELOAD", MEMCHECK_LIBC, true);
	assert(::getenv("LD_PRELOAD") != nullptr);
      }
    }), dbi::TraceeInfo(false));

    patcher.open(std::move(tmp_tracees), [this] (auto&&... args) {
      return this->transformer(args...);
    });
    
    vars.open(tracee(), patcher, thd_map);
    exec_mem.open(tracee());
    
    patcher.start();

    maps_gen.open(tracee().pid());
    tracked_pages.open(syscaller());
    tracked_pages.add_maps(maps_gen);

    syscall_tracker.init(syscaller());
    
    patcher.signal(SIGSTOP, sigignore);
    patcher.signal(SIGCONT, sigignore);
    patcher.signal(SIGINT,  sigignore);
    patcher.signal(SIGTSTP, sigignore);
    patcher.signal(SIGCHLD, sigignore);
    patcher.sigaction(SIGSEGV, [this] (auto&&... args) { this->segfault_handler(args...); });

    get_writable_pages();

    save_pre_state();
    init_taint(taint_state, true); // also taint shadow stack

    /* initialize thread map */
    patcher.for_each_tracee_good([&] (const dbi::Tracee& tracee) {
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

  void Memcheck::save_pre_state() {
    save_state(tracee(), pre_state);
#if 0
    if (pre_tracee) {
      pre_tracee.kill();
    }
    dbi::Status status;
    syscaller().fork(tracee(), status, pre_tracee);
#endif
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
    assert(taint_state.gpregs().rip() == 0);

    /* taint stack */
    init_taint(taint_state, false); // TODO: Could be optimized.

    util::for_each_pair(begin, end, [&] (const auto& lhs, const auto& rhs) {
      const State& l_state = lhs.second.state;
      const State& r_state = rhs.second.state;
      assert(l_state.similar(r_state));
      taint_state.or_superset_inplace(l_state ^ r_state); // because the taint mask is a superset
    });

    assert(taint_state.gpregs().rip() == 0);
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
    std::abort();
  }

  void Memcheck::fork() {
    const auto ntracees = patcher.ntracees_good(); (void) ntracees;
    assert(ntracees == 1);
    dbi::Status status;
    dbi::Tracee forked_tracee;
    const auto pid = syscaller().fork(tracee(), status, forked_tracee);
    if (pid < 0) {
      internal_error() << "failed to fork process\n";
      g_conf.abort(tracee());
    }
    patcher.add_tracee(std::move(forked_tracee));

    /* update fill map */
    thd_map.emplace(pid, ThreadEntry{fills[1], FlagChecksum{}, 0, State{}});

    assert(patcher.ntracees_good() == 2);
    assert(thd_map.size() == 2);

#if 0
    g_conf.log() << "[" << pid << "] forked\n";
#endif
  }
  
  void Memcheck::kill() {
    dbi::Tracee& tracee2 = this->tracee2();
    const auto pid2 = tracee2.pid(); (void) pid2;
    thd_map.erase(tracee2.pid());
    tracee2.kill();
    
    // patcher.unsuspend(tracee2);
#if 1
    dbi::Status status;
    const pid_t res = ::waitpid(pid2, &status.status(), 0);
    assert(res == pid2); (void) res;
    assert(status.signaled() && status.termsig() == SIGKILL);

    tracee().cont();
    tracee().wait(status);
    assert(status.stopped());
    assert(status.stopsig() == SIGCHLD);

    const auto res2 = syscaller().syscall<pid_t>(tracee(), dbi::Syscall::WAIT4, pid2, nullptr, 0, nullptr);
    assert(res2 == pid2); (void) res2;
#endif
  }
  
  void Memcheck::start_round() {
    /* assertions */
    assert(patcher.ntracees_good() == 1);
    assert(thd_map.size() == 1);

    // 0: Unsuspend
    patcher.get_tracees().front().info.suspended(false);
    
    suspended_count = 0;
    
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

    // 3: Save state/tracee.
    save_pre_state();

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

    assert(taint_state.gpregs().rip() == 0);

    // 6: Change the duplicate thread.
    if (CHANGE_PRE_STATE) {
      assert(patcher.ntracees_good() == 2);
      set_state_with_taint(tracee2(), pre_state, taint_state);
    }    

#ifndef NDEBUG
    {
      const auto orig_inst = dbi::Instruction(tracee().get_pc(), tracee());
      const auto forked_inst = dbi::Instruction(tracee2().get_pc(), tracee2());
      assert(orig_inst.xed_iform() == forked_inst.xed_iform());
    }
#endif

    // 7: Clear checksums
    for (auto& pair : thd_map) {
      ThreadEntry& entry = pair.second;
      entry.bkpt_cksum.clear();
    }
  
    // 8: Set variables in all threads
    patcher.for_each_tracee_good([&] (dbi::Tracee& tracee) {
      vars.init_for_subround(tracee);
    });
    
    // start_subround();
    
    assert_taint_zero();
#ifndef NDEBUG
    patcher.for_each_tracee_good([&] (auto& tracee) {
      assert(vars.jcc_cksum_val(tracee) == 0U);
    });
#endif
  }

  void Memcheck::stop_round() {
    /* save state of each thread */
    patcher.for_each_tracee_good([&] (dbi::Tracee& tracee) {
      save_state(tracee, thd_map.at(tracee.pid()).state);
    });

    /* save incore breakpoints */
    patcher.for_each_tracee_good([&] (dbi::Tracee& tracee) {
      thd_map.at(tracee.pid()).incore_cksum = vars.jcc_cksum_val(tracee);
    });
  }

  template <typename SequencePoint>
  bool Memcheck::sequence_point_handler_pre(dbi::Tracee& tracee, SequencePoint& seq_pt) {
    g_conf.log() << "seq_pt " << seq_pt.desc() << "\n";
    
    save_state(tracee, thd_map.at(tracee.pid()).state);

    if (suspended_count < THREADS - 1) {
      /* suspend thread */
      patcher.suspend(tracee);
      ++suspended_count;
#if 0
      g_conf.log() << "[" << tracee.pid() << "] suspended\n";
#endif
      return false;
    }

#ifndef NDEBUG
    util::for_each_pair(patcher.tracees_begin(), patcher.tracees_end(), [&] (auto& l, auto& r) {
      if (l.tracee && r.tracee) {
	std::clog << (void *) l.tracee.get_pc() << " " << (void *) r.tracee.get_pc() << "\n";
	g_conf.assert_(l.tracee.get_pc() == r.tracee.get_pc(), tracee);
      }
    });
#endif

    stop_round();
    
    check_round(seq_pt);
    kill(); // kill 2nd thread
    patcher.unsuspend(this->tracee());

    return true;
  }

  void Memcheck::sequence_point_handler_post() {
    start_round();
  }


  void Memcheck::init_taint(State& taint_state, bool taint_shadow_stack) {
    /* taint memory below stack */
#if 0
    const auto npages = tracked_pages.size();
    std::vector<void *> orig_writable_pages;
    orig_writable_pages.reserve(npages);
    for (auto& page : tracked_pages) {
      switch (tracked_pages.tier(page)) {
      case PageInfo::Tier::RDWR_LOCKED:
      case PageInfo::Tier::RDWR_UNLOCKED:
	orig_writable_pages.push_back(page.first);
	break;
      }
    }
    taint_state.save(orig_writable_pages.begin(), orig_writable_pages.end(), 0);
#else
    taint_state.save(tmp_writable_pages.begin(), tmp_writable_pages.end(), 0);
#endif

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
	const auto res = syscall<int>(tracee(), dbi::Syscall::MPROTECT, map.begin, map.size(), prot);
	assert(res == 0); (void) res;
	return;
      }
    }
    abort();
  }

  void Memcheck::segfault_handler(dbi::Tracee& tracee, int signal, const siginfo_t& siginfo) {
    /* check status of page at which fault occurred */
    void *faultaddr = siginfo.si_addr;
    void *pageaddr = dbi::pagealign(faultaddr);

    auto page_it = tracked_pages.find(pageaddr);
    if (page_it == tracked_pages.end()) {
      // TODO: Pass on to patcher
      log_signal() << ::strsignal(signal) << "\n";
      // std::exit(139);
      const auto loc = orig_loc(tracee.get_pc());
      g_conf.log() << "orig loc: " << loc.first << " " << loc.second << "\n";
      g_conf.log() << "faultaddr = " << faultaddr << "\n";
      g_conf.abort(tracee);
    }

    using Tier = PageInfo::Tier;
    switch (tracked_pages.tier(*page_it)) {
    case Tier::SHARED:
      {
#ifndef NDEBUG
	const auto loc = orig_loc(tracee.get_pc());
	*dbi::g_conf.log << loc.first << " " << loc.second << "\n";
	*dbi::g_conf.log << "orig inst: " << dbi::Instruction((uint8_t *) loc.first, tracee)
			 << "\n";
	*dbi::g_conf.log << "pool inst: " << dbi::Instruction(tracee.get_pc(), tracee) << "\n";
	*dbi::g_conf.log << "fault addr: " << faultaddr << "\n";
#endif
	
	// TODO: properly specify permissions
	SharedMemSeqPt seq_pt(*this, taint_state, syscaller());
	if (sequence_point_handler_pre(tracee, seq_pt)) {
	  start_round();
	}
      }
      break;

    case Tier::RDONLY:
    case Tier::RDWR_UNLOCKED:
      dbi::g_conf.abort(tracee);
      break;

    case Tier::RDWR_LOCKED:
      {
	/* 1. Unlock
	 * 2. Add to pre_state.
	 */
	tracked_pages.unlock(*page_it, tracee);
	assert(!pre_state.snapshot().contains(pageaddr));
	pre_state.snapshot().add(pageaddr, tracee);
	const auto& taint_page = taint_state.snapshot().at(pageaddr);
	auto& pre_state_page = pre_state.snapshot().at(pageaddr);
	pre_state_page ^= taint_page;
	pre_state_page.restore(pageaddr, tracee);
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

    tmp_writable_pages.erase(vars.mem.base<void *>());
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

  /*** Debugging Functions ***/

  void Memcheck::write_maps() const {
    if (g_conf.map_file) {
      tracee().cat_maps(g_conf.map_file).flush();
    }
  }
  
  
}

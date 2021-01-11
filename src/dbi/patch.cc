#include <unordered_set>
#include <map>
#include <sys/wait.h>
#include <fstream>
#include <elf.h>
#include <cstring>
#include "patch.hh"
#include "config.hh"
#include "status.hh"

namespace dbi {

  void Patcher::open(Tracees&& tmp_tracees, const Transformer& transformer_) {
    tracees = std::move(tmp_tracees);
    block_pool.open(tracee(), block_pool_size);
    ptr_pool.open(tracees, ptr_pool_size);
    rsb.open(tracee(), tmp_size);
    tmp_mem.open(tracee(), tmp_size);
    transformer = transformer_;
  }
  
  bool Patcher::patch(uint8_t *start_pc) {
    const auto lb = [&] (uint8_t *addr) -> uint8_t * {
      const auto res = lookup_block_patch(addr, true);
      if (res == nullptr) { return nullptr; }
      return res->pool_addr();
    };

    const auto pb = [&] (uint8_t *addr) -> uint8_t * {
      const auto it = block_map.find(addr);
      if (it == block_map.end()) {
	return nullptr;
      } else {
	return it->second->pool_addr();
      }
    };

    const RegisterBkpt rb = [&] (uint8_t *addr, const BkptCallback& callback) {
      const auto res = bkpt_map.emplace(addr, callback);
      assert(res.second); (void) res;
    };

    const InsertBlock ib = [&] (uint8_t *addr, Block *block) {
      const auto it = block_map.emplace(addr, block);
      assert(it.second); (void) it;
    };

    const Block::Transformer block_transformer =
      [&] (uint8_t *addr, Instruction& inst, const Writer& writer) {
	return transformer(addr, inst, TransformerInfo {writer, rb});
      };

    /* create block */
    return Block::Create(start_pc, tracees, block_pool, ptr_pool, tmp_mem, lb, pb, rb, rsb, ib,
			 block_transformer,
			 [this] (auto& tracee, auto addr) { this->pre_syscall_handler(); },
			 [this] (auto& tracee, auto addr) { this->post_syscall_handler(); }
			 );
  }

  void Patcher::handle_bkpt(Tracee& tracee, uint8_t *bkpt_addr) {
    const BkptCallback& callback = lookup_bkpt(bkpt_addr);
    callback(tracee, bkpt_addr);
  }

  const BkptCallback& Patcher::lookup_bkpt(uint8_t *addr) const {
    return bkpt_map.at(addr);
  }

  Block *Patcher::lookup_block_patch(uint8_t *addr, bool can_fail) {
    assert(!is_pool_addr(addr));
  
    BlockMap::iterator it;
    while (true) {
      it = block_map.find(addr);
      if (it != block_map.end()) {
	break;
      }
      if (!patch(addr)) {
	if (can_fail) {
	  return nullptr;
	} else {
	  *g_conf.log << "failed to translate block\n";
	  abort();
	}
      }
    }
  
    return it->second;
  }

  constexpr bool USE_BKPT = true;

  void Patcher::start() {
    assert(tracees.size() == 1);
    assert(tracee().stopped());

    /* trace children */
    // TODO: also track clones, vforks, etc.
    tracee().setoptions(PTRACE_O_EXITKILL | PTRACE_O_TRACEFORK);
    
    if (USE_BKPT) {
      
      /* get entry point */
      std::ifstream ifs;
      ifs.open(tracee().filename());
      assert(ifs);
  

      Elf64_Ehdr ehdr;
      if (!ifs.read(reinterpret_cast<char *>(&ehdr), sizeof(ehdr))) {
	abort();
      }

      // assert(strcmp(reinterpret_cast<const char *>(ehdr.e_ident), ELFMAG) == 0);
      assert(ehdr.e_type == ET_EXEC);

      const auto entry = ehdr.e_entry;

      // TODO: if under ASLR, need to translate into runtime address.

      entry_addr = reinterpret_cast<uint8_t *>(entry);
      tracee().read(&old_entry_byte, 1, entry_addr);
      static const uint8_t bkpt = 0xcc;
      tracee().write(&bkpt, 1, entry_addr);

      tracee().cont();
      tracee().wait();
      const Status status = tracee().status();
      assert(status.stopped_trap()); (void) status;
      assert(tracee().get_pc() == entry_addr + 1);
      tracee().write(&old_entry_byte, 1, entry_addr);
      tracee().set_pc(entry_addr);
      start_block();

    } else {

      start_block();
      
    }
    
  }

  void Patcher::start_block(uint8_t *root) {
    const bool patched = patch(root);
    assert(patched); (void) patched;
    Block& block = *lookup_block_patch(root, false); // cannot fail
    block.jump_to(tracee());
  }

  void Patcher::start_block() {
    start_block(tracee().get_pc());
  }

  bool Patcher::is_pool_addr(uint8_t *addr) const {
    return addr >= block_pool.begin() && addr < block_pool.end();
  }

  void Patcher::sigaction(int signum, const sigaction_t& handler) {
    sighandlers[signum] = handler;
  }

  void Patcher::signal(int signum, const sighandler_t& handler) {
    sigaction(signum, [handler] (dbi::Tracee& tracee, int signum, auto&&... args) {
      handler(tracee, signum);
    });
  }

  void Patcher::run(void) {
    // assert(tracees.size() == 1);
    
    while (tracees.size() > 0) {
      /* INVARIANT: All Tracees are stopped. */
      assert(std::all_of(tracees.begin(), tracees.end(), [] (const auto& tracee_pair) {
	return tracee_pair.tracee.stopped();
      }));
      
      /* Resume all tracees */
      if (g_conf.singlestep) {
	for_each_tracee_pair([] (auto& tracee_pair) {
	  if (!tracee_pair.info.suspended()) {
	    tracee_pair.tracee.singlestep();
	  }
	});
      } else {
	for_each_tracee_pair([] (auto& tracee_pair) {
	  if (!tracee_pair.info.suspended()) {
	    tracee_pair.tracee.cont();
	  }
	});
      }

      /* Wait on all tracees */
      {
	auto tracee_it = tracees.begin();
	for (; tracee_it != tracees.end(); ++tracee_it) {
	  if (!tracee_it->info.suspended()) {
	    tracee_it->tracee.wait();
	  }
	}
      }
      
      /* Handle stops for all tracees */
      /* NOTE: This is tricky, since handle_stop() can append to the tracees list and
       *       exited tracees must be removed from the tracee list.
       */
      auto todo = tracees.size();
      auto tracee_it = tracees.begin();
      while (todo > 0) {
	enum class State {NONE, SUSPENDED, KILLED, EXITED} state;
	if (!tracee_it->tracee.good()) {
	  state = State::KILLED;
	} else if (tracee_it->info.suspended()) {
	  state = State::SUSPENDED;
	} else {
	  const bool exited = handle_stop(*tracee_it);
	  if (tracee_it->tracee.good()) {
	    if (exited) {
	      state = State::EXITED;
	    } else {
	      state = State::NONE;
	    }
	  } else {
	    state = State::KILLED;
	  }
	}

	if (state == State::EXITED || state == State::KILLED) {
	  const auto pid = tracee_it->tracee.pid();
	  if (state == State::EXITED) {
	    *g_conf.log << "[" << pid << "] exit status: "
			<< tracee_it->tracee.status().exitstatus() << "\n";
	  } else {
#if 0
	    *g_conf.log << "[" << pid << "] killed\n";
#endif
	  }
	  tracee_it = tracees.erase(tracee_it);
	} else {
	  ++tracee_it;
	}

	--todo;
      }

      /* remove exited & killed processes */
      for (auto it = tracees.begin(); it != tracees.end(); ) {
	if (!it->tracee.good()) {
	  it = tracees.erase(it);
#if 0
	  *g_conf.log << "[" << it->tracee.pid() << "] killed\n";
#endif
	} else if (!it->info.suspended() && it->tracee.status().exited()) {
	  *g_conf.log << "[ " << it->tracee.pid() << "] exit status: "
		      << it->tracee.status().exitstatus() << "\n";
	  it = tracees.erase(it);
	} else {
	  ++it;
	}
      }
      
    }

  }

  bool Patcher::handle_stop(TraceePair& tracee_pair) {
    Tracee& tracee = tracee_pair.tracee;
    const auto status = tracee.status();
    if (g_conf.execution_trace && !g_conf.singlestep) {
      if (status.stopped()) {
	print_ss(tracee);
      }
    }

    if (status.stopped()) {
      const auto stopsig = status.stopsig();

      if (stopsig == SIGTRAP) {
	handle_ptrace_event(tracee_pair, status.ptrace_event());
      } else {
	handle_signal(tracee, stopsig);
      }
    } else {
      if (!status.exited()) {
	if (status.signaled()) {
	  const auto termsig = status.termsig();
	  std::cerr << "Terminated: " << strsignal(termsig) << ": " << termsig << "\n";
	} else {
	  std::cerr << "aborted due to unknown signal\n";
	}
	g_conf.abort(tracee);
      }
      assert(status.exited());
      // return true;
    }

    return status.exited();
  }
  
  void Patcher::handle_ptrace_event(TraceePair& tracee_pair, enum __ptrace_eventcodes event) {
    Tracee& tracee = tracee_pair.tracee;
    switch (event) {
    case 0: // (no event occurred; interpret as regular breakpoint)
      {
	// TODO: split into own function.
	uint8_t *bkpt_pc;
    
	if (g_conf.singlestep) {
	  uint8_t pc_byte;
	  while (true) {
	    if (g_conf.execution_trace) {
	      print_ss(tracee);
	    }
	    
	    bkpt_pc = tracee.get_pc();
	    tracee.read(&pc_byte, 1, bkpt_pc);

	    if (pc_byte != 0xcc || tracee_pair.info.suspended() || !tracee) {
	      break;
	    }

	    tracee.set_pc(bkpt_pc + 1);
	    handle_bkpt(tracee, bkpt_pc);

	    /* check if tracee was killed */
	    if (!tracee.good()) {
	      break;
	    }
	  }
	} else {
	  bkpt_pc = tracee.get_pc() - 1;
#ifndef NASSERT
	  uint8_t pc_byte;
	  tracee.read(&pc_byte, 1, bkpt_pc);
	  assert(pc_byte == 0xcc);
#endif
	  handle_bkpt(tracee, bkpt_pc);
	}
      }
      break;

    case PTRACE_EVENT_FORK:
      {
	/* get pid of forked process */
	const pid_t newpid = tracee.geteventmsg();

	/* add to tracee list */
	tracees.emplace_back(Tracee{newpid, tracee.filename(), false}, TraceeInfo{false});
      }
      break;

    default:
      std::cerr << "unhandled PTRACE_EVENT_" << event << "\n";
      std::abort();
    }
  }

  void Patcher::handle_signal(Tracee& tracee, int signum) {
    const auto it = sighandlers.find(signum);
    if (it == sighandlers.end()) {
      *g_conf.log << "unhandled tracee signal " << signum << " ("
		  << ::strsignal(signum) << ")\n";
      *g_conf.log << "pc = " << (void *) tracee.get_pc() << '\n';
      uint8_t *stop_pc = tracee.get_pc();
      Instruction inst(stop_pc, tracee);
      *g_conf.log << "stopped at inst: " << Decoder::disas(inst).c_str() << '\n';
      g_conf.abort(tracee);
    } else {
      auto siginfo = tracee.get_siginfo();
      it->second(tracee, signum, siginfo);
    }
  }

  uint8_t *Patcher::orig_block_addr(uint8_t *addr) const {
    /* create map from new block addresses to orig block addresses */
    std::map<uint8_t *, uint8_t *> map;
    std::transform(block_map.begin(), block_map.end(), std::inserter(map, map.end()),
		   [] (const auto& p) {
		     return std::make_pair(p.second->pool_addr(), p.first);
		   });
    auto it = map.upper_bound(addr);
    assert(it != map.begin());
    --it;
    return it->second;
  }

  void Patcher::pre_syscall_handler() {
#if 0
    syscall_args.add_call(tracee());
#endif
  }

  void Patcher::post_syscall_handler() {
#if 0
    syscall_args.add_ret(tracee());

    switch (syscall_args.no()) {
    case Syscall::MUNMAP:
      if (syscall_args.rv<int>() == 0) {
	cache.invalidate(syscall_args.arg<0, void *>(),
			 pagealign_up(syscall_args.arg<1, size_t>()));
      }
      break;
    
    case Syscall::MREMAP: abort();
    }
#endif
  }

  void Patcher::print_ss(Tracee& tracee) const {
    *g_conf.log << "[" << tracee.pid() << "] ss pc = " << static_cast<void *>(tracee.get_pc())
		<< " " << static_cast<void *>(orig_block_addr(tracee.get_pc())) << ": "
		<< Instruction(tracee.get_pc(), tracee)
#if 1
		<< " | " << "xmm1=" << FPRegisters(tracee).xmm(1)
		<< " rdx=" << GPRegisters(tracee).rdx()
		<< std::dec
#endif
		<< "\n";
  }
}

#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sstream>
#include "memcheck.hh"
#include "syscall-check.hh"

bool Memcheck::open(const char *file, char * const argv[]) {
  const pid_t child = fork();
  if (child == 0) {
    ptrace(PTRACE_TRACEME, 0, nullptr, nullptr);
    execvp(file, argv);
    return false;
  }
  
  Decoder::Init();
  
  int status;
  wait(&status);
  assert(stopped_trace(status));

  tracee.open(child, file);
  // TODO: open patcher
  patcher = Patcher(tracee, [this] (auto&&... args) { return this->transformer(args...); });
  patcher->start();
  maps_gen.open(child);
  tracked_pages.add_state(taint_state);
  tracked_pages.add_maps(maps_gen);

  memory = UserMemory(tracee, PAGESIZE, PROT_READ | PROT_WRITE);
  
  // patcher->signal(SIGSEGV, [this] (int signum) { segfault_handler(signum); });
  save_state(pre_state);
  init_taint(taint_state);

  /* get brk */
  brk = reinterpret_cast<void *>(tracee.syscall(Syscall::BRK, 0));

  return true;
}

bool Memcheck::stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;  
}

bool Memcheck::is_sp_dec(const Instruction& inst) {
  if (inst.xed_reg0() != XED_REG_RSP) {
    return false;
  }

  switch (inst.xed_iclass()) {
  case XED_ICLASS_PUSH: return false;
  default:
    break;
  }

  return true; // TODO: Should be more conservative about this...
}

bool Memcheck::is_jcc(const Instruction& inst) {
  switch (inst.xed_iclass()) {
  case XED_ICLASS_JB:
  case XED_ICLASS_JBE:
  case XED_ICLASS_JCXZ:
  case XED_ICLASS_JECXZ:
  case XED_ICLASS_JL:
  case XED_ICLASS_JLE:
  case XED_ICLASS_JNB:
  case XED_ICLASS_JNBE:
  case XED_ICLASS_JNL:
  case XED_ICLASS_JNLE:
  case XED_ICLASS_JNO:
  case XED_ICLASS_JNP:
  case XED_ICLASS_JNS:
  case XED_ICLASS_JNZ:
  case XED_ICLASS_JO:
  case XED_ICLASS_JP:
  case XED_ICLASS_JRCXZ:
  case XED_ICLASS_JS:
  case XED_ICLASS_JZ:
    return true;
  default:
    return false;
  }
}

void Memcheck::transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  (void) addr;

#if 1
  if (is_sp_dec(inst)) {
    addr = stack_tracker.add(addr, inst, info);
    return;
  }
#endif

#if 1
  if (inst.xed_iclass() == XED_ICLASS_SYSCALL) {
    addr = syscall_tracker.add(addr, inst, info, 
			       util::method_callback(this, &Memcheck::syscall_handler_pre),
			       util::method_callback(this, &Memcheck::syscall_handler_post));
    return;
  }
#endif

#if 1
  if (inst.xed_iclass() == XED_ICLASS_CALL_NEAR || inst.xed_iclass() == XED_ICLASS_RET_NEAR) {
    addr = call_tracker.add(addr, inst, info);
    return;
  }
#endif

#if 1
  if (is_jcc(inst)) {
    addr = jcc_tracker.add(addr, inst, info);
    return;
  }
#endif

  // DEBUG
  if (inst.xed_iclass() == XED_ICLASS_RDTSC) {
    auto bkpt = Instruction::int3(addr);
    addr = info.writer(bkpt);
    info.rb(bkpt.pc(), [] (const auto addr) {
      *g_conf.log << "RDTSC @ " << (void *) addr << "\n";
    });
    addr = info.writer(inst);
    return;
  }
  
  addr = info.writer(inst);
}

void Memcheck::run() {
  patcher->run();
}

void Memcheck::segfault_handler(int signum) {
  const siginfo_t siginfo = tracee.get_siginfo();

  void *fault_addr = siginfo.si_addr;
  std::cerr << "segfault @ " << fault_addr << std::endl;

  tracee.syscall(Syscall::MPROTECT, (uintptr_t) mprotect_ptr(fault_addr), mprotect_size, PROT_READ | PROT_WRITE);
}

void Memcheck::save_state(State& state) {
  state.save(tracee, tracked_pages.begin(), tracked_pages.end());
}

State Memcheck::save_state() {
  State state;
  save_state(state);
  return state;
}

void *Memcheck::stack_begin() {
  const auto stack_end = pagealign_up(tracee.get_sp());
  auto stack_begin = stack_end;
  do {
    stack_begin = pageidx(stack_begin, -1);
  } while (tracked_pages.find(stack_begin) != tracked_pages.end());
  stack_begin = pageidx(stack_begin, 1);
  return stack_begin;
}


void Memcheck::syscall_handler_pre(uint8_t *addr) {
  syscall_args.add_call(tracee);
  *g_conf.log << "syscall " << syscall_args.no() << "\n";
  
  save_state(post_states[subround_counter]);
  cksums[subround_counter] = cksum;
  
  ++subround_counter;
  
  if (subround_counter < SUBROUNDS) {
    if (!CHANGE_PRE_STATE) {
      pre_state.restore(tracee);
    } else {
      set_state_with_taint(pre_state, taint_state);
    }
    assert(save_state() == pre_state);
  } else {
    assert(subround_counter == SUBROUNDS);
    check_round();
    subround_counter = 0;
  }

  stack_tracker.fill(fills[subround_counter]);
  call_tracker.fill(fills[subround_counter]);
  cksum.clear();
}

/* Rewind to pre_state, flipping bits in taint_state */
void Memcheck::set_state_with_taint(State& state, const State& taint) {
  state ^= taint;
  state.restore(tracee);
}

template <typename InputIt>
void Memcheck::update_taint_state(InputIt begin, InputIt end, State& taint_state) {
  assert(std::distance(begin, end) >= 2);

  auto first = begin++;

  assert(std::all_of(begin, end, std::bind(&State::similar, first, std::placeholders::_1)));
  
  /* taint stack */
  init_taint(taint_state); // TODO: Could be optimized.

  for (auto it = begin; it != end; ++it) {
    taint_state |= *first ^ *it; // TODO: could be optimized.
    assert(*first == *it);
  }
}


void Memcheck::check_round() {
  // TODO: should return bool.
  
  /* get taint mask */
  update_taint_state(post_states.begin(), post_states.end(), taint_state);

  // TODO: DEBUG:
  {
    util::for_each_pair(cksums.begin(), cksums.end(), [this] (const auto& l, const auto& r) {
      l.diff(r, [this] (const auto addr,
			const auto& flags1, const auto& flags2,
			const auto& data1, const auto& data2) {
	*g_conf.log << "JCC MISMATCH @ " << (void *) addr << ", flags " << std::hex
		    << flags1 << " vs " << std::hex << flags2 << "\n";
	const auto loc = this->orig_loc(addr);
	*g_conf.log << loc.first << " " << loc.second << "\n";
	*g_conf.log << "orig: " << Instruction((uint8_t *) loc.first, tracee) << "\n";
	*g_conf.log << "new:  " << Instruction((uint8_t *) addr + 1, tracee) << "\n";
	*g_conf.log << "data: " << data1 << " vs " << data2 << "\n";
	if (ABORT_ON_TAINT) {
	  g_conf.abort(tracee);
	}
      });
    });

    if (!util::all_equal(cksums.begin(), cksums.end())) {
      *g_conf.log << "memcheck: condition jump maps differ\n";
      if (ABORT_ON_TAINT) {
	abort();
      }
    }
  }

  /* ensure eflags cksum same */
  if (!util::all_equal(cksums.begin(), cksums.end())) {
    *g_conf.log << "memcheck: conditional jump checksums differ\n";
    if (ABORT_ON_TAINT) {
      g_conf.abort(tracee);
    }
  }

  /* make sure args to syscall aren't tainted */
  SyscallChecker syscall_checker
    (tracee, taint_state, AddrRange(stack_begin(), static_cast<char *>(tracee.get_sp()) -
				    SHADOW_STACK_SIZE), syscall_args, *this);

  if (!syscall_checker.pre()) {
    /* DEBUG: Translate */
    const auto loc = orig_loc(tracee.get_pc());
    *g_conf.log << loc.first << " " << loc.second << "\n";
    g_conf.abort(tracee);
  }
}

Memcheck::Loc Memcheck::orig_loc(uint8_t *addr) {
  const auto orig_addr = patcher->orig_block_addr(addr);
  std::vector<Map> maps;
  maps_gen.get_maps(std::back_inserter(maps));
  for (const auto& map : maps) {
    if (map.has_addr(orig_addr)) {
      return {orig_addr, map.desc};
    }
  }
  abort();
}

void Memcheck::syscall_handler_post(uint8_t *addr) {
  syscall_args.add_ret(tracee);

  switch (syscall_args.no()) {
  case Syscall::MMAP:
    {
      const auto rv = syscall_args.rv<void *>();
      if (rv != MAP_FAILED) {
	const int prot = syscall_args.arg<2, int>();
	if ((prot & PROT_WRITE)) {
	  const size_t length = util::align_up(syscall_args.arg<1, size_t>(), 4096);
	  tracked_pages.track_range(rv, (char *) rv + length);
	}
      }
    }
    break;

  case Syscall::BRK:
    {
      const auto rv = syscall_args.rv<void *>();
      if (rv != nullptr) {
	const auto endaddr = pagealign_up(syscall_args.arg<0, void *>());
	if (endaddr != nullptr) {
	  assert(brk != nullptr);
	  tracked_pages.track_range(brk, endaddr);
	}
	brk = rv;
      }
    }
    break;
    
  case Syscall::MREMAP:
    abort();
    
  case Syscall::MUNMAP:
    {
      const auto rv = syscall_args.rv<int>();
      if (rv >= 0) {
	void *addr = syscall_args.arg<0, void *>();
	const size_t size = util::align_up(syscall_args.arg<1, size_t>(), PAGESIZE);
	
	tracked_pages.untrack_range(addr, (char *) addr + size);
      }
    }
    break;

  case Syscall::MPROTECT:
    {
      const auto rv = syscall_args.rv<int>();
      if (rv >= 0) {
	void *addr = syscall_args.arg<0, void *>();
	const size_t len = syscall_args.arg<1, size_t>();
	const int prot = syscall_args.arg<2, int>();
	void *end = (char *) addr + len;
	if ((prot & PROT_WRITE)) {
	  tracked_pages.track_range(addr, end);
	} else {
	  tracked_pages.untrack_range(addr, end);
	}
      }
    }
    break;
  }

  SyscallChecker syscall_checker(tracee, taint_state, AddrRange(stack_begin(), tracee.get_sp()),
				 syscall_args, *this);
  syscall_checker.post();
  
  save_state(pre_state);
  if (CHANGE_PRE_STATE) {
    set_state_with_taint(pre_state, taint_state);
  }


  // DEBUG
#if 0
  if (syscall_args.no() == Syscall::GETDENTS) {
    g_conf.singlestep = true;
    g_conf.execution_trace = true;
  }
#endif
}


void Memcheck::init_taint(State& taint_state) {
  /* taint memory below stack */
  save_state(taint_state); // TODO: optimize
  taint_state.zero();
  if (TAINT_STACK) {
    taint_state.fill(stack_begin(), static_cast<char *>(tracee.get_sp()) - SHADOW_STACK_SIZE, -1);
  }
}

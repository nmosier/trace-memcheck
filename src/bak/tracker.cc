#include <sstream>
#include "syscall-check.hh"
#include "tracker.hh"

uint8_t *JccTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    auto bkpt = Instruction::int3(addr);
    addr = info.writer(bkpt);
    info.rb(bkpt.pc(), [this] (auto addr) { this->handler(addr); });
    addr = info.writer(inst);
    return addr;
}

void JccTracker::handler(uint8_t *addr) {
  /* checksum flags */
  const auto flags = tracee.get_regs().eflags & mask;
  cksum_ = (cksum_ >> 1 | cksum_ << 31) + flags;

  // TODO: temporary
  list_.emplace_back(addr, flags);
}


void StackTracker::pre_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  it->second->sp = tracee.get_sp();
}

#define FILL_SP_DEC 1
#define FILL_SP_INC 1

void StackTracker::post_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  const auto post_sp = static_cast<char *>(tracee.get_sp());
  const auto pre_sp = static_cast<char *>(it->second->sp);

#if FILL_SP_DEC
  if (post_sp < pre_sp) {
    tracee.fill(fill(), post_sp - SHADOW_STACK_SIZE, pre_sp - SHADOW_STACK_SIZE);
    // std::clog << "Filling sp dec" << std::endl;
  }
#endif
#if FILL_SP_INC
  if (pre_sp < post_sp) {
    tracee.fill(fill(), pre_sp - SHADOW_STACK_SIZE, post_sp - SHADOW_STACK_SIZE);
  }
#endif
}

uint8_t *StackTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  auto elem = std::make_shared<Elem>(inst);
  
  const auto pre_addr = addr;
  auto pre_bkpt = Instruction::int3(addr);
  addr = info.writer(pre_bkpt);
  addr = info.writer(inst);
  const auto post_addr = addr;
  auto post_bkpt = Instruction::int3(addr);
  addr = info.writer(post_bkpt);

  info.rb(pre_addr, pre_callback);
  info.rb(post_addr, post_callback);

  map.emplace(pre_addr, elem);
  map.emplace(post_addr, elem);
  
  return addr;
}

#if 1
uint8_t *CallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  const auto iclass = inst.xed_iclass();
  const auto bkpt_addr = addr;
  auto bkpt = Instruction::int3(addr);
  addr = info.writer(bkpt);
  addr = info.writer(inst);

  if (iclass == XED_ICLASS_CALL_NEAR) {
    info.rb(bkpt_addr, call_callback);
  } else {
    assert(iclass == XED_ICLASS_RET_NEAR);
    info.rb(bkpt_addr, ret_callback);
  }

  return addr;
}
#endif

void CallTracker::call_handler(uint8_t *addr) const {
  /* mark [stack_begin, rsp - 8) as tainted */
  const auto sp = static_cast<char *>(tracee.get_sp());
  tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp - 8);
}

void CallTracker::ret_handler(uint8_t *addr) const {
  const auto sp = static_cast<char *>(tracee.get_sp());
  tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp); // TODO: is this ok that it doesn't taint the return address?
}


StackTracker::Elem::Elem(const Instruction& inst): orig_addr(inst.pc())
{
  std::stringstream ss;
  ss << inst;
  inst_str = ss.str();
}

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info,
			     const BkptCallback& pre_handler) {
  const auto pre_bkpt_addr = addr;
  auto pre_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(pre_bkpt_inst);
  addr = info.writer(inst);
  const auto post_bkpt_addr = addr;
  auto post_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(post_bkpt_inst);

  info.rb(pre_bkpt_addr, pre_handler);
  info.rb(post_bkpt_addr, [this] (auto... params) { return &SyscallTracker::post_handler; });
  
  return addr;
}



void SyscallTracker::post_handler(uint8_t *addr) {
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
	  if (brk == nullptr) {
	    brk = reinterpret_cast<void *>(tracee.syscall(Syscall::BRK, 0));
	  }
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

  syscall_checker.post();
}

void SyscallTracker::pre_handler(uint8_t *addr) {
  syscall_tracker.syscall_args.add_call(tracee);
  std::clog << "syscall " << syscall_tracker.syscall_args.no() << "\n";
  
  save_state(post_states[subround_counter]);
  jcc_cksums[subround_counter] = jcc_tracker.cksum();
  jcc_lists[subround_counter] = jcc_tracker.list();

  if (!subround_counter) {
    if (!CHANGE_PRE_STATE) {
      pre_state.restore(tracee);
    } else {
      set_state_with_taint(pre_state, taint_state);
    }
    assert(save_state() == pre_state);
  } else {
    check_round();
  }
  
  stack_tracker.fill(~stack_tracker.fill());
  call_tracker.fill(~call_tracker.fill());
  jcc_tracker.reset();
  subround_counter = !subround_counter;  
}

#include <sstream>
#include "tracker.hh"
#include "memcheck.hh"
#include "syscall-check.hh"

uint8_t *JccTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    auto bkpt = Instruction::int3(addr);
    addr = info.writer(bkpt);
    info.rb(bkpt.pc(), [this] (auto addr) { this->handler(addr); });
    addr = info.writer(inst);
    return addr;
}

void JccTracker::handler(uint8_t *addr) {
  /* checksum flags */
  std::stringstream ss;
  ss << "rax=" << std::hex << tracee.get_regs().rax << ", rcx=" << std::hex << tracee.get_regs().rcx
     << "\n";
  cksum.add(addr, tracee, ss.str());
}

void StackTracker::pre_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  it->second->sp = tracee.get_sp();
}

void StackTracker::post_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  const auto post_sp = static_cast<char *>(tracee.get_sp());
  const auto pre_sp = static_cast<char *>(it->second->sp);

  if (FILL_SP_DEC) {
    if (post_sp < pre_sp) {
      tracee.fill(fill(), post_sp - SHADOW_STACK_SIZE, pre_sp - SHADOW_STACK_SIZE);
    }
  }
  if (FILL_SP_INC) {
    if (pre_sp < post_sp) {
      tracee.fill(fill(), pre_sp - SHADOW_STACK_SIZE, post_sp - SHADOW_STACK_SIZE);
    }
  }

  // DEBUG
  cksum.add(addr, tracee.get_flags());
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

void CallTracker::call_handler(uint8_t *addr) const {
  /* mark [stack_begin, rsp - 8) as tainted */
  const auto sp = static_cast<char *>(tracee.get_sp());

  if (FILL_CALL) {
    tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp - 8);
  }

  /* DEBUG: checksum */
  cksum.add(addr, tracee.get_flags());
}

void CallTracker::ret_handler(uint8_t *addr) const {
  const auto sp = static_cast<char *>(tracee.get_sp());

  if (FILL_CALL) {
    tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp); // TODO: is this ok that it doesn't taint the return address?
  }

  /* DEBUG: Checksum */
  cksum.add(addr, tracee.get_flags());
}


StackTracker::Elem::Elem(const Instruction& inst): orig_addr(inst.pc())
{
  std::stringstream ss;
  ss << inst;
  inst_str = ss.str();
}

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info)
{
  auto pre_bkpt = Instruction::int3(addr);
  addr = info.writer(pre_bkpt);
  addr = info.writer(inst);
  auto post_bkpt = Instruction::int3(addr);
  addr = info.writer(post_bkpt);

  add_pre(pre_bkpt.pc(), info, [this] (const auto addr) { this->pre(addr); });
  add_post(post_bkpt.pc(), info, [this] (const auto addr) { this->post(addr); });
  
  return addr;
}


uint8_t *LockTracker::add(uint8_t *addr, Instruction& inst, const TransformerInfo& info,
			  bool& match) {
  if ((match = (inst.data()[0] == LOCK_PREFIX))) {
    auto pre_bkpt = Instruction::int3(addr);
    addr = info.writer(pre_bkpt);
    addr = info.writer(inst);
    auto post_bkpt = Instruction::int3(addr);
    addr = info.writer(post_bkpt);

    add_pre(pre_bkpt.pc(), info, [] (const auto addr) {});
    add_post(post_bkpt.pc(), info, [] (const auto addr) {});
  } 

  return addr;
}

void SyscallTracker::pre(uint8_t *addr) {
  syscall_args.add_call(tracee);
  *g_conf.log << "syscall " << syscall_args.no() << "\n";
  g_conf.add_syscall(syscall_args.no());
}

void SyscallTracker::check() {
  /* make sure args to syscall aren't tainted */
  SyscallChecker syscall_checker(tracee, taint_state, memcheck.stack_begin(), syscall_args,
				 memcheck);
  
  if (!syscall_checker.pre()) {
    /* DEBUG: Translate */
    const auto loc = memcheck.orig_loc(tracee.get_pc());
    *g_conf.log << loc.first << " " << loc.second << "\n";
    g_conf.abort(tracee);
  }
  
}

void SyscallTracker::post(uint8_t *addr) {
  syscall_args.add_ret(tracee);

  switch (syscall_args.no()) {
  case Syscall::MMAP:
    {
      const auto rv = syscall_args.rv<void *>();
      if (rv != MAP_FAILED) {
	const int prot = syscall_args.arg<2, int>();
	const int flags = syscall_args.arg<3, int>();
	// DEBUG: omit shared pages
	const size_t length = util::align_up(syscall_args.arg<1, size_t>(), 4096);
	if (util::implies(BLOCK_SHARED_MAPS, !(flags & MAP_SHARED))) {
	  if ((prot & PROT_WRITE)) {
	    page_set.track_range(rv, (char *) rv + length);
	  }
	} else {
	  tracee.syscall(Syscall::MPROTECT, (uintptr_t) rv, length, PROT_NONE);
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
	  page_set.track_range(brk, endaddr);
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
	
	page_set.untrack_range(addr, (char *) addr + size);
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
	  page_set.track_range(addr, end);
	} else {
	  page_set.untrack_range(addr, end);
	}
      }
    }
    break;
  }

  SyscallChecker syscall_checker(tracee, taint_state, memcheck.stack_begin(),
				 syscall_args, memcheck);
  syscall_checker.post();
}

void LockTracker::check() {
  const auto addr = tracee.get_pc();
  *g_conf.log << "LOCK: " << Instruction(addr, tracee) << "\n";
}

bool RTMTracker::match(const Instruction& inst) const {
  switch (inst.xed_iclass()) {
  case XED_ICLASS_XBEGIN:
  case XED_ICLASS_XEND:
  case XED_ICLASS_XABORT:
    return true;
  default:
    return false;
  }
}

// TODO: this is basically a duplicate of other sequence point add()'s...
uint8_t *RTMTracker::add(uint8_t *addr, Instruction& inst, const TransformerInfo& info,
			 bool& match_) {
  match_ = match(inst);

  if (match_) {
    auto pre_bkpt = Instruction::int3(addr);
    addr = info.writer(pre_bkpt);
    addr = info.writer(inst);
    auto post_bkpt = Instruction::int3(addr);
    addr = info.writer(post_bkpt);

    add_pre(pre_bkpt.pc(), info, [this] (const auto addr) {});
    add_post(post_bkpt.pc(), info, [this] (const auto addr) {});
  }
  
  return addr;
}

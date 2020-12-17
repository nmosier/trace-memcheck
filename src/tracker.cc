#include <sstream>
extern "C" {
#include <xed/xed-interface.h>
}
#include "tracker.hh"
#include "memcheck.hh"
#include "syscall-check.hh"
#include "flags.hh"

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
  if (JCC_RECORD_REGS) {
    ss << tracee.get_regs();
  }
  uint64_t val;
  if (tracee.try_read(&val, sizeof(val), (void *) 0x65bab8)) {
    ss << "*(uint64_t*)0x65bab8=" << (void *) val;
  }
  
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

  // TODO: Perhaps this should be done in the SyscallTracker's initialization?
  switch (syscall_args.no()) {
  case Syscall::BRK:
    if (brk == nullptr) {
      brk = (void *) tracee.syscall(Syscall::BRK, (uintptr_t) nullptr);
    }
  }
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
	  assert(brk != nullptr);
	  page_set.track_range(brk, endaddr);
	  std::clog << "BRK: tracking range from " << (void *) brk << " to " << (void *) endaddr
		    << "\n";
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

uint64_t SharedMemSeqPt::mask(xed_reg_enum_t reg, bool read) {
  switch (xed_gpr_reg_class(reg)) {
  case XED_REG_CLASS_GPR64: return 0xffffffffffffffff;
  case XED_REG_CLASS_GPR32:
    return read ? 0x00000000ffffffff : 0xffffffffffffffff;
  case XED_REG_CLASS_GPR16: return 0x000000000000ffff;
  case XED_REG_CLASS_GPR8:
    switch (reg) {
    case XED_REG_AH:
    case XED_REG_CH:
    case XED_REG_DH:
    case XED_REG_BH:
      return 0x000000000000ff00;
    default: return 0x00000000000000ff;
    }
  default: abort();
  }
}

void SharedMemSeqPt::read(xed_reg_enum_t reg) const {
  assert(reg != XED_REG_INVALID);

  const auto encreg = xed_get_largest_enclosing_register(reg);
  const uint64_t val64 = taint_state.gpregs().reg(encreg);
  
  if ((val64 & mask_read(reg)) != 0) {
    *g_conf.log << "memcheck: read from tainted register " << xed_reg_enum_t2str(reg) << "\n";
    g_conf.abort(tracee);
  }
}

void SharedMemSeqPt::write(xed_reg_enum_t reg) {
  assert(reg != XED_REG_INVALID);
  taint_state.gpregs().reg(xed_get_largest_enclosing_register(reg)) &= ~mask_write(reg);
}

void SharedMemSeqPt::read_flags(uint32_t mask) const {
  if ((taint_state.gpregs().eflags() & mask) != 0) {
    *g_conf.log << "memcheck: instruction uses tainted flags\n";
    g_conf.abort(tracee);
  }
}

void SharedMemSeqPt::write_flags(uint32_t mask) {
  taint_state.gpregs().eflags() &= ~mask;
}

void SharedMemSeqPt::taint_flags(uint32_t mask) {
  if (TAINT_FLAGS) {
    taint_state.gpregs().eflags() |= mask;
  }
}

void SharedMemSeqPt::check() {
  const auto inst = Instruction(tracee.get_pc(), tracee);
  const bool mem_written = xed_decoded_inst_mem_written(&inst.xedd(), 0);
  const bool mem_read = xed_decoded_inst_mem_read(&inst.xedd(), 0);

  const auto aligned_fault = reinterpret_cast<uintptr_t>(pagealign(tracee.get_siginfo().si_addr));
  *g_conf.log << "aligned_fault = " << (void *) aligned_fault << "\n";
  if ((int) tracee.syscall(Syscall::MPROTECT, aligned_fault, PAGESIZE, PROT_READ) < 0) {
    *g_conf.log << "MPROTECT: failed\n";
    g_conf.abort(tracee);
  }
  const auto status = tracee.singlestep();

  tracee.assert_stopsig(status, SIGTRAP); (void) status;
  
  tracee.syscall(Syscall::MPROTECT, aligned_fault, PAGESIZE, PROT_NONE);  
  
  (void) mem_written;
  (void) mem_read;

  /* check mem address for taint */
  const auto nmemops = inst.xed_nmemops();
  if (nmemops == 1) {
    const auto base_reg = inst.xed_base_reg();
    const auto index_reg = inst.xed_index_reg();
    if (base_reg != XED_REG_INVALID) {
      if (taint_state.gpregs().reg(base_reg) != 0) {
	*g_conf.log << "memcheck: memory access address depends on uninitialized base register\n";
	g_conf.abort(tracee);
      }
    }
    if (index_reg != XED_REG_INVALID) {
      if (taint_state.gpregs().reg(index_reg) != 0) {
	*g_conf.log << "memcheck: memory access address depends on uninitialized index register\n";
	g_conf.abort(tracee);
      }
    }
  } else {
    assert(nmemops == 2);
    const std::array<xed_operand_enum_t, 2> ops = {XED_OPERAND_BASE0, XED_OPERAND_BASE1};
    for (const auto op : ops) {
      const auto base_reg = inst.xed_reg(op);
      if (base_reg != XED_REG_INVALID) {
	if (taint_state.gpregs().reg(base_reg) != 0) {
	  *g_conf.log << "memcheck: memory access depends on uninitialized base register\n";
	}
      }
    }
  }
  
  switch (inst.xed_iform()) {
    /* 0 REGS, FLAGS WRITTEN */
  case XED_IFORM_CMP_MEMv_IMMb:
  case XED_IFORM_CMP_MEMv_IMMz:
  case XED_IFORM_CMP_MEMb_IMMb_80r7:
  case XED_IFORM_REPE_CMPSB:
    write_flags(status_flags);
    break;

    /* 1 REG WRITTEN, FLAGS IGNORED */
  case XED_IFORM_MOVZX_GPRv_MEMw:
  case XED_IFORM_MOVZX_GPRv_MEMb:
  case XED_IFORM_MOVSXD_GPRv_MEMz:
  case XED_IFORM_MOV_GPRv_MEMv:
    {
      const auto reg = inst.xed_reg();
      const auto enc_reg = xed_get_largest_enclosing_register(reg);
      taint_state.gpregs().reg(enc_reg) = 0;
    }
    break;

  case XED_IFORM_MOVDQU_XMMdq_MEMdq:
  case XED_IFORM_MOVDQA_XMMdq_MEMdq:
    {
      const auto reg = inst.xed_reg();
      assert(xed_reg_class(reg) == XED_REG_CLASS_XMM);
      const auto xmm = reg - XED_REG_XMM0;
      std::fill(taint_state.xmm_begin(xmm), taint_state.xmm_end(xmm), 0);
    }
    break;

  case XED_IFORM_MOVLPD_XMMsd_MEMq:
    {
      const auto reg = inst.xed_reg();
      const auto xmm = reg - XED_REG_XMM0;
      const auto begin = taint_state.xmm_begin(xmm);
      std::fill(begin, begin + 8, 0);
    }
    break;

  case XED_IFORM_MOVHPD_XMMsd_MEMq:
    {
      const auto reg = inst.xed_reg();
      const auto xmm = reg - XED_REG_XMM0;
      const auto begin = taint_state.xmm_begin(xmm);
      std::fill(begin + 8, begin + 16, 0);
    }
    break;

  case XED_IFORM_DIV_MEMv:
    read_write(XED_REG_RAX);
    read_write(XED_REG_RDX);
    taint_flags(status_flags);
    break;

  case XED_IFORM_ADD_GPRv_MEMv:
    read_write(inst.xed_reg0());
    write_flags(status_flags);
    break;

  default:
    std::cerr << inst.xed_iform_str() << "\n";
    abort();    
  }

  memcheck.start_round();
}

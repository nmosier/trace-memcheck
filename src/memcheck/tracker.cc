#include <sstream>
extern "C" {
#include <xed/xed-interface.h>
}

#include "tracker.hh"
#include "memcheck.hh"
#include "syscall-check.hh"
#include "flags.hh"
#include "config.hh"
#include "log.hh"
#include "syscall-check2.hh"

namespace memcheck {

  uint8_t *JccTracker_::add_incore_pre(uint8_t *addr, dbi::Instruction& inst,
				       const dbi::Patcher::TransformerInfo& info) {

    post_code.patch(addr);
    addr = info.writer(post_code);
    return addr;
  }

  void JccTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    /* checksum flags */
    std::stringstream ss;
    if (JCC_RECORD_REGS) {
      ss << dbi::GPRegisters(tracee.get_gpregs());
    }
    cksum(tracee).add(addr, tracee, ss.str());

    if (JCC_TRACKER_INCORE) {
      const auto incore_cksum = tracee.read_type(*cksum_ptr_ptr);
      const auto bkpt_cksum = cksum(tracee).cksum();
      assert(incore_cksum == bkpt_cksum); (void) incore_cksum; (void) bkpt_cksum;
    }
  }

  bool JccTracker_::match(const dbi::Instruction& inst) {
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
  

  StackTracker_::StackTracker_(const ThreadMap& thd_map, MemcheckVariables& vars):
    Filler(thd_map),
    prev_sp_ptr_ptr(vars.prev_sp_ptr_ptr()),
    pre_mc(PreMC::Content{0x48, 0x89, 0x25, 0x00, 0x00, 0x00, 0x00},
	   PreMC::Relbrs{PreMC::Relbr(0x03, 0x07, vars.prev_sp_ptr_ptr())}
	   ),
    post_mc(PostMC::Content{
      0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x50, 0x57, 0x51, 0x48, 0x8b,
      0x3d, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8b, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x48,
      0x39, 0xcf, 0x7c, 0x03, 0x48, 0x87, 0xf9, 0x48, 0x29, 0xf9, 0x48, 0x8d, 0x7f,
      0x80, 0x8a, 0x05, 0x00, 0x00, 0x00, 0x00, 0xfc, 0xf3, 0xaa, 0x59, 0x5f, 0x58,
      0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
    },
      PostMC::Relbrs{
	PostMC::Relbr(0x03, 0x07, vars.tmp_rsp_ptr_ptr()),
	PostMC::Relbr(0x0e, 0x12, vars.prev_sp_ptr_ptr()),
	PostMC::Relbr(0x15, 0x19, vars.tmp_rsp_ptr_ptr()),
	PostMC::Relbr(0x2a, 0x2e, vars.fill_ptr_ptr()),
	PostMC::Relbr(0x38, 0x3c, vars.tmp_rsp_ptr_ptr())
      }
      )
  {}

  void StackTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    const auto it = map.find(addr);
    assert(it != map.end());
    it->second->sp = tracee.get_sp();

    if (STACK_TRACKER_INCORE) {
      /* make sure prev SP agrees */
      assert(tracee.read_type(*prev_sp_ptr_ptr) == it->second->sp);
    }
  }

  void StackTracker_::handler_post(dbi::Tracee& tracee, uint8_t *addr) {
    const auto it = map.find(addr);
    assert(it != map.end());
    const auto post_sp = static_cast<char *>(tracee.get_sp()) - SHADOW_STACK_SIZE;
    const auto pre_sp = static_cast<char *>(it->second->sp) - SHADOW_STACK_SIZE;
  
    if (STACK_TRACKER_INCORE) {
      static_assert(util::implies(STACK_TRACKER_INCORE, FILL_SP_DEC && FILL_SP_INC), "STACK_TRACKER_INCORE doesn't support configuration");
      const auto begin = std::min(pre_sp, post_sp);
      const auto end = std::max(pre_sp, post_sp);
      const auto size = end - begin;
      std::vector<uint8_t> buf(size);
      tracee.read(buf.begin(), buf.end(), begin);
      const auto eq = std::all_of(buf.begin(), buf.end(), [&] (auto byte) {
	return byte == this->fill(tracee);
      });
      assert(eq); (void) eq;
    }

    if (FILL_SP_DEC) {
      if (post_sp < pre_sp) {
	tracee.fill(fill(tracee), post_sp, pre_sp);
      }
    }
    if (FILL_SP_INC) {
      if (pre_sp < post_sp) {
	tracee.fill(fill(tracee), pre_sp, post_sp);
      }
    }

  }

  uint8_t *StackTracker_::add_incore_pre(uint8_t *addr, dbi::Instruction& inst,
					const TransformerInfo& info)
  {
    pre_mc.patch(addr);
    addr = info.writer(pre_mc);
    return addr;
  }

  uint8_t *StackTracker_::add_incore_post(uint8_t *addr, dbi::Instruction& inst,
					 const TransformerInfo& info)
  {
    post_mc.patch(addr);
    addr = info.writer(post_mc);
    return addr;
  }

  CallTracker_::CallTracker_(const ThreadMap& thd_map, MemcheckVariables& vars):
    Filler(thd_map),
    mc(MC::Content {
      0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x57, 0x51, 0x50, 0x48,
      0x8b, 0x3d, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8d, 0x7f, 0x80, 0xb9, 0x78,
      0x00, 0x00, 0x00, 0x8a, 0x05, 0x00, 0x00, 0x00, 0x00, 0xf3, 0xaa, 0x58,
      0x59, 0x5f, 0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
    },
      MC::Relbrs {
	MC::Relbr(0x03, 0x07, vars.tmp_rsp_ptr_ptr()),
	MC::Relbr(0x0e, 0x12, vars.tmp_rsp_ptr_ptr()),
	MC::Relbr(0x1d, 0x21, vars.fill_ptr_ptr()),
	MC::Relbr(0x2a, 0x2e, vars.tmp_rsp_ptr_ptr()),
      }
      )
  {}

  uint8_t *CallTracker_::add_incore_pre(uint8_t *addr, dbi::Instruction& inst,
				       const TransformerInfo& info) {
    mc.patch(addr);
    addr = info.writer(mc);
    return addr;
  }

  void CallTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    const auto sp = static_cast<char *>(tracee.get_sp());

    if (CALL_TRACKER_INCORE) {
      static_assert(util::implies(CALL_TRACKER_INCORE, FILL_CALL), "");
      std::vector<uint8_t> buf(SHADOW_STACK_SIZE - 8);
      tracee.read(buf.begin(), buf.end(), sp - SHADOW_STACK_SIZE);
      std::for_each(buf.begin(), buf.end(), [&] (uint8_t val) {
	assert(val == this->fill(tracee));
      });
    }

    if (FILL_CALL) {
      tracee.fill(fill(tracee), sp - SHADOW_STACK_SIZE, sp - 8);
    }
  }

  RetTracker_::RetTracker_(const ThreadMap& thd_map, MemcheckVariables& vars):
    Filler(thd_map),
    mc(MC::Content {
      0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x57, 0x51, 0x50, 0x48,
      0x8b, 0x3d, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8d, 0x7f, 0x80, 0xb9, 0x80,
      0x00, 0x00, 0x00, 0x8a, 0x05, 0x00, 0x00, 0x00, 0x00, 0xf3, 0xaa, 0x58,
      0x59, 0x5f, 0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
    },
      MC::Relbrs {
	MC::Relbr(0x03, 0x07, vars.tmp_rsp_ptr_ptr()),
	MC::Relbr(0x0e, 0x12, vars.tmp_rsp_ptr_ptr()),
	MC::Relbr(0x1d, 0x21, vars.fill_ptr_ptr()),
	MC::Relbr(0x2a, 0x2e, vars.tmp_rsp_ptr_ptr()),
      }
      )
  {}

  uint8_t *RetTracker_::add_incore_pre(uint8_t *addr, dbi::Instruction& inst,
				       const TransformerInfo& info) {
    mc.patch(addr);
    addr = info.writer(mc);
    return addr;
  }

  void RetTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    const auto sp = static_cast<char *>(tracee.get_sp());

    if (RET_TRACKER_INCORE) {
      static_assert(util::implies(RET_TRACKER_INCORE, FILL_RET), "");
      std::vector<uint8_t> buf(SHADOW_STACK_SIZE);
      tracee.read(buf.begin(), buf.end(), sp - SHADOW_STACK_SIZE);
      std::for_each(buf.begin(), buf.end(), [&] (uint8_t val) {
	assert(val == this->fill(tracee));
      });
    }
  
    if (FILL_RET) {
      // TODO: is this ok that it doesn't taint the return address?    
      tracee.fill(fill(tracee), sp - SHADOW_STACK_SIZE, sp);
    }
  }

  StackTracker::Elem::Elem(const dbi::Instruction& inst): orig_addr(inst.pc())
  {
    std::stringstream ss;
    ss << inst;
    inst_str = ss.str();
  }

  bool StackTracker_::match(const dbi::Instruction& inst) {
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
  
  bool SyscallTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    syscall_args.add_call(tracee);
    g_conf.log() << "syscall " << syscall_args.no() << "\n";
    g_conf.add_syscall(syscall_args.no());

    // TODO: Perhaps this should be done in the SyscallTracker's initialization?
    switch (syscall_args.no()) {
    case dbi::Syscall::BRK:
      if (brk == nullptr) {
	brk = sys.syscall<void *>(tracee, dbi::Syscall::BRK, nullptr);
      }
    }

    return is_seq_pt(syscall_args.no());
  }

  SyscallTracker_::CheckResult SyscallTracker_::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    SyscallChecker2 syscall_checker2(tracee1, tracee2, page_set, memcheck.stack_begin(),
				     syscall_args, memcheck);
    if (!syscall_checker2.pre()) {
      const auto loc = memcheck.orig_loc(tracee1.get_pc());
      g_conf.log() << loc.first << " " << loc.second << "\n";
      g_conf.abort(tracee1);
      return CheckResult::FAIL;
    }
    return CheckResult::KILL;
  }
  
  bool SequencePoint_Defaults::step(dbi::Tracee& tracee) {
    tracee.singlestep();
    tracee.wait();
    const auto status = tracee.status();
    assert(status.stopped_trap() || status.exited()); (void) status;
    return status.exited();
  }

  bool SyscallTracker_::is_seq_pt(dbi::Syscall no) {
#if 0
    switch (no) {
    case dbi::Syscall::FSTAT:
    case dbi::Syscall::POLL:
      return false;
    default:
      return true;
    }
#else
    return true;
#endif
  }

  bool SyscallTracker_::post(dbi::Tracee& tracee) {
    if (!is_seq_pt(syscall_args.no())) {
      return false;
    }

    syscall_args.add_ret(tracee);

    switch (syscall_args.no()) {
    case dbi::Syscall::MMAP:
      {
	const auto rv = syscall_args.rv<void *>();
	if (rv != MAP_FAILED) {
	  const int prot = syscall_args.arg<2, int>();
	  const int flags = syscall_args.arg<3, int>();
	  // DEBUG: omit shared pages
	  const size_t length = util::align_up(syscall_args.arg<1, size_t>(), 4096);
	  std::clog << "MMAP -> " << (void *) rv << "-" << (void *) ((char *) rv + length) << "\n";
	  if (util::implies(BLOCK_SHARED_MAPS, !(flags & MAP_SHARED))) {
	    page_set.track_range(rv, (char *) rv + length, PageInfo{flags, prot, prot});
	  } else {
	    const auto res =
	      sys.syscall<int>(tracee, dbi::Syscall::MPROTECT, rv, length, PROT_NONE);
	    assert(res == 0); (void) res;
	    page_set.track_range(rv, (char *) rv + length, PageInfo{flags, prot, PROT_NONE});
	  }
	}
      }
      break;

    case dbi::Syscall::BRK:
      {
	const auto rv = syscall_args.rv<void *>();
	if (rv != nullptr) {
	  const auto endaddr = dbi::pagealign_up(syscall_args.arg<0, void *>());
	  if (endaddr != nullptr) {
	    assert(brk != nullptr);
	    page_set.track_range(brk, endaddr,
				 PageInfo{MAP_PRIVATE, PROT_READ | PROT_WRITE,
				   PROT_READ | PROT_WRITE});
	    std::clog << "BRK: tracking range from " << (void *) brk << " to " << (void *) endaddr
		      << "\n";
	  }
	  brk = rv;
	}
      }
      break;
    
    case dbi::Syscall::MREMAP:
      abort();
    
    case dbi::Syscall::MUNMAP:
      {
	const auto rv = syscall_args.rv<int>();
	if (rv >= 0) {
	  void *addr = syscall_args.arg<0, void *>();
	  const size_t size = util::align_up(syscall_args.arg<1, size_t>(), dbi::PAGESIZE);
	
	  page_set.untrack_range(addr, (char *) addr + size);
	}
      }
      break;

    case dbi::Syscall::MPROTECT:
      {
	const auto rv = syscall_args.rv<int>();
	if (rv >= 0) {
	  void *addr = syscall_args.arg<0, void *>();
	  const size_t len = syscall_args.arg<1, size_t>();
	  const int prot = syscall_args.arg<2, int>();
	  void *end = (char *) addr + len;
	  page_set.update_range(addr, end, prot);
	}
      }
      break;
    }

    SyscallChecker syscall_checker(tracee, page_set, taint_state, memcheck.stack_begin(),
				   syscall_args, memcheck);
    syscall_checker.post();

    return true;
  }

  LockTracker_::CheckResult LockTracker_::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    const auto addr = tracee1.get_pc();
    g_conf.log() << "LOCK: " << dbi::Instruction(addr, tracee1) << "\n";
    return CheckResult::KILL; // TODO: Should actually keep.
  }

  bool RTMTracker_::match(const dbi::Instruction& inst) const {
    switch (inst.xed_iclass()) {
    case XED_ICLASS_XBEGIN:
    case XED_ICLASS_XEND:
    case XED_ICLASS_XABORT:
      return true;
    default:
      return false;
    }
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
    default: std::abort();
    }
  }

  void SharedMemSeqPt::read(xed_reg_enum_t reg, dbi::Tracee& tracee1, dbi::Tracee& tracee2) const {
    assert(reg != XED_REG_INVALID);

    const auto encreg = xed_get_largest_enclosing_register(reg);
#if 0
    const uint64_t val64 = taint_state.gpregs().reg(encreg);
#else
    const uint64_t val64 =
      dbi::GPRegisters(tracee1.get_gpregs()).reg(encreg) ^
      dbi::GPRegisters(tracee2.get_gpregs()).reg(encreg);
#endif
  
    if ((val64 & mask_read(reg)) != 0) {
      error() << Error::TAINTED_REG << " " << xed_reg_enum_t2str(reg) << "\n";
      std::abort();
    }
  }

  void SharedMemSeqPt::write(xed_reg_enum_t reg) {
    assert(reg != XED_REG_INVALID);
    assert(xed_reg_class(reg) == XED_REG_CLASS_GPR);
    taint_state.gpregs().reg(xed_get_largest_enclosing_register(reg)) &= ~mask_write(reg);
  }

  void SharedMemSeqPt::write(xed_reg_enum_t reg, dbi::Tracee& tracee1, dbi::Tracee& tracee2) const {
    assert(reg != XED_REG_INVALID);
    const auto mask = mask_write(reg);
    const auto encreg = xed_get_largest_enclosing_register(reg);
    const auto newval = dbi::GPRegisters(tracee1.get_gpregs()).reg(encreg) & mask;
    dbi::GPRegisters dstregs(tracee2.get_gpregs());
    auto& dstreg = dstregs.reg(encreg);
    dstreg = (dstreg & ~mask) | newval;
    tracee2.set_regs(dstregs);
  }

  void SharedMemSeqPt::write_xmm(xed_reg_enum_t reg, XMMWidth xmm_width) {
    assert(xed_reg_class(reg) == XED_REG_CLASS_XMM);
    taint_state.fpregs().xmm(reg).zero(xmm_width);
  }

  void SharedMemSeqPt::write_xmm(xed_reg_enum_t reg, XMMWidth xmm_width,
				 dbi::Tracee& tracee1, dbi::Tracee& tracee2) const {
    assert(xed_reg_class(reg) == XED_REG_CLASS_XMM);
    const dbi::FPRegisters fp1(tracee1.get_fpregs());
    dbi::FPRegisters fp2(tracee2.get_fpregs());
    fp2.xmm(reg).copy(fp1.xmm(reg));
    tracee2.set_regs(fp2);
    assert(fp1.xmm(reg) == fp2.xmm(reg));
    g_conf.log() << "xmm1=" << fp1.xmm(reg) << "\n";
    g_conf.log() << "xmm2=" << fp2.xmm(reg) << "\n";
  }

  void SharedMemSeqPt::read_flags(uint32_t mask) const {
    if ((taint_state.gpregs().eflags() & mask) != 0) {
      error(Error::TAINTED_FLAGS);
      std::abort();
    }
  }

  void SharedMemSeqPt::read_flags(uint32_t mask, dbi::Tracee& tracee1, dbi::Tracee& tracee2) const {
    const auto taint_flags = tracee1.get_gpregs().eflags ^ tracee2.get_gpregs().eflags;
    if (taint_flags) {
      error(Error::TAINTED_FLAGS);
      std::abort();
    }
  }
  
  void SharedMemSeqPt::write_flags(uint32_t mask) {
    taint_state.gpregs().eflags() &= ~mask;
  }

  void SharedMemSeqPt::write_flags(uint32_t mask, dbi::Tracee& tracee1, dbi::Tracee& tracee2) const
  {
    const auto newflags = tracee1.get_gpregs().eflags & mask;
    auto regs2 = tracee2.get_gpregs();
    auto& flags2 = regs2.eflags;
    flags2 = (flags2 & ~mask) | newflags;
    tracee2.set_gpregs(regs2);
  }

  void SharedMemSeqPt::taint_flags(uint32_t mask) {
    if (TAINT_FLAGS) {
      taint_state.gpregs().eflags() |= mask;
    }
  }

  void SharedMemSeqPt::taint_flags(uint32_t mask, dbi::Tracee& tracee1, dbi::Tracee& tracee2) const
  {
    if (TAINT_FLAGS) {
      auto regs1 = tracee1.get_gpregs();
      auto regs2 = tracee2.get_gpregs();
      auto& flags1 = regs1.eflags;
      auto& flags2 = regs2.eflags;
      flags1 = flags1 & ~mask;
      flags2 = flags2 | mask;
      tracee1.set_gpregs(regs1);
      tracee2.set_gpregs(regs2);
    }
  }
  
  bool SharedMemSeqPt::step(dbi::Tracee& tracee) {
    g_conf.log() << "aligned_fault = " << fault_addr << "\n";
    if (sys.syscall<int>(tracee, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_READ)
	< 0) {
      g_conf.log() << "MPROTECT: failed\n";
      dbi::g_conf.abort(tracee);
    }
    
    tracee.singlestep();
    tracee.wait();
    tracee.assert_stopsig(SIGTRAP);
  
    const auto res =
      sys.syscall<int>(tracee, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_NONE);
    assert(res == 0); (void) res;

    return false;
  }

  bool SharedMemSeqPt::step(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    g_conf.log() << "aligned_fault = " << fault_addr << "\n";
    if (sys.syscall<int>(tracee1, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_READ)
	< 0) {
      g_conf.log() << "MPROTECT: failed\n";
      dbi::g_conf.abort(tracee1);
    }
    
    tracee1.singlestep();
    tracee1.wait();
    tracee1.assert_stopsig(SIGTRAP);
  
    const auto res =
      sys.syscall<int>(tracee1, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_NONE);
    assert(res == 0); (void) res;

    /* set PC of tracee2 */
    tracee2.set_pc(tracee1.get_pc());

    return false;
  }

#if 0
  
  SharedMemSeqPt::CheckResult SharedMemSeqPt::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    fault_addr = dbi::pagealign(tracee1.get_siginfo().si_addr);
    
    inst = dbi::Instruction(tracee1.get_pc(), tracee1);
    const bool mem_written = xed_decoded_inst_mem_written(&inst.xedd(), 0);
    const bool mem_read = xed_decoded_inst_mem_read(&inst.xedd(), 0);
    
    (void) mem_written;
    (void) mem_read;
    
    /* check mem address for taint */
    const auto taint_regs = dbi::GPRegisters(tracee1) ^ dbi::GPRegisters(tracee2);
    const auto nmemops = inst.xed_nmemops();
    if (nmemops == 1) {
      const auto base_reg = inst.xed_base_reg();
      const auto index_reg = inst.xed_index_reg();
      if (base_reg != XED_REG_INVALID) {
	if (taint_regs.reg(base_reg) != 0) {
	  error(Error::TAINTED_BASE_REG);
	  g_conf.abort(tracee1);
	}
      }
      if (index_reg != XED_REG_INVALID) {
	if (taint_regs.reg(index_reg) != 0) {
	  error(Error::TAINTED_INDEX_REG);
	  g_conf.abort(tracee1);
	}
      }
    } else {
      assert(nmemops == 2);
      const std::array<xed_operand_enum_t, 2> ops = {XED_OPERAND_BASE0, XED_OPERAND_BASE1};
      for (const auto op : ops) {
	const auto base_reg = inst.xed_reg(op);
	if (base_reg != XED_REG_INVALID) {
	  if (taint_regs.reg(base_reg) != 0) {
	    error(Error::TAINTED_BASE_REG);
	    g_conf.abort(tracee1);
	  }
	}
      }
    }
  
    switch (inst.xed_iform()) {
    case XED_IFORM_CMP_MEMv_IMMb:
    case XED_IFORM_CMP_MEMv_IMMz:
    case XED_IFORM_CMP_MEMb_IMMb_80r7:
    case XED_IFORM_REPE_CMPSB:
    case XED_IFORM_MOVDQU_XMMdq_MEMdq:
    case XED_IFORM_MOVDQA_XMMdq_MEMdq:
    case XED_IFORM_MOVLPD_XMMsd_MEMq:
    case XED_IFORM_MOVHPD_XMMsd_MEMq:
    case XED_IFORM_MOVZX_GPRv_MEMw:
    case XED_IFORM_MOVZX_GPRv_MEMb:
    case XED_IFORM_MOVSXD_GPRv_MEMz:
    case XED_IFORM_MOV_GPRv_MEMv:
      break;

    case XED_IFORM_DIV_MEMv:
      read(XED_REG_RAX, tracee1, tracee2);
      read(XED_REG_RDX, tracee1, tracee2);
      break;

    case XED_IFORM_ADD_GPRv_MEMv:
    case XED_IFORM_SUB_GPRv_MEMv:
    case XED_IFORM_AND_GPRv_MEMv:
      read(inst.xed_reg0(), tracee1, tracee2);
      break;
    
    default:
      std::cerr << inst.xed_iform_str() << "\n";
      std::abort();    
    }

    return CheckResult::KEEP;
  }

#else
  
  SharedMemSeqPt::CheckResult SharedMemSeqPt::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    fault_addr = dbi::pagealign(tracee1.get_siginfo().si_addr);
    instcheck = InstructionChecker(tracee1, tracee2);

    if (!instcheck.check()) {
      return CheckResult::FAIL;
    }

    return CheckResult::KEEP;
  }
    
#endif

#if 0
  
  void SharedMemSeqPt::post(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    auto& inst = instcheck.inst;
    switch (inst.xed_iform()) {
    case XED_IFORM_CMP_MEMv_IMMb:
    case XED_IFORM_CMP_MEMv_IMMz:
    case XED_IFORM_CMP_MEMb_IMMb_80r7:
      write_flags(status_flags, tracee1, tracee2);
      break;

    case XED_IFORM_REPE_CMPSB:
      write(XED_REG_RDI, tracee1, tracee2);
      write(XED_REG_RSI, tracee1, tracee2);
      write_flags(status_flags, tracee1, tracee2);
      break;

    case XED_IFORM_MOVZX_GPRv_MEMw:
    case XED_IFORM_MOVZX_GPRv_MEMb:
    case XED_IFORM_MOVSXD_GPRv_MEMz:
    case XED_IFORM_MOV_GPRv_MEMv:
      write(inst.xed_reg(), tracee1, tracee2);
      break;

    case XED_IFORM_MOVDQU_XMMdq_MEMdq:
    case XED_IFORM_MOVDQA_XMMdq_MEMdq:
      write_xmm(inst.xed_reg(), XMMWidth::FULL, tracee1, tracee2);
      break;

    case XED_IFORM_MOVLPD_XMMsd_MEMq:
      write_xmm(inst.xed_reg(), XMMWidth::LOW, tracee1, tracee2);
      break;

    case XED_IFORM_MOVHPD_XMMsd_MEMq:
      write_xmm(inst.xed_reg(), XMMWidth::HIGH, tracee1, tracee2);
      break;

    case XED_IFORM_DIV_MEMv:
      write(XED_REG_RAX, tracee1, tracee2);
      write(XED_REG_RDX, tracee1, tracee2);
      taint_flags(status_flags);
      break;

    case XED_IFORM_ADD_GPRv_MEMv:
    case XED_IFORM_SUB_GPRv_MEMv:
      write(inst.xed_reg0(), tracee1, tracee2);
      write_flags(status_flags);
      break;

    case XED_IFORM_AND_GPRv_MEMv:
      write(inst.xed_reg0(), tracee1, tracee2);
      write_flags(Flag::OF | Flag::CF | Flag::SF | Flag::ZF | Flag::PF);
      taint_flags(Flag::AF);
      break;
    
    default:
      std::cerr << inst.xed_iform_str() << "\n";
      std::abort();    
    }    
  }

#else

  void SharedMemSeqPt::post(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    instcheck.post();
  }
  
#endif

  SyscallTracker_::Mode SyscallTracker_::mode(dbi::Syscall sys) {
#define E(sys, val) case dbi::Syscall::sys: return Mode::val
    switch (sys) {
      E(READ,            SIM);
      E(WRITE,           SIM);
      E(OPEN,            SEQ);
      E(CLOSE,           SEQ);
      E(STAT,            DUP); // NOTE: this could cause consistency issues
      E(FSTAT,           DUP);
      E(LSTAT,           DUP); // NOTE: this could cause consistency issues
      E(POLL,            SEQ); // NOTE: this might be overly conservative
      E(LSEEK,           SIM);
      E(MMAP,            SEQ); // NOTE: this might be overly conservative
      E(MPROTECT,        DUP);
      E(MUNMAP,          DUP);
      E(BRK,             DUP);
      E(ACCESS,          DUP); // NOTE: this could cause consistency issues
      E(ARCH_PRCTL,      DUP);
      E(FUTEX,           DUP); // NOTE: this could cause consistency issues
      E(EXIT_GROUP,      DUP);
      E(GETDENTS,        SIM);
      E(GETEUID,         DUP);
      E(MREMAP,          SEQ); // NOTE: this might be overly conservative
      E(SOCKET,          SEQ);
      E(CONNECT,         SIM);
      E(SENDTO,          SIM);
      E(SET_TID_ADDRESS, DUP);
      E(SET_ROBUST_LIST, DUP);
      E(RT_SIGACTION,    DUP);
      E(RT_SIGPROCMASK,  DUP);
      E(GETRLIMIT,       DUP);
      E(STATFS,          SEQ); // NOTE: this might be overly conservative
      E(GETUID,          DUP);
      E(GETGID,          DUP);
      E(GETPID,          SIM);
      E(GETPPID,         SIM);
      E(FCNTL,           SEQ); // NOTE: this might be overly conservative
      E(GETEGID,         DUP);
      E(FACCESSAT,       DUP);
      E(IOCTL,           SEQ); // NOTE: this might be overly conservative
      E(LGETXATTR,       SEQ); // NOTE: this might be overly conservative
      E(GETXATTR,        SEQ); // NOTE: this might be overly conservative
      E(RECVMSG,         SIM);
      E(GETRUSAGE,       DUP);
      E(UNAME,           DUP);
      E(SETSOCKOPT,      SEQ); // NOTE: this might be overly conservative
      E(GETPEERNAME,     SIM); // NOTE: this might be overly conservative
      E(GETSOCKNAME,     SIM); // NOTE: this might be overly conservative
      E(GETTID,          SIM);
      E(TGKILL,          SIM);
      E(FADVISE64,       DUP);
      E(SETRLIMIT,       DUP);
      E(READLINK,        DUP); // NOTE: this could cause consistency issues
      E(PIPE,            SEQ); // NOTE: this might be overly conservative
      E(CLOCK_GETTIME,   SIM);
      E(GETTIMEOFDAY,    SIM);
      E(TIME,            SIM);
      E(FORK,            SEQ);
      E(WRITEV,          SIM);
      E(WAIT4,           SEQ);
#undef E
    default: std::abort();
    }
  }
  
}

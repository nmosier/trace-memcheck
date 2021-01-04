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
  
  void SyscallTracker_::handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
    syscall_args.add_call(tracee);
    g_conf.log() << "syscall " << syscall_args.no() << "\n";
    g_conf.add_syscall(syscall_args.no());

    // TODO: Perhaps this should be done in the SyscallTracker's initialization?
    switch (syscall_args.no()) {
    case dbi::Syscall::BRK:
      if (brk == nullptr) {
	brk = (void *) tracee.syscall(dbi::Syscall::BRK, (uintptr_t) nullptr);
      }
    }
  }

  void SyscallTracker_::check(dbi::Tracee& tracee) {
    /* make sure args to syscall aren't tainted */
    SyscallChecker syscall_checker(tracee, page_set, taint_state, memcheck.stack_begin(),
				   syscall_args, memcheck);
  
    if (!syscall_checker.pre()) {
      /* DEBUG: Translate */
      const auto loc = memcheck.orig_loc(tracee.get_pc());
      g_conf.log() << loc.first << " " << loc.second << "\n";
      dbi::g_conf.abort(tracee);
    }
  
  }

  void SyscallTracker_::handler_post(dbi::Tracee& tracee, uint8_t *addr) {
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
	    tracee.syscall(dbi::Syscall::MPROTECT, (uintptr_t) rv, length, PROT_NONE);
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
  }

  void LockTracker_::check(dbi::Tracee& tracee) {
    const auto addr = tracee.get_pc();
    g_conf.log() << "LOCK: " << dbi::Instruction(addr, tracee) << "\n";
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

  void SharedMemSeqPt::read(xed_reg_enum_t reg) const {
    assert(reg != XED_REG_INVALID);

    const auto encreg = xed_get_largest_enclosing_register(reg);
    const uint64_t val64 = taint_state.gpregs().reg(encreg);
  
    if ((val64 & mask_read(reg)) != 0) {
      error() << Error::TAINTED_REG << " " << xed_reg_enum_t2str(reg) << "\n";
      std::abort();
    }
  }

  void SharedMemSeqPt::write(xed_reg_enum_t reg) {
    assert(reg != XED_REG_INVALID);
    taint_state.gpregs().reg(xed_get_largest_enclosing_register(reg)) &= ~mask_write(reg);
  }

  void SharedMemSeqPt::read_flags(uint32_t mask) const {
    if ((taint_state.gpregs().eflags() & mask) != 0) {
      error(Error::TAINTED_FLAGS);
      std::abort();
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

  void SharedMemSeqPt::check(dbi::Tracee& tracee) {
    const auto inst = dbi::Instruction(tracee.get_pc(), tracee);
    const bool mem_written = xed_decoded_inst_mem_written(&inst.xedd(), 0);
    const bool mem_read = xed_decoded_inst_mem_read(&inst.xedd(), 0);

    const auto aligned_fault =
      reinterpret_cast<uintptr_t>(dbi::pagealign(tracee.get_siginfo().si_addr));
    g_conf.log() << "aligned_fault = " << (void *) aligned_fault << "\n";
    if ((int) tracee.syscall(dbi::Syscall::MPROTECT, aligned_fault, dbi::PAGESIZE, PROT_READ) < 0) {
      g_conf.log() << "MPROTECT: failed\n";
      dbi::g_conf.abort(tracee);
    }

    tracee.singlestep();
    dbi::Status status;
    tracee.wait(status);

    tracee.assert_stopsig(status, SIGTRAP); (void) status;
  
    tracee.syscall(dbi::Syscall::MPROTECT, aligned_fault, dbi::PAGESIZE, PROT_NONE);  
  
    (void) mem_written;
    (void) mem_read;

    /* check mem address for taint */
    const auto nmemops = inst.xed_nmemops();
    if (nmemops == 1) {
      const auto base_reg = inst.xed_base_reg();
      const auto index_reg = inst.xed_index_reg();
      if (base_reg != XED_REG_INVALID) {
	if (taint_state.gpregs().reg(base_reg) != 0) {
	  error(Error::TAINTED_BASE_REG);
	  g_conf.abort(tracee);
	}
      }
      if (index_reg != XED_REG_INVALID) {
	if (taint_state.gpregs().reg(index_reg) != 0) {
	  error(Error::TAINTED_INDEX_REG);
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
	    error(Error::TAINTED_BASE_REG);
	    g_conf.abort(tracee);
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
	taint_state.fpregs().xmm(reg).zero();
      }
      break;

    case XED_IFORM_MOVLPD_XMMsd_MEMq:
      {
	const auto reg = inst.xed_reg();
	taint_state.fpregs().xmm(reg).zero_lower();
      }
      break;

    case XED_IFORM_MOVHPD_XMMsd_MEMq:
      {
	const auto reg = inst.xed_reg();
	taint_state.fpregs().xmm(reg).zero_upper();
      }
      break;

    case XED_IFORM_DIV_MEMv:
      read_write(XED_REG_RAX);
      read_write(XED_REG_RDX);
      taint_flags(status_flags);
      break;

    case XED_IFORM_ADD_GPRv_MEMv:
    case XED_IFORM_SUB_GPRv_MEMv:
      read_write(inst.xed_reg0());
      write_flags(status_flags);
      break;

    case XED_IFORM_AND_GPRv_MEMv:
      read_write(inst.xed_reg0());
      write_flags(Flag::OF | Flag::CF | Flag::SF | Flag::ZF | Flag::PF);
      taint_flags(Flag::AF);
      break;
    
    default:
      std::cerr << inst.xed_iform_str() << "\n";
      abort();    
    }

    // memcheck.start_round();
  }

}

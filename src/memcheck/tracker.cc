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

    return true;
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
#if 1
    return checkres();
#else
    return CheckResult::KILL;
#endif
  }

  bool SyscallTracker_::step(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    switch (mode()) {
    case Mode::DUP: return step_both(tracee1, tracee2);
    case Mode::SIM: return step_one(tracee1, tracee2);
    case Mode::SEQ:
    default:
      std::abort();
    }
  }
  
  bool SequencePoint_Defaults::step(dbi::Tracee& tracee) {
    tracee.singlestep();
    tracee.wait();
    const auto status = tracee.status();
    assert(status.stopped_trap() || status.exited()); (void) status;
    return status.exited();
  }

  bool SequencePoint_Defaults::step_one(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    const auto exited = step(tracee1);
    assert(!exited); (void) exited;
    tracee2.set_pc(tracee1.get_pc());
    return false;
  }

  bool SequencePoint_Defaults::step_both(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    const auto exited1 = step(tracee1);
    const auto exited2 = step(tracee2);
    assert(exited1 == exited2); (void) exited2;
    return exited1;
  }

  bool SyscallTracker_::post(dbi::Tracee& tracee) {
    post_update_maps(tracee);

    SyscallChecker syscall_checker(tracee, page_set, taint_state, memcheck.stack_begin(),
				   syscall_args, memcheck);
    syscall_checker.post();

    return true;
  }
  
  bool SyscallTracker_::post(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    post_update_maps(tracee1);

    switch (mode()) {
    case Mode::DUP:
      return true;
    case Mode::SIM:
      {
	SyscallChecker2 syscall_checker(tracee1, tracee2, page_set, memcheck.stack_begin(),
					syscall_args, memcheck);
	syscall_checker.post();
      }
      return true;

    case Mode::SEQ:
    default:
      std::abort();
    }
  }

  void SyscallTracker_::post_update_maps(dbi::Tracee& tracee) {
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
  }

  SyscallTracker_::CheckResult SyscallTracker_::checkres(Mode mode) {
    switch (mode) {
    case Mode::DUP:
    case Mode::SIM:
      return CheckResult::KEEP;
    case Mode::SEQ:
      return CheckResult::KILL;
    default:
      std::abort();
    }
  }
  

  LockTracker_::CheckResult LockTracker_::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    instcheck.init(tracee1, tracee2);
    std::clog << instcheck.inst << "\n";
    if (!instcheck.check()) {
      return CheckResult::FAIL;
    }
    return CheckResult::KEEP;
  }

  void LockTracker_::post(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    instcheck.post();
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
  
  bool SharedMemSeqPt::step(dbi::Tracee& tracee) {
    g_conf.log() << "aligned_fault = " << fault_addr << "\n";
    if (sys.syscall<int>(tracee, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_READ)
	< 0) {
      g_conf.log() << "MPROTECT: failed\n";
      dbi::g_conf.abort(tracee);
    }

    const auto exited = step(tracee);
    assert(exited == false); (void) exited;

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

    const auto exited = step_one(tracee1, tracee2);
    assert(!exited); (void) exited;
  
    const auto res =
      sys.syscall<int>(tracee1, dbi::Syscall::MPROTECT, fault_addr, dbi::PAGESIZE, PROT_NONE);
    assert(res == 0); (void) res;

    return false;
  }

  SharedMemSeqPt::CheckResult SharedMemSeqPt::check(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    fault_addr = dbi::pagealign(tracee1.get_siginfo().si_addr);
    instcheck = InstructionChecker(tracee1, tracee2);

    if (!instcheck.check()) {
      return CheckResult::FAIL;
    }

    return CheckResult::KEEP;
  }
    
  void SharedMemSeqPt::post(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
    instcheck.post();
  }

  SyscallTracker_::Mode SyscallTracker_::mode(dbi::Syscall sys) {
#define E(sys, val) case dbi::Syscall::sys: return Mode::val
    switch (sys) {
      E(READ,            SIM);
      E(WRITE,           SIM);
      E(OPEN,            SEQ);
      E(CLOSE,           DUP); // NOTE: this might need to be weakened
      E(STAT,            SIM); // NOTE: this can be strengthened
      E(FSTAT,           DUP);
      E(LSTAT,           SIM); // NOTE: this can be strengthened
      E(POLL,            SEQ); // NOTE: this might be overly conservative
      E(LSEEK,           SIM);
      E(MMAP,            SEQ); // NOTE: this might be overly conservative
      E(MPROTECT,        DUP);
      E(MUNMAP,          DUP);
      E(BRK,             DUP);
      E(ACCESS,          SIM); // NOTE: this could cause consistency issues
      E(ARCH_PRCTL,      SEQ); // NOTE: this might be overly conservative
      E(FUTEX,           SEQ); // NOTE: this might be overly conservative
      E(EXIT_GROUP,      DUP);
      E(GETDENTS,        SIM);
      E(MREMAP,          SEQ); // NOTE: this might be overly conservative
      E(SOCKET,          SEQ);
      E(CONNECT,         SEQ); // NOTE: this might be overly conservative
      E(SENDTO,          SIM);
      E(SET_TID_ADDRESS, SEQ); // NOTE: this might be overly conservative
      E(SET_ROBUST_LIST, SEQ); // NOTE: this might be overly conservative
      E(RT_SIGACTION,    SEQ); // NOTE: this might be overly conservative
      E(RT_SIGPROCMASK,  SEQ); // NOTE: this might be overly conservative
      E(GETRLIMIT,       DUP);
      E(GETRUSAGE,       DUP);
      E(STATFS,          SIM);
      E(GETUID,          DUP);
      E(GETEUID,         DUP);
      E(GETGID,          DUP);
      E(GETEGID,         DUP);
      E(GETPID,          SIM);
      E(GETPPID,         SIM);
      E(FCNTL,           SEQ); // NOTE: this might be overly conservative
      E(FACCESSAT,       SIM);
      E(IOCTL,           SEQ); // NOTE: this might be overly conservative
      E(LGETXATTR,       SEQ); // NOTE: this might be overly conservative
      E(GETXATTR,        SEQ); // NOTE: this might be overly conservative
      E(RECVMSG,         SIM);
      E(UNAME,           DUP);
      E(SETSOCKOPT,      SEQ); // NOTE: this might be overly conservative
      E(GETPEERNAME,     SIM); // NOTE: this might be overly conservative
      E(GETSOCKNAME,     SIM); // NOTE: this might be overly conservative
      E(GETTID,          SIM);
      E(TGKILL,          SEQ); // NOTE: this might need behind-the-scenes logic
      E(FADVISE64,       SIM); // NOTE: this might be overly conservative
      E(SETRLIMIT,       SEQ); // NOTE: this might be overly conservative
      E(READLINK,        SIM);
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

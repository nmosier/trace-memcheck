#include "inst-check.hh"
#include "log.hh"
#include "settings.hh"
#include "util.hh"
#include "config.hh"

namespace memcheck {

  uint64_t InstructionChecker::mask(xed_reg_enum_t reg, bool read) const {
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

  bool InstructionChecker::read(xed_reg_enum_t reg) {
    assert(reg != XED_REG_INVALID);

    const auto encreg = xed_get_largest_enclosing_register(reg);
    const uint64_t val64 =
      dbi::GPRegisters(tracee1->get_gpregs()).reg(encreg) ^
      dbi::GPRegisters(tracee2->get_gpregs()).reg(encreg);
    
    if ((val64 & mask_read(reg)) != 0) {
      error() << Error::TAINTED_REG << " " << xed_reg_enum_t2str(reg) << "\n";
      return false;
    } else {
      return true;
    }
  }

  bool InstructionChecker::read_mem(void *ptr, unsigned size) {
    constexpr unsigned n = 2;
    std::array<dbi::Tracee *, n> tracees = {tracee1, tracee2};
    std::array<std::vector<char>, n> bufs;
    
    for (unsigned i = 0; i < n; ++i) {
      bufs[i].resize(size);
      tracees[i]->read(bufs[i].data(), size, ptr);
    }

    std::transform(bufs[0].begin(), bufs[0].end(), bufs[1].begin(), bufs[0].begin(),
		   std::bit_xor<char>());

    const bool taint_is_zero =
      std::all_of(bufs[0].begin(), bufs[0].end(), [] (auto x) { return x == 0; });
    if (!taint_is_zero) {
      error() << Error::TAINTED_MEM << " " << ptr << "(" << size << " bytes)\n";
      std::clog << std::hex << tracee1->read_type<int>((const int *) ptr) << "\n" << std::dec;
      std::clog << std::hex << tracee2->read_type<int>((const int *) ptr) << "\n" << std::dec;
      return false;
    }
    return true;
  }

  bool InstructionChecker::read_mem(xed_reg_enum_t base_reg, xed_reg_enum_t index_reg,
				    unsigned scale, std::ptrdiff_t displacement, unsigned size) {
    const dbi::GPRegisters gpregs1(*tracee1);
    const dbi::GPRegisters gpregs2(*tracee2);

    assert(base_reg != XED_REG_INVALID);
    if (gpregs1.reg(base_reg) != gpregs2.reg(base_reg)) {
      error() << Error::TAINTED_BASE_REG << "\n";
      return false;
    }
    const auto base_ptr = reinterpret_cast<char *>(gpregs1.reg(base_reg));
    
    std::ptrdiff_t index_off;
    if (index_reg == XED_REG_INVALID) {
      index_off = 0;
    } else {
      if (gpregs1.reg(index_reg) != gpregs2.reg(index_reg)) {
	error() << Error::TAINTED_INDEX_REG << "\n";
	return false;
      }
      index_off = static_cast<std::ptrdiff_t>(gpregs1.reg(index_reg));
    }

    const auto ptr = base_ptr + index_off * scale + displacement;
    return read_mem(ptr, size);
  }
  
  void InstructionChecker::write(xed_reg_enum_t reg) {
    assert(reg != XED_REG_INVALID);
    const auto mask = mask_write(reg);
    const auto encreg = xed_get_largest_enclosing_register(reg);
    const auto newval = dbi::GPRegisters(tracee1->get_gpregs()).reg(encreg) & mask;
    dbi::GPRegisters dstregs(tracee2->get_gpregs());
    auto& dstreg = dstregs.reg(encreg);
    dstreg = (dstreg & ~mask) | newval;
    tracee2->set_regs(dstregs);
  }

  void InstructionChecker::write_mem(void *ptr, unsigned size) {
    /* Read from tracee1 & write to tracee2. */
    std::vector<char> buf(size);
    tracee1->read(buf.data(), size, ptr);
    tracee2->write(buf.data(), size, ptr);
  }

  void InstructionChecker::write_mem(xed_reg_enum_t base, xed_reg_enum_t index, unsigned scale,
				     std::ptrdiff_t displacement, unsigned size) {
    const dbi::GPRegisters gpregs1(*tracee1);
    dbi::GPRegisters gpregs2(*tracee2);
    assert(gpregs1.reg(base) == gpregs2.reg(base));
    if (index != XED_REG_INVALID) {
      assert(gpregs1.reg(index) == gpregs2.reg(index));
    }
    
    const auto base_ptr = reinterpret_cast<char *>(gpregs1.reg(base));
    std::ptrdiff_t index_off = 0;
    if (index != XED_REG_INVALID) {
      index_off = static_cast<std::ptrdiff_t>(gpregs1.reg(index));
    }

    const auto ptr = base_ptr + index_off * scale + displacement;
    write_mem(ptr, size);
  }

  void InstructionChecker::write_xmm(xed_reg_enum_t reg, XMMWidth xmm_width) {
    assert(xed_reg_class(reg) == XED_REG_CLASS_XMM);
    const dbi::FPRegisters fp1(tracee1->get_fpregs());
    dbi::FPRegisters fp2(tracee2->get_fpregs());
    fp2.xmm(reg).copy(fp1.xmm(reg));
    tracee2->set_regs(fp2);
  }

  bool InstructionChecker::read_flags(uint32_t mask) {
    const auto taint_flags = tracee1->get_gpregs().eflags ^ tracee2->get_gpregs().eflags;
    if (taint_flags) {
      error(Error::TAINTED_FLAGS);
      return false;
    } else {
      return true;
    }
  }
  
  void InstructionChecker::write_flags(uint32_t mask) {
    const auto newflags = tracee1->get_gpregs().eflags & mask;
    auto regs2 = tracee2->get_gpregs();
    auto& flags2 = regs2.eflags;
    flags2 = (flags2 & ~mask) | newflags;
    tracee2->set_gpregs(regs2);
  }

  void InstructionChecker::taint_flags(uint32_t mask) {
    if (TAINT_FLAGS) {
      auto regs1 = tracee1->get_gpregs();
      auto regs2 = tracee2->get_gpregs();
      auto& flags1 = regs1.eflags;
      auto& flags2 = regs2.eflags;
      flags1 = flags1 & ~mask;
      flags2 = flags2 | mask;
      tracee1->set_gpregs(regs1);
      tracee2->set_gpregs(regs2);
    }
  }  

  bool InstructionChecker::check() {
    const unsigned nmemops = inst.xed_nmemops();
    for (unsigned i = 0; i < nmemops; ++i) {
      if (xed_decoded_inst_mem_read(&inst.xedd(), i)) {
	const auto base = xed_decoded_inst_get_base_reg(&inst.xedd(), i);
	const auto index = xed_decoded_inst_get_index_reg(&inst.xedd(), i);
	const auto scale = xed_decoded_inst_get_scale(&inst.xedd(), i);
	const auto displacement = xed_decoded_inst_get_memory_displacement(&inst.xedd(), i);
	const auto size = xed_decoded_inst_get_memory_operand_length(&inst.xedd(), i);
	read_mem(base, index, scale, displacement, size);
      }
    }
    
    switch (inst.xed_iform()) {
    case XED_IFORM_CMP_MEMv_IMMb:
    case XED_IFORM_CMP_MEMv_IMMz:
    case XED_IFORM_CMP_MEMb_IMMb_80r7:
    case XED_IFORM_MOVDQU_XMMdq_MEMdq:
    case XED_IFORM_MOVDQA_XMMdq_MEMdq:
    case XED_IFORM_MOVLPD_XMMsd_MEMq:
    case XED_IFORM_MOVHPD_XMMsd_MEMq:
    case XED_IFORM_MOVZX_GPRv_MEMw:
    case XED_IFORM_MOVZX_GPRv_MEMb:
    case XED_IFORM_MOVSXD_GPRv_MEMz:
    case XED_IFORM_MOV_GPRv_MEMv:
    case XED_IFORM_DEC_LOCK_MEMv:
    case XED_IFORM_INC_LOCK_MEMv:
    case XED_IFORM_SUB_LOCK_MEMv_IMMb:
      assert(nmemops == 1);
      return true;

    case XED_IFORM_REPE_CMPSB:
      assert(nmemops == 2);
      return true;
      
    case XED_IFORM_DIV_MEMv:
      return read(XED_REG_RAX) && read(XED_REG_RDX);

    case XED_IFORM_ADD_GPRv_MEMv:
    case XED_IFORM_SUB_GPRv_MEMv:
    case XED_IFORM_AND_GPRv_MEMv:
    case XED_IFORM_CMPXCHG_LOCK_MEMv_GPRv:
      assert(nmemops == 1);
      return read(inst.xed_reg0());

    
    default:
      std::cerr << inst.xed_iform_str() << "\n";
      std::cerr << inst << "\n";
      g_conf.abort(*tracee1);
    }
  }

  void InstructionChecker::post() {
    const unsigned nmemops = inst.xed_nmemops();
    for (unsigned i = 0; i < nmemops; ++i) {
      if (xed_decoded_inst_mem_written(&inst.xedd(), i)) {
	const auto base = xed_decoded_inst_get_base_reg(&inst.xedd(), i);
	const auto index = xed_decoded_inst_get_index_reg(&inst.xedd(), i);
	const auto scale = xed_decoded_inst_get_scale(&inst.xedd(), i);
	const auto disp = xed_decoded_inst_get_memory_displacement(&inst.xedd(), i);
	const auto size = xed_decoded_inst_get_memory_operand_length(&inst.xedd(), i);
	write_mem(base, index, scale, disp, size);
      }
    }

    switch (inst.xed_iform()) {
    case XED_IFORM_CMP_MEMv_IMMb:
    case XED_IFORM_CMP_MEMv_IMMz:
    case XED_IFORM_CMP_MEMb_IMMb_80r7:
    case XED_IFORM_DEC_LOCK_MEMv:
    case XED_IFORM_INC_LOCK_MEMv:
    case XED_IFORM_SUB_LOCK_MEMv_IMMb:
      write_flags(status_flags);
      break;

    case XED_IFORM_REPE_CMPSB:
      write(XED_REG_RDI);
      write(XED_REG_RSI);
      write_flags(status_flags);
      break;

    case XED_IFORM_MOVZX_GPRv_MEMw:
    case XED_IFORM_MOVZX_GPRv_MEMb:
    case XED_IFORM_MOVSXD_GPRv_MEMz:
    case XED_IFORM_MOV_GPRv_MEMv:
      write(inst.xed_reg());
      break;

    case XED_IFORM_MOVDQU_XMMdq_MEMdq:
    case XED_IFORM_MOVDQA_XMMdq_MEMdq:
      write_xmm(inst.xed_reg(), XMMWidth::FULL);
      break;

    case XED_IFORM_MOVLPD_XMMsd_MEMq:
      write_xmm(inst.xed_reg(), XMMWidth::LOW);
      break;

    case XED_IFORM_MOVHPD_XMMsd_MEMq:
      write_xmm(inst.xed_reg(), XMMWidth::HIGH);
      break;

    case XED_IFORM_DIV_MEMv:
      write(XED_REG_RAX);
      write(XED_REG_RDX);
      taint_flags(status_flags);
      break;

    case XED_IFORM_ADD_GPRv_MEMv:
    case XED_IFORM_SUB_GPRv_MEMv:
      write(inst.xed_reg0());
      write_flags(status_flags);
      break;

    case XED_IFORM_AND_GPRv_MEMv:
      write(inst.xed_reg0());
      write_flags(Flag::OF | Flag::CF | Flag::SF | Flag::ZF | Flag::PF);
      taint_flags(Flag::AF);
      break;
    
    case XED_IFORM_CMPXCHG_LOCK_MEMv_GPRv:
      write_flags(Flag::ZF);
      break;
      
    default:
      std::cerr << inst.xed_iform_str() << "\n";
      std::cerr << inst << "\n";
      std::abort();    
    }
  }
  
}

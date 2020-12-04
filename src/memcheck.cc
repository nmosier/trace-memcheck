#include "memcheck.hh"

namespace memchk {

  static bool is_sp_dec(const Instruction& inst) {
#if 0
    switch (inst.xed_iclass()) {
    case XED_ICLASS_SUB:
    case XED_ICLASS_ADD:
    case XED_ICLASS_XOR:
    case XED_ICLASS_OR:
    case XED_ICLASS_AND:
    case XED_ICLASS_DEC:
      if (inst.xed_reg0() == XED_REG_RSP) {
	return true;
      } else {
	return false;
      }

    default:
      return false;
    }
#else
    return inst.xed_reg0() == XED_REG_RSP;
#endif
  }

#if 0
  static bool is_sp_change(const Instruction& inst) {
    if (inst.xed_reg0() == XED_REG_RSP) {
      return true; 
    } else {
      return false;
    }
  }
#endif
  
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    (void) addr;

    /* check if SP decrement */
    if (is_sp_dec(inst)) {
      auto sp_dec_bkpt = Instruction::int3(addr);
      addr = info.writer(sp_dec_bkpt);
      info.rb(sp_dec_bkpt.pc(), [inst] (uint8_t *addr) {
	std::clog << "sp dec @ " << (const void *) addr << ": " << inst << std::endl;
      });
    }
    
    addr = info.writer(inst);
  }
  
}

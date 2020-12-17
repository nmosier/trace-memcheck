#include "regs.hh"

unsigned long long user_regs_struct::* GPRegisters::reg_ptr(xed_reg_enum_t xed_reg) {
  switch (xed_reg) {
  case XED_REG_RAX: return &user_regs_struct::rax;
  case XED_REG_RBX: return &user_regs_struct::rbx;
  case XED_REG_RCX: return &user_regs_struct::rcx;
  case XED_REG_RDX: return &user_regs_struct::rdx;
  case XED_REG_RDI: return &user_regs_struct::rdi;
  case XED_REG_RSI: return &user_regs_struct::rsi;
  case XED_REG_RSP: return &user_regs_struct::rsp;
  case XED_REG_RBP: return &user_regs_struct::rbp;
  case XED_REG_R8 : return &user_regs_struct::r8 ;
  case XED_REG_R9 : return &user_regs_struct::r9 ;
  case XED_REG_R10: return &user_regs_struct::r10;
  case XED_REG_R11: return &user_regs_struct::r11;
  case XED_REG_R12: return &user_regs_struct::r12;
  case XED_REG_R13: return &user_regs_struct::r13;
  case XED_REG_R14: return &user_regs_struct::r14;
  case XED_REG_R15: return &user_regs_struct::r15;
  default: abort();
  }  
}

unsigned long long GPRegisters::reg(xed_reg_enum_t xed_reg) const {
  return regs_.*reg_ptr(xed_reg);
}

unsigned long long& GPRegisters::reg(xed_reg_enum_t xed_reg) {
  return regs_.*reg_ptr(xed_reg);
}

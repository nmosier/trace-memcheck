extern "C" {
#include <xed/xed-interface.h>
}

#include <assert.h>
#include <stdio.h>
#include <sys/ptrace.h>

#include "branches.hh"

void BranchPatcher::patch(void *root) {
  xed_decoded_inst_t xedd;
  InstClass iclass;
  void *branch_pc = find_branch(root, xedd, iclass);

  printf("branch_pc = %p\n", branch_pc);
}

void *BranchPatcher::find_branch(void *pc_, xed_decoded_inst_t& xedd, InstClass& iclass) {
  uint8_t *pc = (uint8_t *) pc_;
  const bool decoded = decoder.decode(pc, xedd);
  assert(decoded);
  iclass = classify(xed_decoded_inst_get_iclass(&xedd));
  while (iclass == InstClass::OTHER) {
    pc += xed_decoded_inst_get_length(&xedd);
    const bool decoded = decoder.decode(pc, xedd);
    assert(decoded);
    iclass = classify(xed_decoded_inst_get_iclass(&xedd));
  }
  return pc;
}

bool BranchPatcher::iclass_is_jump(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_JB:
  case XED_ICLASS_JBE:
  case XED_ICLASS_JCXZ:
  case XED_ICLASS_JECXZ:
  case XED_ICLASS_JL:
  case XED_ICLASS_JLE:
  case XED_ICLASS_JMP:
  case XED_ICLASS_JMP_FAR:
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

bool BranchPatcher::iclass_is_call(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_CALL_FAR:
  case XED_ICLASS_CALL_NEAR:
    return true;
  default:
    return false;
  }
}

bool BranchPatcher::iclass_is_ret(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_RET_FAR:
  case XED_ICLASS_RET_NEAR:
    return true;
  default:
    return false;
  }
}

BranchPatcher::InstClass BranchPatcher::classify(xed_iclass_enum_t iclass) {
  if (iclass_is_jump(iclass)) {
    return InstClass::JUMP;
  } else if (iclass_is_call(iclass)) {
    return InstClass::CALL;
  } else if (iclass_is_ret(iclass)) {
    return InstClass::RET;
  } else {
    return InstClass::OTHER;
  }
}

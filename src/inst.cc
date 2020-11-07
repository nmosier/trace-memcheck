#include "inst.hh"

uint8_t *Instruction::branch_dst(void) const {
  return pc() + size() + xed_decoded_inst_get_branch_displacement(&xedd());
}

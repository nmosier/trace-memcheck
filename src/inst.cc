#include <cassert>
#include "inst.hh"

uint8_t *Instruction::branch_dst(void) const {
  return pc() + size() + xed_decoded_inst_get_branch_displacement(&xedd());
}

bool Instruction::is_jump_short(void) const {
  if (size() == 2 && (data()[0] & 0xf0) == 0x70) {
    return true;
  } else if (size() == 1 && xed_iform() == XED_IFORM_JMP_RELBRb) {
    return true;
  } else {
    return false;
  }
}

void Instruction::relocate(uint8_t *newpc) {
  
  /* check if short */
  if (is_jump_short()) {
    const uint8_t short_opcode = data()[0];
    const uint8_t long_opcode = (short_opcode & 0x0f) | 0x80;
    data_ = {0x0f, long_opcode};
    abort(); // TODO
  } else {
    abort(); // TODO
  }

  const uint8_t *oldpc = pc();
}

void Instruction::relocate_relbr32(ptrdiff_t diff) {
  assert(xed_decoded_inst_get_branch_displacement_width_bits(&xedd()) == 32);
  const xed_encoder_operand_t disp =
    {.type = XED_ENCODER_OPERAND_TYPE_BRDISP,
     .u = {.brdisp = (int32_t) (diff + xed_decoded_inst_get_branch_displacement(&xedd()))},
     .width_bits = 32
    };
  
  if (!xed_patch_relbr(&xedd_, data_.data(), disp)) {
    fprintf(stderr, "failed to patch branch\n");
    abort();
  }
}

Instruction::Instruction(uint8_t *pc, Tracee& tracee): pc_(pc), tracee(&tracee) {
  tracee.read(data_, pc_);
  good_ = Decoder::decode(data_.data(), max_inst_len, xedd_);
}

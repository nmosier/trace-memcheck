#include <cassert>
#include <cstring>
#include "inst.hh"

uint8_t *Instruction::branch_dst(void) const {
  return pc() + size() + xed_decoded_inst_get_branch_displacement(&xedd());
}

void Instruction::retarget(uint8_t *newdst) {
  if (retarget_jmp_relbr8([newdst] (uint8_t *dst) { return newdst; })) {}
  else if (retarget_jmp_relbr32([newdst] (uint8_t *dst) { return newdst; })) {}
  else if (retarget_call_relbr32([newdst] (uint8_t *dst) { return newdst; })) {}
}

void Instruction::relocate(uint8_t *newpc) {
  Blob::relocate(newpc);
  
  const ptrdiff_t diff = pc() - newpc;
  if (relocate_jmp_relbr8(diff)) {}
  else if (relocate_jmp_relbr32(diff)) {}
  else if (relocate_call_relbr32(diff)) {}
  else if (relocate_mem(diff)) {}
  pc(newpc);
}

template <typename Op>
bool Instruction::retarget_jmp_relbr8(Op get_dst_ptr) {
  Data newdata;
  uint8_t *offset;
  if (size() == 2 && (data()[0] & 0xf0) == 0x70) {
    const uint8_t short_opcode = data()[0];
    const uint8_t long_opcode = (short_opcode & 0x0f) | 0x80;
    newdata[0] = 0x0f;
    newdata[1] = long_opcode;
    offset = &newdata[2];
  } else if (size() == 1 && xed_iform() == XED_IFORM_JMP_RELBRb) {
    newdata[0] = 0xe9;
    offset = &newdata[1];
  } else {
    return false;
  }

  assert(xed_decoded_inst_get_branch_displacement_width_bits(&xedd()) == 8);

  const ptrdiff_t relbr = xed_decoded_inst_get_branch_displacement(&xedd());
  uint8_t *baseaddr = pc() + size();
  *offset = get_dst_ptr(baseaddr + relbr) - baseaddr;
  data(newdata);

  return true;
}

template <typename Op>
void Instruction::patch_relbr(Op get_dst_ptr) {
    assert(xed_decoded_inst_get_branch_displacement_width_bits(&xedd()) == 32);
    xed_encoder_operand_t disp;
    disp.type = XED_ENCODER_OPERAND_TYPE_BRDISP;
    uint8_t *baseaddr = pc() + size();
    disp.u.brdisp = (int32_t)
      (get_dst_ptr(baseaddr + xed_decoded_inst_get_branch_displacement(&xedd())) - baseaddr);
    disp.width_bits = 32;
  
    if (!xed_patch_relbr(&xedd_, data_.data(), disp)) {
      fprintf(stderr, "failed to patch branch\n");
      abort();
    }
}

template <typename Op>
bool Instruction::retarget_jmp_relbr32(Op get_dst_ptr) {
  if ((data()[0] == 0x0f && (data()[1] & 0xf0) == 0x80) || /* conditional */
      data()[0] == 0xe9) { /* unconditional */
    patch_relbr(get_dst_ptr);
    return true;
  } else {
    return false;
  }
}

template <typename Op>
bool Instruction::retarget_call_relbr32(Op get_dst_ptr) {
  if (data()[0] == 0xe8) {
    patch_relbr(get_dst_ptr);
    return true;
  } else {
    return false;
  }
}

bool Instruction::relocate_jmp_relbr8(ptrdiff_t diff) {
  return retarget_jmp_relbr8([diff] (uint8_t *old_dst) { return old_dst + diff; });
}

bool Instruction::relocate_jmp_relbr32(ptrdiff_t diff) {
  return retarget_jmp_relbr32([diff] (uint8_t *old_dst) { return old_dst + diff; });
}

bool Instruction::relocate_call_relbr32(ptrdiff_t diff) {
  return retarget_call_relbr32([diff] (uint8_t *old_dst) { return old_dst + diff; });
}

bool Instruction::relocate_mem(ptrdiff_t diff) {
  const unsigned memops = xed_decoded_inst_number_of_memory_operands(&xedd());
  // assert(memops == 0 || memops == 1);

  if (memops == 0) {
    return false;
  }
  
  /* check if memory access is rip-relative */
  const unsigned memidx = 0;
  const xed_reg_enum_t reg = xed_decoded_inst_get_base_reg(&xedd(), memidx);
  if (reg != XED_REG_RIP) {
    return false;
  }

  assert(xed_decoded_inst_get_memory_displacement_width_bits(&xedd(), memidx) == 32);
  const ptrdiff_t olddisp = xed_decoded_inst_get_memory_displacement(&xedd(), memidx);
  xed_enc_displacement_t disp;
  disp.displacement = (int32_t) (olddisp + diff);
  disp.displacement_bits = 32;
  if (!xed_patch_disp(&xedd_, data_.data(), disp)) {
    fprintf(stderr, "failed to patch memory operand\n");
    abort();
  }
  return true;
}

Instruction::Instruction(uint8_t *pc_, const Tracee& tracee): Blob(pc_) {
  tracee.read(data_, pc());
  decode();
}

void Instruction::data(const uint8_t *newdata, size_t len) {
  memcpy(data_.data(), newdata, len);
  decode();
}

std::ostream& Instruction::print(std::ostream& os) const {
  return os << Decoder::disas(*this);
}

void Instruction::decode(void) {
  good_ = Decoder::decode(data_.data(), data_.size(), xedd_);
}

Instruction::Instruction(uint8_t *pc, const Data& opcode): Blob(pc), data_(opcode) {
  decode();
}

Instruction Instruction::jmp_relbrd(uint8_t *pc, uint8_t *dst) {
  /* calculate instruction length */
  constexpr unsigned instlen = 5;
  const int32_t disp = dst - (pc + instlen);
  Data opcode;
  opcode[0] = 0xe9;
  * (int32_t *) &opcode[1] = disp;
  return Instruction(pc, opcode);
}

Instruction Instruction::jmp_mem(uint8_t *pc, uint8_t *mem) {
  constexpr unsigned instlen = 6;
  const int32_t disp = mem - (pc + instlen);
  Data opcode;
  opcode[0] = 0xff;
  opcode[1] = 0x25;
  * (int32_t *) &opcode[2] = disp;
  return Instruction(pc, opcode);
}

void Blob::relocate(uint8_t *newpc) {
  pc_ = newpc;
}

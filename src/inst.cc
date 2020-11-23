#include <cassert>
#include <cstring>
#include <unordered_map>
#include "inst.hh"
#include "debug.h"

uint8_t *Instruction::branch_dst(void) const {
  return after_pc() + xed_decoded_inst_get_branch_displacement(&xedd());
}

uint8_t *Instruction::mem_dst(void) const {
  return after_pc() + xed_decoded_inst_get_memory_displacement(&xedd(), 0); // TODO: is 0 right?
}

uint8_t Instruction::modrm() const {
  return xed_decoded_inst_get_modrm(&xedd());
}

uint8_t *Instruction::modrm_ptr() {
#if 1
  /* check for primary opcodes */
  uint8_t *it = data();

  switch (*it) {
  case 0xC4:
  case 0x8F:
    it += 4;
    break;
  case 0xC5:
    it += 3;
    break;

  default:
    {
      while (true) {
	if ((*it & 0xf0) == 0x40) {
	  /* REX prefix */
	  ++it;
	} else {
	  switch (*it) {
	  case 0x66:
	  case 0xF2:
	  case 0xF3:
	  case 0x9B:
	  case 0xF0:
	    ++it;
	    break;

	  default:
	    goto past_prefixes;
	  }
	}
      }
    past_prefixes:
      if (*it == 0x0f) {
	++it;
      }
      ++it;
    }
    break;
  }

  assert(*it == modrm());
  return it;

#else
  
  uint8_t *it = data();
  it += xed_decoded_inst_get_nprefixes(&xedd());
  if (*it == 0x0f) {
    ++it;
  }
  ++it;
  assert(*it == modrm());
  return it;
#endif
}

void Instruction::modrm_rm(uint8_t rm) {
  assert((rm & 0b111) == rm);
  uint8_t *ptr = modrm_ptr();
  *ptr = (*ptr & ~0b111) | rm;
  decode(); // TODO: Maybe aprameterize this?
}

void Instruction::retarget(uint8_t *newdst) {
  auto get_dst_ptr = [newdst] (uint8_t *dst) {
    return newdst;
  };
  if (retarget_jmp_relbr8(get_dst_ptr) ||
      retarget_jmp_relbr32(get_dst_ptr) ||
      retarget_call_relbr32(get_dst_ptr) ||
      retarget_mem(get_dst_ptr)
      ) {
#if REDECODE
    decode();
#endif
  }
}

void Instruction::relocate(uint8_t *newpc) {
  
  const ptrdiff_t diff = pc() - newpc;
  if (relocate_jmp_relbr8(diff) ||
      relocate_jmp_relbr32(diff) ||
      relocate_call_relbr32(diff) ||
      relocate_mem(diff)
      ) {
#if REDECODE
    decode();
#endif
  }

  Blob::relocate(newpc);
}

template <typename Op>
bool Instruction::retarget_jmp_relbr8(Op get_dst_ptr) {
  Data newdata;
  int32_t *offset;
  size_t newinstlen;
  if (size() == 2 && (data()[0] & 0xf0) == 0x70) {
    const uint8_t short_opcode = data()[0];
    const uint8_t long_opcode = (short_opcode & 0x0f) | 0x80;
    newdata[0] = 0x0f;
    newdata[1] = long_opcode;
    offset = reinterpret_cast<int32_t *>(&newdata[2]);
    newinstlen = 6;
  } else if (xed_iform() == XED_IFORM_JMP_RELBRb) {
    newdata[0] = 0xe9;
    offset = reinterpret_cast<int32_t *>(&newdata[1]);
    newinstlen = 5;
  } else {
    return false;
  }

  assert(xed_decoded_inst_get_branch_displacement_width_bits(&xedd()) == 8);

  uint8_t *baseaddr = pc() + newinstlen;
  const ptrdiff_t relbr = xed_decoded_inst_get_branch_displacement(&xedd());
  uint8_t *new_dst = get_dst_ptr(baseaddr + relbr);
  *offset = new_dst - baseaddr;
  data(newdata);

  return true;
}

template <typename Op>
void Instruction::patch_relbr(Op get_dst_ptr) {
    assert(xed_decoded_inst_get_branch_displacement_width_bits(&xedd()) == 32);
    xed_encoder_operand_t disp;
    // disp.type = XED_ENCODER_OPERAND_TYPE_BRDISP;
    uint8_t *baseaddr = pc() + size();
    int32_t orig_disp = xed_decoded_inst_get_branch_displacement(&xedd());
    uint8_t *orig_dst_ptr = baseaddr + orig_disp;
    uint8_t *new_dst_ptr = get_dst_ptr(orig_dst_ptr);
    int32_t new_disp = new_dst_ptr - baseaddr;
    disp.u.brdisp = new_disp;
    disp.width_bits = 32;

    if (!xed_patch_relbr(&xedd_, data_.data(), disp)) {
      fprintf(stderr, "failed to patch branch\n");
      abort();
    }

    decode(); // TODO: This is unecessary -- only makes following assert() work.
    
    int32_t found_disp = xed_decoded_inst_get_branch_displacement(&xedd_);
    assert(found_disp == new_disp); (void) found_disp;
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

uint8_t *Instruction::is_mem_rip(void) const {
  const unsigned memops = xed_decoded_inst_number_of_memory_operands(&xedd());
  if (memops == 0) {
    return nullptr;
  }

  const unsigned memidx = 0; // TODO: is this right?
  const xed_reg_enum_t reg = xed_decoded_inst_get_base_reg(&xedd(), memidx);
  if (reg != XED_REG_RIP) {
    return nullptr;
  }

  assert(xed_decoded_inst_get_memory_displacement_width_bits(&xedd(), memidx) == 32);

  const ptrdiff_t disp =  xed_decoded_inst_get_memory_displacement(&xedd(), memidx);
  return after_pc() + disp;
}

template <typename Op>
bool Instruction::retarget_mem(Op get_dst_ptr) {
  const auto orig_ptr = is_mem_rip();
  if (!orig_ptr) {
    return false;
  }

  uint8_t *new_ptr = get_dst_ptr(orig_ptr);
  const int32_t new_disp = new_ptr - after_pc();
  xed_enc_displacement_t disp;
  disp.displacement = static_cast<int32_t>(new_disp);
  disp.displacement_bits = 32;
  if (!xed_patch_disp(&xedd_, data_.data(), disp)) {
    fprintf(stderr, "failed to patch memory operand\n");
    abort();
  }
  
  return true;
}

Instruction::Instruction(uint8_t *pc_, Tracee& tracee): Blob(pc_) {
  tracee.read(data_, pc());
  decode();
}

void Instruction::data(const uint8_t *newdata, size_t len) {
  memcpy(data_.data(), newdata, len);
  decode();
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

Instruction Instruction::push_mem(uint8_t *pc, uint8_t *mem) {
  constexpr unsigned instlen = 6;
  const int32_t disp = mem - (pc + instlen);
  Data opcode;
  opcode[0] = 0xff;
  opcode[1] = 0x35;
  * (int32_t *) &opcode[2] = disp;
  return Instruction(pc, opcode);
}

Instruction Instruction::mov_mem64(uint8_t *pc, reg_t reg, uint8_t *mem) {
  Data data {0x48, 0x8b, 0x05};
  data[2] |= static_cast<uint8_t>(reg) << 3;
  *reinterpret_cast<int32_t *>(&data[3]) = mem - (pc + mov_mem64_len);
  return Instruction(pc, data);
}

Instruction Instruction::mov_mem64(uint8_t *pc, uint8_t *mem, reg_t reg) {
  Data data {0x48, 0x89, 0x05};
  data[2] |= static_cast<uint8_t>(reg) << 3;
  *reinterpret_cast<int32_t *>(&data[3]) = mem - (pc + mov_mem64_len);
  return Instruction(pc, data);
}

Instruction Instruction::cmp_mem64(uint8_t *pc, reg_t reg, uint8_t *mem) {
  Data data {0x48, 0x3b, 0x05};
  data[2] |= static_cast<uint8_t>(reg) << 3;
  *reinterpret_cast<int32_t *>(&data[3]) = mem - (pc + cmp_mem64_len);
  return Instruction(pc, data);
}

Instruction Instruction::add_mem64_imm8(uint8_t *pc, uint8_t *mem, int8_t imm) {
  Data data {0x48, 0x83, 0x05};
  *reinterpret_cast<int32_t *>(&data[3]) = mem - (pc + add_mem64_imm8_len);
  data[7] = imm;
  return Instruction(pc, data);
}

Instruction Instruction::push_reg(uint8_t *pc, reg_t reg) {
  return Instruction(pc, {static_cast<uint8_t>(0x50 | static_cast<uint8_t>(reg))});
}

Instruction Instruction::pop_reg(uint8_t *pc, reg_t reg) {
  return Instruction(pc, {static_cast<uint8_t>(0x58 | static_cast<uint8_t>(reg))});
}

void Blob::relocate(uint8_t *newpc) {
  pc_ = newpc;
}

std::ostream& Data::print(std::ostream& os) const {
  os << std::hex;
  for (auto byte : data_) {
    os << byte << " ";
  }
  return os;
}

std::ostream& Instruction::print(std::ostream& os) const {
  os << Decoder::disas(*this);
  return os;
}

std::ostream& operator<<(std::ostream& os, const Blob& blob) {
  return blob.print(os);
}

bool Instruction::call_to_jmp(void) {
  if (xed_iclass() != XED_ICLASS_CALL_NEAR) {
    return false;
  }

  const auto get_ind_byte = [] (uint8_t *data) -> uint8_t * {
    if (data[0] == 0xff) {
      return &data[1];
    } else {
      assert(data[1] == 0xff);
      return &data[2];
    }
  };
  
  switch (xed_iform()) {
  case XED_IFORM_CALL_NEAR_GPRv:
  case XED_IFORM_CALL_NEAR_MEMv:
    // [41] ff dx -> [41] ff ex
    {
      uint8_t *it = get_ind_byte(data());
      *it ^= 0x30;
    }
    break;

  case XED_IFORM_CALL_NEAR_RELBRd:
    assert(data()[0] == 0xe8);
    data_[0] |= 0x01;
    break;

  default: abort();
  }

  std::unordered_map<int, int> map {
    {XED_IFORM_CALL_NEAR_GPRv, XED_IFORM_JMP_GPRv},
    {XED_IFORM_CALL_NEAR_MEMv, XED_IFORM_JMP_MEMv},
    {XED_IFORM_CALL_NEAR_RELBRd, XED_IFORM_JMP_RELBRd},
  };
  const xed_iform_enum_t call_iform = xed_iform();
  
  decode();

  const xed_iform_enum_t jmp_iform = xed_iform();
  assert(map.find(call_iform) != map.end()); (void) call_iform;
  assert(map[call_iform] == jmp_iform); (void) jmp_iform;
  
  return true;
}

bool Instruction::is_conditional_branch(void) const {
  switch (xed_iform()) {
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

Instruction::Instruction(const Instruction& other, uint8_t *newpc) {
  *this = other;
  relocate(newpc);
}

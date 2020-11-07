#include <assert.h>
#include <unistd.h>
#include <stdio.h>
extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"

xed_state_t Decoder::state = {XED_MACHINE_MODE_LONG_64, XED_ADDRESS_WIDTH_32b};

void Decoder::Init(void) {
  xed_tables_init();
}

std::string Decoder::disas(uint8_t *pc) const {
  constexpr size_t buflen = 64;
  char buf[buflen];
  Instruction inst;
  if (decode(pc, inst)) {
    xed_format_context(XED_SYNTAX_INTEL, &inst.xedd(), buf, buflen, (xed_uint64_t) pc, nullptr, nullptr);
    return std::string(buf);
  } else {
    return "(bad)";
  }
}

unsigned Decoder::instlen(uint8_t *pc) const {
  Instruction inst;
  if (decode(pc, inst)) {
    return inst.size();
  } else {
    return 0;
  }
}

bool Decoder::decode(uint8_t *pc, Instruction& inst) const {
  xed_decoded_inst_zero_set_mode(&inst.xedd_, &state);
  xed_decoded_inst_set_input_chip(&inst.xedd_, XED_CHIP_INVALID);

  tracee.read(inst.data_, pc);

  if (xed_decode(&inst.xedd_, inst.data_.data(), inst.data_.size()) != XED_ERROR_NONE) {
    return false;
  }

  inst.pc_ = pc;
  
  return true;  
}

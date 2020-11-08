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

std::string Decoder::disas(const Instruction& inst) {
  if (inst) {
    constexpr size_t buflen = 64;
    char buf[buflen];
    xed_format_context(XED_SYNTAX_INTEL, &inst.xedd(), buf, buflen, (xed_uint64_t) inst.pc(),
		       nullptr, nullptr);
    return std::string(buf);
  } else {
    return "(bad)";
  }
}

bool Decoder::decode(uint8_t *data, size_t size, xed_decoded_inst_t& xedd) {
  xed_decoded_inst_zero_set_mode(&xedd, &state);
  xed_decoded_inst_set_input_chip(&xedd, XED_CHIP_INVALID);

  if (xed_decode(&xedd, data, size) != XED_ERROR_NONE) {
    return false;
  } else {
    return true;
  }
}

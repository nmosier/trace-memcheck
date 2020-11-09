#pragma once

class Decoder;

#include <string>
extern "C" {
#include <xed/xed-interface.h>
}
#include "tracee.hh"
#include "inst.hh"

class Decoder {
public:
  static constexpr unsigned max_inst_len = 16;

  static void Init(void);

  /* returns whether successfully decoded */
  static bool decode(const uint8_t *data, size_t size, xed_decoded_inst_t& xedd);
  
  static std::string disas(const Instruction& inst);
  
private:
  static xed_state_t state;
};

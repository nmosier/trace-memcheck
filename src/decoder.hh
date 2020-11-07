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

  Decoder(Tracee& tracee): tracee(tracee) {}

  static void Init(void);

  /* returns whether successfully decoded */
  bool decode(uint8_t *pc, xed_decoded_inst_t& xedd) const;

  bool decode(uint8_t *pc, Instruction& inst) const;

  template <typename OutputIt>
  bool decode(uint8_t *begin, uint8_t *end, OutputIt out_it) const {
    uint8_t *it = begin;
    xed_decoded_inst_t xedd;
    while (it < end) {
      if (!decode(it, xedd)) {
	return false;
      }
      *out_it++ = xedd;
      it += xed_decoded_inst_get_length(&xedd);;
    }
    return true; 
  }

  std::string disas(uint8_t *pc) const;

  // returns 0 on error 
  unsigned instlen(uint8_t *pc) const;
  
private:
  
  static xed_state_t state;
  Tracee& tracee;
};

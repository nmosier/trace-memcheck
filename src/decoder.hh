#pragma once

#include <string>
extern "C" {
#include <xed/xed-interface.h>
}
#include "tracee.hh"

class Decoder {
public:
  static constexpr unsigned max_inst_len = 16;

  Decoder(Tracee& tracee): tracee(tracee) {}

  static void Init(void);

  /* returns whether successfully decoded */
  bool decode(void *pc, xed_decoded_inst_t& xedd) const;

  std::string disas(void *pc) const;

  // returns 0 on error 
  unsigned instlen(void *pc) const;
  
private:
  
  static xed_state_t state;
  Tracee& tracee;
};

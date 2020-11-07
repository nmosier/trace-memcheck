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

  template <typename OutputIt>
  bool decode(void *begin, void *end, OutputIt out_it) const {
    void *it = begin;
    xed_decoded_inst_t xedd;
    while (it < end) {
      if (!decode(it, xedd)) {
	return false;
      }
      *out_it++ = xedd;
      it = (void *) ((char *) it + xed_decoded_inst_get_length(&xedd));
    }
    return true; 
  }

  std::string disas(void *pc) const;

  // returns 0 on error 
  unsigned instlen(void *pc) const;
  
private:
  
  static xed_state_t state;
  Tracee& tracee;
};

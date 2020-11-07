#pragma once

class Instruction;

#include <array>
extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"

class Instruction {
public:
  static constexpr unsigned max_inst_len = 16;
  using Data = std::array<uint8_t, max_inst_len>;

  Instruction() {}
  Instruction(uint8_t *pc, const Data& data, const xed_decoded_inst_t& xedd):
    pc_(pc), data_(data), xedd_(xedd) {}

  const Data& data() const { return data_; }
  uint8_t *pc() const { return pc_; }
  const xed_decoded_inst_t& xedd() const { return xedd_; }
  size_t size() const { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }

  uint8_t *branch_dst(void) const;
  
private:
  uint8_t *pc_;
  Data data_;
  xed_decoded_inst_t xedd_;
  
  friend class Decoder;
};

// TODO


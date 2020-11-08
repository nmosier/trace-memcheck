#pragma once

class Instruction;

#include <cstddef>
#include <array>
extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"

class Instruction {
public:
  static constexpr unsigned max_inst_len = 16;
  using Data = std::array<uint8_t, max_inst_len>;

  Instruction(): good_(false) {}
  Instruction(uint8_t *pc, Tracee& tracee);

  const Data& data() const { return data_; }
  uint8_t *pc() const { return pc_; }
  const xed_decoded_inst_t& xedd() const { return xedd_; }
  size_t size() const { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }
  
  uint8_t *branch_dst(void) const;
  
  void relocate(uint8_t *newpc);

  bool good() const { return good_; }
  operator bool() const { return good(); }
  
private:
  bool good_;
  uint8_t *pc_;
  Data data_;
  xed_decoded_inst_t xedd_;
  Tracee *tracee;

  bool is_jump_short(void) const;

  void relocate_relbr32(ptrdiff_t diff);
  
  friend class Decoder;
};

// TODO

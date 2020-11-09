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
  Instruction(uint8_t *pc, const Tracee& tracee);

  const Data& data() const { return data_; }
  void data(const uint8_t *newdata, size_t len);
  template <size_t N>
  void data(const uint8_t (&newdata)[N]) {
    data(newdata, N);
  }
  void data(const Data& newdata) {
    data(newdata.data(), newdata.size());
  }
  
  uint8_t *pc() const { return pc_; }
  const xed_decoded_inst_t& xedd() const { return xedd_; }
  size_t size() const { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }
  
  uint8_t *branch_dst(void) const;
  
  void relocate(uint8_t *newpc);

  bool good() const { return good_; }
  operator bool() const { return good(); }

  std::ostream& print(std::ostream& os) const;
  std::ostream& operator<<(std::ostream& os) const { return print(os); }

private:
  bool good_;
  uint8_t *pc_;
  Data data_;
  xed_decoded_inst_t xedd_;
  const Tracee *tracee;

  bool relocate_relbr8(ptrdiff_t diff);
  bool relocate_relbr32(ptrdiff_t diff);
  bool relocate_mem(ptrdiff_t diff);

  friend class Decoder;
};

// TODO

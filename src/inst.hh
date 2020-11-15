#pragma once

class Instruction;

#include <cstddef>
#include <array>
#include <vector>
extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"

class Blob {
public:
  Blob() {}
  Blob(uint8_t *pc): pc_(pc) {}
  
  virtual void relocate(uint8_t *newpc) = 0;
  virtual void retarget(uint8_t *newdst) = 0;

  virtual uint8_t *data(void) = 0;
  virtual size_t size(void) const = 0;
  
private:
  uint8_t *pc_;
};

class Data: public Blob {
public:
  using Content = std::vector<uint8_t>;

  template <typename T>
  Data(const T& data): Blob(nullptr), data_(data) {}

  template <typename InputIt>
  Data(InputIt begin, InputIt end): Blob(nullptr), data_(begin, end) {}
  
  virtual void relocate(uint8_t *newpc) override {}
  virtual void retarget(uint8_t *newdst) override {}

  uint8_t *data(void) override { return data_.data(); }
  size_t size(void) const override { return data_.size(); }
  
private:
  Content data_;
};

class Instruction: public Blob {
public:
  static constexpr unsigned max_inst_len = 16;
  using Data = std::array<uint8_t, max_inst_len>;

  Instruction(): good_(false) {}
  Instruction(uint8_t *pc, const Data& opcode);
  Instruction(uint8_t *pc, const Tracee& tracee);

  uint8_t *data() override { return data_.data(); }
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
  virtual size_t size() const override { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }

  uint8_t *branch_dst(void) const;
  
  virtual void relocate(uint8_t *newpc) override;
  virtual void retarget(uint8_t *newdst) override; // only for branches

  bool good() const { return good_; }
  operator bool() const { return good(); }

  std::ostream& print(std::ostream& os) const;
  std::ostream& operator<<(std::ostream& os) const { return print(os); }

  static Instruction jmp(uint8_t *pc, uint8_t *dst);

private:
  bool good_;
  uint8_t *pc_;
  Data data_;
  xed_decoded_inst_t xedd_;

  void decode(void);
  bool relocate_jmp_relbr8(ptrdiff_t diff);
  bool relocate_jmp_relbr32(ptrdiff_t diff);
  bool relocate_call_relbr32(ptrdiff_t diff);
  bool relocate_mem(ptrdiff_t diff);

  template <typename Op> void patch_relbr(Op get_dst_ptr);
  template <typename Op> bool retarget_jmp_relbr8(Op get_dst_ptr);
  template <typename Op> bool retarget_jmp_relbr32(Op get_dst_ptr);
  template <typename Op> bool retarget_call_relbr32(Op get_dst_ptr);

  void patch_relbr(ptrdiff_t disp);

  friend class Decoder;
};

// TODO

#pragma once

class Instruction;
class Blob;
class Data;

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
  
  virtual void relocate(uint8_t *newpc);
  virtual void retarget(uint8_t *newdst) = 0;

  virtual uint8_t *data(void) = 0;
  virtual const uint8_t *data(void) const = 0;
  virtual size_t size(void) const = 0;

  uint8_t *pc() const { return pc_; }
  uint8_t *after_pc() const { return pc() + size(); }

  virtual std::ostream& print(std::ostream& os) const = 0;

protected:
  void pc(uint8_t *pc) { pc_ = pc; }
  
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

  // virtual void relocate(uint8_t *newpc) override { }
  virtual void retarget(uint8_t *newdst) override {}

  uint8_t *data(void) override {return data_.data(); }
  const uint8_t *data(void) const override { return data_.data(); }
  size_t size(void) const override { return data_.size(); }

  virtual std::ostream& print(std::ostream& os) const override;
  
private:
  Content data_;
};

class Pointer: public Data {
public:
  Pointer(uint8_t *ptr): Data(reinterpret_cast<uint8_t *>(&ptr),
			      reinterpret_cast<uint8_t *>(&ptr + 1)) {}
};

class Instruction: public Blob {
public:
  static constexpr unsigned max_inst_len = 16;
  using Data = std::array<uint8_t, max_inst_len>;

  Instruction(): good_(false) {}
  Instruction(uint8_t *pc, const Data& opcode);
  Instruction(uint8_t *pc, const Tracee& tracee);

  uint8_t *data() override { return data_.data(); }
  const uint8_t *data() const override { return data_.data(); }
  void data(const uint8_t *newdata, size_t len);
  template <size_t N>
  void data(const uint8_t (&newdata)[N]) {
    data(newdata, N);
  }
  void data(const Data& newdata) {
    data(newdata.data(), newdata.size());
  }
  
  const xed_decoded_inst_t& xedd() const { return xedd_; }
  virtual size_t size() const override { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }
  const char *xed_iform_str() const { return xed_iform_enum_t2str(xed_iform()); }
  const char *xed_iclass_str() const { return xed_iclass_enum_t2str(xed_iclass()); }

  uint8_t *branch_dst(void) const;
  
  virtual void relocate(uint8_t *newpc) override;
  virtual void retarget(uint8_t *newdst) override; // only for branches

  bool good() const { return good_; }
  operator bool() const { return good(); }

  std::ostream& operator<<(std::ostream& os) const { return print(os); }

  /* generates instruction of XED_JMP_RELBRd iform */
  static Instruction jmp_relbrd(uint8_t *pc, uint8_t *dst);

  /* generates instruction of XED_JMP_MEMv iform with rip-relative addressing */
  static Instruction jmp_mem(uint8_t *pc, uint8_t *mem);
  static Instruction push_mem(uint8_t *pc, uint8_t *mem);

  virtual std::ostream& print(std::ostream& os) const override;

  /**
   * Convert call instruction to corresponding jump instruction.
   * @return Whether instruction was converted, i.e. whether instruction was a call.
   */
  bool call_to_jmp(void);

  bool is_conditional_branch(void) const;
  
private:
  bool good_;
  Data data_;
  xed_decoded_inst_t xedd_;

  uint8_t *is_mem_rip(void) const;
  
  void decode(void);
  bool relocate_jmp_relbr8(ptrdiff_t diff);
  bool relocate_jmp_relbr32(ptrdiff_t diff);
  bool relocate_call_relbr32(ptrdiff_t diff);
  bool relocate_mem(ptrdiff_t diff);

  template <typename Op> void patch_relbr(Op get_dst_ptr);
  template <typename Op> bool retarget_jmp_relbr8(Op get_dst_ptr);
  template <typename Op> bool retarget_jmp_relbr32(Op get_dst_ptr);
  template <typename Op> bool retarget_call_relbr32(Op get_dst_ptr);
  template <typename Op> bool retarget_mem(Op get_dst_ptr);

  void patch_relbr(ptrdiff_t disp);

  friend class Decoder;
};

std::ostream& operator<<(std::ostream& os, const Blob& blob);

#pragma once

class Instruction;
class Blob;
class Data;

#include <cstddef>
#include <array>
#include <vector>
#include <algorithm>

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

  uint8_t *write(uint8_t *buf) const { return std::copy_n(data(), size(), buf); }
  
protected:
  void pc(uint8_t *pc) { pc_ = pc; }
  
private:
  uint8_t *pc_;
};

class NullBlob: public Blob {
public:
  template <typename... Args>
  NullBlob(Args&&... args): Blob(args...) {}

  virtual void retarget(uint8_t *newdst) override {}
  virtual uint8_t *data() override { return nullptr; }
  virtual const uint8_t *data() const override { return nullptr; }
  virtual size_t size() const override { return 0; }
  virtual std::ostream& print(std::ostream& os) const override { return os; }
};

class Data: public Blob {
public:
  using Content = std::vector<uint8_t>;

  template <typename T>
  Data(uint8_t *pc, const T& data): Blob(pc), data_(data) {}

  template <typename InputIt>
  Data(uint8_t *pc, InputIt begin, InputIt end): Blob(pc), data_(begin, end) {}

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
  Pointer(uint8_t *pc, uint8_t *ptr): Data(pc, reinterpret_cast<uint8_t *>(&ptr),
					   reinterpret_cast<uint8_t *>(&ptr + 1)) {}
};

class Instruction: public Blob {
public:
  static constexpr unsigned max_inst_len = 16;
  using Data = std::array<uint8_t, max_inst_len>;

  Instruction(): good_(false) {}
  Instruction(uint8_t *pc, const Data& opcode);
  Instruction(uint8_t *pc, Tracee& tracee);
  Instruction(const Instruction& other, uint8_t *newpc);

  uint8_t *data() override { return data_.data(); }
  const uint8_t *data() const override { return data_.data(); }
  void data(const uint8_t *newdata, size_t len);
  template <size_t N>
  void data(const uint8_t (&newdata)[N]) { data(newdata, N); }
  void data(const Data& newdata) { data(newdata.data(), newdata.size()); }
  
  const xed_decoded_inst_t& xedd() const { return xedd_; }
  virtual size_t size() const override { return xed_decoded_inst_get_length(&xedd()); }
  xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
  xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }
  const char *xed_iform_str() const { return xed_iform_enum_t2str(xed_iform()); }
  const char *xed_iclass_str() const { return xed_iclass_enum_t2str(xed_iclass()); }
  xed_reg_enum_t xed_reg() const { return xed_decoded_inst_get_reg(&xedd(), XED_OPERAND_REG0); }
  unsigned xed_nmemops() const { return xed_decoded_inst_number_of_memory_operands(&xedd()); }
  xed_reg_enum_t xed_base_reg() const { return xed_decoded_inst_get_base_reg(&xedd(), 0); }

  uint8_t modrm() const;
  uint8_t *modrm_ptr();
  uint8_t modrm_mod() const { return modrm() >> 6; }
  uint8_t modrm_reg() const { return (modrm() >> 3) & 0b111; }
  uint8_t modrm_rm() const { return modrm() & 0b111; }
  void modrm_rm(uint8_t rm, bool decode);
  
  
  uint8_t *branch_dst(void) const;
  uint8_t *mem_dst(void) const;

  /*** VIRTUAL METHODS ***/
  virtual void relocate(uint8_t *newpc) override;
  virtual void retarget(uint8_t *newdst) override; // only for branches
  virtual std::ostream& print(std::ostream& os) const override;

  bool good() const { return good_; }
  operator bool() const { return good(); }

  enum class reg_t {RAX = 0b000, RBX = 0b011, RCX = 0b001, RDX = 0b010, RDI = 0b111, RSI = 0b110,
    RSP = 0b100, RBP = 0b101};
  enum class xreg_t {R8 = 0b000, R9 = 0b001, R10 = 0b010, R11 = 0b011, R12 = 0b100, R13 = 0b101,
    R14 = 0b110, R15 = 0b111};
  
  /*** INSTRUCTION GENERATORS ***/
  /* generates instruction of XED_JMP_RELBRd iform */
  static Instruction jmp_relbrd(uint8_t *pc, uint8_t *dst);
  static constexpr size_t jmp_relbrd_len = 5;
  static Instruction jmp_mem(uint8_t *pc, uint8_t *mem);
  static constexpr size_t jmp_mem_len = 6;
  static Instruction push_mem(uint8_t *pc, uint8_t *mem);
  static constexpr size_t push_mem_len = 6;
  static Instruction int3(uint8_t *pc) { return Instruction(pc, Data {0xcc}); }
  static constexpr size_t int3_len = 1;
  static constexpr size_t jcc_relbrd_len = 6;
  static Instruction mov_mem64(uint8_t *pc, reg_t reg, uint8_t *mem);
  static Instruction mov_mem64(uint8_t *pc, uint8_t *mem, reg_t reg);
  static constexpr size_t mov_mem64_len = 7;
  static Instruction cmp_mem64(uint8_t *pc, reg_t reg, uint8_t *mem);
  static constexpr size_t cmp_mem64_len = 7;
  static Instruction lea(uint8_t *pc, reg_t reg, uint8_t *mem);
  static constexpr size_t lea_len = 7;
  
  static Instruction push_reg(uint8_t *pc, reg_t reg);
  static constexpr size_t push_reg_len = 1;
  static Instruction pop_reg(uint8_t *pc, reg_t reg);
  static constexpr size_t pop_reg_len = 1;
  static Instruction add_mem64_imm8(uint8_t *pc, uint8_t *mem, int8_t imm);
  static constexpr size_t add_mem64_imm8_len = 8;
  static Instruction pushf(uint8_t *pc) { return Instruction(pc, {0x9c}); }
  static constexpr size_t pushf_len = 1;
  static Instruction popf(uint8_t *pc) { return Instruction(pc, {0x9d}); }
  static constexpr size_t popf_len = 1;
  static Instruction mov(uint8_t *pc, reg_t dst, reg_t src);
  static Instruction mov(uint8_t *pc, reg_t dst, xreg_t src);
  static Instruction je_b(uint8_t *pc, uint8_t *dst);
  static constexpr size_t je_b_len = 2;

  static reg_t reg_from_xed_reg(xed_reg_enum_t xed_reg);
  
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

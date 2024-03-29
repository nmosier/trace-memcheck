#pragma once

namespace dbi {
  class Instruction;
  class Blob;
  class Data;
}

#include <cstddef>
#include <array>
#include <vector>
#include <algorithm>
#include <cassert>

extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"
#include "tracee.hh"

namespace dbi {

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

    template <typename... Args>
    Data(uint8_t *pc, Args&&... args): Blob(pc), data_(args...) {}

    template <typename InputIt>
    Data(uint8_t *pc, InputIt begin, InputIt end): Blob(pc), data_(begin, end) {}

    // virtual void relocate(uint8_t *newpc) override { }
    virtual void retarget(uint8_t *newdst) override {}

    uint8_t *data(void) override {return data_.data(); }
    const uint8_t *data(void) const override { return data_.data(); }
    size_t size(void) const override { return data_.size(); }

    virtual std::ostream& print(std::ostream& os) const override;

  protected:
    void data(const Content& data) { data_ = data; }
    template <typename... Args>
    void emplace_data(Args&&... args) { data_ = Content(args...); }
  
  private:
    Content data_;
  };

  class Pointer: public Data {
  public:
    Pointer(uint8_t *pc, uint8_t *ptr): Data(pc, reinterpret_cast<uint8_t *>(&ptr),
					     reinterpret_cast<uint8_t *>(&ptr + 1)) {}
  };

  /* 32-bit PC-relative disparity */
  class PCRelDisp: public Data {
  public:
    PCRelDisp(uint8_t *pc, uint8_t *iend, uint8_t *dst);
  };


  class Instruction: public Blob {
  public:
    static constexpr unsigned max_inst_len = 16;
    template <size_t N> using DataN = std::array<uint8_t, N>;
    using Data = DataN<max_inst_len>;

    Instruction(): good_(false) {}
    // Instruction(uint8_t *pc, const Data& data);

    template <typename InputIt>
    Instruction(uint8_t *pc, InputIt begin, InputIt end):
      Blob(pc), size_(std::distance(begin, end))
    {
      assert(size_ <= max_inst_len);
      std::copy(begin, end, data_.begin());
      decode();
    }
  
    template <typename Readable>
    Instruction(uint8_t *pc, Readable& readable): Blob(pc) {
      readable.read(data(), max_inst_len, pc);
      decode();
    }

    Instruction(const Instruction& other, uint8_t *newpc);

    template <typename... Args>
    static Instruction from_bytes(uint8_t *pc, Args... args) {
      return from_data(pc, DataN<sizeof...(Args)> {static_cast<uint8_t>(args)...});
    }

    template <size_t N>
    static Instruction from_data(uint8_t *pc, const DataN<N>& data) {
      return Instruction(pc, data.begin(), data.end());
    }

    uint8_t *data() override { return data_.data(); }
    const uint8_t *data() const override { return data_.data(); }
    void data(const uint8_t *newdata, size_t len);

    void data(const Data& newdata) { data(newdata.data(), newdata.size()); }
  
    const xed_decoded_inst_t& xedd() const { return xedd_; }
    virtual size_t size() const override;
    xed_iform_enum_t xed_iform() const { return xed_decoded_inst_get_iform_enum(&xedd()); }
    xed_iclass_enum_t xed_iclass() const { return xed_decoded_inst_get_iclass(&xedd()); }
    const char *xed_iform_str() const { return xed_iform_enum_t2str(xed_iform()); }
    const char *xed_iclass_str() const { return xed_iclass_enum_t2str(xed_iclass()); }
    xed_reg_enum_t xed_reg() const { return xed_decoded_inst_get_reg(&xedd(), XED_OPERAND_REG0); }
    xed_reg_enum_t xed_reg(xed_operand_enum_t op) const {
      return xed_decoded_inst_get_reg(&xedd(), op);
    }
    xed_reg_enum_t xed_reg0() const { return xed_decoded_inst_get_reg(&xedd(), XED_OPERAND_REG0); }
    xed_reg_enum_t xed_reg1() const { return xed_decoded_inst_get_reg(&xedd(), XED_OPERAND_REG1); }
    unsigned xed_nops() const { return xed_decoded_inst_noperands(&xedd()); }
    unsigned xed_nmemops() const { return xed_decoded_inst_number_of_memory_operands(&xedd()); }
    unsigned xed_nregops() const;
    xed_reg_enum_t xed_base_reg() const { return xed_decoded_inst_get_base_reg(&xedd(), 0); }
    xed_reg_enum_t xed_index_reg() const { return xed_decoded_inst_get_index_reg(&xedd(), 0); }

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
    static Instruction int3(uint8_t *pc) { return from_bytes(pc, 0xcc); }
    static constexpr size_t int3_len = 1;
    static constexpr size_t jcc_relbrd_len = 6;
    static Instruction mov_mem64(uint8_t *pc, reg_t reg, uint8_t *mem);
    static Instruction mov_mem64(uint8_t *pc, uint8_t *mem, reg_t reg);
    static constexpr size_t mov_mem64_len = 7;
    static Instruction cmp_mem64(uint8_t *pc, reg_t reg, uint8_t *mem);
    static constexpr size_t cmp_mem64_len = 7;
    static Instruction lea(uint8_t *pc, reg_t reg, uint8_t *mem);
    static constexpr size_t lea_len = 7;
    static Instruction xchg_rsp_mem(uint8_t *pc, uint8_t *mem);
    static constexpr size_t xchg_rsp_mem_len = 7;
  
    static Instruction push_reg(uint8_t *pc, reg_t reg);
    static constexpr size_t push_reg_len = 1;
    static Instruction pop_reg(uint8_t *pc, reg_t reg);
    static constexpr size_t pop_reg_len = 1;
    static Instruction add_mem64_imm8(uint8_t *pc, uint8_t *mem, int8_t imm);
    static constexpr size_t add_mem64_imm8_len = 8;
    static Instruction pushf(uint8_t *pc) { return from_bytes(pc, 0x9c); }
    static constexpr size_t pushf_len = 1;
    static Instruction popf(uint8_t *pc) { return from_bytes(pc, 0x9d); }
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

  private:
    bool good_;
    Data data_;
    xed_decoded_inst_t xedd_;
    bool decoded_ = false;
    size_t size_ = 0;

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

  template <unsigned NBYTES, unsigned NRELBRS>
  class MachineCode: public Blob {
  public:
    using Content = std::array<uint8_t, NBYTES>;
    struct Relbr {
      unsigned at;
      unsigned ref;
      const void * const *dst;

      template <typename T>
      Relbr(unsigned at, unsigned ref, const T * const *dst):
	at(at), ref(ref), dst(reinterpret_cast<const void * const *>(dst))
      {}
    };
    using Relbrs = std::array<Relbr, NRELBRS>;

    MachineCode(const Content& binary, const Relbrs& relbrs):
      Blob(nullptr), binary(binary), relbrs(relbrs) {}

    virtual void relocate(uint8_t *newpc) override {
      Blob::relocate(newpc);
      patch_noreloc(newpc);
    }

    void patch(uint8_t *addr) { relocate(addr); }
  
    virtual void retarget(uint8_t *newdst) override { std::abort(); }
    virtual uint8_t *data() override { return binary.data(); }
    virtual const uint8_t *data() const override { return binary.data(); }
    virtual size_t size() const override { return binary.size(); }
    virtual std::ostream& print(std::ostream& os) const override { std::abort(); }
  
  private:
    Content binary;
    Relbrs relbrs;

    void put_relbr(uint8_t *addr, const Relbr& relbr) {
      assert(relbr.at + 4 <= size());
      *reinterpret_cast<int32_t *>(binary.data() + relbr.at) =
	static_cast<const uint8_t *>(*relbr.dst) - (addr + relbr.ref);
    }

    void patch_noreloc(uint8_t *addr) {
      std::for_each(relbrs.begin(), relbrs.end(), [this, addr] (const Relbr& relbr) {
	this->put_relbr(addr, relbr);
      });
    }  
  };

}

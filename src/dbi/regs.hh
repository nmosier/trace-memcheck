#pragma once

#include <algorithm>
#include <functional>
#include <sys/user.h>
#include <iomanip>
#include <cassert>
#include <cstring>
extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"

namespace dbi {

  template <class Derived, class regs_struct>
  class Registers {
  public:
    Registers(const regs_struct& regs): regs_(regs) {}
    Registers(Tracee& tracee) { save(tracee); }

    void save(Tracee& tracee) { tracee.get_regs(regs_); }
    void restore(Tracee& tracee) const { tracee.set_regs(regs_); }

    void zero() { std::fill(begin(), end(), 0); }
    bool is_zero() const { return std::all_of(begin(), end(), [] (auto val) { return val == 0; }); }

    bool operator==(const Derived& other) const {
      return std::equal(begin(), end(), other.begin());
    }
    bool operator!=(const Derived& other) const { return !(*this == other); }
  
    Derived operator^(const Derived& other) const { return binop<std::bit_xor>(other); }
    Derived& operator^=(const Derived& other) { return binop_assign<std::bit_xor>(other); }

    Derived operator|(const Derived& other) const { return binop<std::bit_or>(other); }
    Derived& operator|=(const Derived& other) { return binop_assign<std::bit_or>(other); }

    void fill(uint8_t val) { std::memset(&regs_, val, sizeof(regs_)); }
  
  protected:
    regs_struct regs_;

    Registers() {}

    using iter_value_type = unsigned long long;
    static_assert(sizeof(regs_) % sizeof(iter_value_type) == 0,
		  "size of iter_value_type must divide size of regs_struct");

    iter_value_type *begin() { return reinterpret_cast<iter_value_type *>(&regs_); }
    const iter_value_type *begin() const { return reinterpret_cast<const iter_value_type *>(&regs_); }
    iter_value_type *end() { return reinterpret_cast<iter_value_type *>(&regs_ + 1); }
    const iter_value_type *end() const {
      return reinterpret_cast<const iter_value_type *>(&regs_ + 1);
    }

  private:
  
    template <template <class> class Binop>
    Derived binop(const Derived& other) const {
      Derived res;
      std::transform(begin(), end(), other.begin(), res.begin(), Binop<iter_value_type>());
      return res;
    }

    template <template <class> class Binop>
    Derived& binop_assign(const Derived& other) {
      std::transform(begin(), end(), other.begin(), begin(), Binop<iter_value_type>());
      return static_cast<Derived&>(*this);
    }
  };

#define GPREGISTERS(m)				\
  m(rax)					\
  m(rbx)					\
  m(rcx)					\
  m(rdx)					\
  m(rdi)					\
  m(rsi)					\
  m(rsp)					\
  m(rbp)					\
  m(rip)					\
  m(r8)						\
  m(r9)						\
  m(r10)					\
  m(r11)					\
  m(r12)					\
  m(r13)					\
  m(r14)					\
  m(r15)					\
  m(eflags)					\


  class GPRegisters: public Registers<GPRegisters, user_regs_struct> {
  public:
    template <typename... Args>
    GPRegisters(Args&&... args): Registers(args...) {}

    unsigned long long reg(xed_reg_enum_t xed_reg) const;
    unsigned long long& reg(xed_reg_enum_t xed_reg);

#define GPR_ACCESS(name)			\
    auto name() const { return regs_.name; }	\
    auto& name() { return regs_.name; }
    GPREGISTERS(GPR_ACCESS)
#undef GPR_ACCESS
  
    private:
    static unsigned long long user_regs_struct::* reg_ptr(xed_reg_enum_t xed_reg);
  
    friend std::ostream& operator<<(std::ostream& os, const GPRegisters& gpregs);
  };

  template <typename value_type>
  class XMMRegister {
  public:
    void zero() { std::fill(begin(), end(), 0); }
    bool is_zero() const {
      return std::all_of(begin(), end(), [] (auto val) { return val == 0; });
    }
    void zero_lower() { std::fill(begin(), begin() + size() / 2, 0); }
    void zero_upper() { std::fill(begin() + size() / 2, end(), 0); }

  private:
    using pointer = value_type *;
    using const_pointer = const value_type *;
    using reference = value_type&;
    using const_reference = const value_type&;
    using iterator = pointer;
    using const_iterator = const_pointer;

    static constexpr auto bytes = 16; // 16 bytes in XMM
    static_assert(bytes % sizeof(value_type) == 0, "sizeof(value_type) doesn't divide sizeof(XMM)");
    pointer buf_;

    constexpr XMMRegister(pointer buf): buf_(buf) {}

    static constexpr auto size() { return bytes / sizeof(value_type); }
    constexpr iterator begin() { return buf_; }
    constexpr iterator end() { return buf_ + size(); }
    constexpr const_iterator begin() const { return buf_; }
    constexpr const_iterator end() const { return buf_ + size(); }
    constexpr auto rbegin() { return std::make_reverse_iterator(begin()); }
    constexpr auto rend() { return std::make_reverse_iterator(end()); }
    constexpr auto rbegin() const { return std::make_reverse_iterator(begin()); }
    constexpr auto rend() const { return std::make_reverse_iterator(end()); }
  
    friend class FPRegisters;
    template <typename vt>
    friend std::ostream& operator<<(std::ostream& os, const XMMRegister<vt>& xmm);
  };

  template <typename value_type>
  std::ostream& operator<<(std::ostream& os, const XMMRegister<value_type>& xmm) {
    for (auto rit = xmm.rbegin(); rit != xmm.rend(); ++rit) {
      os << std::hex << std::setfill('0') << std::setw(sizeof(value_type) * 2) << *rit;
    }
    return os;
  }

  class FPRegisters: public Registers<FPRegisters, user_fpregs_struct> {
  public:
    using xmm_value_type = std::remove_extent<decltype(user_fpregs_struct::xmm_space)>::type;
    using XMM = XMMRegister<xmm_value_type>;
    using CXMM = XMMRegister<const xmm_value_type>;

    template <typename... Args>
    FPRegisters(Args&&... args): Registers(args...) {}

    XMM xmm(unsigned idx) { return XMM(xmm_ptr(idx)); }
    CXMM xmm(unsigned idx) const { return CXMM(xmm_ptr(idx)); }
    XMM xmm(xed_reg_enum_t reg) { return xmm(xed_idx(reg)); }
    CXMM xmm(xed_reg_enum_t reg) const { return xmm(xed_idx(reg)); }
  
  private:
    XMM::pointer xmm_ptr(unsigned idx) {
      return reinterpret_cast<XMM::pointer>
	(reinterpret_cast<char *>(regs_.xmm_space) + idx * XMM::bytes);
    }
    CXMM::pointer xmm_ptr(unsigned idx) const {
      return reinterpret_cast<CXMM::pointer>(reinterpret_cast<const char *>(regs_.xmm_space) +
					     idx * CXMM::bytes);
    }

    static unsigned xed_idx(xed_reg_enum_t reg) {
      assert(xed_reg_class(reg) == XED_REG_CLASS_XMM);
      return reg - XED_REG_XMM0;
    }
  };

  std::ostream& operator<<(std::ostream& os, const GPRegisters& gpregs);

}

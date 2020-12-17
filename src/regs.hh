#pragma once

#include <algorithm>
#include <functional>
#include <sys/user.h>

#include "tracee.hh"

template <class Derived, class regs_struct>
class Registers {
public:
  Registers(const regs_struct& regs): regs_(regs) {}
  Registers(Tracee& tracee): regs_(tracee.get_regs()) {}

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

  // TODO: Rewrite itnerface for Tracee so that this can be lifted up to Registers<> classs
  void save(Tracee& tracee) { regs_ = tracee.get_regs(); }
  void restore(Tracee& tracee) const { tracee.set_regs(regs_); }

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

class FPRegisters: public Registers<FPRegisters, user_fpregs_struct> {
public:
  template <typename... Args>
  FPRegisters(Args&&... args): Registers(args...) {}

private:
};

std::ostream& operator<<(std::ostream& os, const GPRegisters& gpregs);

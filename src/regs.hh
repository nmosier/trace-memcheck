#pragma once

#include <algorithm>
#include <functional>
#include <sys/user.h>

class Registers {
public:
  Registers(const user_regs_struct& regs): regs_(regs) {}
  Registers(Tracee& tracee): regs_(tracee.get_regs()) {}

  void zero() { std::fill(begin(), end(), 0); }
  bool is_zero() const { return std::all_of(begin(), end(), [] (auto val) { return val == 0; }); }

  bool operator==(const Registers& other) const {
    return std::equal(begin(), end(), other.begin());
  }
  bool operator!=(const Registers& other) const { return !(*this == other); }
  
  Registers operator^(const Registers& other) const { return binop<std::bit_xor>(other); }
  Registers& operator^=(const Registers& other) { return binop_assign<std::bit_xor>(other); }

  Registers operator|(const Registers& other) const { return binop<std::bit_or>(other); }
  Registers& operator|=(const Registers& other) { return binop_assign<std::bit_or>(other); }
  
private:
  user_regs_struct regs_;

  Registers() {}

  using iter_value_type = decltype(user_regs_struct::rax);
  static_assert(sizeof(regs_) % sizeof(iter_value_type) == 0,
		"size of iter_value_type must divide size of user_regs_struct");

  iter_value_type *begin() { return reinterpret_cast<iter_value_type *>(&regs_); }
  const iter_value_type *begin() const { return reinterpret_cast<const iter_value_type *>(&regs_); }
  iter_value_type *end() { return reinterpret_cast<iter_value_type *>(&regs_ + 1); }
  const iter_value_type *end() const {
    return reinterpret_cast<const iter_value_type *>(&regs_ + 1);
  }

  template <template <class> class Binop>
  Registers binop(const Registers& other) const {
    Registers res;
    std::transform(begin(), end(), other.begin(), res.begin(), Binop<iter_value_type>());
    return res;
  }

  template <template <class> class Binop>
  Registers& binop_assign(const Registers& other) {
    std::transform(begin(), end(), other.begin(), begin(), Binop<iter_value_type>());
    return *this;
  }
};

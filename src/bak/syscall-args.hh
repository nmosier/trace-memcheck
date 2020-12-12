#pragma once

#include <sys/user.h>
#include "syscall.hh"

class SyscallArgs {
public:
  SyscallArgs() {}
  
  template <typename... Ts>
  SyscallArgs(Ts&&... ts) { add_call(ts...); }

  static constexpr unsigned MAX_ARGS = 6;

  Syscall no() const { return static_cast<Syscall>(regs_.rax); }
  
  template <unsigned N, typename Arg>
  Arg arg() const {
    constexpr unsigned long long user_regs_struct::* map[MAX_ARGS] =
      {&user_regs_struct::rdi,
       &user_regs_struct::rsi,
       &user_regs_struct::rdx,
       &user_regs_struct::r10,
       &user_regs_struct::r8,
       &user_regs_struct::r9,
      };
    return (Arg) (regs_.*map[N]);
  }

  template <typename RV>
  RV rv() const { return (RV) rv_; }

  void add_call(const user_regs_struct& regs) { regs_ = regs; }
  void add_call(Tracee& tracee) { add_call(tracee.get_regs()); }
  
  void add_ret(unsigned long long rv) { rv_ = rv; }
  void add_ret(Tracee& tracee) { add_ret(tracee.get_regs().rax); }

  const user_regs_struct& regs() const { return regs_; }
  
private:
  user_regs_struct regs_;
  unsigned long long rv_;
};

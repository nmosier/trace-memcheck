#pragma once

#include "tracee.hh"
#include "regs.hh"

class SyscallArgs {
public:
  SyscallArgs() {}
  
  template <typename... Ts>
  SyscallArgs(Ts&&... ts) { add_call(ts...); }

  static constexpr unsigned MAX_ARGS = 6;

  Syscall no() const { return static_cast<Syscall>(regs_.rax()); }
  
  template <unsigned N, typename Arg>
  Arg arg() const {
    constexpr unsigned long long (GPRegisters::*map[MAX_ARGS])() const = 
      {&GPRegisters::rdi,
       &GPRegisters::rsi,
       &GPRegisters::rdx,
       &GPRegisters::r10,
       &GPRegisters::r8,
       &GPRegisters::r9,
      };
    return (Arg) (regs_.*map[N])();
  }

  template <typename RV>
  RV rv() const { return (RV) rv_; }

  template <typename... Args>
  void add_call(Args&&... args) { regs_ = GPRegisters(args...); }
  
  void add_ret(unsigned long long rv) { rv_ = rv; }
  void add_ret(Tracee& tracee) { add_ret(tracee.get_gpregs().rax); }

  const GPRegisters& regs() const { return regs_; }
  
private:
  GPRegisters regs_;
  unsigned long long rv_;
};

#pragma once

#include "dbi/tracee.hh"
#include "dbi/regs.hh"
#include "syscall.hh"

namespace memcheck {

  class SyscallArgs {
  public:
    SyscallArgs() {}
  
    template <typename... Ts>
    SyscallArgs(Ts&&... ts) { add_call(ts...); }

    static constexpr unsigned MAX_ARGS = 6;

    Syscall no() const { return static_cast<Syscall>(regs_.rax()); }
  
    template <unsigned N, typename Arg>
    Arg arg() const {
      constexpr unsigned long long (dbi::GPRegisters::*map[MAX_ARGS])() const = 
	{&dbi::GPRegisters::rdi,
	 &dbi::GPRegisters::rsi,
	 &dbi::GPRegisters::rdx,
	 &dbi::GPRegisters::r10,
	 &dbi::GPRegisters::r8,
	 &dbi::GPRegisters::r9,
	};
      return (Arg) (regs_.*map[N])();
    }

    template <typename RV>
    RV rv() const { return (RV) rv_; }

    void add_call(const dbi::GPRegisters& regs) { regs_ = regs; }
   
    template <typename... Args>
    void add_call(Args&&... args) { regs_ = dbi::GPRegisters(args...); }
  
    void add_ret(unsigned long long rv) { rv_ = rv; }
    void add_ret(dbi::Tracee& tracee) { add_ret(tracee.get_gpregs().rax); }

    const dbi::GPRegisters& regs() const { return regs_; }
  
  private:
    dbi::GPRegisters regs_;
    unsigned long long rv_;
  };

}

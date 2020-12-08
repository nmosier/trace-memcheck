#pragma once

#include "syscall.hh"
#include "addr-range.hh"
#include "state.hh"
#include "memcheck.hh"

// checks and propogates taint
class SyscallChecker {
public:
  SyscallChecker(Tracee& tracee, State& taint_state, const AddrRange& stack_range):
    tracee(tracee), taint_state(taint_state), stack_range(stack_range) {}

  bool pre(const SyscallArgs& args);
  
  template <typename... Args>
  bool operator()(Args&&... args) { return run(args...); }
  
private:
  Tracee& tracee;
  State& taint_state;
  AddrRange stack_range;

  template <typename RetType, typename... ArgTypes>
  class Params {
  public:
    Params(const SyscallArgs& args): args(args) {}

    Syscall no() const { return args.no(); }
    RetType rv() const { return args.rv<RetType>(); }

    template <size_t N>
    using ArgType = typename std::tuple_element<N, std::tuple<ArgTypes...>>::type;

    template <size_t N>
    ArgType<N> arg() const { return args.arg<N, ArgType<N>>(); }

  private:
    const SyscallArgs& args;
  };

  bool tainted(const void *begin, const void *end) const;
  bool tainted(const void *begin, size_t size) const {
    return tainted(begin, static_cast<const char *>(begin) + size);
  }
  bool tainted(const char *s);

  using run_f = bool (SyscallChecker::*)(const SyscallArgs& args);

  bool pre_read(const SyscallArgs& args);
  bool pre_write(const SyscallArgs& args);
  bool pre_brk(const SyscallArgs& args);
  bool pre_access(const SyscallArgs& args);
  bool pre_open(const SyscallArgs& args);
  bool pre_fstat(const SyscallArgs& args);
  bool pre_mmap(const SyscallArgs& args);
  bool pre_close(const SyscallArgs& args);
  bool pre_mprotect(const SyscallArgs& args);
  bool pre_arch_prctl(const SyscallArgs& args);
  bool pre_munmap(const SyscallArgs& args);
  bool pre_futex(const SyscallArgs& args);
  bool pre_exit_group(const SyscallArgs& args);
};

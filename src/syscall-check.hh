#pragma once

#include "syscall.hh"
#include "addr-range.hh"
#include "state.hh"
#include "memcheck.hh"

// checks and propogates taint
class SyscallChecker {
public:
  SyscallChecker(Tracee& tracee, State& taint_state, const AddrRange& stack_range, const SyscallArgs& args):
    tracee(tracee), taint_state(taint_state), stack_range(stack_range), args(args) {}

  bool pre();
  
  template <typename... Args>
  bool operator()(Args&&... args) { return run(args...); }
  
private:
  Tracee& tracee;
  State& taint_state;
  AddrRange stack_range;
  const SyscallArgs& args;

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

  bool check_read(const void *begin, const void *end) const;
  bool check_read(const void *begin, size_t size) const {
    return check_read(begin, static_cast<const char *>(begin) + size);
  }
  bool check_read(const char *s);

  bool check_write(void *begin, void *end) const;
  bool check_write(void *begin, size_t size) const;

  template <class S>
  void read_struct(const void *addr, S& s) {
    tracee.read(&s, sizeof(S), addr);
  }

  using run_f = bool (SyscallChecker::*)(const SyscallArgs& args);

#define SYSCALLS_CHECK_PRE_DECL(name, ...) bool pre_##name();
  SYSCALLS(SYSCALLS_CHECK_PRE_DECL)
#undef SYSCALLS_CHECK_PRE_DECL

  
};

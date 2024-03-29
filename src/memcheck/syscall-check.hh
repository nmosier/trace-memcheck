#pragma once

#include "dbi/syscall.hh"
#include "addr-range.hh"
#include "state.hh"
#include "memcheck.hh"

namespace memcheck {

  // checks and propogates taint
  class SyscallChecker {
  public:
    SyscallChecker(dbi::Tracee& tracee, PageSet& page_set, State& taint_state, void *stack_begin,
		   const dbi::SyscallArgs& args, const Memcheck& memcheck):
      tracee(tracee),
      page_set(page_set),
      taint_state(taint_state),
      stack_range(stack_begin, tracee.get_sp()),
      args(args),
      taint_args(taint_state.gpregs()),
      memcheck(memcheck) {}

    bool pre();
    void post();
  
  private:
    dbi::Tracee& tracee;
    PageSet& page_set;
    State& taint_state;
    AddrRange stack_range;
    const dbi::SyscallArgs& args;
    dbi::SyscallArgs taint_args;
    const Memcheck& memcheck;

    bool check_read(const void *begin, const void *end) const;
    bool check_read(const void *begin, size_t size) const {
      return check_read(begin, static_cast<const char *>(begin) + size);
    }
  
    bool check_read(const char *s);

    bool check_write(void *begin, void *end) const;
    bool check_write(void *begin, size_t size) const;

    void do_write(void *begin, void *end);
    void do_write(void *addr, size_t size);
    void do_write(char *str);

    template <class S>
    void read_struct(const void *addr, S& s) {
      tracee.read(&s, sizeof(S), addr);
    }

    template <typename T>
    void print_values(const T *addr) const {
      *dbi::g_conf.log << args.no() << ": ";
      for (const auto& pair : memcheck.thd_map) {
	const State& state = pair.second.state;
	T val;
	state.read(addr, addr + 1, &val);
	*dbi::g_conf.log << val << " ";
      }
      *dbi::g_conf.log << "\n";
    }

    template <size_t N, typename T>
    void print_regs() const {
      *dbi::g_conf.log << args.no() << ": ";
      for (const auto& pair : memcheck.thd_map) {
	const State& state = pair.second.state;
	const dbi::SyscallArgs args(state.gpregs());
	*dbi::g_conf.log << args.arg<N, T>() << " ";
      }
      *dbi::g_conf.log << "\n";
    }

    enum class Access {NONE, READ, WRITE};
    static constexpr Access access(const char *typestr);

#define SYSCALLS_CHECK_PRE_DECL(name, ...) bool pre_##name();
    SYSCALLS(SYSCALLS_CHECK_PRE_DECL)
#undef SYSCALLS_CHECK_PRE_DECL
  
#define SYSCALLS_CHECK_POST_DECL(name, ...) void post_##name();
    SYSCALLS(SYSCALLS_CHECK_POST_DECL)
#undef SYSCALLS_CHECK_POST_DECL
  
  };

}

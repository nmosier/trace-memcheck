#include <unordered_map>
#include <sys/stat.h>
#include <unistd.h>
#include "syscall-check.hh"


bool SyscallChecker::tainted(const void *begin, const void *end) const {
  return !taint_state.is_zero(begin, end);
}

bool SyscallChecker::tainted(const char *s) {
  return tainted(s, tracee.strlen(s));
}

bool SyscallChecker::pre(const SyscallArgs& args) {
  switch (args.no()) {
  case Syscall::READ: return pre_READ(args);
  case Syscall::WRITE: return pre_write(args);
  case Syscall::BRK: return pre_brk(args);
  case Syscall::ACCESS: return pre_access(args);
  case Syscall::OPEN: return pre_open(args);
  case Syscall::FSTAT: return pre_fstat(args);
  case Syscall::MMAP: return pre_mmap(args);
  case Syscall::CLOSE: return pre_close(args);
  case Syscall::MPROTECT: return pre_mprotect(args);
  case Syscall::ARCH_PRCTL: return pre_arch_prctl(args);
  case Syscall::MUNMAP: return pre_munmap(args);
  case Syscall::FUTEX: return pre_futex(args);
  case Syscall::EXIT_GROUP: return pre_exit_group(args);
  default:
    abort();
  }
}

#define PRE_DEF_LINE(i, t, n)				\
  t n = args.arg<i, t>(); (void) n;
#define PRE_DEF2(name, val, rv, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5) \
  PRE_DEF_LINE(0, t0, n0)				\
  PRE_DEF_LINE(1, t1, n1)				\
  PRE_DEF_LINE(2, t2, n2)				\
  PRE_DEF_LINE(3, t3, n3)				\
  PRE_DEF_LINE(4, t4, n4)				\
  PRE_DEF_LINE(5, t5, n5)

#define PRE_DEF(sys) SYSCALL(PRE_DEF2, SYS_##sys)

bool SyscallChecker::pre_READ(const SyscallArgs& args) {
  PRE_DEF(READ);

  if (stack_range.overlaps(AddrRange(buf, count))) {
    std::clog << "memcheck: read to below stack\n";
    return false;
  }

  taint_state.fill(buf, buf + count, 0);
  
  return true;
}

#if 0
bool SyscallChecker::pre_WRITE(const SyscallArgs& args) {
  PRE_DEF(WRITE);
}
#endif

#if 0
bool SyscallChecker::pre_read(const SyscallArgs& args) {
  Params<int, unsigned int, char *, size_t> params(args);
  const auto fd = params.arg<0>(); (void) fd;
  const auto buf = params.arg<1>();
  const auto count = params.arg<2>();

  /* TODO: Make sure that this is valid memory (e.g. not pointing past end of heap). */

  /* make sure not below SP */
  if (stack_range.overlaps(AddrRange(buf, count))) {
    std::clog << "memcheck: read from below stack pointer\n";
    return false;
  }
  
  /* untaint written-to memory */
  taint_state.fill(buf, buf + count, 0);
  
  return true;
}
#endif

bool SyscallChecker::pre_write(const SyscallArgs& args) {
  Params<int, unsigned int, const char *, size_t> params(args);
  const auto fd = params.arg<0>(); (void) fd;
  const auto buf = params.arg<1>();
  const auto count = params.arg<2>();

  /* TODO: Make sure that this is valid memory (e.g. not pointing past end of heap). */

  if (tainted(buf, count)) {
    std::clog << "memcheck: write from uninitialized memory\n";
    return false;
  }
  
  return true;
}

bool SyscallChecker::pre_brk(const SyscallArgs& args) {
  Params<void *, void *> params(args);
  const auto brk = params.arg<0>(); (void) brk;

  return true;
}

bool SyscallChecker::pre_access(const SyscallArgs& args) {
  Params<int, const char *, int> params(args);
  const auto pathname = params.arg<0>();
  const auto mode = params.arg<1>(); (void) mode;

  if (tainted(pathname)) {
    std::clog << "memcheck: access: tainted pathname\n";
    return false;
  }

  return true;
}

bool SyscallChecker::pre_open(const SyscallArgs& args) {
#if 1
  Params<int, const char *, int, int> params(args);
  const auto filename = params.arg<0>();
  const auto flags = params.arg<1>(); (void) flags;
  const auto mode = params.arg<2>(); (void) mode;
#else
  
#endif

  if (tainted(filename)) {
    std::clog << "memcheck: open: tainted filename\n";
    return false;
  }
  
  return true;
}

bool SyscallChecker::pre_fstat(const SyscallArgs& args) {
#if 0
  Params<int, unsigned int, struct stat *> params(args);
  const auto fd = params.arg<0>(); (void) fd;
  const auto buf = params.arg<1>();

  /* TODO: Make sure this is valid memory. */

  if (tainted(buf, sizeof(struct stat))) {
    std::clog << "memcheck: fstat: tainted buf\n";
    return false;
  }
#endif

  return true;
}

bool SyscallChecker::pre_mmap(const SyscallArgs& args) {
#if 0
  Params<void *, unsigned long, unsigned long, unsigned long, unsigned long,
	 unsigned long, unsigned long> params(args);
  const auto addr = params.arg<0>();
  const auto len = params.arg<1>();
  const auto prot = params.arg<2>();
  const auto flags = params.arg<3>();
  const auto fd = params.arg<4>();
  const auto off = params.arg<5>();
#endif

  return true;
}

bool SyscallChecker::pre_close(const SyscallArgs& args) {
#if 0
  Params<int, int> params(args);
  const auto fd = params.arg<0>();
#endif

  return true;
}

bool SyscallChecker::pre_mprotect(const SyscallArgs& args) {
  return true;
}

bool SyscallChecker::pre_arch_prctl(const SyscallArgs& args) {
#if 0
  Params<int, struct task_struct *, int, unsigned long *> params(args);
  const auto task = params.arg<0>();
  const auto code = params.arg<1>();
  const auto addr = params.arg<2>();
#endif

  // TODO: Need to figure out how this works
  
  return true;
}

bool SyscallChecker::pre_munmap(const SyscallArgs& args) {
  return true;
}

bool SyscallChecker::pre_futex(const SyscallArgs& args) {
  Params<int, uint32_t, int, uint32_t, struct timespec *, uint32_t *, uint32_t> params(args);
  const auto uaddr = params.arg<0>(); (void) uaddr;
  const auto utime = params.arg<3>(); (void) utime;
  const auto uaddr2 = params.arg<4>(); (void) uaddr2;

  // TODO: Conditinoally check utime buf.
  return true;
}

bool SyscallChecker::pre_exit_group(const SyscallArgs& args) {
  return true;
}

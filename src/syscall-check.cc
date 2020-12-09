#include <unordered_map>
#include <sys/stat.h>
#include <unistd.h>
#include "syscall-check.hh"

bool SyscallChecker::check_read(const void *begin, const void *end) const {
  if (!taint_state.is_zero(begin, end)) {
    std::clog << "memcheck: " << to_string(args.no()) << ": read from tainted memory\n";
    return false;
  }
  return true;
}

bool SyscallChecker::check_read(const char *s) {
  return check_read(s, tracee.strlen(s));
}

bool SyscallChecker::check_write(const void *begin, const void *end) const {
  if (stack_range.overlaps(AddrRange(begin, end))) {
    std::clog << "memcheck: warning: " << to_string(args.no()) << ": write below stack pointer\n";
    std::clog << stack_range << " " << AddrRange(begin, end) << "\n";
    return true;
  }
  return true;
}

bool SyscallChecker::check_write(const void *begin, size_t size) const {
  return check_write(begin, static_cast<const char *>(begin) + size);
}

bool SyscallChecker::pre() {
#define PRE_TAB(name, ...) case Syscall::name: return pre_##name();
  switch (args.no()) {
    SYSCALLS(PRE_TAB);
  default: abort();
  }
#undef PRE_TAB
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
#define PRE_TRUE(sys) bool SyscallChecker::pre_##sys() { return true; }
#define PRE_ABORT(sys) bool SyscallChecker::pre_##sys() { abort(); }

bool SyscallChecker::pre_READ() {
  PRE_DEF(READ);
  if (!check_read(buf, count)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_WRITE() {
  PRE_DEF(WRITE);
  if (!check_write(buf, count)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_BRK() {
  PRE_DEF(BRK);
  return true;
}

bool SyscallChecker::pre_ACCESS() {
  PRE_DEF(ACCESS);
  if (!check_read(pathname)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_OPEN() {
  PRE_DEF(OPEN);
  if (!check_read(filename)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_FSTAT() {
  PRE_DEF(FSTAT);

  if (!check_write(buf, sizeof(*buf))) {
    assert(stack_range.end == tracee.get_sp());
    return false;
  }
  return true;
}

bool SyscallChecker::pre_ARCH_PRCTL() {
  PRE_DEF(ARCH_PRCTL);
  // TODO: Need to figure out how this works
  return true;
}

bool SyscallChecker::pre_FUTEX() {
  PRE_DEF(FUTEX);
  // TODO: Conditinoally check utime buf.
  return true;
}

PRE_TRUE(MMAP)
PRE_TRUE(CLOSE)
PRE_TRUE(MPROTECT)
PRE_TRUE(MUNMAP)
PRE_TRUE(EXIT_GROUP)

PRE_ABORT(STAT)
PRE_ABORT(LSTAT)
PRE_ABORT(POLL)
PRE_ABORT(LSEEK)
PRE_ABORT(GETDENTS)
PRE_ABORT(GETEUID)
PRE_ABORT(MREMAP)
PRE_ABORT(SOCKET)
PRE_ABORT(CONNECT)
PRE_ABORT(SENDTO)
PRE_ABORT(SET_TID_ADDRESS)
PRE_ABORT(SET_ROBUST_LIST)
PRE_ABORT(RT_SIGACTION)
PRE_ABORT(RT_SIGPROCMASK)
PRE_ABORT(GETRLIMIT)
PRE_ABORT(STATFS)

#include <unordered_map>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/resource.h>
#include <sys/utsname.h>
#include <unistd.h>
#include <poll.h>
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

bool SyscallChecker::check_write(void *begin, void *end) const {
  if (stack_range.overlaps(AddrRange(begin, end))) {
    std::clog << "memcheck: warning: " << to_string(args.no()) << ": write below stack pointer\n";
    std::clog << stack_range << " " << AddrRange(begin, end) << "\n";
    return true;
  }

  /* mark as untainted */
  taint_state.fill(begin, end, -1);
  
  return true;
}

bool SyscallChecker::check_write(void *begin, size_t size) const {
  return check_write(begin, static_cast<char *>(begin) + size);
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
#define PRE_STUB(sys)				\
  bool SyscallChecker::pre_##sys() {		\
    std::clog << "memcheck: warning: " << args.no() << ": stub\n";	\
    return true;							\
  }

bool SyscallChecker::pre_READ() {
  PRE_DEF(READ);
  if (!check_write(buf, count)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_WRITE() {
  PRE_DEF(WRITE);
  if (!check_read(buf, count)) {
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
    return false;
  }
  return true;
}

bool SyscallChecker::pre_SET_TID_ADDRESS() {
  PRE_DEF(SET_TID_ADDRESS);
  if (!check_write(tidptr, sizeof(*tidptr))) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_RT_SIGACTION() {
  PRE_DEF(RT_SIGACTION);
  if (!check_read(act, sizeof(*act))) {
    return false;
  }
  if (oldact != nullptr) {
    if (!check_write(oldact, sizeof(*oldact))) {
      return false;
    }
  }
  return true;
}

bool SyscallChecker::pre_STAT() {
  PRE_DEF(STAT);
  if (!check_read(pathname)) {
    return false;
  }
  if (!check_write(buf, sizeof(*buf))) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_LSTAT() {
  PRE_DEF(LSTAT);
  if (!check_read(pathname)) { return false; }
  if (!check_write(buf, sizeof(*buf))) { return false; }
  return true;
}

bool SyscallChecker::pre_FACCESSAT() {
  PRE_DEF(FACCESSAT);
  if (!check_read(pathname)) {
    return false;
  }
  return true;
}

bool SyscallChecker::pre_GETDENTS() {
  PRE_DEF(GETDENTS);
  if (!check_write(dirp, count)) { return false; }
  return true;
}

bool SyscallChecker::pre_LGETXATTR() {
  PRE_DEF(LGETXATTR);
  if (!check_read(pathname)) { return false; }
  if (!check_read(name)) { return false; }
  if (!check_write(value, size)) { return false; }
  return true;
}

// TODO: have better way of handling families of these
bool SyscallChecker::pre_GETXATTR() {
  PRE_DEF(GETXATTR);
  if (!check_read(pathname)) { return false; }
  if (!check_read(name)) { return false; }
  if (!check_write(value, size)) { return false; }
  return true;
}

bool SyscallChecker::pre_CONNECT() {
  PRE_DEF(CONNECT);
  if (!check_read(addr, addrlen)) { return false; }
  return true;
}

bool SyscallChecker::pre_SENDTO() {
  PRE_DEF(SENDTO);
  if (!check_read(buf, len)) { return false; }
  if (!check_read(dest_addr, addrlen)) { return false; }
  return true;
}

bool SyscallChecker::pre_POLL() {
  PRE_DEF(POLL);

  /* read only some fields in the array */
  for (nfds_t i = 0; i < nfds; ++i) {
    if (!check_read(&fds[i].fd, &fds[i].events + 1)) { return false; }
    if (!check_write(&fds[i].revents, sizeof(fds[i].revents))) { return false; }
  }

  return true;
}

bool SyscallChecker::pre_RECVMSG() {
  PRE_DEF(RECVMSG);
  if (!check_read(msg, sizeof(*msg))) { return false; }
  struct msghdr msg_;
  read_struct(msg, msg_);
  if (!check_write(msg_.msg_name, msg_.msg_namelen)) { return false; }
  std::clog << "memcheck: RECVMSG: stub\n";
  return true;
}

bool SyscallChecker::pre_GETRUSAGE() {
  PRE_DEF(GETRUSAGE);
  if (!check_write(usage, sizeof(*usage))) { return false; }
  return true;
}

bool SyscallChecker::pre_UNAME() {
  PRE_DEF(UNAME);
  if (!check_write(buf, sizeof(*buf))) { return false; }
  return true;
}

bool SyscallChecker::pre_SETSOCKOPT() {
  PRE_DEF(SETSOCKOPT);
  if (!check_read(optval, optlen)) { return false; }
  return true;
}

bool SyscallChecker::pre_GETPEERNAME() {
  PRE_DEF(GETPEERNAME);
  if (!check_read(addrlen, sizeof(*addrlen))) { return false; }
  int addrlen_;
  read_struct(addrlen, addrlen_);
  if (!check_write(addr, addrlen_)) { return false; }
  return true;
}

// TODO: Merge with above
bool SyscallChecker::pre_GETSOCKNAME() {
  PRE_DEF(GETSOCKNAME);
  if (!check_read(addrlen, sizeof(*addrlen))) { return false; }
  int addrlen_;
  read_struct(addrlen, addrlen_);
  if (!check_write(addr, addrlen_)) { return false; }
  return true;
}

PRE_TRUE(MMAP)
PRE_TRUE(CLOSE)
PRE_TRUE(MPROTECT)
PRE_TRUE(MUNMAP)
PRE_TRUE(EXIT_GROUP)
PRE_TRUE(GETUID)
PRE_TRUE(GETGID)
PRE_TRUE(GETPID)
PRE_TRUE(GETEUID)
PRE_TRUE(GETPPID)
PRE_TRUE(GETEGID)
PRE_TRUE(SOCKET)
PRE_TRUE(LSEEK)

PRE_STUB(ARCH_PRCTL)
PRE_STUB(FUTEX)
PRE_STUB(SET_ROBUST_LIST)
PRE_STUB(FCNTL)
PRE_STUB(IOCTL)
  
PRE_ABORT(MREMAP)
PRE_ABORT(RT_SIGPROCMASK)
PRE_ABORT(GETRLIMIT)
PRE_ABORT(STATFS)

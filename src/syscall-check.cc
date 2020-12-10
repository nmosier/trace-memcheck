#include <unordered_map>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/vfs.h>
#include <sys/resource.h>
#include <sys/utsname.h>
#include <unistd.h>
#include <poll.h>
#include "syscall-check.hh"

static constexpr size_t constexpr_strlen(const char *begin) {
  const char *it = begin;
  for (; *it; ++it) {}
  return it - begin;
}

static constexpr int constexpr_strncmp(const char *s1, const char *s2, size_t n) {
  for (size_t i = 0; i < n; ++i, ++s1, ++s2) {
    if (*s1 != *s2) {
      return *s1 - *s2;
    } else if (*s1 == '\0') {
      return 0;
    }
  }
  return 0;
}

static constexpr bool constexpr_isprefixof(const char *prefix, const char *s) {
  return constexpr_strncmp(prefix, s, constexpr_strlen(prefix));
}

#if 0
static constexpr bool constexpr_issuffixof(const char *suffix, const char *s) {
  const size_t suffix_len = constexpr_strlen(suffix);
  const size_t s_len = constexpr_strlen(s);
  if (suffix_len > s_len) { return false; }
  const char *s_ = s + (s_len - suffix_len); 
  return constexpr_strncmp(suffix, s_, suffix_len);
}
#endif

constexpr SyscallChecker::Access SyscallChecker::access(const char *typestr) {
  const char *const_prefix = "const ";
  if (constexpr_isprefixof(const_prefix, typestr)) {
    return Access::READ;
  } else if (constexpr_strlen(typestr) > 0 && typestr[constexpr_strlen(typestr) - 1] == '*') {
    return Access::WRITE;
  } else {
    return Access::NONE;
  }
}

bool SyscallChecker::check_read(const void *begin, const void *end) const {
  if (!taint_state.is_zero(begin, end)) {
    std::clog << "memcheck: " << to_string(args.no()) << ": read from tainted memory\n";
    return false;
  }
  return true;
}

bool SyscallChecker::check_read(const char *s) {
  return check_read(s, tracee.strlen(s) + 1);
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
#define PRE_DEF2(name, val, rv, argc, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5, ...) \
  PRE_DEF_LINE(0, t0, n0)						\
  PRE_DEF_LINE(1, t1, n1)						\
  PRE_DEF_LINE(2, t2, n2)						\
  PRE_DEF_LINE(3, t3, n3)						\
  PRE_DEF_LINE(4, t4, n4)						\
  PRE_DEF_LINE(5, t5, n5)

// check arguments
#define PRE_CHK_LINE(name, argc, i, t, n)				\
  if (i < argc) {							\
    if ((uint64_t) (taint_args.arg<i, t>()) != 0) {			\
      std::clog << "memcheck: warning: "#name": tainted syscall parameter '"#n"'\n"; \
      return false;							\
    }									\
  }
#define PRE_CHK2(name, val, rv, argc, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5, ...) \
  PRE_CHK_LINE(name, argc, 0, t0, n0)						\
  PRE_CHK_LINE(name, argc, 1, t1, n1)						\
  PRE_CHK_LINE(name, argc, 2, t2, n2)						\
  PRE_CHK_LINE(name, argc, 3, t3, n3)						\
  PRE_CHK_LINE(name, argc, 4, t4, n4)						\
  PRE_CHK_LINE(name, argc, 5, t5, n5)
#define PRE_CHK(sys) SYSCALL(PRE_CHK2, SYS_##sys)


#define PRE_DEF(sys) SYSCALL(PRE_DEF2, SYS_##sys)
#define PRE_TRUE(sys) \
  bool SyscallChecker::pre_##sys() {		\
    PRE_DEF(sys);				\
    PRE_CHK(sys);				\
    return true;				\
  }
#define PRE_ABORT(sys) bool SyscallChecker::pre_##sys() { abort(); }
#define PRE_STUB(sys)				\
  bool SyscallChecker::pre_##sys() {		\
    PRE_DEF(sys);							\
    PRE_CHK(sys);							\
    std::clog << "memcheck: warning: " << args.no() << ": stub\n";	\
    return true;							\
  }

#define READ_STRING(str) do { if (!check_read(str)) { return false; } } while (0)
#define READ_TYPE(name) do { if (!check_read(name, sizeof(*name))) { return false; } } while (0)
#define READ_BUF(buf, len) do { if (!check_read(buf, len)) { return false; } } while (0)

#define WRITE_TYPE(name) do { if (!check_write(name, sizeof(*name))) { return false; } } while (0)
#define WRITE_BUF(buf, len) do { if (!check_write(buf, len)) { return false; } } while (0)

bool SyscallChecker::pre_READ() {
  PRE_DEF(READ);
  PRE_CHK(READ);
  WRITE_BUF(buf, count);
  return true;
}

bool SyscallChecker::pre_WRITE() {
  PRE_DEF(WRITE);
  PRE_CHK(WRITE);
  READ_BUF(buf, count);
  return true;
}

bool SyscallChecker::pre_ACCESS() {
  PRE_DEF(ACCESS);
  PRE_CHK(ACCESS);
  READ_STRING(pathname);
  return true;
}

bool SyscallChecker::pre_OPEN() {
  PRE_DEF(OPEN);
  PRE_CHK(OPEN);
  READ_STRING(filename);
  return true;
}

bool SyscallChecker::pre_FSTAT() {
  PRE_DEF(FSTAT);
  PRE_CHK(FSTAT);
  WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_RT_SIGACTION() {
  PRE_DEF(RT_SIGACTION);
  PRE_CHK(RT_SIGACTION);

  /* check mandatory fields in struct sigaction */
  READ_TYPE(&act->sa_mask);
  READ_TYPE(&act->sa_flags);

  int flags;
  read_struct(&act->sa_flags, flags);
  
  if ((flags & SA_SIGINFO)) {
    READ_TYPE(&act->sa_sigaction);
  } else {
    READ_TYPE(&act->sa_handler);
  }

  if (oldact != nullptr) {
    WRITE_TYPE(oldact);
  }
  
  return true;
}

bool SyscallChecker::pre_STAT() {
  PRE_DEF(STAT);
  PRE_CHK(STAT);
  READ_STRING(pathname);
  WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_LSTAT() {
  PRE_DEF(LSTAT);
  PRE_CHK(LSTAT);
  READ_STRING(pathname);
  WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_FACCESSAT() {
  PRE_DEF(FACCESSAT);
  PRE_CHK(FACCESSAT);
  READ_STRING(pathname);
  return true;
}

bool SyscallChecker::pre_GETDENTS() {
  PRE_DEF(GETDENTS);
  PRE_CHK(GETDENTS);
  WRITE_BUF(dirp, count);
  return true;
}

bool SyscallChecker::pre_LGETXATTR() {
  PRE_DEF(LGETXATTR);
  PRE_CHK(LGETXATTR);
  READ_STRING(pathname);
  READ_STRING(name);
  WRITE_BUF(value, size);
  return true;
}

// TODO: have better way of handling families of these
bool SyscallChecker::pre_GETXATTR() {
  PRE_DEF(GETXATTR);
  PRE_CHK(GETXATTR);
  READ_STRING(pathname);
  READ_STRING(name);
  WRITE_BUF(value, size);
  return true;
}

bool SyscallChecker::pre_CONNECT() {
  PRE_DEF(CONNECT);
  PRE_CHK(CONNECT);
  READ_BUF(addr, addrlen);
  return true;
}

bool SyscallChecker::pre_SENDTO() {
  PRE_DEF(SENDTO);
  PRE_CHK(SENDTO);
  READ_BUF(buf, len);
  READ_BUF(dest_addr, addrlen);
  return true;
}

bool SyscallChecker::pre_POLL() {
  PRE_DEF(POLL);
  PRE_CHK(POLL);

  /* read only some fields in the array */
  for (nfds_t i = 0; i < nfds; ++i) {
    READ_BUF(&fds[i].fd, &fds[i].events + 1);
    READ_TYPE(&fds[i].revents);
  }

  return true;
}

bool SyscallChecker::pre_RECVMSG() {
  PRE_DEF(RECVMSG);
  PRE_CHK(RECVMSG);
  READ_TYPE(msg);
  struct msghdr msg_;
  read_struct(msg, msg_);
  READ_BUF(msg_.msg_name, msg_.msg_namelen);
  std::clog << "memcheck: warning: RECVMSG: stub\n";
  return true;
}

bool SyscallChecker::pre_GETRUSAGE() {
  PRE_DEF(GETRUSAGE);
  PRE_CHK(GETRUSAGE);
  WRITE_TYPE(usage);
  return true;
}

bool SyscallChecker::pre_UNAME() {
  PRE_DEF(UNAME);
  PRE_CHK(UNAME);
  WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_SETSOCKOPT() {
  PRE_DEF(SETSOCKOPT);
  PRE_CHK(SETSOCKOPT);
  READ_BUF(optval, optlen);
  return true;
}

bool SyscallChecker::pre_GETPEERNAME() {
  PRE_DEF(GETPEERNAME);
  PRE_CHK(GETPEERNAME);
  READ_TYPE(addrlen);
  WRITE_TYPE(addrlen);
  int addrlen_;
  read_struct(addrlen, addrlen_);
  WRITE_BUF(addr, addrlen_);
  return true;
}

// TODO: Merge with above
bool SyscallChecker::pre_GETSOCKNAME() {
  PRE_DEF(GETSOCKNAME);
  PRE_CHK(GETSOCKNAME);
  READ_TYPE(addrlen);
  WRITE_TYPE(addrlen);
  int addrlen_;
  read_struct(addrlen, addrlen_);
  WRITE_BUF(addr, addrlen_);
  return true;
}

bool SyscallChecker::pre_RT_SIGPROCMASK() {
  PRE_DEF(RT_SIGPROCMASK);
  PRE_CHK(RT_SIGPROCMASK);
  READ_TYPE(set);
  if (oldset != nullptr) {
    WRITE_TYPE(oldset);
  }
  return true;
}

bool SyscallChecker::pre_GETRLIMIT() {
  PRE_DEF(GETRLIMIT);
  PRE_CHK(GETRLIMIT);
  WRITE_TYPE(rlim);
  return true;
}

bool SyscallChecker::pre_STATFS() {
  PRE_DEF(STATFS);
  PRE_CHK(STATFS);
  READ_STRING(path);
  WRITE_TYPE(buf);
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
PRE_TRUE(GETTID)
PRE_TRUE(TGKILL)
PRE_TRUE(BRK)

PRE_STUB(ARCH_PRCTL)
PRE_STUB(FUTEX)
PRE_STUB(SET_ROBUST_LIST)
PRE_STUB(FCNTL)
PRE_STUB(IOCTL)
PRE_STUB(SET_TID_ADDRESS)
  
PRE_ABORT(MREMAP)


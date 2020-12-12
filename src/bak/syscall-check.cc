#include <unordered_map>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/vfs.h>
#include <sys/resource.h>
#include <sys/utsname.h>
#include <unistd.h>
#include <poll.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <linux/futex.h>
#include "syscall-check.hh"
#include "memcheck.hh"

AddrRange SyscallChecker::stack_range() {
  return {stack_begin, static_cast<char *>(tracee.get_sp()) - SHADOW_STACK_SIZE};
}

template <typename T>
void SyscallChecker::print_values(const T *addr) const {
  std::clog << args.no() << ": ";
  for (const auto& state : memcheck.post_states) {
    T val;
    state.read(addr, addr + 1, &val);
    std::clog << val << " ";
  }
  std::clog << "\n";
}

template <size_t N, typename T>
void SyscallChecker::print_regs() const {
  std::clog << args.no() << ": ";
  for (const auto& state : memcheck.post_states) {
    const SyscallArgs args(state.regs());
    std::clog << args.arg<N, T>() << " ";
  }
  std::clog << "\n";
}

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
  /* make sure syscall number not tainted */
  if (static_cast<int>(taint_state.regs().rax)) {
    std::clog << "memcheck: tainted system call number\n";
    return false;
  }
  
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
      print_regs<i, t>();						\
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

#define PRE_READ_STRING(str)			\
  do {						\
    if (!check_read(str)) {			\
      std::clog << "memcheck: " << args.no() << ": ";	\
      for (const State& state : memcheck.post_states) {	\
	std::clog << "'" << state.string(str) << "' ";	\
      }							\
      std::clog << "\nstr @ " << (void *) str << ", sp @ " << (void *) tracee.get_sp() << "\n";	\
      return false;					\
    }							\
  } while (0)
#define PRE_READ_TYPE(name) do { if (!check_read(name, sizeof(*name))) { return false; } } while (0)
#define PRE_READ_BUF(buf, len) do { if (!check_read(buf, len)) { return false; } } while (0)

#define PRE_WRITE_TYPE(name) do { if (!check_write(name, sizeof(*name))) { return false; } } while (0)
#define PRE_WRITE_BUF(buf, len) do { if (!check_write(buf, len)) { return false; } } while (0)

bool SyscallChecker::pre_READ() {
  PRE_DEF(READ);
  PRE_CHK(READ);
  PRE_WRITE_BUF(buf, count);
  return true;
}

bool SyscallChecker::pre_WRITE() {
  PRE_DEF(WRITE);
  PRE_CHK(WRITE);
  PRE_READ_BUF(buf, count);
  return true;
}

bool SyscallChecker::pre_ACCESS() {
  PRE_DEF(ACCESS);
  PRE_CHK(ACCESS);
  PRE_READ_STRING(pathname);
  return true;
}

bool SyscallChecker::pre_OPEN() {
  PRE_DEF(OPEN);
  PRE_CHK(OPEN);
  PRE_READ_STRING(filename);
  return true;
}

bool SyscallChecker::pre_FSTAT() {
  PRE_DEF(FSTAT);
  PRE_CHK(FSTAT);
  PRE_WRITE_TYPE(buf);
  return true;
}

#if 0
bool SyscallChecker::pre_RT_SIGACTION() {
  PRE_DEF(RT_SIGACTION);
  PRE_CHK(RT_SIGACTION);

  /* check mandatory fields in struct sigaction */
  PRE_READ_TYPE(&act->sa_mask);
  PRE_READ_TYPE(&act->sa_flags);

  int flags;
  read_struct(&act->sa_flags, flags);
  
  if ((flags & SA_SIGINFO)) {
    PRE_READ_TYPE(&act->sa_sigaction);
  } else {
    PRE_READ_TYPE(&act->sa_handler);
  }

  if (oldact != nullptr) {
    PRE_WRITE_TYPE(oldact);
  }
  
  return true;
}
#else
PRE_STUB(RT_SIGACTION)
#endif

bool SyscallChecker::pre_STAT() {
  PRE_DEF(STAT);
  PRE_CHK(STAT);
  PRE_READ_STRING(pathname);
  PRE_WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_LSTAT() {
  PRE_DEF(LSTAT);
  PRE_CHK(LSTAT);
  PRE_READ_STRING(pathname);
  PRE_WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_FACCESSAT() {
  PRE_DEF(FACCESSAT);
  PRE_CHK(FACCESSAT);
  PRE_READ_STRING(pathname);
  return true;
}

bool SyscallChecker::pre_GETDENTS() {
  PRE_DEF(GETDENTS);
  PRE_CHK(GETDENTS);
  PRE_WRITE_BUF(dirp, count);
  return true;
}

bool SyscallChecker::pre_LGETXATTR() {
  PRE_DEF(LGETXATTR);
  PRE_CHK(LGETXATTR);
  PRE_READ_STRING(pathname);
  PRE_READ_STRING(name);
  PRE_WRITE_BUF(value, size);
  return true;
}

// TODO: have better way of handling families of these
bool SyscallChecker::pre_GETXATTR() {
  PRE_DEF(GETXATTR);
  PRE_CHK(GETXATTR);
  PRE_READ_STRING(pathname);
  PRE_READ_STRING(name);
  PRE_WRITE_BUF(value, size);
  return true;
}

bool SyscallChecker::pre_CONNECT() {
  PRE_DEF(CONNECT);
  PRE_CHK(CONNECT);
  PRE_READ_BUF(addr, addrlen);
  return true;
}

bool SyscallChecker::pre_SENDTO() {
  PRE_DEF(SENDTO);
  PRE_CHK(SENDTO);
  PRE_READ_BUF(buf, len);
  PRE_READ_BUF(dest_addr, addrlen);
  return true;
}

bool SyscallChecker::pre_POLL() {
  PRE_DEF(POLL);
  PRE_CHK(POLL);

  /* read only some fields in the array */
  for (nfds_t i = 0; i < nfds; ++i) {
    PRE_READ_BUF(&fds[i].fd, &fds[i].events + 1);
    PRE_READ_TYPE(&fds[i].revents);
  }

  return true;
}

bool SyscallChecker::pre_RECVMSG() {
  PRE_DEF(RECVMSG);
  PRE_CHK(RECVMSG);
  PRE_READ_TYPE(msg);
  struct msghdr msg_;
  read_struct(msg, msg_);
  PRE_READ_BUF(msg_.msg_name, msg_.msg_namelen);
  std::clog << "memcheck: warning: RECVMSG: stub\n";
  return true;
}

bool SyscallChecker::pre_GETRUSAGE() {
  PRE_DEF(GETRUSAGE);
  PRE_CHK(GETRUSAGE);
  PRE_WRITE_TYPE(usage);
  return true;
}

bool SyscallChecker::pre_UNAME() {
  PRE_DEF(UNAME);
  PRE_CHK(UNAME);
  PRE_WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_SETSOCKOPT() {
  PRE_DEF(SETSOCKOPT);
  PRE_CHK(SETSOCKOPT);
  PRE_READ_BUF(optval, optlen);
  return true;
}

bool SyscallChecker::pre_GETPEERNAME() {
  PRE_DEF(GETPEERNAME);
  PRE_CHK(GETPEERNAME);
  PRE_READ_TYPE(addrlen);
  PRE_WRITE_TYPE(addrlen);
  int addrlen_;
  read_struct(addrlen, addrlen_);
  PRE_WRITE_BUF(addr, addrlen_);
  return true;
}

// TODO: Merge with above
bool SyscallChecker::pre_GETSOCKNAME() {
  PRE_DEF(GETSOCKNAME);
  PRE_CHK(GETSOCKNAME);
  PRE_READ_TYPE(addrlen);
  PRE_WRITE_TYPE(addrlen);
  int addrlen_;
  read_struct(addrlen, addrlen_);
  PRE_WRITE_BUF(addr, addrlen_);
  return true;
}

bool SyscallChecker::pre_RT_SIGPROCMASK() {
  PRE_DEF(RT_SIGPROCMASK);
  PRE_CHK(RT_SIGPROCMASK);
  PRE_READ_TYPE(set);
  if (oldset != nullptr) {
    PRE_WRITE_TYPE(oldset);
  }
  return true;
}

bool SyscallChecker::pre_GETRLIMIT() {
  PRE_DEF(GETRLIMIT);
  PRE_CHK(GETRLIMIT);
  PRE_WRITE_TYPE(rlim);
  return true;
}

bool SyscallChecker::pre_STATFS() {
  PRE_DEF(STATFS);
  PRE_CHK(STATFS);
  PRE_READ_STRING(path);
  PRE_WRITE_TYPE(buf);
  return true;
}

bool SyscallChecker::pre_SETRLIMIT() {
  PRE_DEF(SETRLIMIT);
  PRE_CHK(SETRLIMIT);
  PRE_READ_TYPE(rlim);
  return true;
}

bool SyscallChecker::pre_READLINK() {
  PRE_DEF(READLINK);
  PRE_CHK(READLINK);
  PRE_READ_STRING(pathname);
  PRE_WRITE_BUF(buf, bufsiz);
  return true;
}

bool SyscallChecker::pre_IOCTL() {
  PRE_DEF(IOCTL);
  PRE_CHK(IOCTL);

  switch (request) {
  case TCGETS:
    {
      const auto argp = reinterpret_cast<struct termios *>(arg);
      PRE_WRITE_TYPE(argp);
    }
    break;
  case TIOCGWINSZ:
    {
      const auto argp = reinterpret_cast<struct winsize *>(arg);
      PRE_WRITE_TYPE(argp);
    }
    break;
  default:
    abort();
  }

  return true;
}

bool SyscallChecker::pre_FUTEX() {
  PRE_DEF(FUTEX);
  PRE_CHK(FUTEX);
  constexpr int ignoremask = FUTEX_PRIVATE_FLAG; // TODO: unite w/ other def
  switch (futex_op & ~ignoremask) {
  case FUTEX_WAKE:
    break;
  default:
    abort();
  }
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
PRE_TRUE(FADVISE64)

PRE_STUB(ARCH_PRCTL)
PRE_STUB(SET_ROBUST_LIST)
PRE_STUB(FCNTL)
PRE_STUB(SET_TID_ADDRESS)
  
PRE_ABORT(MREMAP)

void SyscallChecker::do_write(void *begin, void *end) {
  taint_state.fill(begin, end, 0);
}

void SyscallChecker::do_write(void *begin, size_t size) {
  taint_state.fill(begin, static_cast<char *>(begin) + size, 0);
}

void SyscallChecker::do_write(char *str) {
  const auto len = tracee.strlen(str);
  do_write(str, len + 1);
}

void SyscallChecker::post() {
#define POST_TAB(name, ...) case Syscall::name: post_##name(); break;
  switch (args.no()) {
    SYSCALLS(POST_TAB);
  }
#undef POST_TAB
}

#define POST_DEF2(name, val, rv_t, ...)					\
  rv_t rv = args.rv<rv_t>();						\
  (void) rv;
#define POST_DEF(sys) PRE_DEF(sys); SYSCALL(POST_DEF2, SYS_##sys);

#define POST_ABORT(sys) void SyscallChecker::post_##sys() { abort(); }
#define POST_STUB(sys)				\
  void SyscallChecker::post_##sys() {			\
    std::clog << "memcheck: warning: "#sys": stub\n";	\
  }
#define POST_TRUE(sys) void SyscallChecker::post_##sys() {}
#define POST_WRITE_TYPE(name) do_write(name, sizeof(*name))
#define POST_WRITE_BUF(buf, len) do_write(buf, len)
#define POST_WRITE_STRING(str) do_write(str)

#define POST_STAT(sys)				\
  void SyscallChecker::post_##sys() {		\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      POST_WRITE_TYPE(buf);			\
    }						\
  }

#define POST_GETXATTR(sys)			\
  void SyscallChecker::post_##sys() {		\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      assert(static_cast<size_t>(rv) <= size);	\
      POST_WRITE_BUF(value, rv);		\
    }						\
  }

// for getpeername, getsockname
#define POST_GETNAME(sys)			\
  void SyscallChecker::post_##sys() {		\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      POST_WRITE_TYPE(addrlen);			\
      socklen_t addrlen_val;			\
      read_struct(addrlen, addrlen_val);	\
      POST_WRITE_BUF(addr, addrlen_val);	\
    }						\
  }

void SyscallChecker::post_GETDENTS() {
  POST_DEF(GETDENTS);
  if (rv > 0) {
    assert(static_cast<unsigned>(rv) <= count);
    POST_WRITE_BUF(dirp, rv);
  }
}

void SyscallChecker::post_READ() {
  POST_DEF(READ);
  if (rv >= 0) { POST_WRITE_BUF(buf, rv); }
}

void SyscallChecker::post_POLL() {
  POST_DEF(POLL);
  if (rv > 0) {
    for (nfds_t i = 0; i < nfds; ++i) {
      POST_WRITE_TYPE(&fds[i].revents);
    }
  }
}

void SyscallChecker::post_GETRUSAGE() {
  POST_DEF(GETRUSAGE);
  if (rv >= 0) { POST_WRITE_TYPE(usage); }
}

#if 0
void SyscallChecker::post_RT_SIGACTION() {
  POST_DEF(RT_SIGACTION);
  if (rv >= 0) {
    if (oldact != nullptr) { POST_WRITE_TYPE(oldact); }
  }
}
#else
POST_STUB(RT_SIGACTION)
#endif

void SyscallChecker::post_UNAME() {
  POST_DEF(UNAME);
  if (rv >= 0) {
    POST_WRITE_STRING(buf->sysname);
    POST_WRITE_STRING(buf->nodename);
    POST_WRITE_STRING(buf->release);
    POST_WRITE_STRING(buf->version);
    POST_WRITE_STRING(buf->machine);
    POST_WRITE_STRING(buf->domainname);
  }
}

void SyscallChecker::post_GETRLIMIT() {
  POST_DEF(GETRLIMIT);
  if (rv >= 0) { POST_WRITE_TYPE(rlim); }
}

void SyscallChecker::post_READLINK() {
  POST_DEF(READLINK);
  if (rv >= 0) { POST_WRITE_BUF(buf, rv); }
}

void SyscallChecker::post_IOCTL() {
  POST_DEF(IOCTL);
  if (rv >= 0) {
    switch (request) {
    case TCGETS:
      {
	const auto argp = reinterpret_cast<struct termios *>(arg);
	POST_WRITE_TYPE(argp);
      }
      break;
    case TIOCGWINSZ:
      {
	const auto argp = reinterpret_cast<struct winsize *>(arg);
	POST_WRITE_TYPE(argp);
      }
      break;
    default:
      abort();
    }
  }
}

void SyscallChecker::post_FUTEX() {
  POST_DEF(FUTEX);
  if (rv >= 0) {
    constexpr uint32_t ignoremask = FUTEX_PRIVATE_FLAG;
    switch (futex_op & ~ignoremask) {
    case FUTEX_WAKE:
      break;
    default:
      abort();
    }
  }
}

POST_TRUE(OPEN)
POST_TRUE(CLOSE)
POST_TRUE(MMAP)
POST_TRUE(WRITE)
POST_TRUE(SOCKET)
POST_TRUE(CONNECT)
POST_TRUE(ACCESS)
POST_TRUE(MPROTECT)
POST_TRUE(MUNMAP)
POST_TRUE(GETEUID)
POST_TRUE(GETUID)
POST_TRUE(GETGID)
POST_TRUE(GETPID)
POST_TRUE(GETPPID)
POST_TRUE(GETEGID)
POST_TRUE(SETSOCKOPT)
POST_TRUE(LSEEK)
POST_TRUE(FADVISE64)
POST_TRUE(SETRLIMIT)

POST_STAT(STAT)
POST_STAT(LSTAT)
POST_STAT(FSTAT)

POST_GETXATTR(LGETXATTR)
POST_GETXATTR(GETXATTR)

POST_GETNAME(GETSOCKNAME)
POST_GETNAME(GETPEERNAME)

POST_STUB(SENDTO)
POST_STUB(RECVMSG)
POST_STUB(BRK)
POST_STUB(FCNTL)

POST_ABORT(ARCH_PRCTL)
POST_ABORT(EXIT_GROUP)
POST_ABORT(MREMAP)
POST_ABORT(SET_TID_ADDRESS)
POST_ABORT(SET_ROBUST_LIST)
POST_ABORT(RT_SIGPROCMASK)
POST_ABORT(STATFS)
POST_ABORT(FACCESSAT)
POST_ABORT(GETTID)
POST_ABORT(TGKILL)

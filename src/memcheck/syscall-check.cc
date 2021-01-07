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
#include <sys/un.h>
#include <netinet/in.h>

#include "syscall-check.hh"
#include "log.hh"

namespace memcheck {

  bool SyscallChecker::check_read(const void *begin, const void *end) const {
    if (!taint_state.is_zero(begin, end)) {
      error() << to_string(args.no()) << ": read from tainted memory\n";
      return false;
    }
    return true;
  }

  bool SyscallChecker::check_read(const char *s) {
    return check_read(s, tracee.strlen(s) + 1);
  }

  bool SyscallChecker::check_write(void *begin, void *end) const {
    /* unlock buffer */
    dbi::for_each_page(dbi::pagealign(begin), dbi::pagealign_up(end), [this] (const auto pageaddr) {
      const auto page_it = page_set.find(pageaddr);
      if (page_it != page_set.end() && page_set.tier(*page_it) == PageInfo::Tier::RDWR_LOCKED) {
	page_set.unlock(*page_it, tracee);
      }
    });
  
    if (stack_range.overlaps(AddrRange(begin, end))) {
      warning() << to_string(args.no()) << ": write below stack pointer\n";
      // *dbi::g_conf.log << stack_range << " " << AddrRange(begin, end) << "\n";
      return true;
    }

    return true;
  }

  bool SyscallChecker::check_write(void *begin, size_t size) const {
    return check_write(begin, static_cast<char *>(begin) + size);
  }

  bool SyscallChecker::pre() {
    /* make sure syscall number not tainted */
    if (static_cast<int>(taint_state.gpregs().rax())) {
      error() << "tainted system call number\n";
      return false;
    }

#define PRE_TAB(name, ...) case dbi::Syscall::name: return pre_##name();
    switch (args.no()) {
      SYSCALLS(PRE_TAB);
    default: abort();
    }
#undef PRE_TAB
  }

#define PRE_DEF_LINE(i, t, n)			\
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
      error() << "tainted syscall parameter '"#n"'\n";			\
      print_regs<i, t>();						\
      return false;							\
    }									\
  }
#define PRE_CHK2(name, val, rv, argc, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5, ...) \
  PRE_CHK_LINE(name, argc, 0, t0, n0)					\
  PRE_CHK_LINE(name, argc, 1, t1, n1)					\
  PRE_CHK_LINE(name, argc, 2, t2, n2)					\
  PRE_CHK_LINE(name, argc, 3, t3, n3)					\
  PRE_CHK_LINE(name, argc, 4, t4, n4)					\
  PRE_CHK_LINE(name, argc, 5, t5, n5)
#define PRE_CHK(sys) SYSCALL(PRE_CHK2, SYS_##sys)


#define PRE_DEF(sys) SYSCALL(PRE_DEF2, SYS_##sys)
#define PRE_DEF_CHK(sys)			\
  PRE_DEF(sys);					\
  PRE_CHK(sys)
#define PRE_TRUE(sys)				\
  bool SyscallChecker::pre_##sys() {		\
    PRE_DEF(sys);				\
    PRE_CHK(sys);				\
    return true;				\
  }
#define PRE_ABORT(sys) bool SyscallChecker::pre_##sys() { abort(); }
#define PRE_STUB(sys)							\
  bool SyscallChecker::pre_##sys() {					\
    PRE_DEF(sys);							\
    PRE_CHK(sys);							\
    log_stub() << args.no() << "\n";					\
    return true;							\
  }

#define PRE_READ_STRING(str)						\
  do {									\
    if (!check_read(str)) {						\
    error() << args.no() << ": string at " << (void *) str		\
	    << " contains uninitialized characters\n";			\
    for (const auto& pair : memcheck.thd_map) {				\
      const State& state = pair.second.state;				\
	*dbi::g_conf.log << "'" << state.string(str) << "' ";		\
      }									\
      *dbi::g_conf.log << "\nstr @ " << (void *) str << ", sp @ "	\
		       << (void *) tracee.get_sp() << "\n";		\
      return false;							\
    }									\
  } while (0)
#define PRE_READ_TYPE(name) do { if (!check_read(name, sizeof(*name))) { return false; } } while (0)
#define PRE_READ_BUF(buf, len) do { if (!check_read(buf, len)) { return false; } } while (0)

#define PRE_WRITE_TYPE(name) do { if (!check_write(name, sizeof(*name))) { return false; } } while (0)
#define PRE_WRITE_BUF(buf, len) do { if (!check_write(buf, len)) { return false; } } while (0)

  bool SyscallChecker::pre_READ() {
    PRE_DEF_CHK(READ);
    PRE_WRITE_BUF(buf, count);
    return true;
  }

  bool SyscallChecker::pre_WRITE() {
    PRE_DEF_CHK(WRITE);
    PRE_READ_BUF(buf, count);
    return true;
  }

  bool SyscallChecker::pre_ACCESS() {
    PRE_DEF_CHK(ACCESS);
    PRE_READ_STRING(pathname);
    return true;
  }

  bool SyscallChecker::pre_OPEN() {
    PRE_DEF_CHK(OPEN);
    PRE_READ_STRING(filename);
    return true;
  }

  bool SyscallChecker::pre_FSTAT() {
    PRE_DEF_CHK(FSTAT);
    PRE_WRITE_TYPE(buf);
    *dbi::g_conf.log << "FSTAT(" << (void *) buf << ")\n";
    return true;
  }

  bool SyscallChecker::pre_RT_SIGACTION() {
    PRE_DEF_CHK(RT_SIGACTION);

    if (act != nullptr) {
      PRE_READ_TYPE(&act->sa_mask);
      PRE_READ_TYPE(&act->sa_flags);

      int flags;
      read_struct(&act->sa_flags, flags);
      
      if ((flags & SA_SIGINFO)) {
	PRE_READ_TYPE(&act->sa_sigaction);
      } else {
	PRE_READ_TYPE(&act->sa_handler);
      }
    }

    if (oldact != nullptr) {
      PRE_WRITE_TYPE(oldact);
    }
  
    return true;
  }

  bool SyscallChecker::pre_CLOCK_GETTIME() {
    PRE_DEF_CHK(CLOCK_GETTIME);
    PRE_WRITE_TYPE(tp);
    return true;
  }

  bool SyscallChecker::pre_STAT() {
    PRE_DEF_CHK(STAT);
    PRE_READ_STRING(pathname);
    PRE_WRITE_TYPE(buf);
    return true;
  }

  bool SyscallChecker::pre_LSTAT() {
    PRE_DEF_CHK(LSTAT);
    PRE_READ_STRING(pathname);
    PRE_WRITE_TYPE(buf);
    return true;
  }

  bool SyscallChecker::pre_FACCESSAT() {
    PRE_DEF_CHK(FACCESSAT);
    PRE_READ_STRING(pathname);
    return true;
  }

  bool SyscallChecker::pre_GETDENTS() {
    PRE_DEF_CHK(GETDENTS);
    PRE_WRITE_BUF(dirp, count);
    return true;
  }

  bool SyscallChecker::pre_LGETXATTR() {
    PRE_DEF_CHK(LGETXATTR);
    PRE_READ_STRING(pathname);
    PRE_READ_STRING(name);
    PRE_WRITE_BUF(value, size);
    return true;
  }

  // TODO: have better way of handling families of these
  bool SyscallChecker::pre_GETXATTR() {
    PRE_DEF_CHK(GETXATTR);
    PRE_READ_STRING(pathname);
    PRE_READ_STRING(name);
    PRE_WRITE_BUF(value, size);
    return true;
  }

  bool SyscallChecker::pre_CONNECT() {
    PRE_DEF_CHK(CONNECT);
    PRE_READ_TYPE(&addr->sa_family);
  
  
    // TODO OPTIM: Faster to just get SA_FAMILY field
    sa_family_t sa_family;
    read_struct(&addr->sa_family, sa_family);
    switch (sa_family) {
    case AF_LOCAL:
      // case AF_UNIX:
      {
	// TODO: Correctness -- clamp to size
	const auto sun = reinterpret_cast<const struct sockaddr_un *>(addr);
	const auto sun_path = reinterpret_cast<const char *>(&sun->sun_path);
	PRE_READ_STRING(sun_path);
      }
      break;

    case AF_INET:
      {
	const auto sin = reinterpret_cast<const struct sockaddr_in *>(addr);
	PRE_READ_TYPE(sin);
      }
      break;
    
    default:
      std::cerr << "SyscallChecker::pre_CONNECT: unkown sa_family " << sa_family << "\n";
      abort();
    }

    return true;
  }

  bool SyscallChecker::pre_SENDTO() {
    PRE_DEF_CHK(SENDTO);
    PRE_READ_BUF(buf, len);
    PRE_READ_BUF(dest_addr, addrlen);
    return true;
  }

  bool SyscallChecker::pre_POLL() {
    PRE_DEF_CHK(POLL);
    /* read only some fields in the array */
    for (nfds_t i = 0; i < nfds; ++i) {
      PRE_READ_TYPE(&fds[i].fd);
      PRE_READ_TYPE(&fds[i].events);
      PRE_WRITE_TYPE(&fds[i].revents);
    }

    return true;
  }

  bool SyscallChecker::pre_RECVMSG() {
    PRE_DEF_CHK(RECVMSG);
    PRE_READ_TYPE(msg);
    struct msghdr msg_;
    read_struct(msg, msg_);

    if (msg_.msg_name != nullptr) {
      PRE_WRITE_BUF(msg_.msg_name, msg_.msg_namelen);
    }

    for (size_t i = 0; i < msg_.msg_iovlen; ++i) {
      const auto iov_ptr = &msg_.msg_iov[i];
      PRE_READ_TYPE(iov_ptr);
      struct iovec iov;
      read_struct(iov_ptr, iov);
      PRE_WRITE_BUF(iov.iov_base, iov.iov_len);
    }
  
    PRE_WRITE_BUF(msg_.msg_control, msg_.msg_controllen);

    return true;
  }

  bool SyscallChecker::pre_GETRUSAGE() {
    PRE_DEF_CHK(GETRUSAGE);
    PRE_WRITE_TYPE(usage);
    return true;
  }

  bool SyscallChecker::pre_UNAME() {
    PRE_DEF_CHK(UNAME);
    PRE_WRITE_TYPE(buf);
    return true;
  }

  bool SyscallChecker::pre_SETSOCKOPT() {
    PRE_DEF_CHK(SETSOCKOPT);
    PRE_READ_BUF(optval, optlen);
    return true;
  }

  bool SyscallChecker::pre_GETPEERNAME() {
    PRE_DEF_CHK(GETPEERNAME);
    PRE_READ_TYPE(addrlen);
    PRE_WRITE_TYPE(addrlen);
    int addrlen_;
    read_struct(addrlen, addrlen_);
    PRE_WRITE_BUF(addr, addrlen_);
    return true;
  }

  // TODO: Merge with above
  bool SyscallChecker::pre_GETSOCKNAME() {
    PRE_DEF_CHK(GETSOCKNAME);
    PRE_READ_TYPE(addrlen);
    PRE_WRITE_TYPE(addrlen);
    int addrlen_;
    read_struct(addrlen, addrlen_);
    PRE_WRITE_BUF(addr, addrlen_);
    return true;
  }

  bool SyscallChecker::pre_RT_SIGPROCMASK() {
    PRE_DEF_CHK(RT_SIGPROCMASK);
    PRE_READ_TYPE(set);
    if (oldset != nullptr) {
      PRE_WRITE_TYPE(oldset);
    }
    return true;
  }

  bool SyscallChecker::pre_GETRLIMIT() {
    PRE_DEF_CHK(GETRLIMIT);
    PRE_WRITE_TYPE(rlim);
    return true;
  }

  bool SyscallChecker::pre_STATFS() {
    PRE_DEF_CHK(STATFS);
    PRE_READ_STRING(path);
    PRE_WRITE_TYPE(buf);
    return true;
  }

  bool SyscallChecker::pre_SETRLIMIT() {
    PRE_DEF_CHK(SETRLIMIT);
    PRE_READ_TYPE(rlim);
    return true;
  }

  bool SyscallChecker::pre_READLINK() {
    PRE_DEF_CHK(READLINK);
    PRE_READ_STRING(pathname);
    PRE_WRITE_BUF(buf, bufsiz);
    return true;
  }

  bool SyscallChecker::pre_IOCTL() {
    PRE_DEF_CHK(IOCTL);
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

    case TIOCGPGRP:
      {
	const auto argp = reinterpret_cast<pid_t *>(arg);
	PRE_WRITE_TYPE(argp);
      }
      break;
      
    default:
      abort();
    }

    return true;
  }

  bool SyscallChecker::pre_FUTEX() {
    PRE_DEF_CHK(FUTEX);
    constexpr int ignoremask = FUTEX_PRIVATE_FLAG; // TODO: unite w/ other def
    switch (futex_op & ~ignoremask) {
    case FUTEX_WAKE:
      break;
    default:
      abort();
    }
    return true;
  }

  bool SyscallChecker::pre_PIPE() {
    PRE_DEF_CHK(PIPE);
    PRE_WRITE_BUF(pipefd, sizeof(*pipefd) * 2);
    return true;
  }

  bool SyscallChecker::pre_SET_TID_ADDRESS() {
    PRE_DEF_CHK(SET_TID_ADDRESS);
    PRE_WRITE_TYPE(tidptr);
    return true;
  }

  bool SyscallChecker::pre_SET_ROBUST_LIST() {
    PRE_DEF_CHK(SET_ROBUST_LIST);
    PRE_WRITE_TYPE(head);
    return true;
  }

  bool SyscallChecker::pre_GETTIMEOFDAY() {
    PRE_DEF_CHK(GETTIMEOFDAY);
    PRE_WRITE_TYPE(tv);
    PRE_WRITE_TYPE(tz);
    return true;
  }

  bool SyscallChecker::pre_TIME() {
    PRE_DEF_CHK(TIME);
    if (tloc != nullptr) {
      PRE_WRITE_TYPE(tloc);
    }
    return true;
  }

  bool SyscallChecker::pre_WRITEV() {
    PRE_DEF_CHK(WRITEV);
    for (auto i = 0UL; i < iovcnt; ++i) {
      PRE_READ_TYPE(&iov[i]);
      struct iovec cur_iov;
      read_struct(&iov[i], cur_iov);
      PRE_READ_BUF(cur_iov.iov_base, cur_iov.iov_len);
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
  PRE_STUB(FCNTL)

  PRE_ABORT(MREMAP)
  PRE_ABORT(FORK)
  PRE_ABORT(WAIT4)

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
#define POST_TAB(name, ...) case dbi::Syscall::name: post_##name(); break;
    switch (args.no()) {
      SYSCALLS(POST_TAB);
    }
#undef POST_TAB

    /* mark RAX as untainted */
    taint_state.gpregs().rax() = 0;
  }

#define POST_DEF2(name, val, rv_t, ...)		\
  rv_t rv = args.rv<rv_t>();			\
  (void) rv;
#define POST_DEF(sys) PRE_DEF(sys); SYSCALL(POST_DEF2, SYS_##sys);

#define POST_ABORT(sys) void SyscallChecker::post_##sys() { abort(); }
#define POST_STUB(sys)					\
  void SyscallChecker::post_##sys() {			\
    log_stub() << #sys << "\n";				\
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

  void SyscallChecker::post_RT_SIGACTION() {
    POST_DEF(RT_SIGACTION);
    if (rv >= 0) {
      if (oldact != nullptr) { POST_WRITE_TYPE(oldact); }
    }
  }

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
      case TIOCGPGRP:
	{
	  const auto argp = reinterpret_cast<pid_t *>(arg);
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

  void SyscallChecker::post_PIPE() {
    POST_DEF(PIPE);
    if (rv >= 0) {
      POST_WRITE_BUF(pipefd, sizeof(*pipefd) * 2);
    }
  }

  void SyscallChecker::post_CLOCK_GETTIME() {
    POST_DEF(CLOCK_GETTIME);
    if (rv >= 0) {
      POST_WRITE_TYPE(tp);
    }
  }

  void SyscallChecker::post_SET_TID_ADDRESS() {
    POST_DEF(SET_TID_ADDRESS);
    POST_WRITE_TYPE(tidptr);
  }

  void SyscallChecker::post_SET_ROBUST_LIST() {
    POST_DEF(SET_ROBUST_LIST);
    if (rv == 0) {
      POST_WRITE_TYPE(head);
    }
  }

  void SyscallChecker::post_RT_SIGPROCMASK() {
    POST_DEF(RT_SIGPROCMASK);
    if (rv >= 0) {
      POST_WRITE_TYPE(oldset);
    }
  }

  void SyscallChecker::post_GETTIMEOFDAY() {
    POST_DEF(GETTIMEOFDAY);
    if (rv >= 0) {
      POST_WRITE_TYPE(tv);
      POST_WRITE_TYPE(tz);
    }
  }

  void SyscallChecker::post_TIME() {
    POST_DEF(TIME);
    if (rv >= 0) {
      if (tloc != nullptr) {
	POST_WRITE_TYPE(tloc);
      }
    }
  }

  void SyscallChecker::post_RECVMSG() {
    POST_DEF(RECVMSG);
    if (rv >= 0) {
      struct msghdr msg_;
      read_struct(msg, msg_);

      if (msg_.msg_name != nullptr) {
	POST_WRITE_BUF(msg_.msg_name, msg_.msg_namelen);
      }

      for (size_t i = 0; i < msg_.msg_iovlen; ++i) {
	const auto iov_ptr = &msg_.msg_iov[i];
	struct iovec iov;
	read_struct(iov_ptr, iov);
	POST_WRITE_BUF(iov.iov_base, iov.iov_len);
      }

      POST_WRITE_BUF(msg_.msg_control, msg_.msg_controllen);
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
  POST_TRUE(SENDTO)
  POST_TRUE(WRITEV)

  POST_STAT(STAT)
  POST_STAT(LSTAT)
  POST_STAT(FSTAT)

  POST_GETXATTR(LGETXATTR)
  POST_GETXATTR(GETXATTR)

  POST_GETNAME(GETSOCKNAME)
  POST_GETNAME(GETPEERNAME)

  POST_STUB(BRK)
  POST_STUB(FCNTL)

  POST_ABORT(ARCH_PRCTL)
  POST_ABORT(EXIT_GROUP)
  POST_ABORT(MREMAP)
  POST_ABORT(STATFS)
  POST_ABORT(FACCESSAT)
  POST_ABORT(GETTID)
  POST_ABORT(TGKILL)
  POST_ABORT(FORK)
  POST_ABORT(WAIT4)

}

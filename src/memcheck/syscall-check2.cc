#include <algorithm>
#include <cassert>
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

#include "syscall-check2.hh"
#include "log.hh"

namespace memcheck {

  void IOTransaction::add_buf(void *to, const void *from, size_t size, const char *desc) {
    this->from.push_back(iovec{const_cast<void *>(from), size});
    info.emplace_back(to, size, desc);
    bytes += size;
  }

  void IOTransaction::add_string(const char *from, const char *desc) {
    const auto size = tracee1.strlen(from) + 1;
    add_buf(from, size, desc);
  }
  
  template <typename Func>
  bool IOTransaction::transfer(Func error) {
    if (empty()) { return true; }
    
    /* get iovecs */
    IOVec iovec1(size());
    IOVec iovec2(size());
    for (size_t i = 0; i < size(); ++i) {
      iovec1[i] = iovec{static_cast<void *>(info[i].buf1.data()), info[i].buf1.size()};
      iovec2[i] = iovec{static_cast<void *>(info[i].buf2.data()), info[i].buf2.size()};
    }

    /* read data */
    tracee1.readv(iovec1.data(), iovec1.size(), from.data(), from.size(), bytes);
    tracee2.readv(iovec2.data(), iovec2.size(), from.data(), from.size(), bytes);

    /* process data */
    for (Entry& entry : info) {
      if (!entry.transfer(error)) {
	return false;
      }
    }

    return true;
  }

  template <typename Func>
  bool IOTransaction::Entry::transfer(Func error) {
    /* get taint */
    Buf taintbuf(size());
    std::transform(buf1.begin(), buf1.end(), buf2.begin(), taintbuf.begin(), std::bit_xor<char>());

    const bool taint_is_zero =
      std::all_of(taintbuf.begin(), taintbuf.end(), [] (char byte) { return byte == 0; });
    if (!taint_is_zero) {
      error(desc);
      return false;
    }
    
    /* copy to destination */
    if (to != nullptr) {
      std::copy(buf1.begin(), buf1.end(), static_cast<Buf::value_type *>(to));
    }

    return true;
  }
  
  bool SyscallChecker2::check_read(IOTransaction& transaction) {
    return transaction.transfer([&] (const char *desc) {
      error() << this->args.no() << ": tainted syscall parameter: " << desc << "\n";
    });
  }

  bool SyscallChecker2::check_write(void *begin, void *end) const {
    /* unlock buffer */
    dbi::for_each_page(dbi::pagealign(begin), dbi::pagealign_up(end), [this] (const auto pageaddr) {
      const auto page_it = page_set.find(pageaddr);
      if (page_it != page_set.end() && page_set.tier(*page_it) == PageInfo::Tier::RDWR_LOCKED) {
	page_set.unlock(*page_it, tracee1);
	page_set.unlock(*page_it, tracee2);
      }
    });
  
    if (stack_range.overlaps(AddrRange(begin, end))) {
      warning() << to_string(args.no()) << ": write below stack pointer\n";
      // *dbi::g_conf.log << stack_range << " " << AddrRange(begin, end) << "\n";
      return true;
    }

    return true;
  }

  bool SyscallChecker2::check_write(void *begin, size_t size) const {
    return check_write(begin, static_cast<char *>(begin) + size);
  }


  bool SyscallChecker2::pre() {
    const dbi::GPRegisters gpregs1(tracee1.get_gpregs());
    const dbi::GPRegisters gpregs2(tracee2.get_gpregs());
    const dbi::GPRegisters taint_gpregs = gpregs1 ^ gpregs2;

    /* make sure syscall number not tainted */
    if (static_cast<int>(taint_gpregs.rax()) != 0) {
      error() << "tainted system call number\n";
      return false;
    }
    
    taint_args.add_call(taint_gpregs);

#define PRE_TAB(name, ...) case dbi::Syscall::name: return pre_##name();
    switch (args.no()) {
      SYSCALLS(PRE_TAB);
    default: std::abort();
    }
#undef PRE_TAB
  }

  void IOTransfer::add_buf(void *remote, size_t size, void *local) {
    this->remote.emplace_back(iovec{remote, size});
    if (local == nullptr) {
      bufs.emplace_back(size);
      local = bufs.back().data();
    }
    this->local.emplace_back(iovec{local, size});
    bytes += size;
  }

  void IOTransfer::add_str(char *s) {
    const auto len = tracee1.strlen(s) + 1;
    add_buf(s, len);
  }
  
  void IOTransfer::transfer() const {
    tracee1.readv(local.data(), local.size(), remote.data(), remote.size(), bytes);
    tracee2.writev(remote.data(), remote.size(), local.data(), local.size(), bytes);
  }
  
  void SyscallChecker2::post() {
    auto gpregs = tracee2.get_gpregs();
    gpregs.rax = tracee1.get_gpregs().rax;
    tracee2.set_gpregs(gpregs);
    
#define POST_TAB(name, ...) case dbi::Syscall::name: post_##name(); break;
    switch (args.no()) {
      SYSCALLS(POST_TAB);
    default: std::abort();
    }
#undef POST_TAB
  }
  
  /*** PRE CHECKS ***/
  
#define PRE_DEF_LINE(i, t, n) t n = args.arg<i, t>(); (void) n;					
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


#define PRE_DEF_BASE(sys) SYSCALL(PRE_DEF2, SYS_##sys)
#define PRE_DEF(sys) PRE_DEF_BASE(sys); IOTransaction tx = new_transaction(); (void) tx;
#define PRE_DEF_CHK(sys)			\
  PRE_DEF(sys);					\
  PRE_CHK(sys)
  
#define PRE_TRUE(sys)				\
  bool SyscallChecker2::pre_##sys() {		\
    PRE_DEF(sys);				\
    PRE_CHK(sys);				\
    return true;				\
  }
#define PRE_ABORT(sys) bool SyscallChecker2::pre_##sys() { std::abort(); }
#define PRE_STUB(sys)							\
  bool SyscallChecker2::pre_##sys() {					\
    PRE_DEF(sys);							\
    PRE_CHK(sys);							\
    log_stub() << args.no() << "\n";					\
    return true;							\
  }

#define PRE_WRITE_TYPE(name) do { if (!check_write(name, sizeof(*name))) { return false; } } while (0)
#define PRE_WRITE_BUF(buf, len) do { if (!check_write(buf, len)) { return false; } } while (0)

#define PRE_READ_TYPE(name) do { tx.add_type(name, #name); } while (0)
#define PRE_READ_TYPE_TO(name, result) do { tx.add_type(result, name, #name); } while (0)
#define PRE_READ_BUF(buf, len) do { tx.add_buf(buf, len, #buf); } while (0)
#define PRE_READ_BUF_TO(buf, len, result) do { tx.add_buf(result, buf, len, #buf); } while (0)
#define PRE_READ_BUF_TO_CONT(buf, cont) do { tx.add_buf(cont, buf, #buf); } while (0)
#define PRE_READ_STR(name) do { tx.add_string(name, #name); } while (0)
#define PRE_FLUSH() do { if (!check_read(tx)) { return false; } tx.clear(); } while (0)
#define PRE_FIN() do { PRE_FLUSH(); return true; } while (0)
#define PRE_DECL(sys) bool SyscallChecker2::pre_##sys() 
  
  /*** PRE SYSCALL DEFS ***/

  PRE_DECL(READ) {
    PRE_DEF_CHK(READ);
    PRE_WRITE_BUF(buf, count);
    PRE_FIN();
  }

  PRE_DECL(WRITE) {
    PRE_DEF_CHK(WRITE);
    PRE_READ_BUF(buf, count);
    PRE_FIN();
  }

  PRE_DECL(ACCESS) {
    PRE_DEF_CHK(ACCESS);
    PRE_READ_STR(pathname);
    PRE_FIN();
  }

  PRE_DECL(OPEN) {
    PRE_DEF_CHK(OPEN);
    PRE_READ_STR(filename);
    PRE_FIN();
  }

  PRE_DECL(FSTAT) {
    PRE_DEF_CHK(FSTAT);
    PRE_WRITE_TYPE(buf);
    PRE_FIN();
  }

  PRE_DECL(CLOCK_GETTIME) {
    PRE_DEF_CHK(CLOCK_GETTIME);
    PRE_WRITE_TYPE(tp);
    PRE_FIN();
  }

  PRE_DECL(STAT) {
    PRE_DEF_CHK(STAT);
    PRE_READ_STR(pathname);
    PRE_WRITE_TYPE(buf);
    PRE_FIN();
  }

  PRE_DECL(LSTAT) {
    PRE_DEF_CHK(LSTAT);
    PRE_READ_STR(pathname);
    PRE_WRITE_TYPE(buf);
    PRE_FIN();
  }

  PRE_DECL(FACCESSAT) {
    PRE_DEF_CHK(FACCESSAT);
    PRE_READ_STR(pathname);
    PRE_FIN();
  }

  PRE_DECL(GETDENTS) {
    PRE_DEF_CHK(GETDENTS);
    PRE_WRITE_BUF(dirp, count);
    PRE_FIN();
  }

  PRE_DECL(LGETXATTR) {
    PRE_DEF_CHK(LGETXATTR);
    PRE_READ_STR(pathname);
    PRE_READ_STR(name);
    PRE_WRITE_BUF(value, size);
    PRE_FIN();
  }

  PRE_DECL(GETXATTR) {
    PRE_DEF_CHK(GETXATTR);
    PRE_READ_STR(pathname);
    PRE_READ_STR(name);
    PRE_WRITE_BUF(value, size);
    PRE_FIN();
  }

  PRE_DECL(CONNECT) {
    PRE_DEF_CHK(CONNECT);

    sa_family_t sa_family;
    PRE_READ_TYPE_TO(&addr->sa_family, sa_family);
    PRE_FLUSH();

    switch (sa_family) {
    case AF_LOCAL:
      {
	// TODO: Correctness -- clamp to size
	const auto sun = reinterpret_cast<const struct sockaddr_un *>(addr);
	const auto sun_path = reinterpret_cast<const char *>(&sun->sun_path);
	PRE_READ_STR(sun_path);
      }
      break;

    case AF_INET:
      {
	const auto sin = reinterpret_cast<const struct sockaddr_in *>(addr);
	PRE_READ_TYPE(sin);
      }
      break;
    
    default:
      std::abort();
    }

    PRE_FIN();
  }

  PRE_DECL(SENDTO) {
    PRE_DEF_CHK(SENDTO);
    PRE_READ_BUF(buf, len);
    PRE_READ_BUF(dest_addr, addrlen);
    PRE_FIN();
  }

  PRE_DECL(POLL) {
    PRE_DEF_CHK(POLL);
    for (nfds_t i = 0; i < nfds; ++i) {
      PRE_READ_TYPE(&fds[i].fd);
      PRE_READ_TYPE(&fds[i].events);
      PRE_WRITE_TYPE(&fds[i].revents);
    }
    PRE_FIN();
  }

  PRE_DECL(RECVMSG) {
    PRE_DEF_CHK(RECVMSG);
    struct msghdr msg_;
    PRE_READ_TYPE_TO(msg, msg_);
    PRE_FLUSH();
    if (msg_.msg_name != nullptr) {
      PRE_WRITE_BUF(msg_.msg_name, msg_.msg_namelen);
    }
    
    std::vector<struct iovec> iov(msg_.msg_iovlen);
    PRE_READ_BUF_TO_CONT(&msg_.msg_iov[0], iov);
    PRE_FLUSH();

    for (const struct iovec& entry : iov) {
      PRE_WRITE_BUF(entry.iov_base, entry.iov_len);
    }
    
    PRE_FIN();
  }

  PRE_DECL(GETRUSAGE) {
    PRE_DEF_CHK(GETRUSAGE);
    PRE_WRITE_TYPE(usage);
    PRE_FIN();
  }

  PRE_DECL(UNAME) {
    PRE_DEF_CHK(UNAME);
    PRE_WRITE_TYPE(buf);
    PRE_FIN();
  }

  PRE_DECL(SETSOCKOPT) {
    PRE_DEF_CHK(SETSOCKOPT);
    PRE_READ_BUF(optval, optlen);
    PRE_FIN();
  }

  PRE_DECL(GETPEERNAME) {
    PRE_DEF_CHK(GETPEERNAME);
    socklen_t addrlen_;
    PRE_READ_TYPE_TO(addrlen, addrlen_);
    PRE_FLUSH();
    PRE_WRITE_TYPE(addrlen);
    PRE_WRITE_BUF(addr, addrlen_);
    PRE_FIN();
  }

  PRE_DECL(GETSOCKNAME) {
    PRE_DEF_CHK(GETSOCKNAME);
    socklen_t addrlen_;
    PRE_READ_TYPE_TO(addrlen, addrlen_);
    PRE_FLUSH();
    PRE_WRITE_TYPE(addrlen);
    PRE_WRITE_BUF(addr, addrlen_);
    PRE_FIN();
  }
  
  PRE_DECL(GETRLIMIT) {
    PRE_DEF_CHK(GETRLIMIT);
    PRE_WRITE_TYPE(rlim);
    PRE_FIN();
  }

  PRE_DECL(STATFS) {
    PRE_DEF_CHK(STATFS);
    PRE_READ_STR(path);
    PRE_WRITE_TYPE(buf);
    PRE_FIN();
  }

  PRE_DECL(SETRLIMIT) {
    PRE_DEF_CHK(SETRLIMIT);
    PRE_READ_TYPE(rlim);
    PRE_FIN();
  }

  PRE_DECL(READLINK) {
    PRE_DEF_CHK(READLINK);
    PRE_READ_STR(pathname);
    PRE_WRITE_BUF(buf, bufsiz);
    PRE_FIN();
  }

  PRE_DECL(IOCTL) {
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
      std::abort();
    }

    PRE_FIN();
  }
  
  PRE_DECL(FUTEX) {
    PRE_DEF_CHK(FUTEX);
    constexpr int ignoremask = FUTEX_PRIVATE_FLAG; // TODO: unite w/ other def
    switch (futex_op & ~ignoremask) {
    case FUTEX_WAKE:
      break;
    default:
      std::abort();
    }
    PRE_FIN();
  }

  PRE_DECL(PIPE) {
    PRE_DEF_CHK(PIPE);
    PRE_WRITE_BUF(pipefd, sizeof(*pipefd) * 2);
    PRE_FIN();
  }

  PRE_DECL(SET_TID_ADDRESS) {
    PRE_DEF_CHK(SET_TID_ADDRESS);
    PRE_WRITE_TYPE(tidptr);
    PRE_FIN();
  }

  PRE_DECL(SET_ROBUST_LIST) {
    PRE_DEF_CHK(SET_ROBUST_LIST);
    PRE_WRITE_TYPE(head);
    PRE_FIN();
  }

  PRE_DECL(GETTIMEOFDAY) {
    PRE_DEF_CHK(GETTIMEOFDAY);
    PRE_WRITE_TYPE(tv);
    PRE_WRITE_TYPE(tz);
    PRE_FIN();
  }

  PRE_DECL(TIME) {
    PRE_DEF_CHK(TIME);
    if (tloc != nullptr) {
      PRE_WRITE_TYPE(tloc);
    }
    PRE_FIN();
  }

  PRE_DECL(WRITEV) {
    PRE_DEF_CHK(WRITEV);

    std::vector<struct iovec> iovec(iovcnt);
    PRE_READ_BUF_TO_CONT(iov, iovec);
    PRE_FLUSH();

    for (const struct iovec& entry : iovec) {
      PRE_READ_BUF(entry.iov_base, entry.iov_len);
    }
    PRE_FIN();
  }

  PRE_DECL(RT_SIGACTION) {
    PRE_DEF_CHK(RT_SIGACTION);

    if (act != nullptr) {
      PRE_READ_TYPE(&act->sa_mask);
      int flags;
      PRE_READ_TYPE_TO(&act->sa_flags, flags);
      PRE_FLUSH();
      
      if ((flags & SA_SIGINFO)) {
	PRE_READ_TYPE(&act->sa_sigaction);
      } else {
	PRE_READ_TYPE(&act->sa_handler);
      }
    }

    if (oldact != nullptr) {
      PRE_WRITE_TYPE(oldact);
    }

    PRE_FIN();
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
  PRE_ABORT(RT_SIGPROCMASK)


  /*** POST SYSCALLS ***/
#define POST_DEF2(name, val, rv_t, ...)		\
  rv_t rv = args.rv<rv_t>();			\
  (void) rv;
#define POST_DEF(sys)							\
  PRE_DEF_BASE(sys);							\
  SYSCALL(POST_DEF2, SYS_##sys);					\
  auto tx = new_write_group();
  
#define POST_DECL(sys) void SyscallChecker2::post_##sys()
#define POST_ABORT(sys) POST_DECL(sys) { std::abort(); }
#define POST_STUB(sys)	POST_DECL(sys) { log_stub() << #sys << "\n"; }
#define POST_TRUE(sys) POST_DECL(sys) {}
#define POST_WRITE_TYPE(name) tx.add_type(name)
#define POST_WRITE_TYPE_TO(name, result) tx.add_type(name, result)
#define POST_WRITE_BUF(buf, len) tx.add_buf(buf, len)
#define POST_WRITE_BUF_TO(buf, len, result) tx.add_buf(buf, len, result)
#define POST_WRITE_BUF_TO_CONT(buf, cont) tx.add_buf(buf, cont)
#define POST_WRITE_STR(name) 
#define POST_FLUSH()				\
  do {						\
    tx.transfer();				\
    tx.clear();					\
  } while (0)
#define POST_FIN() POST_FLUSH()

#define POST_STAT(sys)				\
  POST_DECL(sys) {				\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      POST_WRITE_TYPE(buf);			\
    }						\
    POST_FIN();					\
  }

#define POST_GETXATTR(sys)			\
  POST_DECL(sys) {				\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      assert(static_cast<size_t>(rv) <= size);	\
      POST_WRITE_BUF(value, rv);		\
    }						\
    POST_FIN();					\
  }

  // for getpeername, getsockname
#define POST_GETNAME(sys)			\
  POST_DECL(sys) {				\
    POST_DEF(sys);				\
    if (rv >= 0) {				\
      socklen_t addrlen_val;			\
      POST_WRITE_TYPE_TO(addrlen, addrlen_val);	\
      POST_FLUSH();				\
      POST_WRITE_BUF(addr, addrlen_val);	\
    }						\
    POST_FIN();					\
  }

  POST_DECL(GETDENTS) {
    POST_DEF(GETDENTS);
    if (rv > 0) {
      assert(static_cast<unsigned>(rv) <= count);
      POST_WRITE_BUF(dirp, rv);
    }
    POST_FIN();
  }

  POST_DECL(READ) {
    POST_DEF(READ);
    if (rv >= 0) { POST_WRITE_BUF(buf, rv); }
    POST_FIN();
  }

  POST_DECL(POLL) {
    POST_DEF(POLL);
    if (rv > 0) {
      for (nfds_t i = 0; i < nfds; ++i) {
	POST_WRITE_TYPE(&fds[i].revents);
      }
    }
    POST_FIN();
  }
  
  POST_DECL(GETRUSAGE) {
    POST_DEF(GETRUSAGE);
    if (rv >= 0) { POST_WRITE_TYPE(usage); }
    POST_FIN();
  }

  POST_DECL(UNAME) {
    POST_DEF(UNAME);
    if (rv >= 0) {
      POST_WRITE_STR(buf->sysname);
      POST_WRITE_STR(buf->nodename);
      POST_WRITE_STR(buf->release);
      POST_WRITE_STR(buf->version);
      POST_WRITE_STR(buf->machine);
      POST_WRITE_STR(buf->domainname);
    }
    POST_FIN();
  }
  
  POST_DECL(GETRLIMIT) {
    POST_DEF(GETRLIMIT);
    if (rv >= 0) { POST_WRITE_TYPE(rlim); }
    POST_FIN();
  }

  POST_DECL(READLINK) {
    POST_DEF(READLINK);
    if (rv >= 0) { POST_WRITE_BUF(buf, rv); }
    POST_FIN();
  }

  POST_DECL(IOCTL) {
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
	std::abort();
      }
    }
    POST_FIN();
  }

  POST_DECL(FUTEX) {
    POST_DEF(FUTEX);
    if (rv >= 0) {
      constexpr uint32_t ignoremask = FUTEX_PRIVATE_FLAG;
      switch (futex_op & ~ignoremask) {
      case FUTEX_WAKE:
	break;
      default:
	std::abort();
      }
    }
    POST_FIN();
  }

  POST_DECL(PIPE) {
    POST_DEF(PIPE);
    if (rv >= 0) {
      POST_WRITE_BUF(pipefd, sizeof(*pipefd) * 2);
    }
    POST_FIN();
  }
  
  POST_DECL(CLOCK_GETTIME) {
    POST_DEF(CLOCK_GETTIME);
    if (rv >= 0) {
      POST_WRITE_TYPE(tp);
    }
    POST_FIN();
  }

  POST_DECL(SET_TID_ADDRESS) {
    POST_DEF(SET_TID_ADDRESS);
    POST_WRITE_TYPE(tidptr);
    POST_FIN();
  }

  POST_DECL(SET_ROBUST_LIST) {
    POST_DEF(SET_ROBUST_LIST);
    if (rv == 0) {
      POST_WRITE_TYPE(head);
    }
    POST_FIN();
  }
  
  POST_DECL(RT_SIGPROCMASK) {
    POST_DEF(RT_SIGPROCMASK);
    if (rv >= 0) {
      POST_WRITE_TYPE(oldset);
    }
    POST_FIN();
  }
  
  POST_DECL(GETTIMEOFDAY) {
    POST_DEF(GETTIMEOFDAY);
    if (rv >= 0) {
      POST_WRITE_TYPE(tv);
      POST_WRITE_TYPE(tz);
    }
    POST_FIN();
  }

  POST_DECL(TIME) {
    POST_DEF(TIME);
    if (rv >= 0) {
      if (tloc != nullptr) {
	POST_WRITE_TYPE(tloc);
      }
    }
    POST_FIN();
  }
  
  POST_DECL(RECVMSG) {
    POST_DEF(RECVMSG);
    if (rv >= 0) {
      /* TODO: msghdr isn't actually written, so this is a minsomer -- fix? */
      struct msghdr msg_;
      POST_WRITE_TYPE_TO(msg, msg_);
      POST_FLUSH();
      if (msg_.msg_name != nullptr) {
	POST_WRITE_BUF(msg_.msg_name, msg_.msg_namelen);
      }

      const auto iovlen = msg_.msg_iovlen;
      std::vector<struct iovec> iovs(iovlen);
      for (size_t i = 0; i < msg_.msg_iovlen; ++i) {
	// TODO: iovec isn't actually written. FIX
	const auto iov_ptr = &msg_.msg_iov[i];
	POST_WRITE_TYPE_TO(iov_ptr, iovs[i]);
      }
      POST_FLUSH();

      for (const struct iovec& iov : iovs) {
	POST_WRITE_BUF(iov.iov_base, iov.iov_len);
      }

      POST_WRITE_BUF(msg_.msg_control, msg_.msg_controllen);
    }
    POST_FIN();
  }

  POST_DECL(RT_SIGACTION) {
    POST_DEF(RT_SIGACTION);
    if (rv >= 0) {
      if (oldact != nullptr) {
	POST_WRITE_TYPE(oldact);
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

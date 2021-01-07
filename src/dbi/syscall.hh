#pragma once

#include <iostream>
#include <sys/time.h>

namespace dbi {

#define sa0   int, a0_, sa1
#define sa1   int, a1_, sa2
#define sa2   int, a2_, sa3
#define sa3   int, a3_, sa4
#define sa4   int, a4_, sa5
#define sa5   int, a5_, sa6
#define sa6  

#define SYS_READ READ, 0, int, 3, unsigned, fd, char *, buf, size_t, count,
#define SYS_WRITE WRITE, 1, int, 3, unsigned, fd, const char *, buf, size_t, count,
#define SYS_OPEN OPEN , 2, int, 3, const char *, filename, int, flags, int, mode,
#define SYS_CLOSE CLOSE, 3, int, 1, unsigned, fd,
#define SYS_STAT STAT , 4, int, 2, const char *, pathname, struct stat *, buf,
#define SYS_FSTAT FSTAT, 5, int, 2, unsigned, fd, struct stat *, buf,
#define SYS_LSTAT LSTAT, 6, int, 2, const char *, pathname, struct stat *, buf,
#define SYS_POLL POLL, 7, int, 3, struct pollfd *, fds, unsigned, nfds, long, timeout_msecs,
#define SYS_LSEEK LSEEK, 8, off_t, 3, unsigned,fd, off_t, offset, unsigned, origin,
#define SYS_MMAP MMAP, 9, void *, 6, void *, addr, size_t, len, int, prot, int, flags, int, fd, off_t, offset ,
#define SYS_MPROTECT MPROTECT, 10, int, 3, void *,addr, size_t, len, int, prot,
#define SYS_MUNMAP MUNMAP, 11, int, 2, void *, addr, size_t, length,
#define SYS_BRK BRK, 12, void *, 1, void *, addr,
#define SYS_ACCESS ACCESS, 21, int, 2, const char *,pathname, int, mode,
#define SYS_ARCH_PRCTL ARCH_PRCTL, 158, long, 3, struct task_struct *,task, int, option, unsigned long *, addr,
#define SYS_FUTEX FUTEX, 202, int, 3, uint32_t *, uaddr, int, futex_op, uint32_t, val, struct timespec *, timeout, uint32_t *, uaddr2, uint32_t, val3,
#define SYS_EXIT_GROUP EXIT_GROUP, 231, int, 1, int, status,
#define SYS_GETDENTS GETDENTS, 78, int, 3, unsigned, fd, struct linux_dirent *, dirp, unsigned, count,
#define SYS_GETEUID GETEUID, 107, uid_t, 0,
#define SYS_MREMAP MREMAP, 25, void *, 5, void *, addr, size_t, old_size, size_t, new_size, unsigned long, flags, unsigned long, new_address,
#define SYS_SOCKET SOCKET, 41, int, 3, int, domain, int, type, int, protocol,
#define SYS_CONNECT CONNECT, 42, int, 3, int, sockfd, const struct sockaddr *, addr, int, addrlen,
#define SYS_SENDTO SENDTO, 44, ssize_t, 6, int, sockfd, const void *, buf, size_t, len, unsigned, flags, const struct sockaddr *, dest_addr, int, addrlen ,
#define SYS_SET_TID_ADDRESS SET_TID_ADDRESS, 218, long, 1, int *, tidptr,
#define SYS_SET_ROBUST_LIST SET_ROBUST_LIST, 273, long, 2, struct robust_list_head *, head, size_t, len,
#define SYS_RT_SIGACTION RT_SIGACTION, 13, int, 4, int, signum, const struct sigaction *, act, struct sigaction *, oldact, size_t, sigsetsize,
#define SYS_RT_SIGPROCMASK RT_SIGPROCMASK, 14, int, 4, int, how, const sigset_t *, set, sigset_t *, oldset, size_t, sigsetsize,
#define SYS_GETRLIMIT GETRLIMIT, 97, int, 2, unsigned, resource, struct rlimit *, rlim,
#define SYS_STATFS STATFS, 137, int, 2, const char *, path, struct statfs *, buf,
#define SYS_GETUID GETUID, 102, uid_t, 0,
#define SYS_GETGID GETGID, 104, gid_t, 0,
#define SYS_GETPID GETPID, 39, pid_t, 0,
#define SYS_GETPPID GETPPID, 110, pid_t, 0,
#define SYS_FCNTL FCNTL, 72, int, 3, unsigned, fd, unsigned, cmd, unsigned long, arg,
#define SYS_GETEGID GETEGID, 108, gid_t, 0,
#define SYS_FACCESSAT FACCESSAT, 269, int, 3, int, dirfd, const char *, pathname, int, mode,
#define SYS_IOCTL IOCTL, 16, int, 3, unsigned, fd, unsigned, request, unsigned long, arg,
#define SYS_LGETXATTR LGETXATTR, 192, int, 4, const char *, pathname, const char *, name, void *, value, size_t, size,
#define SYS_GETXATTR GETXATTR, 191, int, 4, const char *, pathname, const char *, name, void *, value, size_t, size,
#define SYS_RECVMSG RECVMSG, 47, ssize_t, 3, int, sockfd, struct msghdr *, msg, unsigned, flags,
#define SYS_GETRUSAGE GETRUSAGE, 98, int, 2, int, who, struct rusage *, usage,
#define SYS_UNAME UNAME, 63, int, 1, struct utsname *, buf,
#define SYS_SETSOCKOPT SETSOCKOPT, 54, int, 5, int, sockfd, int, level, int, optname, char *, optval, int, optlen,
#define SYS_GETPEERNAME GETPEERNAME, 52, int, 3, int, sockfd, struct sockaddr *, addr, int *, addrlen,
#define SYS_GETSOCKNAME GETSOCKNAME, 51, int, 3, int, sockfd, struct sockaddr *, addr, int *, addrlen,
#define SYS_GETTID GETTID, 186, pid_t, 0,
#define SYS_TGKILL TGKILL, 234, int, 3, pid_t, tgid, pid_t, pid, int, sig,
#define SYS_FADVISE64 FADVISE64, 221, int, 4, int, fd, off_t, offset, size_t, len, int, advice,
#define SYS_SETRLIMIT SETRLIMIT, 160, int, 2, unsigned, resource, const struct rlimit *, rlim,
#define SYS_READLINK READLINK, 89, ssize_t, 3, const char *, pathname, char *, buf, int, bufsiz,
#define SYS_PIPE PIPE, 22, int, 1, int *, pipefd,
#define SYS_CLOCK_GETTIME CLOCK_GETTIME, 228, int, 2, clockid_t, clk_id, struct timespec *, tp,
#define SYS_GETTIMEOFDAY GETTIMEOFDAY, 96, int, 2, struct timeval *, tv, struct timezone *, tz,
#define SYS_TIME TIME, 201, time_t, 1, time_t *, tloc,
#define SYS_FORK FORK, 57, pid_t, 0,
#define SYS_WRITEV WRITEV, 20, ssize_t, 3, unsigned long, fd, const struct iovec *, iov, unsigned long, iovcnt,
#define SYS_WAIT4 WAIT4, 61, pid_t, 4, pid_t, pid, int *, status, int, options, struct rusage *, rusage,

#define VA_ARGS(...) __VA_ARGS__
#define sysxxx(m, ...) m(__VA_ARGS__)
#define sysxx(m, name, no, rv, argc, ...) sysxxx(m, name, no, rv, argc, __VA_ARGS__ sa##argc,)
#define sysx(m, ...) sysxx(m, __VA_ARGS__)
#define SYSCALLS(e)				\
  sysx(e, SYS_READ)				\
  sysx(e, SYS_WRITE)				\
  sysx(e, SYS_OPEN)				\
  sysx(e, SYS_CLOSE)				\
  sysx(e, SYS_STAT)				\
  sysx(e, SYS_FSTAT)				\
  sysx(e, SYS_LSTAT)				\
  sysx(e, SYS_POLL)				\
  sysx(e, SYS_LSEEK)				\
  sysx(e, SYS_MMAP)				\
  sysx(e, SYS_MPROTECT)				\
  sysx(e, SYS_MUNMAP)				\
  sysx(e, SYS_BRK)				\
  sysx(e, SYS_ACCESS)				\
  sysx(e, SYS_ARCH_PRCTL)			\
  sysx(e, SYS_FUTEX)				\
  sysx(e, SYS_EXIT_GROUP)			\
  sysx(e, SYS_GETDENTS)				\
  sysx(e, SYS_GETEUID)				\
  sysx(e, SYS_MREMAP)				\
  sysx(e, SYS_SOCKET)				\
  sysx(e, SYS_CONNECT)				\
  sysx(e, SYS_SENDTO)				\
  sysx(e, SYS_SET_TID_ADDRESS)			\
  sysx(e, SYS_SET_ROBUST_LIST)			\
  sysx(e, SYS_RT_SIGACTION)			\
  sysx(e, SYS_RT_SIGPROCMASK)			\
  sysx(e, SYS_GETRLIMIT)			\
  sysx(e, SYS_STATFS)				\
  sysx(e, SYS_GETUID)				\
  sysx(e, SYS_GETGID)				\
  sysx(e, SYS_GETPID)				\
  sysx(e, SYS_GETPPID)				\
  sysx(e, SYS_FCNTL)				\
  sysx(e, SYS_GETEGID)				\
  sysx(e, SYS_FACCESSAT)			\
  sysx(e, SYS_IOCTL)				\
  sysx(e, SYS_LGETXATTR)			\
  sysx(e, SYS_GETXATTR)				\
  sysx(e, SYS_RECVMSG)				\
  sysx(e, SYS_GETRUSAGE)			\
  sysx(e, SYS_UNAME)				\
  sysx(e, SYS_SETSOCKOPT)			\
  sysx(e, SYS_GETPEERNAME)			\
  sysx(e, SYS_GETSOCKNAME)			\
  sysx(e, SYS_GETTID)				\
  sysx(e, SYS_TGKILL)				\
  sysx(e, SYS_FADVISE64)			\
  sysx(e, SYS_SETRLIMIT)			\
  sysx(e, SYS_READLINK)				\
  sysx(e, SYS_PIPE)				\
  sysx(e, SYS_CLOCK_GETTIME)			\
  sysx(e, SYS_GETTIMEOFDAY)			\
  sysx(e, SYS_TIME)				\
  sysx(e, SYS_FORK)				\
  sysx(e, SYS_WRITEV)				\
  sysx(e, SYS_WAIT4)				\
  
  
#define SYSCALL(m, s) sysx(m, s)

#ifndef STR
# define STR(x) #x
#endif
#ifndef XSTR
# define XSTR(x) STR(x)
#endif

  // #define EXPAND(...) __VA_ARGS__

#define SYSCALLS_ENUM(name, val, ...) name = val,
#define SYSCALLS_STR(name, val, ...) case Syscall::name: return XSTR(name);

  enum class Syscall {
    SYSCALLS(SYSCALLS_ENUM)
  };

  const char *to_string(Syscall syscall);
  Syscall to_syscall(const char *s);

  inline std::ostream& operator<<(std::ostream& os, Syscall syscall) {
    const char *s = to_string(syscall);
    if (s == nullptr) {
      return os << static_cast<int>(syscall);
    } else {
      return os << s;
    }
  }
}

namespace std {
  template <> struct hash<dbi::Syscall> {
    size_t operator()(dbi::Syscall syscall) const {
      return std::hash<int>()(static_cast<int>(syscall));
    }
  };
}

namespace dbi {

  // test
#if 1
#define SYSCALLS_DECLARE(name, no, rv, argc, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5, ...) \
  case Syscall::name:							\
  {									\
    t0 n0; (void) n0;							\
    t1 n1; (void) n1;							\
    t2 n2; (void) n2;							\
    t3 n3; (void) n3;							\
    t4 n4; (void) n4;							\
    t5 n5; (void) n5;							\
  }									\
  break;

  inline void syscalls_declare(Syscall syscall) {
    switch (syscall) {
      SYSCALLS(SYSCALLS_DECLARE);
    }
  }
#endif

}

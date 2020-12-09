#pragma once

#include <iostream>

#define sa0 int, a0_, sa1
#define sa1 int, a1_, sa2
#define sa2 int, a2_, sa3
#define sa3 int, a3_, sa4
#define sa4 int, a4_, sa5
#define sa5 int, a5_

#define SYS_READ READ, 0, int, unsigned, fd, char *, buf, size_t, count, sa3
#define SYS_WRITE WRITE, 1, int, unsigned, fd, const char *, buf, size_t, count, sa3 
#define SYS_OPEN OPEN , 2, int, const char *, filename, int, flags, int, mode, sa3 
#define SYS_CLOSE CLOSE, 3, int, unsigned, fd, sa1 
#define SYS_STAT STAT , 4, int, const char *, pathname, struct stat *, buf, sa2 
#define SYS_FSTAT FSTAT, 5, int, unsigned, fd, struct stat *, buf, sa2 
#define SYS_LSTAT LSTAT, 6, int, const char *, pathname, struct stat *, buf, sa2 
#define SYS_POLL POLL, 7, int, struct pollfd *, fds, unsigned, nfds, long, timeout_msecs, sa3 
#define SYS_LSEEK LSEEK, 8, off_t, unsigned,fd, off_t, offset, unsigned, origin, sa3 
#define SYS_MMAP MMAP, 9, void *, void *,addr, size_t, len, int, prot, int, flags, int, fd, off_t, offset 
#define SYS_MPROTECT MPROTECT, 10, int, void *,addr, size_t, len, int, prot, sa3 
#define SYS_MUNMAP MUNMAP, 11, int, void *,addr, size_t, length, sa2 
#define SYS_BRK BRK, 12, void *, void *,addr, sa1 
#define SYS_ACCESS ACCESS, 21, int, const char *,pathname, int, mode, sa2 
#define SYS_ARCH_PRCTL ARCH_PRCTL, 158, long, struct task_struct *,task, int, option, unsigned long *, addr, sa3 
#define SYS_FUTEX FUTEX, 202, int, uint32_t *,uaddr, int, op, uint32_t, val, struct timespec *, utime, uint32_t *, uaddr2, uint32_t, val3
#define SYS_EXIT_GROUP EXIT_GROUP, 231, int, int, status, sa1 
#define SYS_GETDENTS GETDENTS, 78, int, unsigned, fd, struct linux_dirent *, dirp, unsigned, count, sa3 
#define SYS_GETEUID GETEUID, 107, uid_t, sa0 
#define SYS_MREMAP MREMAP, 25, void *, void *,addr, size_t, old_size, size_t, new_size, unsigned long, flags, unsigned long, new_address, sa5 
#define SYS_SOCKET SOCKET, 41, int, int, domain, int, type, int, protocol, sa3 
#define SYS_CONNECT CONNECT, 42, int, int, sockfd, const struct sockaddr *, addr, int, addrlen, sa3 
#define SYS_SENDTO SENDTO, 44, ssize_t,int, sockfd, const void *, buf, size_t, len, unsigned, flags, const struct sockaddr *, dest_addr, int, addrlen 
#define SYS_SET_TID_ADDRESS SET_TID_ADDRESS, 218, long, int *, tidptr, sa1 
#define SYS_SET_ROBUST_LIST SET_ROBUST_LIST, 273, long, struct robust_list_head *, head, size_t, len, sa2 
#define SYS_RT_SIGACTION RT_SIGACTION, 13, int, int, signum, const struct sigaction *, act, struct sigaction *, oldact, size_t, sigsetsize, sa4 
#define SYS_RT_SIGPROCMASK RT_SIGPROCMASK, 14, int, int,how, const sigset_t *, set, sigset_t *, oldset, size_t, sigsetsize, sa4 
#define SYS_GETRLIMIT GETRLIMIT, 97, int, unsigned, resource, struct rlimit *, rlim, sa2 
#define SYS_STATFS STATFS, 137, int, const char *, pathname, struct statfs *, buf, sa2
#define SYS_GETUID GETUID, 102, uid_t, sa0
#define SYS_GETGID GETGID, 104, gid_t, sa0
#define SYS_GETPID GETPID, 39, pid_t, sa0
#define SYS_GETPPID GETPPID, 110, pid_t, sa0
#define SYS_FCNTL FCNTL, 72, int, unsigned, fd, unsigned, cmd, unsigned long, arg, sa3
#define SYS_GETEGID GETEGID, 108, gid_t, sa0
#define SYS_FACCESSAT FACCESSAT, 269, int, int, dirfd, const char *, pathname, int, mode, sa3
#define SYS_IOCTL IOCTL, 16, int, unsigned, fd, unsigned request, unsigned long, arg, sa3
#define SYS_LGETXATTR LGETXATTR, 192, int, const char *, pathname, const char *, name, void *, value, size_t, size, sa4
#define SYS_GETXATTR GETXATTR, 191, int, const char *, pathname, const char *, name, void *, value, size_t, size, sa4
#define SYS_RECVMSG RECVMSG, 47, ssize_t, int, sockfd, struct msghdr *, msg, unsigned, flags, sa3
#define SYS_GETRUSAGE GETRUSAGE, 98, int, int, who, struct rusage *, usage, sa2
#define SYS_UNAME UNAME, 63, int, struct utsname *, buf, sa1
#define SYS_SETSOCKOPT SETSOCKOPT, 54, int, int, sockfd, int, level, int, optname, char *, optval, int, optlen, sa5
#define SYS_GETPEERNAME GETPEERNAME, 52, int, int, sockfd, struct sockaddr *, addr, int *, addrlen, sa3
#define SYS_GETSOCKNAME GETSOCKNAME, 51, int, int, sockfd, struct sockaddr *, addr, int *, addrlen, sa3

#define sysx(m, ...) m(__VA_ARGS__)
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

inline std::ostream& operator<<(std::ostream& os, Syscall syscall) {
  const char *s = to_string(syscall);
  if (s == nullptr) {
    return os << static_cast<int>(syscall);
  } else {
    return os << s;
  }
}

namespace std {
  template <> struct hash<Syscall> {
    size_t operator()(Syscall syscall) const { return std::hash<int>()(static_cast<int>(syscall)); }
  };
}

// test
#if 0
#define SYSCALLS_DECLARE(name, val, rv, t0, n0, t1, n1, t2, n2, t3, n3, t4, n4, t5, n5)	\
  case Syscall::name:						\
  {								\
  t0 n0; (void) n0;						\
  t1 n1; (void) n1;						\
  t2 n2; (void) n2;						\
  t3 n3; (void) n3;						\
  t4 n4; (void) n4;						\
  t5 n5; (void) n5;						\
  }								\
  break;

inline void syscalls_declare(Syscall syscall) {
  switch (syscall) {
    SYSCALLS(SYSCALLS_DECLARE);
  }
}
#endif

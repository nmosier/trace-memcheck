#pragma once

#include <iostream>

#define sa0 int a0_, sa1
#define sa1 int a1_, sa2
#define sa2 int a2_, sa3
#define sa3 int a3_, sa4
#define sa4 int a4_, sa5
#define sa5 int a5_

#define sysx(m, ...) m(__VA_ARGS__)
#define SYSCALLS(e)							\
  sysx(e, READ,              0, int,     unsigned fd,                   char *buf,                   size_t count,             sa3) \
  sysx(e, WRITE,             1, int,     unsigned fd,                   const char *buf,             size_t count,             sa3) \
  sysx(e, OPEN,              2, int,     const char *filename,          int flags,                   int mode,                 sa3) \
  sysx(e, CLOSE,             3, int,     unsigned fd,                   sa1) \
  sysx(e, STAT,              4, int,     const char *filename,          struct stat *statbuf,        sa2) \
  sysx(e, FSTAT,             5, int,     unsigned fd,                   struct stat *statbuf,        sa2) \
  sysx(e, LSTAT,             6, int,     const char *filename,          struct stat *statbuf,        sa2) \
  sysx(e, POLL,              7, int,     struct poll_fd *ufds,          unsigned nfds,               long timeout_msecs,       sa3) \
  sysx(e, LSEEK,             8, off_t,   unsigned fd,                   off_t offset,                unsigned origin,          sa3) \
  sysx(e, MMAP,              9, void *,  void *addr,                    size_t len,                  int prot,                 int flags,                        int fd,                    off_t offset) \
  sysx(e, MPROTECT,         10, int,     void *addr,                    size_t len,                  int prot,                 sa3) \
  sysx(e, MUNMAP,           11, int,     void *addr,                    size_t length,               sa2) \
  sysx(e, BRK,              12, void *,  void *addr,                    sa1) \
  sysx(e, ACCESS,           21, int,     const char *pathname,          int mode,                    sa2) \
  sysx(e, ARCH_PRCTL,      158, long,    struct task_struct *task,      int option,                  unsigned long *addr,      sa3) \
  sysx(e, FUTEX,           202, int,     uint32_t *uaddr,               int op,                      uint32_t val,             struct timespec *utime,           uint32_t *uaddr2,          uint32_t val3) \
  sysx(e, EXIT_GROUP,      231, int,     int status,                    sa1) \
  sysx(e, GETDENTS,         78, int,     unsigned fd,                   struct linux_dirent *dirent, unsigned count, sa3) \
  sysx(e, GETEUID,         107, uid_t,   sa0)				\
  sysx(e, MREMAP,           25, void *,  void *addr,                    size_t old_size,             size_t new_size,          unsigned long flags,              unsigned long new_address, sa5) \
  sysx(e, SOCKET,           41, int,     int domain,                    int type,                    int protocol, sa3)	\
  sysx(e, CONNECT,          42, int,     int sockfd,                    const struct sockaddr *addr, int addrlen, sa3) \
  sysx(e, SENDTO,           44, ssize_t, int sockfd,                    const void *buf, size_t len, unsigned flags,           const struct sockaddr *dest_addr, int addrlen) \
  sysx(e, SET_TID_ADDRESS, 218, long,    int *tidptr, sa1)		\
  sysx(e, SET_ROBUST_LIST, 273, long,    struct robust_list_head *head, size_t len,                  sa2) \
  sysx(e, RT_SIGACTION,     13, int,     int signum,                    const struct sigaction *act, struct sigaction *oldact, size_t sigsetsize,                sa4) \
  sysx(e, RT_SIGPROCMASK,   14, int,     int how,                       const sigset_t *set,         sigset_t *oldset,         size_t sigsetsize,                sa4) \
  sysx(e, GETRLIMIT,        97, int,     unsigned resource,             struct rlimit *rlim,         sa2) \
  sysx(e, STATFS,          137, int,     const char *pathname,          struct statfs *buf,          sa2)

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
#define SYSCALLS_DECLARE(name, val, rv, a0, a1, a2, a3, a4, a5)	\
  case Syscall::name:						\
  {								\
    __attribute__((unused)) a0;					\
    __attribute__((unused)) a1;					\
    __attribute__((unused)) a2;					\
    __attribute__((unused)) a3;					\
    __attribute__((unused)) a4;					\
    __attribute__((unused)) a5;					\
  }								\
  break;

inline void syscalls_declare(Syscall syscall) {
  switch (syscall) {
    SYSCALLS(SYSCALLS_DECLARE);
  }
}

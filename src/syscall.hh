#pragma once

#define SYSCALLS(e)				\
  e(READ, 0)					\
  e(WRITE, 1)					\
  e(OPEN, 2)					\
  e(CLOSE, 3)					\
  e(STAT, 4)					\
  e(FSTAT, 5)					\
  e(LSTAT, 6)					\
  e(POLL, 7)					\
  e(LSEEK, 8)					\
  e(MMAP, 9)					\
  e(MPROTECT, 10)				\
  e(MUNMAP, 11)					\
  e(BRK, 12)

#ifndef STR
# define STR(x) #x
#endif
#ifndef XSTR
# define XSTR(x) STR(x)
#endif


#define SYSCALLS_ENUM(name, val) name = val,
#define SYSCALLS_STR(name, val) case Syscall::name: return XSTR(name);

enum class Syscall {
  SYSCALLS(SYSCALLS_ENUM)
};

const char *to_string(Syscall syscall);


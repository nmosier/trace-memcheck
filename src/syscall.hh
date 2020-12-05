#pragma once

enum class Syscall {
  READ = 0,
  WRITE = 1,
  OPEN = 2,
  CLOSE = 3,
  STAT = 4,
  FSTAT = 5,
  LSTAT = 6,
  POLL = 7,
  LSEEK = 8,
  MMAP = 9,
  MPROTECT = 10,
  MUNMAP = 11,
  BRK = 12,
  // TODO
};

#include "syscall.hh"

const char *to_string(Syscall syscall) {
  switch (syscall) {
    SYSCALLS(SYSCALLS_STR);
  default:
    return nullptr;
  }
}

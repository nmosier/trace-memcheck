#include <unordered_map>
#include <string>
#include "syscall.hh"

const char *to_string(Syscall syscall) {
  switch (syscall) {
    SYSCALLS(SYSCALLS_STR);
  default:
    return nullptr;
  }
}

#define TO_SYSCALL(name, ...) {XSTR(name), Syscall::name},

Syscall to_syscall(const char *s) {
  static const std::unordered_map<std::string, Syscall> map {
    SYSCALLS(TO_SYSCALL)
  };
  return map.at(s);
}

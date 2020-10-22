#include <sys/user.h>
#include <sys/ptrace.h>

#include "util.hh"

void *get_pc(pid_t child) {
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, child, nullptr, &regs);
  return (void *) regs.rip;
}


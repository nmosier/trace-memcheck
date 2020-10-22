#include <sys/user.h>
#include <sys/ptrace.h>
#include <stdint.h>

#include "util.hh"

void *get_pc(pid_t child) {
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, child, nullptr, &regs);
  return (void *) regs.rip;
}

void get_regs(pid_t pid, user_regs_struct& regs) {
  ptrace(PTRACE_GETREGS, pid, nullptr, &regs);
}

void *get_sp(pid_t pid) {
  user_regs_struct regs;
  get_regs(pid, regs);
  return (void *) regs.rsp;
}

void set_regs(pid_t pid, const user_regs_struct& regs) {
  ptrace(PTRACE_SETREGS, pid, nullptr, &regs);
}

void set_pc(pid_t pid, void *pc) {
  user_regs_struct regs;
  get_regs(pid, regs);
  regs.rip = (uintptr_t) pc;
  set_regs(pid, regs); 
}

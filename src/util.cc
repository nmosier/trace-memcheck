#include <sys/user.h>
#include <sys/ptrace.h>
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/wait.h>

extern "C" {
#include <xed/xed-interface.h>
}

#include "util.hh"
#include "decoder.hh"

void *get_pc(pid_t child) {
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, child, nullptr, &regs);
  return (void *) regs.rip;
}

void get_regs(pid_t pid, user_regs_struct& regs) {
  ptrace(PTRACE_GETREGS, pid, nullptr, &regs);
}

user_regs_struct get_regs(pid_t pid) {
  user_regs_struct regs;
  get_regs(pid, regs);
  return regs;
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

void write_proc(pid_t pid, int fd, void *proc_ptr, const void *buf, size_t count) {
  ssize_t bytes;
  if ((bytes = pwrite(fd, buf, count, (off_t) proc_ptr)) < 0) {
    perror("pwrite");
    abort();
  }
  assert(bytes == count);
}

void read_proc(pid_t pid, int fd, const void *proc_ptr, void *buf, size_t count) {
  ssize_t bytes;
  if ((bytes = pread(fd, buf, count, (off_t) proc_ptr)) < 0) {
    perror("pread");
    abort();
  }
  assert(bytes == count);
}

void dump_proc(pid_t pid, int fd, const void *proc_ptr, size_t count) {
  uint8_t *buf = (uint8_t *) malloc(count);
  read_proc(pid, fd, proc_ptr, buf, count);
  for (size_t i = 0; i < count; ++i) {
    fprintf(stderr, "%02hhx ", buf[i]);
  }
  fprintf(stderr, "\n");
  free(buf);
}

void single_step_print(pid_t pid, int fd, size_t count) {
  Decoder decoder(fd);
  
  for (size_t i = 0; i < count; ++i) {
    ptrace(PTRACE_SINGLESTEP, pid, NULL, NULL);
    int status;
    wait(&status);
    if (!WIFSTOPPED(status) || WSTOPSIG(status) != SIGTRAP) {
      break;
    }
    void *pc = get_pc(pid);
    xed_decoded_inst_t xedd;
    const bool decoded = decoder.decode(pc, xedd);
    assert(decoded);
    fprintf(stderr, "ss pc = %p, iform = %s\n", get_pc(pid),
	    xed_iform_enum_t2str(xed_decoded_inst_get_iform_enum(&xedd)));
  }
}

void enable_trap(pid_t pid) {
  auto regs = get_regs(pid);
  regs.eflags |= 1 << 8;
  set_regs(pid, regs);
}

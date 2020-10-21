#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/user.h>
#include <sys/mman.h>

#include "branches.hh"

#define PROG "/bin/ls"

static bool stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
}

static void print_pc(pid_t child) {
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, child, NULL, &regs);
  printf("rip = %p, *rip = %016lx\n", (void *) regs.rip,
	 ptrace(PTRACE_PEEKTEXT, child, regs.rip, NULL));
}

static void *get_pc(pid_t child) {
  struct user_regs_struct regs;
  ptrace(PTRACE_GETREGS, child, NULL, &regs);
  return (void *) regs.rip;
}

static void hexdump(const void *buf, size_t count) {
  const char *buf_ = (const char *) buf;
  for (size_t i = 0; i < count; ++i) {
    printf("%02hhx", buf_[i]);
  }
  printf("\n");
}

static int open_child(pid_t child) {
  char *path;
  if (asprintf(&path, "/proc/%d/mem", child) < 0) {
    perror("asprintf");
    return -1;
  }

  int fd;
  if ((fd = open(path, O_RDWR)) < 0) {
    perror("open");
  }

  free(path);
  return fd;
}

static int close_child(int fd) {
  return close(fd);
}

int main(int argc, char *argv[]) {
  pid_t child = fork();
  if (child == 0) {
    ptrace(PTRACE_TRACEME, 0, NULL, NULL);
    execlp(PROG, PROG, NULL);
  }

  Decoder::Init();
  BranchPatcher branch_patcher;

  printf("child pid = %d\n", child);

  int exitno = 1;
  int status;
  wait(&status);
  assert(stopped_trace(status));
  
  int child_fd;
  if ((child_fd = open_child(child)) < 0) {
    goto cleanup;
  }

  branch_patcher = BranchPatcher(child_fd);  

  printf("ptrace pc = %p, main pc = %p\n", (void *) ptrace, (void *) main);

#if 1
  void *pc;
  pc = get_pc(child);
  printf("pc = %p\n", pc);
  char data[8];
  if (pread(child_fd, data, sizeof(data), (off_t) pc) < 0) {
    perror("read");
    goto cleanup;
  }
  hexdump(data, sizeof(data));
#endif

  branch_patcher.patch(pc);

  if (close_child(child) < 0) {
    goto cleanup;
  }

  exitno = 0;
  
 cleanup:
  kill(child, SIGTERM);

  return exitno;
}

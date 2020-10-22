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
#include "util.hh"

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

  const auto cleanup = [child] () {
    kill(child, SIGTERM);
  };

  Decoder::Init();
  BranchPatcher branch_patcher;

  printf("child pid = %d\n", child);

  int exitno = 1;
  int status;
  wait(&status);
  assert(stopped_trace(status));
  
  int child_fd;
  if ((child_fd = open_child(child)) < 0) {
    cleanup();
    return 1;
  }

  branch_patcher = BranchPatcher(child_fd);  

  printf("ptrace pc = %p, main pc = %p\n", (void *) ptrace, (void *) main);

  void *pc;
  pc = get_pc(child);
  
  branch_patcher.patch(pc);

  while (1) {
    ptrace(PTRACE_CONT, child, NULL, NULL);
    wait(&status);
    if (WIFSTOPPED(status)) {
      branch_patcher.handle_bkpt(get_pc(child), child);
    } else {
      break;
    }
  }
  

  if (close_child(child) < 0) {
    cleanup();
    return 1;
  }

  cleanup();
  
  return 0;
}

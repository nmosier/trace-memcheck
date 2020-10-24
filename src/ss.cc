#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/user.h>
#include <sys/mman.h>
#include <vector>
#include <cstring>

#include "branches.hh"
#include "util.hh"

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
  if (argc < 2) {
    fprintf(stderr, "usage: %s command [args...]\n", argv[0]);
    return 1;
  }

  char **command = &argv[1];
  
  pid_t child = fork();
  if (child == 0) {
    ptrace(PTRACE_TRACEME, 0, NULL, NULL);
    execvp(command[0], command);
  }

  const auto cleanup = [child] () {
    kill(child, SIGTERM);
  };

  Decoder::Init();

#if DEBUG
  printf("child pid = %d\n", child);
#endif

  int exitno = 1;
  int status;
  wait(&status);
  assert(stopped_trace(status));
  
  int child_fd;
  if ((child_fd = open_child(child)) < 0) {
    cleanup();
    return 1;
  }

  void *pc;
  pc = get_pc(child);
  
  std::vector<void *> insts;

  while (1) {
    ptrace(PTRACE_SINGLESTEP, child, nullptr, nullptr);
    wait(&status);
    
    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
       if (stopsig != SIGTRAP) {
	 fprintf(stderr, "unexpected signal %d\n", stopsig);
	 void *stop_pc = get_pc(child);
	 
	 Decoder decoder(child_fd);
	 fprintf(stderr, "stopped at inst: %s\n", decoder.disas(stop_pc).c_str());
	 abort();
       }
       fprintf(stderr, "ss pc = %p\n", get_pc(child));
    } else {
      break;
    }
  }

  if (close_child(child_fd) < 0) {
    cleanup();
    return 1;
  }

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));
  
  return 0;
}

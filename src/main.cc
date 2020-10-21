#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/user.h>

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

int main(int argc, char *argv[]) {
  pid_t child = fork();
  if (child == 0) {
    ptrace(PTRACE_TRACEME, 0, NULL, NULL);
    execlp(PROG, PROG, NULL);
  } else {
    int status;
    wait(&status);
    assert(stopped_trace(status));
    print_pc(child);

    kill(child, SIGTERM);
  }
}

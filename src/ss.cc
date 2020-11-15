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

#include "util.hh"
#include "inst.hh"

static bool stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
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

  Decoder::Init();

#if DEBUG
  printf("child pid = %d\n", child);
#endif

  int status;
  wait(&status);
  assert(stopped_trace(status));

  Tracee tracee(child, command[0]);

  std::vector<void *> insts;

  while (1) {
    ptrace(PTRACE_SINGLESTEP, child, nullptr, nullptr);
    wait(&status);
    
    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
       if (stopsig != SIGTRAP) {
	 fprintf(stderr, "unexpected signal %d\n", stopsig);
	 uint8_t *stop_pc = tracee.get_pc();
	 Instruction inst(stop_pc, tracee);
	 fprintf(stderr, "stopped at inst: %s\n", Decoder::disas(inst).c_str());
	 abort();
       }
#if DEBUG
       fprintf(stderr, "ss pc = %p\n", tracee.get_pc());
#endif
    } else {
      break;
    }
  }

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));
  
  return 0;
}

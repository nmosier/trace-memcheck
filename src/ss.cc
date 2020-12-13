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
#include "debug.h"

static inline bool stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
}

int main(int argc, char *argv[]) {
  bool execution_trace = false;
  const char *usage = "usage: %s [-hx] command [args...]\n";
  const char *optstring = "hx";
  int optchar;
  while ((optchar = getopt(argc, argv, optstring)) >= 0) {
    switch (optchar) {
    case 'h':
      printf(usage, argv[0]);
      return 0;
      
    case 'x':
      execution_trace = true;
      break;

    default:
      fprintf(stderr, usage, argv[0]);
      return 1;
    }
  }
  
  if (argc - optind < 1) {
    fprintf(stderr, usage, argv[0]);
    return 1;
  }

  char **command = &argv[optind];
  
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

  while (true) {
    status = tracee.singlestep();

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
       if (stopsig != SIGTRAP) {
	 fprintf(stderr, "unexpected signal %d\n", stopsig);
	 uint8_t *stop_pc = tracee.get_pc();
	 Instruction inst(stop_pc, tracee);
	 fprintf(stderr, "stopped at inst: %s\n", Decoder::disas(inst).c_str());
	 abort();
       }
       if (execution_trace) {
	 std::clog << "ss pc = " << (void *) tracee.get_pc() << ": "
		   << Instruction(tracee.get_pc(), tracee) << "\n";
       }
    } else {
      break;
    }
  }

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));
  
  return 0;
}

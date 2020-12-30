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

#include "dbi/util.hh"
#include "dbi/inst.hh"

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
  
  const pid_t child = ::fork();
  if (child == 0) {
    ::ptrace(PTRACE_TRACEME, 0, 0, 0);
    ::execvp(command[0], command);
  }

  dbi::Decoder::Init();

  dbi::Tracee tracee(child, command[0], false);

  dbi::Status status;
  while (true) {
    tracee.singlestep();
    tracee.wait(status);

    if (status.stopped()) {
      const auto stopsig = status.stopsig();
       if (stopsig != SIGTRAP) {
	 std::cerr << "unexpected signal " << stopsig << "(" << ::strsignal(stopsig) << ")\n";
	 uint8_t *stop_pc = tracee.get_pc();
	 dbi::Instruction inst(stop_pc, tracee);
	 std::cerr << "stopped at inst: " << inst << "\n";
	 std::abort();
       }
       if (execution_trace) {
	 std::clog << "[" << child << "] ss pc = " << (void *) tracee.get_pc() << ": "
		   << dbi::Instruction(tracee.get_pc(), tracee) << "\n";
       }
    } else {
      break;
    }
  }

  assert(status.exited());
  std::clog << "exit status: " << status.exitstatus() << "\n";
  
  return 0;
}

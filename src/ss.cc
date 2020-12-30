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

  dbi::Tracees tracees;
  std::vector<int> signals;
  tracees.emplace_back(child, command[0], false);
  signals.emplace_back(0);
  tracees[0].setoptions(PTRACE_O_TRACEFORK);

  while (tracees.size() > 0) {
    auto tracee_it = tracees.begin();
    auto signal_it = signals.begin();
    while (tracee_it != tracees.end()) {
      tracee_it->singlestep(*signal_it);
      dbi::Status status;
      tracee_it->wait(status);
      
      if (status.stopped()) {
	const auto stopsig = status.stopsig();
	if (stopsig == SIGTRAP) {
	  *signal_it = 0;
	  switch (status.ptrace_event()) {
	  case 0:
	    break;
	    
	  case PTRACE_EVENT_FORK:
	    {
	      const auto newpid = tracee_it->geteventmsg();
	      tracee_it = tracees.emplace(tracee_it, newpid, tracee_it->filename(), false);
	      signal_it = signals.emplace(signal_it, 0);
	      ++tracee_it;
	      ++signal_it;
	    }
	    break;
	    
	  default:
	    std::abort();
	  }
	} else {
	  /* deliver signal to tracee */
	  *signal_it = stopsig;
	} 
	if (execution_trace) {
	  std::clog << "[" << tracee_it->pid() << "] ss pc = " << (void *) tracee_it->get_pc()
		    << ": " << dbi::Instruction(tracee_it->get_pc(), *tracee_it) << "\n";
	}
	++tracee_it;
	++signal_it;
      } else {
	if (status.signaled()) {
	  std::clog << "[" << tracee_it->pid() << "] Terminated with signal " << status.termsig()
		    << " (" << ::strsignal(status.termsig()) << ")\n";
	} else {
	  assert(status.exited());
	  std::clog << "[" << tracee_it->pid() << "] Exited with status " << status.exitstatus()
		    << "\n";
	}
	tracee_it = tracees.erase(tracee_it);
	signal_it = signals.erase(signal_it);
      }
    }
  }

  return 0;
}

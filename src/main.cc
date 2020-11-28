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
#include <gperftools/profiler.h>

#include "util.hh"
#include "debug.h"
#include "patch.hh"
#include "config.hh"

static inline bool stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
}

int main(int argc, char *argv[]) {
  const auto usage = [=] (FILE *f) {
    const char *usage =
      "usage: %s [-hgs] command [args...]\n"			\
      "Options:\n"						\
      " -h        show help\n"					\
      " -g        transfer control to GDB on error\n"		\
      " -p        enable profiling\n"				\
      " -s        single-step\n"				\
      " -x        print execution trace\n"			\
      " -b        dump single-step breakpoint info\n"		\
      " -j        dump conditional jump breakpoint info\n"	\
      ""
      ;
    fprintf(f, usage, argv[0]);
  };

  const char *optstring = "hgpsxbj";
  int optchar;
  while ((optchar = getopt(argc, argv, optstring)) >= 0) {
    switch (optchar) {
    case 'h':
      usage(stdout);
      return 0;

    case 'g':
      g_conf.gdb = true;
      break;

    case 'p':
      g_conf.profile = true;
      break;

    case 's':
      g_conf.singlestep = true;
      break;

    case 'x':
      g_conf.execution_trace = true;
      break;

    case 'b':
      g_conf.dump_ss_bkpts = true;
      break;

    case 'j':
      g_conf.dump_jcc_bkpts = true;
      break;
      
    default:
      usage(stderr);
      return 1;
    }
  }

  if (optind + 1 > argc) {
    usage(stderr);
    return 1;
  }
  
  char **command = &argv[optind++];

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

  Patcher patcher(tracee);
  patcher.start();
  
  uint8_t *bkpt_pc;

  if (g_conf.profile) {
    ProfilerStart("memcheck.prof");
  }

  while (true) {
    auto regs = tracee.get_regs();
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

    if (g_conf.singlestep) {
      status = tracee.singlestep();
    } else {
      status = tracee.cont();
    }

    if (g_conf.execution_trace) { 
      if (WIFSTOPPED(status)) {
	std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	Instruction cur_inst(tracee.get_pc(), tracee);
	std::clog << cur_inst << std::endl;
      }
    }

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
      if (stopsig != SIGTRAP) {
	fprintf(stderr, "unexpected signal %d\n", stopsig);
	fprintf(stderr, "pc = %p\n", tracee.get_pc());
	uint8_t *stop_pc = tracee.get_pc();
	Instruction inst(stop_pc, tracee);
	fprintf(stderr, "stopped at inst: %s\n", Decoder::disas(inst).c_str());
	
	if (g_conf.gdb) {
	  tracee.gdb();
	} else {
	  abort();
	}
      }

      if (g_conf.singlestep) {
	uint8_t pc_byte;
	tracee.read(&pc_byte, 1, tracee.get_pc());
	while (pc_byte == 0xcc) {
	  // printf("bkpt pc = %p\n", get_pc(child));
	  bkpt_pc = tracee.get_pc();
	  tracee.set_pc(bkpt_pc);
	  patcher.handle_bkpt(bkpt_pc);

	  if (g_conf.execution_trace) {
	    std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	    Instruction cur_inst(tracee.get_pc(), tracee);
	    std::clog << cur_inst << std::endl;
	  }
	  tracee.read(&pc_byte, 1, tracee.get_pc());
	}
      } else {
	bkpt_pc = tracee.get_pc() - 1;
	uint8_t pc_byte;
	tracee.read(&pc_byte, 1, bkpt_pc);
	assert(pc_byte == 0xcc);
	patcher.handle_bkpt(bkpt_pc);
      }
    } else {
      break;
    }
  }

  if (g_conf.profile) {
    ProfilerStop();
  }
  
#if DEBUG
  printf("done\n");
#endif

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));

  return 0;
}

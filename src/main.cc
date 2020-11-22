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



static bool stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
}

int main(int argc, char *argv[]) {
  const auto usage = [=] (FILE *f) {
    const char *usage =
      "usage: %s [-hg] command [args...]\n"	\
      "Options:\n"				\
      " -h        show help\n"			\
      " -g        transfer control to GDB on error\n"
      ;
    fprintf(f, usage, argv[0]);
  };

  bool gdb = false;
  
  const char *optstring = "hg";
  int optchar;
  while ((optchar = getopt(argc, argv, optstring)) >= 0) {
    switch (optchar) {
    case 'h':
      usage(stdout);
      return 0;

    case 'g':
      gdb = true;
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
  
  std::vector<void *> insts;

  uint8_t *bkpt_pc;

  ProfilerStart("memcheck.prof");

  while (1) {
    auto regs = tracee.get_regs();
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

#if SINGLE_STEP
    ptrace(PTRACE_SINGLESTEP, child, nullptr, nullptr);
#else
    ptrace(PTRACE_CONT, child, NULL, NULL);
#endif
    wait(&status);

# if DEBUG
    if (WIFSTOPPED(status)) {
      std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
      Instruction cur_inst(tracee.get_pc(), tracee);
      std::clog << cur_inst << std::endl;
    }
# endif

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
      if (stopsig != SIGTRAP) {
	fprintf(stderr, "unexpected signal %d\n", stopsig);
	fprintf(stderr, "pc = %p\n", tracee.get_pc());
	uint8_t *stop_pc = tracee.get_pc();
	Instruction inst(stop_pc, tracee);
	fprintf(stderr, "stopped at inst: %s\n", Decoder::disas(inst).c_str());
	
	fprintf(stderr, "orig block @ %p\n", patcher.lookup_block_bkpt(stop_pc)->orig_addr());
	
	if (gdb) {
	  tracee.gdb();
	} else {
	  abort();
	}
      }

#if SINGLE_STEP
      uint8_t pc_byte;
      tracee.read(&pc_byte, 1, tracee.get_pc());
      while (pc_byte == 0xcc) {
	// printf("bkpt pc = %p\n", get_pc(child));
	bkpt_pc = tracee.get_pc();
	insts.push_back(bkpt_pc);
	tracee.set_pc(bkpt_pc);
	patcher.handle_bkpt(bkpt_pc);

# if DEBUG
    std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
    Instruction cur_inst(tracee.get_pc(), tracee);
    std::clog << cur_inst << std::endl;
# endif	
	
	tracee.read(&pc_byte, 1, tracee.get_pc());
      }

#else
      bkpt_pc = tracee.get_pc() - 1;
      insts.push_back(bkpt_pc);
      tracee.set_pc(bkpt_pc);

      patcher.handle_bkpt(bkpt_pc);

#endif
    } else {
      break;
    }
  }

  ProfilerStop();

#if DEBUG
  printf("done\n");
#endif

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));

  return 0;
}

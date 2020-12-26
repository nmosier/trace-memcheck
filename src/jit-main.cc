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
#include <fstream>
#include <getopt.h>
#include <gperftools/profiler.h>

#include "dbi/util.hh"
#include "dbi/patch.hh"
#include "dbi/config.hh"

static void transformer(uint8_t *addr, dbi::Instruction& inst,
			const dbi::Patcher::TransformerInfo& info) {
  (void) addr;
  addr = info.writer(inst);
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
      " -d        (with -x) print for use with diff\n"		\
      " -b        dump single-step breakpoint info\n"		\
      " -j        dump conditional jump breakpoint info\n"	\
      " -l <file> log file\n"					\
      " --prediction-mode=<mode>\n"				\
      "           branch prediction mode to use\n"		\
      "           legal values: 'none', 'iclass', 'iform'\n"	\
      ""
      ;
    fprintf(f, usage, argv[0]);
  };

  std::ofstream log;

  const char *optstring = "hgpsxbjdl:";
  enum Option {
    PREDICTION_MODE = 256,
  };
  const struct option longopts[] =
    {{"prediction-mode", 1, nullptr, PREDICTION_MODE},
     {nullptr, 0, nullptr, 0},
    };
  int optchar;
  while ((optchar = getopt_long(argc, argv, optstring, longopts, nullptr)) >= 0) {
    switch (optchar) {
    case 'h':
      usage(stdout);
      return 0;

    case 'g':
      dbi::g_conf.gdb = true;
      break;

    case 'p':
      dbi::g_conf.profile = true;
      break;

    case 's':
      dbi::g_conf.singlestep = true;
      break;

    case 'x':
      dbi::g_conf.execution_trace = true;
      break;

    case 'b':
      dbi::g_conf.dump_ss_bkpts = true;
      break;

    case 'j':
      dbi::g_conf.dump_jcc_info = true;
      break;

    case 'd':
      dbi::g_conf.execution_trace_diff = true;
      break;

    case 'l':
      log.open(optarg, std::ofstream::in | std::ofstream::trunc);
      if (!log) {
	std::cerr << argv[0] << ": couldn't open log file '" << optarg << "'\n";
	return 1;
      }
      dbi::g_conf.log = &log;
      break;
      
    case PREDICTION_MODE:
      if (!dbi::g_conf.set_prediction_mode(optarg)) {
	fprintf(stderr, "%s: --prediction-mode: bad argument\n", argv[0]);
	return 1;
      }
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

  if (dbi::g_conf.profile) {
    ProfilerStart("jit.prof");
  }

  dbi::Decoder::Init();

  const pid_t child_pid = fork();
  if (child_pid == 0) {
    ptrace(PTRACE_TRACEME, 0, nullptr, nullptr);
    execvp(command[0], command);
    abort();
  }

  int status;
  wait(&status);

  dbi::Tracee tracee(child_pid, command[0]);
  
  dbi::Patcher patcher(tracee, transformer);
  patcher.start();
  patcher.run();

  if (dbi::g_conf.profile) {
    ProfilerStop();
  }
  
  return 0;
}

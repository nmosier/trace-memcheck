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
#include <getopt.h>
#include <gperftools/profiler.h>

#include "util.hh"
#include "debug.h"
#include "patch.hh"
#include "config.hh"
#include "memcheck.hh"

int main(int argc, char *argv[]) {
  const auto usage = [=] (FILE *f) {
    const char *usage =
      "usage: %s [-hgs] command [args...]\n"				\
      "Options:\n"							\
      " -h        show help\n"						\
      " -g        transfer control to GDB on error\n"			\
      " -p        enable profiling\n"					\
      " -s        single-step\n"					\
      " -x        print execution trace\n"				\
      " -d        (with -x) print for use with diff\n"			\
      " -b        dump single-step breakpoint info\n"			\
      " -j        dump conditional jump breakpoint info\n"		\
      " -l <file> log file\n"						\
      " -m <file> save process maps to file\n"				\
      " --prediction-mode=<mode>\n"					\
      "           branch prediction mode to use\n"			\
      "           legal values: 'none', 'iclass', 'iform'\n"		\
      " --ss-syscall=<syscall>,<count>\n"				\
      "           single-step after <count> invokations of syscall\n"	\
      ""
      ;
    fprintf(f, usage, argv[0]);
  };

  std::ofstream log;
  std::ofstream map_file;

  const char *optstring = "hgpsxbjdl:m:";
  enum Option {
    PREDICTION_MODE = 256,
    SS_SYSCALL,
  };
  const struct option longopts[] =
    {{"prediction-mode", 1, nullptr, PREDICTION_MODE},
     {"ss-syscall", true, nullptr, SS_SYSCALL},
     {nullptr, 0, nullptr, 0},
    };
  int optchar;
  while ((optchar = getopt_long(argc, argv, optstring, longopts, nullptr)) >= 0) {
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
      g_conf.dump_jcc_info = true;
      break;

    case 'd':
      g_conf.execution_trace_diff = true;
      break;

    case 'l':
      log.open(optarg, std::ofstream::in | std::ofstream::trunc);
      if (!log) {
	std::cerr << argv[0] << ": couldn't open log file '" << optarg << "'\n";
	return 1;
      }
      g_conf.log = &log;
      break;

    case 'm':
      g_conf.map_file.open(optarg, std::ofstream::out | std::ofstream::trunc);
      if (!g_conf.map_file) {
	std::cerr << argv[0] << ": couldn't open map file'" << optarg << "'\n";
	return 1;
      }
      break;
      
    case PREDICTION_MODE:
      if (!g_conf.set_prediction_mode(optarg)) {
	fprintf(stderr, "%s: --prediction-mode: bad argument\n", argv[0]);
	return 1;
      }
      break;

    case SS_SYSCALL:
      {
	const char *syscall = strsep(&optarg, ",");
	const char *count = strsep(&optarg, ",");
	if (syscall == nullptr || count == nullptr) {
	  std::cerr << argv[0] << ": --ss-syscall: invalid syscall-count pair\n";
	  return 1;
	}
	g_conf.ss_syscall(syscall, std::stoul(count));
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

  Memcheck memcheck;
  if (!memcheck.open(command)) {
    fprintf(stderr, "memcheck: open failed\n");
    return 1;
  }
  memcheck.run();
  return 0;
}

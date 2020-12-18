#include <sys/user.h>
#include <sys/ptrace.h>
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/wait.h>

extern "C" {
#include <xed/xed-interface.h>
}

#include "util.hh"
#include "decoder.hh"
#include "inst.hh"

void single_step_print(Tracee& tracee, size_t count) {
  for (size_t i = 0; i < count; ++i) {
    ptrace(PTRACE_SINGLESTEP, tracee.pid(), NULL, NULL);
    int status;
    wait(&status);
    if (!WIFSTOPPED(status) || WSTOPSIG(status) != SIGTRAP) {
      break;
    }
    uint8_t *pc = tracee.get_pc();
    Instruction inst(pc, tracee);
    fprintf(stderr, "ss pc = %p, iform = %s\n", (void *) tracee.get_pc(),
	    xed_iform_enum_t2str(inst.xed_iform()));
  }
}


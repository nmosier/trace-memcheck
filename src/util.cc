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

void single_step_print(Tracee& tracee, size_t count) {
  Decoder decoder(tracee);
  
  for (size_t i = 0; i < count; ++i) {
    ptrace(PTRACE_SINGLESTEP, tracee.pid(), NULL, NULL);
    int status;
    wait(&status);
    if (!WIFSTOPPED(status) || WSTOPSIG(status) != SIGTRAP) {
      break;
    }
    uint8_t *pc = tracee.get_pc();
    xed_decoded_inst_t xedd;
    const bool decoded = decoder.decode(pc, xedd);
    assert(decoded);
    fprintf(stderr, "ss pc = %p, iform = %s\n", tracee.get_pc(),
	    xed_iform_enum_t2str(xed_decoded_inst_get_iform_enum(&xedd)));
  }
}


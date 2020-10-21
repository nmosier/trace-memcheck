extern "C" {
#include <xed/xed-interface.h>
}

#include <assert.h>
#include <stdio.h>
#include <sys/ptrace.h>

#include "branches.hh"

void BranchPatcher::patch(void *root) const {
  xed_decoded_inst_t xedd;

  const bool decoded = decoder.decode(root, xedd);
  assert(decoded);

  const xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&xedd);
  printf("%s\n", xed_iclass_enum_t2str(iclass));
}

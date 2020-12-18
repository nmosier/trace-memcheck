#include "memcheck-vars.hh"

void MemcheckVariables::init_for_subround(uint8_t fill) {
  write_type(fill, fill_ptr_);
  write_type(0U, jcc_cksum_ptr_);
}

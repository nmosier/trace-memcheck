#include <assert.h>
#include <unistd.h>
#include <stdio.h>
extern "C" {
#include <xed/xed-interface.h>
}
#include "decoder.hh"

xed_state_t Decoder::state = {XED_MACHINE_MODE_LONG_64, XED_ADDRESS_WIDTH_32b};

void Decoder::Init(void) {
  xed_tables_init();
}

bool Decoder::decode(void *pc, xed_decoded_inst_t& xedd) const {
  xed_decoded_inst_zero_set_mode(&xedd, &state);
  xed_decoded_inst_set_input_chip(&xedd, XED_CHIP_INVALID);

  ssize_t bytes_read;
  uint8_t buf[max_inst_len];
  if ((bytes_read = pread(fd, buf, max_inst_len, (off_t) pc)) < 0) {
    perror("pread");
    return false;
  }
  assert(bytes_read == max_inst_len);

  if (xed_decode(&xedd, buf, max_inst_len) != XED_ERROR_NONE) {
    return false;
  }

  return true;
}

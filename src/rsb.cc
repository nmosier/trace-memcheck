#include "rsb.hh"

ReturnStackBuffer::ReturnStackBuffer(Tracee& tracee, size_t size):
  mem(tracee, size)
{
  uint8_t *begin_val = mem.end<uint8_t>() - sizeof(uint8_t *) * 3;
  uint8_t *end_val = mem.begin<uint8_t>();
  uint8_t **it = reinterpret_cast<uint8_t **>(begin_val);

  /* set pointer addresses */
  begin_ = it++;
  ptr_   = it++;
  end_   = it++;

  /* set pointer values */
  uint8_t *vals[3] = {begin_val, begin_val, end_val};
  tracee.write(&vals[0], &vals[3], begin_);
}

#pragma once

namespace dbi {
  class ReturnStackBuffer;
}

#include "usermem.hh"
#include "tracee.hh"

namespace dbi {

  class ReturnStackBuffer {
  public:
    ReturnStackBuffer() {}
    ReturnStackBuffer(Tracee& tracee, size_t size) { open(tracee, size); }

    bool good() const { return mem.good(); }
    operator bool() const { return good(); }

    void open(Tracee& tracee, size_t size);
    void close() { mem.close(); }
    
    uint8_t **begin() const { return begin_; }
    uint8_t **ptr() const { return ptr_; }
    uint8_t **end() const { return end_; }
  
  private:
    UserMemory mem;
    uint8_t **begin_;
    uint8_t **ptr_;
    uint8_t **end_;
  };

}

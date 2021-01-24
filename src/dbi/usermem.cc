#include <sys/user.h>
#include <sys/mman.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <sys/syscall.h>

#include "usermem.hh"
#include "util.hh"

namespace dbi {

  void UserMemory::open(Tracee& tracee, size_t size, int prot) {
    size_ = size;
    assert(!*this);
    user_map = tracee.syscall<char *>(SYS_mmap,
				      0 /* void *addr */,
				      size /* size_t length */,
				      prot /* int prot */,
				      MAP_PRIVATE | MAP_ANONYMOUS /* int flags */,
				      -1 /* int fd */,
				      0 /* off_t offset */
				      );
    if (user_map == MAP_FAILED) {
      std::abort();
    }
  }

}

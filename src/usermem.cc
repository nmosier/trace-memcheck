#include <sys/user.h>
#include <sys/mman.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include "usermem.hh"
#include "util.hh"

UserMemory::UserMemory(Tracee& tracee, size_t size, int prot): size_(size) {
  user_map = (user_ptr_t<char>) tracee.syscall(Syscall::MMAP,
					       0 /* void *addr */,
					       size_ /* size_t length */,
					       prot /* int prot */,
					       MAP_PRIVATE | MAP_ANONYMOUS /* int flags */,
					       -1 /* int fd */,
					       0 /* off_t offset */);
  if (user_map == MAP_FAILED) {
    tracee.perror();
    abort();
  }
}

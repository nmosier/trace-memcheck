#include <sys/user.h>
#include <sys/mman.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include "usermem.hh"
#include "util.hh"

UserMemory::UserMemory(Tracee& tracee, size_t size): tracee(tracee), size_(size) {
  user_map = (user_ptr_t<char>) tracee.syscall(9 /* mmap */,
					       0 /* void *addr */,
					       size_ /* size_t length */,
					       PROT_READ | PROT_EXEC /* int prot */,
					       MAP_PRIVATE | MAP_ANONYMOUS /* int flags */,
					       -1 /* int fd */,
					       0 /* off_t offset */);
  if (user_map == MAP_FAILED) {
    tracee.perror();
    abort();
  }
}

UserMemory::~UserMemory() {
#if 0
  user_regs_struct regs = get_regs(pid);
  regs.rax = 11;
  regs.rdi = (uintptr_t) user_map; // void *addr
  regs.rsi = size_; // size_t length
  syscall_proc(pid, fd, regs);
  if ((int) regs.rax < 0) {
    fprintf(stderr, "error: munmap\n");
    abort();
  }
#endif
#if 0
  if (munmap(dbg_map, size_) < 0) {
    perror("munmap");
    abort();
  }
#endif
}

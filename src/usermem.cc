#include <sys/user.h>
#include <sys/mman.h>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include "usermem.hh"
#include "util.hh"


UserMemory::UserMemory(pid_t pid, int fd, size_t size): pid(pid), fd(fd), size_(size) {
  user_regs_struct regs = get_regs(pid);
  regs.rax = 9; // mmap
  regs.rdi = 0; // void *addr = NULL
  regs.rsi = size_; // size_t length = size
  regs.rdx = PROT_READ | PROT_EXEC; // int prot
  regs.r10 = MAP_PRIVATE | MAP_ANONYMOUS; // int flags
  regs.r8  = -1; // int fd
  regs.r9  = 0; // off_t offset
  syscall_proc(pid, fd, regs);
  if ((void *) regs.rax == MAP_FAILED) {
    fprintf(stderr, "error: mmap\n");
    abort();
  }
  user_map = (user_ptr_t<char>) regs.rax;

#if 0 // it appears that this is not possible
  if ((dbg_map = (char *) mmap(nullptr, size_, PROT_READ | PROT_WRITE,
			       MAP_SHARED, fd, (off_t) user_map)) == MAP_FAILED) {
    perror("mmap");
    abort();
  }
#endif
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

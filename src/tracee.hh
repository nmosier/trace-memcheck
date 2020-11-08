#pragma once

#include <iostream>
#include <array>
#include <unistd.h>
#include <sys/user.h>

class Tracee {
public:
  Tracee(void) {}
  Tracee(pid_t pid, const char *command);
  ~Tracee(void);
  
  pid_t pid() const { return pid_; }
  int fd() const { return fd_; }

  void read(void *to, size_t count, const void *from) const;

  template <typename OutputIt>
  void read(OutputIt begin, OutputIt end, const void *from) const {
    read(&*begin, end - begin, from);
  }
  
  template <typename T, size_t N>
  void read(std::array<T,N>& to, const void *from) const {
    read(to.begin(), to.end(), from);
  }
  
  void write(const void *from, size_t count, void *to) const;

  template <typename InputIt>
  void write(InputIt begin, InputIt end, void *to) const {
    write(&*begin, end - begin, to);
  }

#if 0
  template <typename T, size_t N>
  void write(const std::array<T,N>& from, size_t count, void *to) const {
    write(from.begin(), from.end(), to);
  }
#endif

  void dump(std::ostream& os, const void *ptr, size_t count) const;

  void get_regs(user_regs_struct& regs) const;
  user_regs_struct get_regs(void) const;
  void set_regs(const user_regs_struct& regs) const;
  
  uint8_t *get_pc(void) const;
  void set_pc(void *pc) const;
  void *get_sp(void) const;

  int singlestep(void) const; // returns status from wait(2)

  void syscall(user_regs_struct& regs) const;

  // TODO: Replace uintptr with decltype of regs.rip, e.g.
  uintptr_t syscall(uintptr_t syscallno, uintptr_t a0 = 0, uintptr_t a1 = 0, uintptr_t a2 = 0,
		    uintptr_t a3 = 0, uintptr_t a4 = 0, uintptr_t a5 = 0) const;

  void perror(void) const;

  void gdb(void);

  std::pair<uintptr_t, std::string> addr_loc(void *addr) const;
  
private:
  pid_t pid_;
  int    fd_;
  const char *command;
};

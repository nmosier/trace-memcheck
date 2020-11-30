#pragma once

#include <sys/types.h>
#include <sys/user.h>
#include <memory>

void *get_pc(pid_t child);
void *get_sp(pid_t pid);
void get_regs(pid_t pid, user_regs_struct& regs);

void set_pc(pid_t pid, void *pc);

void call_fn(pid_t pid, void *fn);

void write_proc(pid_t pid, int fd, void *proc_ptr, const void *buf, size_t count);

void single_step_print(pid_t pid, int fd, size_t count);


user_regs_struct get_regs(pid_t pid);

void enable_trap(pid_t pid);

void read_proc(pid_t pid, int fd, const void *proc_ptr, void *buf, size_t count);

#define arrlen(arr) (sizeof(arr) / sizeof((arr)[0]))

void syscall_proc(pid_t pid, int fd, user_regs_struct& regs);

template <typename T>
constexpr std::array<T, 0> make_array(void) { return std::array<T, 0>(); }

template <typename T, typename... Args>
constexpr std::array<T, sizeof...(Args)> make_array(Args... args) {
  return std::array<T, sizeof...(Args)> {static_cast<T>(args)...};
}

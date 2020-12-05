#pragma once

class Memcheck;
class StackTracker;

#include <string>
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "snapshot.hh"

class StackTracker {
public:
  StackTracker(Tracee& tracee): tracee(tracee) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
private:
  // TODO: Can be optimized.
  struct Elem {
    uint8_t *orig_addr;
    std::string inst_str;
    void *sp;
    
    Elem(const Instruction& inst);
  };
  using Map = std::unordered_map<uint8_t *, std::shared_ptr<Elem>>;
  using BkptCallback = Terminator::BkptCallback;

  Tracee& tracee;
  Map map;

  const BkptCallback pre_callback = [this] (auto... args) { return pre_handler(args...); };
  const BkptCallback post_callback = [this] (auto... args) { return post_handler(args...); };

  void pre_handler(uint8_t *addr);
  void post_handler(uint8_t *addr);
};

class SyscallTracker {
public:
  SyscallTracker(Tracee& tracee): tracee(tracee) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
private:
  Tracee& tracee;
};

class Memcheck {
public:
  Memcheck(void): tracee(), stack_tracker(tracee), syscall_tracker(tracee) {}

  bool open(const char *file, char * const argv[]);
  bool open(char * const argv[]) { return open(argv[0], argv); }
  void run(void);
  
private:
  Tracee tracee;
  util::optional<Patcher> patcher;
  StackTracker stack_tracker;
  SyscallTracker syscall_tracker;
  
  Maps maps;
  Snapshot snapshot;

  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);

  static bool stopped_trace(int status);
  static bool is_sp_dec(const Instruction& inst);

  void segfault_handler(int signum);
  static constexpr size_t mprotect_bits = 12;
  static_assert(mprotect_bits >= 12, "bits must be greater than page size");
  static constexpr size_t mprotect_size = 1 << mprotect_bits;
  static constexpr void *mprotect_ptr(void *ptr) {
    return (void *) (((uintptr_t) ptr) & ~(mprotect_size - 1));
  }

  void clear_access();
};



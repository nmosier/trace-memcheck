#pragma once

class Memcheck;

#include <string>
#include <unordered_set>
#include <map>
#include "tracker.hh"
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "snapshot.hh"
#include "state.hh"

class Memcheck {
public:
  Memcheck(void):
    tracee(),
    stack_tracker(tracee, 0),
    syscall_tracker(tracee),
    call_tracker(tracee, 0),
    jcc_tracker(tracee)
  {}
  
  bool open(const char *file, char * const argv[]);
  bool open(char * const argv[]) { return open(argv[0], argv); }
  void run(void);
  
private:
  Tracee tracee;
  util::optional<Patcher> patcher;
  StackTracker stack_tracker;
  SyscallTracker syscall_tracker;
  CallTracker call_tracker;
  JccTracker jcc_tracker;
  util::optional<UserMemory> memory;
  
  Maps maps_gen;
  using PageSet = std::unordered_set<void *>;
  PageSet tracked_pages;
  
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
  static bool stopped_trace(int status);
  static bool is_sp_dec(const Instruction& inst);
  static bool is_jcc(const Instruction& inst);

  void segfault_handler(int signum);
  static constexpr size_t mprotect_bits = 12;
  static_assert(mprotect_bits >= 12, "bits must be greater than page size");
  static constexpr size_t mprotect_size = 1 << mprotect_bits;
  static constexpr void *mprotect_ptr(void *ptr) {
    return (void *) (((uintptr_t) ptr) & ~(mprotect_size - 1));
  }

  void clear_access();
  void init_tracked_pages(PageSet& tracked_pages);
  bool check_tracked_pages();
  bool maps_has_addr(void *addr) const; // TODO: should be member of maps class.

  void track_range(void *begin, void *end);
  void untrack_range(void *begin, void *end);
  
  void syscall_handler_pre(uint8_t *addr);
  void syscall_handler_post(uint8_t *addr);

  void save_state(State& state);
  State save_state();

  template <typename InputIt>
  void update_taint_state(InputIt begin, InputIt end, State& taint_state);
  void check_round();
  void set_state_with_taint(State& state, const State& taint);

  void init_taint(State& taint_state);

  void *stack_begin();

  SyscallArgs syscall_args;

  static constexpr unsigned SUBROUNDS = 2;
  bool subround_counter = false; // TODO: Generalize for SUBROUNDS.
  State pre_state;

  template <typename T>
  using RoundArray = std::array<T, SUBROUNDS>;
  
  RoundArray<State> post_states;
  RoundArray<JccTracker::cksum_t> jcc_cksums;
  RoundArray<JccTracker::List> jcc_lists;
  State taint_state;

  void *brk = nullptr; // current brk(2) value

  friend class SyscallChecker; // TEMPORARY
};



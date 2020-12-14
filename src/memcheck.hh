#pragma once

class Memcheck;

#include "tracker.hh"
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "snapshot.hh"
#include "state.hh"
#include "pageset.hh"

class Memcheck {
public:
  Memcheck(void):
    tracee(),
    stack_tracker(tracee, 0, cksum),
    syscall_tracker(tracee,
		    SequencePoint(taint_state,
				  [this] (auto addr) { this->advance_round(addr, syscall_tracker); },
				  [this] (auto addr) { this->start_round(); }
				  ),
		    tracked_pages,
		    syscall_args,
		    *this
		    ),
    call_tracker(tracee, 0, cksum),
    jcc_tracker(tracee, cksum),
    lock_tracker(tracee,
		 SequencePoint(taint_state,
			       [this] (auto addr) { this->advance_round(addr, lock_tracker); },
			       [this] (auto addr) { this->start_round(); }
			       )
		 )
  {}
  
  bool open(const char *file, char * const argv[]);
  bool open(char * const argv[]) { return open(argv[0], argv); }
  void run(void);
  
  void *stack_begin(); // TODO: should be private. Fix issue that makes it need to be public.
  using Loc = std::pair<void *, std::string>;
  Loc orig_loc(uint8_t *addr);

private:
  Tracee tracee;
  util::optional<Patcher> patcher;
  StackTracker stack_tracker;
  SyscallTracker syscall_tracker;
  CallTracker call_tracker;
  JccTracker jcc_tracker;
  LockTracker lock_tracker;
  util::optional<UserMemory> memory;
  
  Maps maps_gen;
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

  template <class SequencePoint>
  void advance_round(uint8_t *addr, SequencePoint& seq_pt);
  void start_round();
  
  void save_state(State& state);
  State save_state();

  template <typename InputIt>
  void update_taint_state(InputIt begin, InputIt end, State& taint_state);
  template <class SequencePoint>
  void check_round(SequencePoint& seq_pt);
  void set_state_with_taint(State& state, const State& taint);
  
  void init_taint(State& taint_state);
  
  SyscallArgs syscall_args;
  
  static constexpr unsigned SUBROUNDS = 2;
  unsigned subround_counter = 0;
  State pre_state;

  template <typename T>
  using RoundArray = std::array<T, SUBROUNDS>;

  RoundArray<uint8_t> fills = {{0x00, 0xff}};
  RoundArray<State> post_states;
  FlagChecksum cksum;
  RoundArray<FlagChecksum> cksums;
  State taint_state;

  friend class SyscallChecker; // TEMPORARY
};

constexpr bool FILL_SP_DEC = true;
constexpr bool FILL_SP_INC = true;
constexpr bool FILL_CALL = true;
constexpr bool TAINT_STACK = true;
constexpr bool CHANGE_PRE_STATE = true;
constexpr bool ABORT_ON_TAINT = true;

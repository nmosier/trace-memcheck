#pragma once

class Memcheck;

#include "tracker.hh"
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "state.hh"
#include "pageset.hh"
#include "settings.hh"
#include "memcheck-vars.hh"

class Memcheck {
public:
  Memcheck(void);
  
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
  RTMTracker rtm_tracker;
  RDTSCTracker rdtsc_tracker;
  util::optional<MemcheckVariables> vars;
  
  Maps maps_gen;
  PageSet tracked_pages;
  
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
  static bool stopped_trace(int status);
  static bool is_sp_dec(const Instruction& inst);
  static bool is_jcc(const Instruction& inst);

  static constexpr size_t mprotect_bits = 12;
  static_assert(mprotect_bits >= 12, "bits must be greater than page size");
  static constexpr size_t mprotect_size = 1 << mprotect_bits;
  static constexpr void *mprotect_ptr(void *ptr) {
    return (void *) (((uintptr_t) ptr) & ~(mprotect_size - 1));
  }

  /* Round API */
  void start_round();
  void stop_round();
  template <typename SequencePoint> void check_round(SequencePoint& seq_pt);
  void start_subround();
  bool next_subround();
  void stop_subround();

  template <typename SequencePoint> void sequence_point_handler_pre(SequencePoint& seq_pt);
  void sequence_point_handler_post();

  void save_state(State& state);
  State save_state();

  template <typename InputIt>
  void update_taint_state(InputIt begin, InputIt end, State& taint_state);
  void set_state_with_taint(State& state, const State& taint);
  
  void init_taint(State& taint_state, bool taint_shadow_stack);
  
  SyscallArgs syscall_args;
  
  static constexpr unsigned SUBROUNDS = 2;
  unsigned subround_counter = 0;
  State pre_state;

  template <typename T>
  using RoundArray = std::array<T, SUBROUNDS>;

  RoundArray<uint8_t> fills = {{0x00, 0xff}};
  RoundArray<State> post_states;
  FlagChecksum cksum;
  RoundArray<FlagChecksum> bkpt_cksums;
  RoundArray<uint32_t> incore_cksums;
  State taint_state;

  uint8_t cur_fill() const { return fills[subround_counter]; }

  friend class SyscallChecker; // TEMPORARY
  friend class SharedMemSeqPt; // TEMPORARY

  static void sigignore(int signal) {}
  void write_maps() const;
  static Memcheck *cur_memcheck;
  static void sigint_handler(int signum);
  void protect_map(const std::string& name, int prot);

  std::unordered_set<void *> shared_pages;
  void segfault_handler(int signal, const siginfo_t& siginfo);

  void assert_taint_zero() const {
    assert(util::implies(ASSERT_TAINT_ZERO, taint_state.is_zero()));
  }

  template <typename InputIt>
  void check_checksums(InputIt begin, InputIt end, const char *desc = nullptr);

  template <typename Container>
  void check_checksums(const Container& container, const char *desc = nullptr) {
    return check_checksums(container.begin(), container.end(), desc);
  }
};


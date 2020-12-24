#pragma once

class Memcheck;

#include <unordered_set>
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
  MemcheckVariables vars;
  StackTracker stack_tracker;
  SyscallTracker syscall_tracker;
  CallTracker call_tracker;
  RetTracker ret_tracker;
  JccTracker jcc_tracker;
  LockTracker lock_tracker;
  RTMTracker rtm_tracker;
  RDTSCTracker rdtsc_tracker;
  
  Maps maps_gen;
  PageSet tracked_pages;
  
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
  static bool stopped_trace(int status);
  static bool is_sp_dec(const Instruction& inst);
  static bool is_jcc(const Instruction& inst);

  static constexpr size_t mprotect_bits = 12;
  static_assert(mprotect_bits >= 12, "bits must be greater than page size");
  static constexpr size_t mprotect_size = 1 << mprotect_bits;
  static void *mprotect_ptr(void *ptr) {
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

  static const RoundArray<fill_t> fills;
  fill_t cur_fill_;
  RoundArray<State> post_states;
  FlagChecksum cksum;
  RoundArray<FlagChecksum> bkpt_cksums;
  RoundArray<uint32_t> incore_cksums;
  State taint_state;

  template <typename T>
  const T& cur(const RoundArray<T>& arr) const {
    assert(subround_counter < SUBROUNDS);
    return arr[subround_counter];
  }

  template <typename T>
  T& cur(RoundArray<T>& arr) {
    assert(subround_counter < SUBROUNDS);
    return arr[subround_counter];
  }

  void set_cur_fill() { cur_fill_ = cur(fills); }
  fill_t cur_fill() const {
    assert(cur_fill_ == cur(fills));
    return cur(fills);
  }
  fill_ptr_t cur_fill_ptr() const { return &cur_fill_; }
  
  const State& cur_post_state() const { return cur(post_states); }
  State& cur_post_state() { return cur(post_states); }
  const FlagChecksum& cur_bkpt_cksum() const { return cur(bkpt_cksums); }
  FlagChecksum& cur_bkpt_cksum() { return cur(bkpt_cksums); }
  uint32_t cur_incore_cksum() const { return cur(incore_cksums); }
  uint32_t& cur_incore_cksum() { return cur(incore_cksums); }

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

  std::unordered_set<void *> tmp_writable_pages;
  void get_writable_pages();
  void lock_pages();
  void unlock_pages();
};

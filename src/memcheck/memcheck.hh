#pragma once

namespace memcheck {
  class Memcheck;
}

#include <unordered_set>
#include "tracker.hh"
#include "dbi/inst.hh"
#include "dbi/util.hh"
#include "dbi/patch.hh"
#include "maps.hh"
#include "state.hh"
#include "pageset.hh"
#include "vars.hh"
#include "thdmap.hh"

namespace memcheck {

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
    dbi::Patcher patcher;
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

    const dbi::Tracee& tracee() const { return std::next(patcher.tracees_begin(), 0)->tracee; }
    dbi::Tracee& tracee() { return std::next(patcher.tracees_begin(), 0)->tracee; }

    const dbi::Tracee& tracee2() const { return std::next(patcher.tracees_begin(), 1)->tracee; }
    dbi::Tracee& tracee2() { return std::next(patcher.tracees_begin(), 1)->tracee; }
    
    void transformer(uint8_t *addr, dbi::Instruction& inst,
		     const dbi::Patcher::TransformerInfo& info);
  
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
    void stop_subround();

    template <typename SequencePoint>
    void sequence_point_handler_pre(dbi::Tracee& tracee, SequencePoint& seq_pt);
    void sequence_point_handler_post();

    void save_state(dbi::Tracee& tracee, State& state);

    template <typename InputIt>
    void update_taint_state(InputIt begin, InputIt end, State& taint_state);
    void set_state_with_taint(dbi::Tracee& tracee, State& state, const State& taint);
  
    void init_taint(State& taint_state, bool taint_shadow_stack);
  
    dbi::SyscallArgs syscall_args;
  
    static constexpr unsigned THREADS = 2;
    State pre_state;

    template <typename T>
    using RoundArray = std::array<T, THREADS>;

    static const RoundArray<fill_t> fills;
    State taint_state;
    ThreadMap thd_map; // contains fills, checksums, etc.
    unsigned suspended_count;

    friend class SyscallChecker; // TEMPORARY
    friend class SharedMemSeqPt; // TEMPORARY

    static void sigignore(dbi::Tracee& tracee, int signal) {}
    void write_maps() const;
    static Memcheck *cur_memcheck;
    static void sigint_handler(int signum);
    void protect_map(const std::string& name, int prot);

    std::unordered_set<void *> shared_pages;
    void segfault_handler(dbi::Tracee& tracee, int signal, const siginfo_t& siginfo);

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
    void fork();
    void kill();
  };

}

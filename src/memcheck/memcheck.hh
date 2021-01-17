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
#include "config.hh"
#include "execmem.hh"
#include "syscaller.hh"

namespace memcheck {

  class Memcheck {
  public:
    Memcheck();
  
    bool open(const char *file, char * const argv[]);
    bool open(char * const argv[]) { return open(argv[0], argv); }
    void run();
  
    void *stack_begin(); // TODO: should be private. Fix issue that makes it need to be public.
    using Loc = std::pair<void *, std::string>;
    Loc orig_loc(uint8_t *addr);

  private:
    static constexpr unsigned THREADS = 2;
    template <typename T>
    using RoundArray = std::array<T, THREADS>;
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
    dbi::SyscallArgs syscall_args;
    State pre_state;
    dbi::Tracee pre_tracee;
    static const RoundArray<fill_t> fills;
    State taint_state;
    ThreadMap thd_map; // contains fills, checksums, etc.
    unsigned suspended_count;
    std::unordered_set<void *> tmp_writable_pages;
    std::unordered_set<void *> shared_pages;
    static Memcheck *cur_memcheck; // used to dump maps on interrupt
    ExecMemory exec_mem;

    const dbi::Tracee& tracee() const { return patcher.tracee_good(0); }
    dbi::Tracee& tracee() { return patcher.tracee_good(0); }
    const dbi::Tracee& tracee2() const { return patcher.tracee_good(1); }
    dbi::Tracee& tracee2() { return patcher.tracee_good(1); }

    /* Patcher Callbacks */
    void transformer(uint8_t *addr, dbi::Instruction& inst,
		     const dbi::Patcher::TransformerInfo& info);
    static void sigignore(dbi::Tracee& tracee, int signal) {}
    void segfault_handler(dbi::Tracee& tracee, int signal, const siginfo_t& siginfo);
  
    /* Round API */
    void start_round(bool should_fork);
    void stop_round(bool save_states);
    template <typename SequencePoint>
    SequencePoint_Defaults::CheckResult check_round(SequencePoint& seq_pt);
    template <typename InputIt>
    void check_checksums(InputIt begin, InputIt end, const char *desc = nullptr);
    template <typename Container>
    void check_checksums(const Container& container, const char *desc = nullptr) {
      return check_checksums(container.begin(), container.end(), desc);
    }

    /* Sequence Point Handlers */
    /** Returns whether all threads have reached the sequence point and checking occurred 
     */
    template <typename SequencePoint>
    bool sequence_point_handler(dbi::Tracee& tracee, SequencePoint& seq_pt); 

    /* State Functions */
    void save_state(dbi::Tracee& tracee, State& state);
    template <typename InputIt>
    void update_taint_state(InputIt begin, InputIt end, State& taint_state);
    void set_state_with_taint(dbi::Tracee& tracee, State& state, const State& taint);
    void init_taint(State& taint_state, bool taint_shadow_stack);
    void save_pre_state();

    /* Debugging Functions */
    void assert_taint_zero() {
      g_conf.assert_(util::implies(ASSERT_TAINT_ZERO, taint_state.is_zero()), tracee());
    }
    static void sigint_handler(int signum);
    void write_maps() const;

    /* Page Functions */
#if 1
    void get_writable_pages();
#else
    auto get_writable_pages()
#endif
    
    template <class T>
    bool page_is_writable(const T& tracked_page);
    void lock_pages();
    void unlock_pages();
    void protect_map(const std::string& name, int prot);
    
    /* Thread Management Functions */
    void fork();
    void kill(dbi::Tracee& killee);
    
    /* Other */
    template <typename Ret, typename... Args>
    Ret syscall(dbi::Tracee& tracee, Args&&... args) {
      return syscaller().syscall<Ret>(tracee, std::forward<Args>(args)...);
    }

    Syscaller syscaller() const {
      return Syscaller(exec_mem.syscall_ptr());
    }
    
    friend class SyscallChecker; // TEMPORARY
    friend class SyscallTracker_;
    friend class SharedMemSeqPt; // TEMPORARY
  };

}

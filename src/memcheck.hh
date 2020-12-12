#pragma once

class Memcheck;
class StackTracker;

#include <string>
#include <unordered_set>
#include <map>
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "snapshot.hh"
#include "state.hh"

constexpr unsigned SHADOW_STACK_SIZE = 128;

class Tracker {
public:
  using BkptCallback = Terminator::BkptCallback;
  using TransformerInfo = Patcher::TransformerInfo;
  Tracker(Tracee& tracee): tracee(tracee) {}
  virtual uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) = 0;
  
protected:
  Tracee& tracee;
};

class Filler {
public:
  Filler(uint8_t fill): fill_(fill) {}

  uint8_t fill() const { return fill_; }
  void fill(uint8_t newfill) { fill_ = newfill; }
  
protected:
  
private:
  uint8_t fill_;
  
};

class StackTracker: public Tracker, public Filler {
public:
  StackTracker(Tracee& tracee, uint8_t fill): Tracker(tracee), Filler(fill) {}
  
  virtual uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) override;
  
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

  Map map;

  const BkptCallback pre_callback = [this] (auto... args) { return pre_handler(args...); };
  const BkptCallback post_callback = [this] (auto... args) { return post_handler(args...); };

  void pre_handler(uint8_t *addr);
  void post_handler(uint8_t *addr);
};

class SyscallArgs {
public:
  SyscallArgs() {}
  
  template <typename... Ts>
  SyscallArgs(Ts&&... ts) { add_call(ts...); }

  static constexpr unsigned MAX_ARGS = 6;

  Syscall no() const { return static_cast<Syscall>(regs_.rax); }
  
  template <unsigned N, typename Arg>
  Arg arg() const {
    constexpr unsigned long long user_regs_struct::* map[MAX_ARGS] =
      {&user_regs_struct::rdi,
       &user_regs_struct::rsi,
       &user_regs_struct::rdx,
       &user_regs_struct::r10,
       &user_regs_struct::r8,
       &user_regs_struct::r9,
      };
    return (Arg) (regs_.*map[N]);
  }

  template <typename RV>
  RV rv() const { return (RV) rv_; }

  void add_call(const user_regs_struct& regs) { regs_ = regs; }
  void add_call(Tracee& tracee) { add_call(tracee.get_regs()); }
  
  void add_ret(unsigned long long rv) { rv_ = rv; }
  void add_ret(Tracee& tracee) { add_ret(tracee.get_regs().rax); }

  const user_regs_struct& regs() const { return regs_; }
  
private:
  user_regs_struct regs_;
  unsigned long long rv_;
};

class SyscallTracker {
public:
  using BkptCallback = Terminator::BkptCallback;
  
  SyscallTracker(Tracee& tracee): tracee(tracee) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info,
	       const BkptCallback& pre_handler, const BkptCallback& post_handler);
  
private:
  Tracee& tracee;
};

class CallTracker: public Tracker, public Filler {
public:
  CallTracker(Tracee& tracee, uint8_t fill): Tracker(tracee), Filler(fill) {}

  virtual uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) override;

private:
  const BkptCallback call_callback = [this] (auto... args) { return call_handler(args...); };
  const BkptCallback ret_callback = [this] (auto... args) { return ret_handler(args...); };

  void call_handler(uint8_t *addr) const;
  void ret_handler(uint8_t *addr) const;
};

class JccTracker: public Tracker {
public:
  using cksum_t = uint32_t;
  using List = std::vector<std::pair<uint8_t *, cksum_t>>;

  JccTracker(Tracee& tracee): Tracker(tracee) { reset(); } 

  virtual uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) override;
  cksum_t cksum() const { return cksum_; }
  void reset() { cksum_ = 0; list_.clear(); }

  const List& list() const { return list_; }
  
private:
  cksum_t cksum_;
  List list_;

  static constexpr cksum_t mask = 0x1 | 0x4 | 0x10 | 0x40 | 0x80 | 0x800; // TODO: remove this

  void handler(uint8_t *addr);
};

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
  std::array<State, SUBROUNDS> post_states;
  std::array<JccTracker::cksum_t, SUBROUNDS> jcc_cksums;
  std::array<JccTracker::List, SUBROUNDS> jcc_lists;
  State taint_state;

  void *brk = nullptr; // current brk(2) value

  friend class SyscallChecker; // TEMPORARY
};



#pragma once

class Memcheck;
class StackTracker;

#include <string>
#include "inst.hh"
#include "util.hh"
#include "patch.hh"
#include "maps.hh"
#include "snapshot.hh"
#include "state.hh"

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

class SyscallArgs {
public:
  SyscallArgs() {}
  
  template <typename... Ts>
  SyscallArgs(Ts&&... ts) { add_args(ts...); }

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
    return static_cast<Arg>(regs_.*map[N]);
  }

  template <typename RV>
  RV rv() const { return static_cast<RV>(rv_); }

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

class Memcheck {
public:
  Memcheck(void):
    tracee(),
    stack_tracker(tracee),
    syscall_tracker(tracee) {}
  
  bool open(const char *file, char * const argv[]);
  bool open(char * const argv[]) { return open(argv[0], argv); }
  void run(void);
  
private:
  Tracee tracee;
  util::optional<Patcher> patcher;
  StackTracker stack_tracker;
  SyscallTracker syscall_tracker;
  
  Maps maps_gen;
  using MapList = std::list<Map>;
  MapList maps;

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
  void get_maps();
  bool maps_has_addr(const void *addr) const; // TODO: should be member of maps class.
  std::ostream& print_maps(std::ostream& os) const;

  void syscall_handler_pre(uint8_t *addr);
  void syscall_handler_post(uint8_t *addr);

  void save_state(State& state);
  State save_state();

  template <typename InputIt>
  void get_taint_state(InputIt begin, InputIt end, State& taint_state);
  void check_round();

  void init_taint(State& taint_state);
  const Map& stack_map();

  SyscallArgs syscall_args;

  bool subround_counter = false;
  State pre_state;
  std::array<State, 2> post_states;
  State taint_state;
};



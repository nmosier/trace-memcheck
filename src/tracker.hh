#pragma once

#include <cassert>
#include <string>
#include <vector>
#include "block-term.hh"
#include "patch.hh"
#include "pageset.hh"
#include "cksum.hh"

constexpr unsigned SHADOW_STACK_SIZE = 128;

class Tracker {
public:
  using BkptCallback = Terminator::BkptCallback;
  using TransformerInfo = Patcher::TransformerInfo;

  Tracker(Tracee& tracee): tracee(tracee) {}
  uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) { abort(); }
  
protected:
  Tracee& tracee;
};

class Filler {
public:
  Filler(uint8_t fill): fill_(fill) {}

  uint8_t fill() const { return fill_; }
  void fill(uint8_t newfill) { fill_ = newfill; }
  
private:
  uint8_t fill_;
};

class Checksummer {
public:
  Checksummer(FlagChecksum& cksum): cksum(cksum) {}
protected:
  FlagChecksum& cksum;
};

class SequencePoint {
public:
  using Callback = Terminator::BkptCallback;

  SequencePoint(const Callback& pre_callback, const Callback& post_callback):
    pre_callback(pre_callback), post_callback(post_callback) {}
  
protected:
  Callback pre_callback;
  Callback post_callback;
};

class StackTracker: public Tracker, public Filler, public Checksummer {
public:
  StackTracker(Tracee& tracee, uint8_t fill, FlagChecksum& cksum):
    Tracker(tracee), Filler(fill), Checksummer(cksum) {}
  
  uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info);
  
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

class SyscallTracker: public Tracker {
public:
  SyscallTracker(Tracee& tracee, PageSet& page_set): Tracker(tracee), page_set(page_set) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info,
	       const BkptCallback& pre_handler, const BkptCallback& post_handler);
  
private:
  PageSet& page_set;
};

class CallTracker: public Tracker, public Filler, public Checksummer {
public:
  CallTracker(Tracee& tracee, uint8_t fill, FlagChecksum& cksum):
    Tracker(tracee), Filler(fill), Checksummer(cksum) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info);

private:
  const BkptCallback call_callback = [this] (auto... args) { return call_handler(args...); };
  const BkptCallback ret_callback = [this] (auto... args) { return ret_handler(args...); };

  void call_handler(uint8_t *addr) const;
  void ret_handler(uint8_t *addr) const;
};

class JccTracker: public Tracker, public Checksummer {
public:
  JccTracker(Tracee& tracee, FlagChecksum& cksum): Tracker(tracee), Checksummer(cksum) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info);

private:
  void handler(uint8_t *addr);
};

class LockTracker: public Tracker, public SequencePoint {
public:
  template <typename SequencePointArg>
  LockTracker(Tracee& tracee, const SequencePointArg& sequence_point):
    Tracker(tracee), SequencePoint(sequence_point) {}

  uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info, bool& match);
  
private:
  static constexpr uint8_t LOCK_PREFIX = 0xf0;
};

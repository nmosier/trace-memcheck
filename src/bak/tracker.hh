#pragma once

class StackTracker;
class SyscallTracker;
class SyscallArgs;

#include <cassert>
#include <string>
#include <vector>
#include "block-term.hh"
#include "patch.hh"
#include "pageset.hh"
#include "syscall-check.hh"
#include "syscall-args.hh"

constexpr unsigned SHADOW_STACK_SIZE = 128;

class Tracker {
public:
  using BkptCallback = Terminator::BkptCallback;
  using TransformerInfo = Patcher::TransformerInfo;
  enum class Kind {STACK, SYSCALL, CALL, JCC};
  
  Tracker(Tracee& tracee): tracee(tracee) {}
  virtual Kind kind() const = 0;
  virtual uint8_t *add(uint8_t *addr, Instruction& inst, const TransformerInfo& info) { abort(); }
  
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

class StackTracker: public Tracker, public Filler {
public:
  StackTracker(Tracee& tracee, uint8_t fill): Tracker(tracee), Filler(fill) {}
  
  virtual Kind kind() const override { return Kind::STACK; }
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


class SyscallTracker: public Tracker {
public:
  SyscallTracker(Tracee& tracee, PageSet& tracked_pages, State& taint_state, void *stack_begin,
		 const Memcheck& memcheck):
    Tracker(tracee), tracked_pages(tracked_pages),
    syscall_checker(tracee, taint_state, stack_begin, syscall_args, memcheck)
  {}

  virtual Kind kind() const override { return Kind::SYSCALL; }
  uint8_t *add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info,
	       const BkptCallback& pre_handler);
  
private:
  PageSet& tracked_pages;
  SyscallArgs syscall_args;
  SyscallChecker syscall_checker;
  void *brk = nullptr;

  void post_handler(uint8_t *addr);
  void pre_handler(uint8_t *addr);
};

class CallTracker: public Tracker, public Filler {
public:
  CallTracker(Tracee& tracee, uint8_t fill): Tracker(tracee), Filler(fill) {}

  virtual Kind kind() const override { return Kind::CALL; }
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

  virtual Kind kind() const override { return Kind::JCC; }
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

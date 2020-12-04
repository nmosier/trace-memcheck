#pragma once

class Memcheck;
class StackTracker;

#include <string>
#include "inst.hh"
#include "util.hh"
#include "patch.hh"

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

class Memcheck {
public:
  Memcheck(void): tracee(), stack_tracker(tracee) {}

  bool open(const char *file, char * const argv[]);
  bool open(char * const argv[]) { return open(argv[0], argv); }
  void run(void);
  
private:
  Tracee tracee;
  util::optional<Patcher> patcher;
  StackTracker stack_tracker;

  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);

  static bool stopped_trace(int status);
  static bool is_sp_dec(const Instruction& inst);
};

#pragma once

#include <sys/user.h>

#include "tracee.hh"
#include "snapshot.hh"
#include "config.hh"

class State {
public:
  State() {}
  
  template <typename InputIt>
  State(Tracee& tracee, InputIt begin, InputIt end) {
    save(tracee, begin, end);
  }

  const user_regs_struct& regs() const { return regs_; }
  const Snapshot& snapshot() const { return snapshot_; }

  template <typename InputIt>
  void save(Tracee& tracee, InputIt begin, InputIt end) {
    tracee.get_regs(regs_);
    snapshot_.save(tracee, begin, end);
  }

  State operator^(const State& other) const;
  State& operator^=(const State& other);

  bool operator==(const State& other) const;
  bool operator!=(const State& other) const { return !(*this == other); }

  State& operator|=(const State& other);

  bool similar(const State& other) const;
  
  void restore(Tracee& tracee) const;

  void zero();

  void fill(void *begin, void *end, char val) { snapshot_.fill(begin, end, val); }

  void add_zero(const Map& map) { snapshot_.add_zero(map); }
  
private:
  using reg_t = uint64_t;
  static_assert(sizeof(user_regs_struct) % sizeof(reg_t) == 0, "reg_t doesn't divide regs");
  
  user_regs_struct regs_;
  Snapshot snapshot_;

  // TODO: Combine these with out-of-class operators for user_regs_struct.
  const reg_t *regs_begin() const { return reinterpret_cast<const reg_t *>(&regs_); }
  reg_t *regs_begin() { return reinterpret_cast<reg_t *>(&regs_); }
  const reg_t *regs_end() const { return reinterpret_cast<const reg_t *>(&regs_ + 1); }
  reg_t *regs_end() { return reinterpret_cast<reg_t *>(&regs_ + 1); }
};

user_regs_struct operator^(const user_regs_struct& lhs, const user_regs_struct& rhs);
user_regs_struct& operator^=(user_regs_struct& acc, const user_regs_struct& other);
bool operator==(const user_regs_struct& lhs, const user_regs_struct& rhs);
bool operator!=(const user_regs_struct& lhs, const user_regs_struct& rhs);

#if STATE_MISMATCH_INFO
# define STATE_MISMATCH_PRED(pred)		\
  ((pred) ? true : ((std::clog << "state mismatch: " #pred "\n"), false))
#else
# define STATE_MISMATCH_PRED(pred) (pred)
#endif

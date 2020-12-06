#pragma once

#include <sys/user.h>

#include "tracee.hh"
#include "snapshot.hh"

class State {
public:
  State() {}
  
  template <typename InputIt>
  State(Tracee& tracee, InputIt begin, InputIt end) {
    save(tracee, begin, end);
  }

  template <typename InputIt>
  void save(Tracee& tracee, InputIt begin, InputIt end) {
    tracee.get_regs(regs);
    snapshot.save(tracee, begin, end);
  }

  State operator^(const State& other) const;
  State& operator^=(const State& other);

  bool operator==(const State& other) const;
  bool operator!=(const State& other) const { return !(*this == other); }
  
  void restore(Tracee& tracee) const;
  
private:
  user_regs_struct regs;
  Snapshot snapshot;
};

user_regs_struct operator^(const user_regs_struct& lhs, const user_regs_struct& rhs);
user_regs_struct& operator^=(user_regs_struct& acc, const user_regs_struct& other);
bool operator==(const user_regs_struct& lhs, const user_regs_struct& rhs);
bool operator!=(const user_regs_struct& lhs, const user_regs_struct& rhs);

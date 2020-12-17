#pragma once

#include <sys/user.h>
#include <string>
#include <iostream>
extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"
#include "snapshot.hh"
#include "config.hh"
#include "regs.hh"

// TODO: Create Register and FPRegister classes. A lot of code for managing these is lumped in here.
class State {
public:
  State() {}

  const GPRegisters& gpregs() const { return gpregs_; }
  GPRegisters& gpregs() { return gpregs_; }
  const FPRegisters& fpregs() const { return fpregs_ ;}
  FPRegisters& fpregs() { return fpregs_; }
  Snapshot& snapshot() { return snapshot_; }
  const Snapshot& snapshot() const { return snapshot_; }

  std::ostream& xmm_print(std::ostream& os, unsigned idx) const;

  template <typename InputIt>
  void save(Tracee& tracee, InputIt begin, InputIt end) {
    gpregs_.save(tracee);
    fpregs_.save(tracee);
    snapshot_.save(begin, end, tracee);
  }

  State operator^(const State& other) const;
  State& operator^=(const State& other);

  bool operator==(const State& other) const;
  bool operator!=(const State& other) const { return !(*this == other); }

  State& operator|=(const State& other);

  bool similar(const State& other) const;
  
  void restore(Tracee& tracee) const;

  void zero();
  bool is_zero() const;

  // TODO: Delete this method
  template <typename... Args>
  bool is_zero(Args&&... args) { return snapshot_.is_zero(args...); }

  template <typename... Args>
  void fill(Args&&... args) { return snapshot_.fill(args...); }

  void read(const void *begin, const void *end, void *buf) const { snapshot_.read(begin, end, buf); }
  std::string string(const void *addr) const;
  std::ostream& dump(std::ostream& os, const void *begin, const void *end) const;

private:
  GPRegisters gpregs_;
  FPRegisters fpregs_;
  Snapshot snapshot_;
};


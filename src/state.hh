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

  template <typename InputIt>
  void save(InputIt begin, InputIt end, uint8_t fill) {
    gpregs_.fill(fill);
    fpregs_.fill(fill);
    snapshot_.save(begin, end, fill);
  }

  State operator^(const State& other) const;
  State& operator^=(const State& other);

  bool operator==(const State& other) const;
  bool operator!=(const State& other) const { return !(*this == other); }

  State& operator|=(const State& other);

  State& xor_superset_inplace(const State& other) {
    gpregs() ^= other.gpregs();
    fpregs() ^= other.fpregs();
    snapshot_.xor_superset_inplace(other.snapshot());
    return *this;
  }

  State& or_superset_inplace(const State& other) {
    gpregs() |= other.gpregs();
    fpregs() |= other.fpregs();
    snapshot_.or_superset_inplace(other.snapshot());
    return *this;
  }

  State& xor_subset_inplace(const State& other) {
    gpregs() ^= other.gpregs();
    fpregs() ^= other.fpregs();
    snapshot_.xor_subset_inplace(other.snapshot());
    return *this;
  }

  State& or_subset_inplace(const State& other) {
    gpregs() |= other.gpregs();
    fpregs() |= other.fpregs();
    snapshot_.or_subset_inplace(other.snapshot());
    return *this;
  }
    
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


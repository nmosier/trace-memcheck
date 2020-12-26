#pragma once

#include <sys/user.h>
#include <string>
#include <iostream>
extern "C" {
#include <xed/xed-interface.h>
}

#include "dbi/tracee.hh"
#include "snapshot.hh"
#include "dbi/config.hh"
#include "dbi/regs.hh"

namespace memcheck {

  class State {
  public:
    State() {}

    const dbi::GPRegisters& gpregs() const { return gpregs_; }
    dbi::GPRegisters& gpregs() { return gpregs_; }
    const dbi::FPRegisters& fpregs() const { return fpregs_ ;}
    dbi::FPRegisters& fpregs() { return fpregs_; }
    Snapshot& snapshot() { return snapshot_; }
    const Snapshot& snapshot() const { return snapshot_; }

    std::ostream& xmm_print(std::ostream& os, unsigned idx) const;

    template <typename InputIt>
    void save(dbi::Tracee& tracee, InputIt begin, InputIt end) {
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
  
    void restore(dbi::Tracee& tracee) const;

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
    dbi::GPRegisters gpregs_;
    dbi::FPRegisters fpregs_;
    Snapshot snapshot_;
  };

}

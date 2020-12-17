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
  const user_fpregs_struct& fpregs() const { return fpregs_; }
  user_fpregs_struct& fpregs() { return fpregs_; }
  Snapshot& snapshot() { return snapshot_; }
  const Snapshot& snapshot() const { return snapshot_; }

  uint8_t *xmm_begin(unsigned idx) { return (uint8_t *) fpregs().xmm_space + idx * 16; }
  uint8_t *xmm_end(unsigned idx) { return (uint8_t *) fpregs().xmm_space + (idx + 1) * 16; }
  const uint8_t *xmm_begin(unsigned idx) const { return (uint8_t *) fpregs().xmm_space + idx * 16; }
  const uint8_t *xmm_end(unsigned idx) const {
    return (uint8_t *) fpregs().xmm_space + (idx + 1) * 16;
  }
  std::ostream& xmm_print(std::ostream& os, unsigned idx) const;

  template <typename InputIt>
  void save(Tracee& tracee, InputIt begin, InputIt end) {
    gpregs_.save(tracee);
    tracee.get_fpregs(fpregs_);
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
  using fpreg_t = uint64_t;
  
  GPRegisters gpregs_;
  user_fpregs_struct fpregs_;
  Snapshot snapshot_;

  // TODO: REmove once FPRegisters is written
  const fpreg_t *fpregs_begin() const { return reinterpret_cast<const fpreg_t *>(&fpregs_); }
  fpreg_t *fpregs_begin() { return reinterpret_cast<fpreg_t *>(&fpregs_); }
  const fpreg_t *fpregs_end() const { return reinterpret_cast<const fpreg_t *>(&fpregs_ + 1); }
  fpreg_t *fpregs_end() { return reinterpret_cast<fpreg_t *>(&fpregs_ + 1); }

  static unsigned long long user_regs_struct::*get_reg_ptr(xed_reg_enum_t xed_reg);
};


user_fpregs_struct operator^(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs);
user_fpregs_struct& operator^=(user_fpregs_struct& acc, const user_fpregs_struct& other);
bool operator==(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs);
bool operator!=(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs);


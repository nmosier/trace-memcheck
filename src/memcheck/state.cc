#include <algorithm>
#include <cassert>
#include <vector>
#include <cstring>

#include "state.hh"

namespace memcheck {

  State& State::operator^=(const State& other) {
    gpregs_ ^= other.gpregs_;
    fpregs_ ^= other.fpregs_;
    snapshot_ ^= other.snapshot_;
    return *this;
  }

  State State::operator^(const State& other) const {
    State res = *this;
    return res ^= other;
  }

  void State::restore(dbi::Tracee& tracee) const {
    gpregs_.restore(tracee);
    fpregs_.restore(tracee);
    snapshot_.restore(tracee);
  }

  bool State::operator==(const State& other) const {
    return gpregs_ == other.gpregs_ &&
      fpregs_ == other.fpregs_ &&
      snapshot_ == other.snapshot_;
  }

  void State::zero() {
    gpregs_.zero();
    fpregs_.zero();
    snapshot_.zero();
  }

  State& State::operator|=(const State& other) {
    assert(similar(other));
    gpregs_ |= other.gpregs_;
    fpregs_ |= other.fpregs_;
    snapshot_ |= other.snapshot_;
    return *this;
  }

  bool State::similar(const State& other) const {
    return snapshot_.similar(other.snapshot_);
  }

  std::ostream& State::dump(std::ostream& os, const void *begin, const void *end) const {
    const auto size = util::distance(begin, end);
    std::vector<char> buf(size);
    read(begin, end, buf.data());

    for (char c : buf) {
      os << std::hex << static_cast<unsigned>(c);
    }

    return os;
  }

  std::string State::string(const void *addr) const {
    std::vector<char> buf(64);
    while (true) {
      read(addr, static_cast<const char *>(addr) + buf.size(), buf.data());
      const auto it = std::find(buf.begin(), buf.end(), '\0');
      if (it != buf.end()) {
	return std::string(buf.data());
      }
      buf.resize(buf.size() * 2);
    }
  }

  bool State::is_zero() const {
    if (!gpregs_.is_zero()) { return false; }
    if (!fpregs_.is_zero()) { return false; }
    if (!snapshot().is_zero()) { return false; }
    return true;
  }

}

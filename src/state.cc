#include <algorithm>
#include <cassert>
#include <vector>
#include <cstring>

#include "state.hh"

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

// NOTE: res CAN be equal to lhs or rhs
template <template <class> class Binop>
void binop(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs, user_fpregs_struct& res) {
  using Unit = uint64_t;
  static_assert(sizeof(user_fpregs_struct) % sizeof(Unit) == 0,
		"size of unit must divide size of fpregs");
  const auto cbegin = [] (const user_fpregs_struct& fpregs) {
    return reinterpret_cast<const Unit *>(&fpregs);
  };
  const auto begin = [] (user_fpregs_struct& fpregs) { return reinterpret_cast<Unit *>(&fpregs); };
  const auto cend = [] (const auto& fpregs) {
    return reinterpret_cast<const Unit *>(&fpregs + 1);
  };
  // const auto end = [] (auto& fpregs) { return static_cast<Unit *>(&fpregs + 1); };
  std::transform(cbegin(lhs), cend(lhs), cbegin(rhs), begin(res), Binop<Unit>());
}

user_fpregs_struct operator^(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs) {
  user_fpregs_struct res;
  binop<std::bit_xor>(lhs, rhs, res);
  return res;
}
user_fpregs_struct& operator^=(user_fpregs_struct& acc, const user_fpregs_struct& other) {
  binop<std::bit_xor>(acc, other, acc);
  return acc;
}
bool operator==(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs) {
  return std::memcmp(&lhs, &rhs, sizeof(user_fpregs_struct)) == 0;
}
bool operator!=(const user_fpregs_struct& lhs, const user_fpregs_struct& rhs) {
  return !(lhs == rhs);
}

void State::restore(Tracee& tracee) const {
  gpregs_.restore(tracee);
  tracee.set_fpregs(fpregs_);
  snapshot_.restore(tracee);
}

bool State::operator==(const State& other) const {
  return gpregs_ == other.gpregs_ &&
    fpregs_ == other.fpregs_ &&
    snapshot_ == other.snapshot_;
}

bool operator==(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return memcmp(&lhs, &rhs, sizeof(user_regs_struct)) == 0;
}

bool operator!=(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return !(lhs == rhs);
}

void State::zero() {
  gpregs_.zero();
  std::fill(fpregs_begin(), fpregs_end(), 0);
  snapshot_.zero();
}

State& State::operator|=(const State& other) {
  assert(similar(other));
  gpregs_ |= other.gpregs_;
  std::transform(fpregs_begin(), fpregs_end(), other.fpregs_begin(), fpregs_begin(),
		 std::bit_or<fpreg_t>());
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
  if (!std::all_of(fpregs_begin(), fpregs_end(), [] (const auto val) { return val == 0; })) {
    return false;
  }
  if (!snapshot().is_zero()) { return false; }
  return true;
}

std::ostream& State::xmm_print(std::ostream& os, unsigned idx) const {
  auto xmm_it = xmm_end(idx);
  while (xmm_it != xmm_begin(idx)) {
    --xmm_it;
    os << std::hex << (unsigned) *xmm_it;
  }
  return os;
}

			 

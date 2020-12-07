#include <algorithm>
#include <cassert>

#include "state.hh"

user_regs_struct operator^(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  user_regs_struct res = lhs;
  return res ^= rhs;
}

user_regs_struct& operator^=(user_regs_struct& acc, const user_regs_struct& other) {
  using unit_t = unsigned long long;
  static_assert(sizeof(user_regs_struct) % sizeof(unit_t) == 0,
		"size of user_regs_struct must be multiple of unit_t");
  std::transform((const unit_t *) &acc,
		 (const unit_t *) (&acc + 1),
		 (const unit_t *) &other,
		 (unit_t *) &acc,
		 std::bit_xor<unit_t>());
  return acc;
}

State& State::operator^=(const State& other) {
  regs_ ^= other.regs_;
  snapshot_ ^= other.snapshot_;
  return *this;
}

State State::operator^(const State& other) const {
  State res = *this;
  return res ^= other;
}

void State::restore(Tracee& tracee) const {
  tracee.set_regs(regs_);
  snapshot_.restore(tracee);
}

bool State::operator==(const State& other) const {
  return STATE_MISMATCH_PRED(regs_ == other.regs_) && STATE_MISMATCH_PRED(snapshot_ == other.snapshot_);
}

bool operator==(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return memcmp(&lhs, &rhs, sizeof(user_regs_struct)) == 0;
}

bool operator!=(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return !(lhs == rhs);
}

void State::zero() {
  std::fill(regs_begin(), regs_end(), 0);
  snapshot_.zero();
}

State& State::operator|=(const State& other) {
  assert(similar(other));
  std::transform(regs_begin(), regs_end(), other.regs_begin(), regs_begin(), std::bit_or<reg_t>());
  snapshot_ |= other.snapshot_;
  return *this;
}

bool State::similar(const State& other) const {
  return snapshot_.similar(other.snapshot_);
}

#include <algorithm>

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
  regs ^= other.regs;
  snapshot ^= other.snapshot;
  return *this;
}

State State::operator^(const State& other) const {
  State res = *this;
  return res ^= other;
}

void State::restore(Tracee& tracee) const {
  tracee.set_regs(regs);
  snapshot.restore(tracee);
}

bool State::operator==(const State& other) const {
  return STATE_MISMATCH_PRED(regs == other.regs) && STATE_MISMATCH_PRED(snapshot == other.snapshot);
}

bool operator==(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return memcmp(&lhs, &rhs, sizeof(user_regs_struct)) == 0;
}

bool operator!=(const user_regs_struct& lhs, const user_regs_struct& rhs) {
  return !(lhs == rhs);
}

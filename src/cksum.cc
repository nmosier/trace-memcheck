#include "cksum.hh"

void Checksum::clear() {
  cksum_ = 0;
  list_.clear();
}

void Checksum::add(uint8_t *addr, cksum_t val) {
  cksum_ = (cksum_ >> 1 | cksum_ << 31) + val;
  list_.emplace_back(addr, val);
}

bool Checksum::operator==(const Checksum& other) const {
  return cksum_ == other.cksum_ && list_ == other.list_;
}

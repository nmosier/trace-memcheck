#pragma once

#include <vector>
#include <cassert>
#include <cstdint>

class Checksum {
public:
  using cksum_t = uint32_t;
  using List = std::vector<std::pair<uint8_t *, cksum_t>>;

  Checksum() { clear(); }
  
  cksum_t cksum() const { return cksum_; }
  const List& list() const { return list_; }

  void add(uint8_t *addr, cksum_t val);
  void clear();

  template <typename Func>
  bool diff(const Checksum& other, Func func) const {
    assert(size() == other.size());
    for (auto it = begin(), other_it = other.begin(); it != end(); ++it, ++other_it) {
      if (*it != *other_it) {
	assert(it->first == other_it->first);
	func(it->first, it->second, other_it->second);
	return true;
      }
    }
    return false;
  }

  bool operator==(const Checksum& other) const;
  
private:
  cksum_t cksum_;
  List list_;

  auto begin() const { return list_.begin(); }
  auto end() const { return list_.end(); }
  auto size() const { return list_.size(); }
};

#pragma once

#include <vector>
#include <tuple>
#include <cassert>
#include <string>
#include <cstdint>
#include "tracee.hh"
#include "settings.hh"

template <typename Cksum, typename Data>
class Checksum {
public:
  using cksum_t = Cksum;
  using List = std::vector<std::tuple<uint8_t *, cksum_t, Data>>;

  Checksum() { clear(); }
  
  cksum_t cksum() const { return cksum_; }
  const List& list() const { return list_; }

  void add(uint8_t *addr, cksum_t val, const Data& data) {
    cksum_ = (cksum_ >> 1 | cksum_ << 31) + val;
    list_.emplace_back(addr, val, data);
  }
  
  void clear() {
    cksum_ = 0;
    list_.clear();
  }

  template <typename Func>
  bool diff(const Checksum& other, Func func) const {
    for (auto it = begin(), other_it = other.begin();
	 it != end() && other_it != other.end();
	 ++it, ++other_it) {
      assert(std::get<0>(*it) == std::get<0>(*other_it));
      if (std::get<1>(*it) != std::get<1>(*other_it) ||
	  !util::implies(CKSUM_REQUIRE_DATA_EQ, std::get<2>(*it) == std::get<2>(*other_it))
	  ) {
	func(std::get<0>(*it), std::get<1>(*it), std::get<1>(*other_it),
	     std::get<2>(*it), std::get<2>(*other_it));
	return true;
      }
    }
    assert(size() == other.size());
    return false;
  }

  bool operator==(const Checksum& other) const {
    if (cksum_ != other.cksum_) {
      return false; // TODO: actually...
    }
    return std::equal(list_.begin(), list_.end(), other.list_.begin(), other.list_.end(),
		      [] (const auto& l, const auto& r) {
			return std::get<0>(l) == std::get<0>(r) && std::get<1>(l) == std::get<1>(r);
		      });
  }
  
private:
  cksum_t cksum_;
  List list_;

  auto begin() const { return list_.begin(); }
  auto end() const { return list_.end(); }
  auto size() const { return list_.size(); }
};

class FlagChecksum: public Checksum<uint32_t, std::string> {
public:
  void add(uint8_t *addr, cksum_t flags, const std::string& s = "") {
    Checksum::add(addr, flags & mask, s);
  }
  
  void add(uint8_t *addr, Tracee& tracee, const std::string& s = "") {
    add(addr, tracee.get_flags(), s);
  }
  
private:
  static constexpr cksum_t mask = 0xffffffff;
    // 0x1 | 0x4 | 0x10 | 0x40 | 0x80 | 0x800; // TODO: add?
};

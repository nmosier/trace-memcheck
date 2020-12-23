#pragma once

#include <unordered_map>
#include <array>
#include <type_traits>

#include "tracee.hh"
#include "util.hh"

// class Snapshot;
// typename Snapshot::Entry& operator^=(typename Snapshot::Entry& l, const typename Snapshot::Entry& r);

class SnapshotPage {
public:
  SnapshotPage() {}

  template <typename... Args>
  SnapshotPage(Args&&... args) { save(args...); }

  void save(const void *pageaddr, Tracee& tracee) { tracee.read(buf_, pageaddr); }
  void save(const void *pageaddr, uint8_t fill) { std::fill(buf_.begin(), buf_.end(), fill); }

  void restore(void *pageaddr, Tracee& tracee) const { tracee.write(buf_, pageaddr); }
      
  auto begin() const { return buf_.begin(); }
  auto begin() { return buf_.begin(); }
  auto end() const { return buf_.end(); }
  auto end() { return buf_.end(); }
  auto data() const { return buf_.data(); }
  auto data() { return buf_.data(); }
  
private:
  std::array<uint8_t, PAGESIZE> buf_;
};

class Snapshot {
public:
  using Entry = std::array<uint8_t, PAGESIZE>;

  Snapshot() {}

  auto size() const { return map.size() * PAGESIZE; }

  template <typename InputIt, typename... Args>
  void save(InputIt begin, InputIt end, Args&&... args) {
    // TODO: optimize
    map.clear();
    std::for_each(begin, end, [&] (const auto& pageaddr) {
      this->add(pageaddr, args...);
    });
  }

  bool operator==(const Snapshot& other) const { return map == other.map; }
  bool operator!=(const Snapshot& other) const { return !(*this == other); }

  Snapshot operator^(const Snapshot& other) const { return binop<std::bit_xor>(other); }
  Snapshot operator|(const Snapshot& other) const { return binop<std::bit_or>(other); }

  Snapshot& operator^=(const Snapshot& other) { return binop_assign<std::bit_xor>(other); }
  Snapshot& operator|=(const Snapshot& other) { return binop_assign<std::bit_or>(other); }

  Snapshot& xor_superset_inplace(const Snapshot& other) {
    return binop_superset_inplace<std::bit_xor>(other);
  }

  Snapshot& or_superset_inplace(const Snapshot& other) {
    return binop_superset_inplace<std::bit_or>(other);
  }

  Snapshot& xor_subset_inplace(const Snapshot& other) {
    return binop_subset_inplace<std::bit_xor>(other);
  }

  Snapshot& or_subset_inplace(const Snapshot& other) {
    return binop_subset_inplace<std::bit_or>(other);
  }
  
  void restore(Tracee& tracee) const;
  void zero();
  bool similar(const Snapshot& other) const; // ensure entries are at same addresses
  bool is_zero(const void *begin, const void *end) const;
  bool is_zero() const;
  void fill(void *begin, void *end, uint8_t val);
  void read(const void *begin, const void *end, void *buf) const;

  void add(void *pageaddr, uint8_t val) {
    add_fill(pageaddr, [val] (const auto pageaddr, const auto begin) {
      std::fill_n(begin, PAGESIZE, val);
    });
  }

  void add(void *pageaddr, Tracee& tracee);

  template <typename... Args>
  void add(void *begin, void *end, Args&&... args) {
    for_each_page(begin, end, [&] (const auto pageaddr) {
      add(pageaddr, args...);
    });
  }
      
  template <typename InputIt, typename... Args>
  void add(InputIt begin, InputIt end, Args&&... args) {
    for (auto it = begin; it != end; ++it) {
      add(*it, args...);
    }
  }
  
  void remove(void *pageaddr);
  void remove(void *begin, void *end);

  template <typename InputIt>
  void remove(InputIt begin, InputIt end) {
    for (auto it = begin; it != end; ++it) {
      remove(*it);
    }
  }

  template <typename Container, typename... Args>
  void update(const Container& container, Args&&... args) {
    for (auto container_it = container.begin(); container_it != container.end(); ++container_it) {
      if (map.find(*container_it) == map.end()) {
	add(*container_it, args...);
      }
    }
    for (auto map_it = map.begin(); map_it != map.end(); ++map_it) {
      if (container.find(map_it->first) == container.end()) {
	remove(map_it->first);
      }
    }
  }

  auto begin() const { return map.begin(); }
  auto begin() { return map.begin(); }
  auto end() const { return map.end(); }
  auto end() { return map.end(); }

  template <typename... Args>
  const auto& at(Args&&... args) const { return map.at(args...); }

  template <typename... Args>
  auto& at(Args&&... args) { return map.at(args...); }

  template <typename... Args>
  auto find(Args&&... args) const { return map.find(args...); }

  template <typename... Args>
  auto find(Args&&... args) { return map.find(args...); }
  
  template <typename... Args>
  bool contains(Args&&... args) const { return find(args...) != end(); }
  
private:
  using Map = std::unordered_map<void *, Entry>;
  Map map;

  // TODO: Transform entries

  template <template<class> class BinOp>
  static Entry binop(const Entry& l, const Entry& r) {
    Entry a;
    std::transform(l.begin(), l.end(), r.begin(), a.begin(), BinOp<uint8_t>());
    return a;
  }
  
  template <template<class> class BinOp>
  Snapshot binop(const Snapshot& other) const {
    assert(similar(other));
    Snapshot res;
    std::transform(map.begin(), map.end(), std::inserter(res.map, res.map.end()),
		   [&] (const auto& l) {
		     const auto& r = other.map.at(l.first);
		     return std::make_pair(l.first, binop<BinOp>(l.second, r));
		   });
    return res;
  }

  template <template<class> class BinOp>
  Snapshot& binop_assign(const Snapshot& other) {
    assert(similar(other));
    std::for_each(map.begin(), map.end(), [&] (auto&& l) {
      const auto& r = other.map.at(l.first);
      std::transform(l.second.begin(), l.second.end(), r.begin(), l.second.begin(), BinOp<uint8_t>());
    });
    return *this;
  }

  template <template<class> class Binop>
  Snapshot& binop_superset_inplace(const Snapshot& other) {
    std::for_each(other.begin(), other.end(), [this] (const auto& other_pair) {
      auto& acc = this->at(other_pair.first);
      util::binop_fixed<Binop>(acc, other_pair.second, acc);
    });
    return *this;
  }

  template <template<class> class Binop>
  Snapshot& binop_subset_inplace(const Snapshot& other) {
    std::for_each(begin(), end(), [&other] (auto& pair) {
      auto& acc = pair.second;
      const auto& other_page = other.at(pair.first);
      util::binop_fixed<Binop>(acc, other_page, acc);
    });
    return *this;
  }
  
  static size_t offset(const void *pageaddr, const void *ptr);
  
  template <typename P>
  static Entry::iterator iter(P& p, const void *ptr) {
    return std::next(p.second.begin(), offset(p.first, ptr));
  }
  template <typename P>
  static Entry::const_iterator iter(const P& p, const void *ptr) {
    return std::next(p.second.begin(), offset(p.first, ptr));
  }

  template <class Fill>
  void add_fill(void *pageaddr, Fill fill) {
    assert(is_pageaddr(pageaddr));
    if (map.find(pageaddr) == map.end()) {
      Entry entry;
      fill(pageaddr, entry.begin());
      const auto res = map.emplace(pageaddr, entry);
      assert(res.second); (void) res;
    }
  }

};

inline Snapshot::Entry& operator^=(Snapshot::Entry& l, const Snapshot::Entry& r) {
  return util::binop_fixed<std::bit_xor>(l, r, l);
}

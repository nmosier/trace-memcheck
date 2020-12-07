#pragma once

#include <valarray>
#include <vector>
#include <type_traits>
#include "maps.hh"
#include "tracee.hh"

class Snapshot {
public:
  Snapshot() {}

  template <typename InputIt>
  Snapshot(Tracee& tracee, InputIt begin, InputIt end) { save(tracee, begin, end); }

  template <typename InputIt>
  void save(Tracee& tracee, InputIt begin, InputIt end) {
    entries.clear(); // TODO: More efficient way to do this?
    for (auto it = begin; it != end; ++it) {
      assert((it->prot & PROT_WRITE) != 0);
      entries.emplace_back(*it, tracee);
    }
  }

  size_t size() const;

  bool operator==(const Snapshot& other) const;
  bool operator!=(const Snapshot& other) const { return !(*this == other); }

  Snapshot operator^(const Snapshot& other) const { return binop(other, std::bit_xor<Entry>()); }
  Snapshot operator|(const Snapshot& other) const { return binop(other, std::bit_or<Entry>()); }

  Snapshot& operator^=(const Snapshot& other) { return binop(other, std::bit_xor<Entry>()); }
  Snapshot& operator|=(const Snapshot& other) { return binop(other, std::bit_or<Entry>()); }
  

  void restore(Tracee& tracee) const;

  void zero();

  bool similar(const Snapshot& other) const; // ensure entries are at same addresses
  
private:
  struct Entry {
    using Elem = uint8_t;
    using Data = std::vector<Elem>;

    void *addr;
    Data data;

    Entry() {}
    Entry(const Map& map, Tracee& tracee) { save(map, tracee); }

    size_t size() const { return data.size(); }
    

    void save(const Map& map, Tracee& tracee);
    void restore(Tracee& tracee) const;
    void zero();
    bool similar(const Entry& other) const;

    bool operator==(const Entry& other) const;
    bool operator!=(const Entry& other) const { return !(*this == other); }

    Entry operator^(const Entry& other) const { return binop(other, std::bit_xor<Elem>()); }
    Entry operator|(const Entry& other) const { return binop(other, std::bit_or<Elem>()); }

    Entry& operator^=(const Entry& other) { return binop(other, std::bit_xor<Elem>()); }
    Entry& operator|=(const Entry& other) { return binop(other, std::bit_or<Elem>()); }

    template <class BinOp> Entry binop(const Entry& other, BinOp op) const {
      Entry res;
      res.addr = addr;
      res.data.resize(other.size());
      std::transform(data.begin(), data.end(), other.data.begin(), res.data.begin(), op);
      return res;
    }
    
    template <class BinOp> Entry& binop(const Entry& other, BinOp op) {
      std::transform(data.begin(), data.end(), other.data.begin(), data.begin(), op);
      return *this;
    }
  };

  using Entries = std::vector<Entry>;
  Entries entries;

  template <class BinOp> Snapshot binop(const Snapshot& other, BinOp op) const {
    Snapshot res;
    res.entries.resize(entries.size());
    std::transform(entries.begin(), entries.end(), other.entries.begin(), res.entries.begin(), op);
    return res;
  }
  
  template <class BinOp> Snapshot& binop(const Snapshot& other, BinOp op) {
      std::transform(entries.begin(), entries.end(), other.entries.begin(), entries.begin(), op);
      return *this;
  }
};


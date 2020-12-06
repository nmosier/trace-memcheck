#pragma once

#include <vector>
#include <type_traits>
#include "maps.hh"
#include "tracee.hh"

class Snapshot {
public:
  Snapshot() {}
  template <typename... Args> Snapshot(Args&&... args) { create(args...); }

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
  Snapshot operator^(const Snapshot& other) const;
  Snapshot& operator^=(const Snapshot& other);

  void restore(Tracee& tracee) const;
  
private:
  struct Entry {
    using Data = std::vector<uint8_t>;

    void *addr;
    Data data;

    Entry() {}
    Entry(const Map& map, Tracee& tracee) { save(map, tracee); }

    size_t size() const { return data.size(); }
    
    bool operator==(const Entry& other) const;
    bool operator!=(const Entry& other) const { return !(*this == other); }
    bool similar(const Entry& other) const;
    Entry operator^(const Entry& other) const;
    Entry& operator^=(const Entry& other);

    void save(const Map& map, Tracee& tracee);
    void restore(Tracee& tracee) const;
  };

  using Entries = std::vector<Entry>;
  Entries entries;

  bool similar(const Snapshot& other) const; // ensure entries are at same addresses
};


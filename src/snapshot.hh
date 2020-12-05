#pragma once

#include <vector>
#include "maps.hh"
#include "tracee.hh"

class Snapshot {
public:
  Snapshot() {}
  template <typename... Args> Snapshot(Args&&... args) { create(args...); }

  void create(Tracee& tracee, Maps& maps);

  size_t size() const;

  bool operator==(const Snapshot& other) const;
  bool operator!=(const Snapshot& other) const { return !(*this == other); }
  Snapshot operator^(const Snapshot& other) const;
  Snapshot& operator^=(const Snapshot& other);
  
private:
  struct Entry {
    using Data = std::vector<uint8_t>;
    
    void *addr;
    Data data;

    size_t size() const { return data.size(); }
    
    bool operator==(const Entry& other) const;
    bool operator!=(const Entry& other) const { return !(*this == other); }
    bool similar(const Entry& other) const;
    Entry operator^(const Entry& other) const;
    Entry& operator^=(const Entry& other);
  };
  
  std::vector<Entry> entries;

  bool similar(const Snapshot& other) const; // ensure entries are at same addresses
};

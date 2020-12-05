#pragma once

#include <vector>
#include "maps.hh"

class Snapshot {
public:
  Snapshot(Maps& maps);

private:
  struct Entry {
    void *addr;
    std::vector<uint8_t> data;
  };
  std::vector<Entry> entries;
};

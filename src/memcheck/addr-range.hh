#pragma once

#include <iostream>

namespace memcheck {

struct AddrRange;

std::ostream& operator<<(std::ostream& os, const AddrRange& ar);

struct AddrRange {
  const void *begin;
  const void *end;

  AddrRange(const void *begin, const void *end): begin(begin), end(end) {}
  AddrRange(const void *addr, size_t size):
    begin(addr), end(reinterpret_cast<const char *>(addr) + size) {}
  
  bool contains(const void *addr) const { return begin <= addr && addr < end; }
  bool overlaps(const AddrRange& other) const {
    return contains(other.begin) || other.contains(begin);
  }
};

}

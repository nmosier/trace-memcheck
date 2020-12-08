#pragma once

struct AddrRange {
  void *begin;
  void *end;

  AddrRange(void *begin, void *end): begin(begin), end(end) {}
  AddrRange(void *addr, size_t size): begin(addr), end(reinterpret_cast<char *>(addr) + size) {}
  
  bool contains(void *addr) const { return begin <= addr && addr < end; }
  bool overlaps(const AddrRange& other) const {
    return contains(other.begin) || other.contains(begin);
  }
};

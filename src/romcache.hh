#pragma once

#include <array>
#include <unordered_map>

#include "tracee.hh"
#include "util.hh" // for PAGESIZE

class ROMCache {
public:
  ROMCache(Tracee& tracee): tracee(tracee) {}

  void read(void *to, size_t count, const void *from);

  void invalidate(void *pageaddr) { page_map.erase(pageaddr); }
  void invalidate(void *begin, void *end) {
    for_each_page(begin, end, [this] (const auto pageaddr) { this->invalidate(pageaddr); });
  }
  template <typename Size>
  void invalidate(void *begin_, Size size) {
    const auto begin = static_cast<char *>(begin_);
    invalidate(begin, begin + size);
  }
  
private:
  using Page = std::array<char, PAGESIZE>;
  using Map = std::unordered_map<const void *, Page>;
  Tracee& tracee;
  Map page_map;

  const Page& get_page(const void *pageaddr);
};
#include <numeric>
#include <cassert>
#include <algorithm>
#include <functional>
#include "snapshot.hh"
#include "state.hh"

bool Snapshot::similar(const Snapshot& other) const {
  if (map.size() != other.map.size()) {
    return false;
  }
  return std::all_of(map.begin(), map.end(), [&] (const auto& p) {
    return other.map.find(p.first) != other.map.end();
  });
}

void Snapshot::restore(Tracee& tracee) const {
  for (const auto& p : map) {
    auto addr = p.first;
    const auto& data = p.second;
    tracee.write(data, addr);
  }
}

void Snapshot::zero() {
  std::for_each(map.begin(), map.end(), [] (auto&& p) {
    auto& data = p.second;
    std::fill(data.begin(), data.end(), 0);
  });
}

size_t Snapshot::offset(const void *pageaddr, const void *ptr) {
  const ptrdiff_t offset_raw = static_cast<const char *>(ptr) - static_cast<const char *>(pageaddr);
  return std::min<size_t>(std::max<ptrdiff_t>(offset_raw, 0), PAGESIZE);
}

// TODO: Much more intelligent way to do this.
bool Snapshot::is_zero(const void *begin, const void *end) const {
  return std::all_of(map.begin(), map.end(), [begin, end] (const auto& p) {
    const auto begin_it = iter(p, begin);
    const auto end_it = iter(p, end);
    return std::all_of(begin_it , end_it, [] (auto elem) { return elem == 0; }); // TODO: std::bind
  });
}

void Snapshot::fill(void *begin, void *end, Elem val) {
  std::for_each(map.begin(), map.end(), [begin, end, val] (auto& p) {
    const auto begin_it = iter(p, begin);
    const auto end_it = iter(p, end);
    std::fill(begin_it, end_it, val);
  });
}

void Snapshot::remove(void *pageaddr) {
  map.erase(pageaddr);
}

void Snapshot::add(void *pageaddr, Tracee& tracee) {
  add_fill(pageaddr, [&] (const auto pageaddr, const auto begin) {
    tracee.read(&*begin, PAGESIZE, pageaddr);
  });
}

void Snapshot::remove(void *begin, void *end) {
  for (size_t i = 0; i < pagecount(begin, end); ++i) {
    remove(pageidx(begin, i));
  }
}

#include <numeric>
#include <sys/uio.h>
#include <cassert>
#include <algorithm>
#include <functional>
#include <set>
#include "snapshot.hh"
#include "state.hh"
#include "settings.hh"

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

void Snapshot::fill(void *begin, void *end, uint8_t val) {
  std::for_each(map.begin(), map.end(), [begin, end, val] (auto& p) {
    const auto begin_it = iter(p, begin);
    const auto end_it = iter(p, end);
    std::fill(begin_it, end_it, val);
  });
}

void Snapshot::remove(void *pageaddr) {
  // NOTE: Also works if pageaddr not in map.
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

void Snapshot::read(const void *begin_, const void *end_, void *buf_) const {
  const auto begin = reinterpret_cast<const uint8_t *>(begin_);
  const auto end = reinterpret_cast<const uint8_t *>(end_);
  const auto buf = reinterpret_cast<uint8_t *>(buf_);

  const uint8_t *it = begin;
  uint8_t *buf_it = buf;

  while (it != end) {
    const uint8_t *pageaddr = pagealign(it);
    const Entry& entry = map.at(const_cast<uint8_t *>(pageaddr));
    const auto count = std::min<size_t>(end - it, entry.size());
    buf_it = std::copy_n(entry.begin() + (it - pageaddr), count, buf_it);
    it += count;
  }
}

// TODO: debugging screwed this up
bool Snapshot::is_zero() const {
  return std::all_of(map.begin(), map.end(), [] (const auto& pair) {
    const auto& entry = pair.second;
    return std::all_of(entry.begin(), entry.end(), [&] (const auto& elem) {
#if 1
      if (elem != 0) {
	*g_conf.log << (void *) ((char *) pair.first + (&elem - entry.data())) << "\n";
      }
#endif
      return elem == 0;
    });
  });
}

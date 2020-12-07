#include <numeric>
#include <cassert>
#include <algorithm>
#include <functional>
#include "snapshot.hh"
#include "state.hh"

bool Snapshot::Entry::operator==(const Entry& other) const {
  return STATE_MISMATCH_PRED(addr == other.addr) && STATE_MISMATCH_PRED(data == other.data);
}

bool Snapshot::operator==(const Snapshot& other) const {
  if (entries.size() != other.entries.size()) {
    return false;
  }

  for (size_t i = 0; i < entries.size(); ++i) {
    if (entries[i] != other.entries[i]) {
      return false;
    }
  }

  return true;
}

size_t Snapshot::size() const {
  return std::accumulate(entries.begin(), entries.end(), 0, [] (auto acc, const auto& entry) {
    return acc + entry.size();
  });
}

bool Snapshot::Entry::similar(const Entry& other) const {
  return addr == other.addr && size() == other.size();
}

bool Snapshot::similar(const Snapshot& other) const {
  if (entries.size() != other.entries.size()) {
    return false;
  }

  for (size_t i = 0; i < entries.size(); ++i) {
    if (!entries[i].similar(other.entries[i])) {
      return false;
    }
  }

  return true;
}

void Snapshot::restore(Tracee& tracee) const {
  for (const Entry& entry : entries) {
    entry.restore(tracee);
  }
}

void Snapshot::Entry::restore(Tracee& tracee) const {
  tracee.write(data.data(), data.size(), addr);
}

void Snapshot::Entry::save(const Map& map, Tracee& tracee) {
  addr = map.begin;
  data.resize(map.size());
  tracee.read(data.data(), map.size(), map.begin);
}

void Snapshot::zero() {
  std::for_each(entries.begin(), entries.end(), std::bind(&Entry::zero, std::placeholders::_1));
}

void Snapshot::Entry::zero() {
  std::fill(data.begin(), data.end(), 0);
}

bool Snapshot::is_zero(const void *begin, const void *end) const {
  return std::all_of(entries.begin(), entries.end(),
		     std::bind(&Entry::is_zero, std::placeholders::_1, begin, end));
}

size_t Snapshot::Entry::offset(const void *ptr) const {
  return std::min<size_t>
    (std::max<ptrdiff_t>(static_cast<const char *>(ptr) - static_cast<const char *>(addr), 0),
     size());
}

Snapshot::Entry::Data::const_iterator Snapshot::Entry::iter(const void *ptr) const {
  return std::next(data.begin(), offset(ptr));
}

Snapshot::Entry::Data::iterator Snapshot::Entry::iter(void *ptr) {
  return std::next(data.begin(), offset(ptr));
}

bool Snapshot::Entry::is_zero(const void *begin, const void *end) const {
  return std::all_of(iter(begin), iter(end),
		     std::bind(std::equal_to<char>(), std::placeholders::_1, 0));
}

void Snapshot::Entry::fill(void *begin, void *end, char val) {
  return std::fill(iter(begin), iter(end), val);
}

void Snapshot::fill(void *begin, void *end, char val) {
  std::for_each(entries.begin(), entries.end(), std::bind(&Entry::fill, std::placeholders::_1,
							  begin, end, val));
}

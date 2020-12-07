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

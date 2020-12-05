#include <numeric>
#include <cassert>
#include <algorithm>
#include "snapshot.hh"

void Snapshot::create(Tracee& tracee, Maps& maps) {
  std::vector<Map> map_list;
  maps.get_maps(std::back_inserter(map_list));

  for (const Map& map : map_list) {
    if ((map.prot & PROT_WRITE)) {
      Entry entry;
      entry.data.resize(map.size());
      tracee.read(entry.data.data(), entry.data.size(), map.begin);
      entries.push_back(entry);
    }
  }
}

bool Snapshot::Entry::operator==(const Entry& other) const {
  return addr == other.addr && data == other.data;
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

Snapshot::Entry Snapshot::Entry::operator^(const Entry& other) const {
  assert(similar(other));
  Entry res;
  res.data.resize(data.size());
  std::transform(data.begin(), data.end(), other.data.begin(), res.data.begin(),
		 std::bit_xor<Data::value_type>());
  return res;
}

Snapshot::Entry& Snapshot::Entry::operator^=(const Entry& other) {
  assert(similar(other));
  std::transform(data.begin(), data.end(), other.data.begin(), data.begin(),
		 std::bit_xor<Data::value_type>());
  return *this;
}

Snapshot Snapshot::operator^(const Snapshot& other) const {
  assert(similar(other));
  Snapshot res;
  res.entries.resize(entries.size());
  std::transform(entries.begin(), entries.end(), other.entries.begin(), res.entries.begin(),
		 std::bit_xor<Entry>());
  return res;
}

Snapshot& Snapshot::operator^=(const Snapshot& other) {
  assert(similar(other));
  std::transform(entries.begin(), entries.end(), other.entries.begin(), entries.begin(),
		 std::bit_xor<Entry>());
  return *this;
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

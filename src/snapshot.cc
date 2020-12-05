#include "snapshot.hh"

Snapshot::Snapshot(Tracee& tracee, Maps& maps) {
  std::vector<Map> map_list;
  maps.get_maps(std::back_inserter(map_list));

  for (const Map& map : map_list) {
    if ((map.prot & PROT_WRITE)) {
      Entries entry;
      entry.data.resize(map.size());
      tracee.read(entry.data.data(), entry.data.size(), map.begin);
      entries.push_back(entry);
    }
  }
}

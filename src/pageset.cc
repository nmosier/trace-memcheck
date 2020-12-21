#include "pageset.hh"

void PageSet::add_maps(Maps& maps_gen) {
  std::vector<Map> tmp_maps;
  maps_gen.get_maps(util::conditional_inserter<decltype(tmp_maps)>
		    (std::inserter(tmp_maps, tmp_maps.end()),
		     [] (const auto& map) {
		      return (map.prot & PROT_WRITE) != 0;
		    }));
  std::for_each(tmp_maps.begin(), tmp_maps.end(), [&] (const auto& map) {
    for_each_page(map.begin, map.end, [this] (const auto pageaddr) { this->track_page(pageaddr); });
  });
}

void PageSet::track_page(void *pageaddr) {
  assert(is_pageaddr(pageaddr));
  const auto res = set.insert(pageaddr);
  assert(res.second); (void) res;
}

void PageSet::track_range(void *begin, void *end) {
  for_each_page(begin, end, [this] (void *pageaddr) { track_page(pageaddr); });
}

void PageSet::untrack_page(void *pageaddr) {
  set.erase(pageaddr);
}

void PageSet::untrack_range(void *begin, void *end) {
  for_each_page(begin, end, [this] (void *pageaddr) { untrack_page(pageaddr); });    
}

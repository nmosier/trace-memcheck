#include "pageset.hh"

PageInfo::Tier PageInfo::tier() const {
  if ((flags_ & MAP_SHARED)) {
    assert(cur_prot_ == PROT_NONE);
    return Tier::SHARED;
  } else if (!(orig_prot_ & PROT_WRITE)) {
    /* NOTE: This includes a page with any of the following permissions:
     *  PROT_NONE
     *  PROT_READ
     *  PROT_READ | PROT_EXEC
     */
    assert(orig_prot_ == cur_prot_);
    return Tier::RDONLY;
  } else if ((cur_prot_ & PROT_WRITE)) {
    assert(orig_prot_ == cur_prot_);
    return Tier::RDWR_UNLOCKED;
  } else {
    assert(cur_prot_ == (orig_prot_ & ~PROT_WRITE));
    return Tier::RDWR_LOCKED;
  }
}

void PageInfo::prot(int orig_prot, int cur_prot) {
  orig_prot_ = orig_prot;
  cur_prot_ = cur_prot;
}

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

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
  std::vector<::Map> tmp_maps;
  maps_gen.get_maps(std::back_inserter(tmp_maps));
  std::for_each(tmp_maps.begin(), tmp_maps.end(), [&] (const auto& map) {
    PageInfo page_info{map.flags, map.prot, map.prot};
    for_each_page(map.begin, map.end, [this, &page_info] (const auto pageaddr) {
      this->track_page(pageaddr, page_info);
    });
  });
}

void PageSet::untrack_page(void *pageaddr) {
  map.erase(pageaddr);
}

void PageSet::untrack_range(void *begin, void *end) {
  for_each_page(begin, end, [this] (void *pageaddr) { untrack_page(pageaddr); });    
}

void PageInfo::lock(void *pageaddr, Tracee& tracee, int mask) {
  assert(tier() == Tier::RDWR_UNLOCKED);
  
  assert(orig_prot_ == cur_prot_);
  assert((orig_prot_ & mask) == mask);
  cur_prot_ = orig_prot_ & ~mask;
  tracee.syscall(Syscall::MPROTECT, (uintptr_t) pageaddr, PAGESIZE, cur_prot_);

  assert(tier() == Tier::RDWR_LOCKED);
}

void PageInfo::unlock(void *pageaddr, Tracee& tracee) {
  assert(tier() == Tier::RDWR_LOCKED);
  
  tracee.syscall(Syscall::MPROTECT, (uintptr_t) pageaddr, PAGESIZE, orig_prot_);
  cur_prot_ = orig_prot_;
  ++count_;
  
  assert(tier() == Tier::RDWR_UNLOCKED);
}

void PageSet::lock_top_counts(unsigned n, Tracee& tracee, int mask) {
  /* get map of counts to page map iterators */
  std::multimap<unsigned, Map::iterator> counts_map;

  for (auto it = begin(); it != end(); ++it) {
    counts_map.emplace(it->second.count(), it);
  }
  
  /* find top N */
  auto rit = counts_map.rbegin();
  for (unsigned i = 0; i < n && rit != counts_map.rend(); ++i, ++rit) {
    const auto pageaddr = rit->second->first;
    PageInfo& page_info = rit->second->second;
    if (page_info.tier() == PageInfo::Tier::RDWR_LOCKED) {
      page_info.unlock(pageaddr, tracee);
    }
  }
  for (; rit != counts_map.rend(); ++rit) {
    const auto pageaddr = rit->second->first;
    PageInfo& page_info = rit->second->second;
    if (page_info.tier() == PageInfo::Tier::RDWR_UNLOCKED) {
      page_info.lock(pageaddr, tracee, mask);
    }
  }
}

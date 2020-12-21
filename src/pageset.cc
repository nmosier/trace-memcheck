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
  assert(orig_prot_ == cur_prot_);
  assert((orig_prot_ & mask) == mask);
  cur_prot_ = orig_prot_ & ~mask;
  tracee.syscall(Syscall::MPROTECT, (uintptr_t) pageaddr, PAGESIZE, cur_prot_);
}

void PageInfo::unlock(void *pageaddr, Tracee& tracee) {
  tracee.syscall(Syscall::MPROTECT, (uintptr_t) pageaddr, PAGESIZE, orig_prot_);
  cur_prot_ = orig_prot_;
}

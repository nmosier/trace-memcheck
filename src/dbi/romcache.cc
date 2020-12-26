#include <algorithm>

#include "romcache.hh"
#include "util.hh"

namespace dbi {

  const ROMCache::Page& ROMCache::get_page(const void *pageaddr) {
    auto it = page_map.find(pageaddr);
    if (it == page_map.end()) {
      const auto res = page_map.emplace(pageaddr, Page());
      assert(res.second);
      it = res.first;
      Page& newpage = it->second;
      tracee.read(newpage.begin(), newpage.end(), pageaddr);
    }
    return it->second;
  }

  void ROMCache::read(void *to_, size_t count_, const void *from_) {
    auto to = static_cast<char *>(to_);
    auto from = static_cast<const char *>(from_);
    auto count = count_;
  
    while (count > 0) {
      const auto pageaddr = pagealign(from);
      const auto& page = get_page(pageaddr);
      const auto cur_count = std::min<size_t>(count, (pageaddr + PAGESIZE) - from);
      std::copy_n(page.data() + (from - pageaddr), cur_count, to);
      count -= cur_count;
      to += cur_count;
      from += cur_count;
    }

    assert(static_cast<char *>(to_) + count_ == to);
    assert(static_cast<const char *>(from_) + count_ == from);
  }

}

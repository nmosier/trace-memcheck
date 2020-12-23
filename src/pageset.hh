#pragma once

class PageSet;

#include <unordered_map>
#include <list>
#include "maps.hh"
#include "state.hh"

class PageInfo {
public:
  enum class Tier {SHARED, RDONLY, RDWR_LOCKED, RDWR_UNLOCKED};

  Tier tier() const { return tier_; }
  void prot(int orig_prot, int cur_prot);

  PageInfo(int flags, int orig_prot, int cur_prot):
    flags_(flags),
    orig_prot_(orig_prot),
    cur_prot_(cur_prot)
  {
    recompute_tier();
  }

  int flags() const { return flags_; }

  void lock(void *pageaddr, Tracee& tracee, int mask);
  void unlock(void *pageaddr, Tracee& tracee);

  int orig_prot() const { return orig_prot_; }

  auto count() const { return count_; }
  
private:
  Tier tier_;
  int flags_;
  int orig_prot_;
  int cur_prot_;
  unsigned count_ = 0;

  void recompute_tier();
};



class PageSet {
public:
  using Map = std::unordered_map<void *, PageInfo>;
  
  PageSet() {} 
  
  void add_maps(Maps& maps_gen);

  void track_page(void *pageaddr, const PageInfo& page_info) {
    if ((page_info.flags() & MAP_FIXED)) {
      const auto it = map.find(pageaddr);
      if (it != map.end()) {
	it->second = page_info;
	return;
      }
    }
    assert(is_pageaddr(pageaddr));
    const auto res = map.emplace(pageaddr, page_info);
    assert(res.second); (void) res;
  }

  void track_range(void *begin, void *end, const PageInfo& page_info) {
    for_each_page(begin, end, [this, &page_info] (void *pageaddr) {
      track_page(pageaddr, page_info);
    });
  }
  
  void untrack_page(void *pageaddr);
  void untrack_range(void *begin, void *end);

  void update_page(void *pageaddr, int newprot) {
    map.at(pageaddr).prot(newprot, newprot);
  }
  
  void update_range(void *begin, void *end, int newprot) {
    for_each_page(begin, end, [this, newprot] (const auto pageaddr) {
      this->update_page(pageaddr, newprot);
    });
  }
  
  auto begin() const { return map.begin(); }
  auto begin() { return map.begin(); }
  auto end() const { return map.end(); }
  auto end() { return map.end(); }
  auto size() const { return map.size(); }

  template <typename... Args>
  Map::const_iterator find(Args&&... args) const { return map.find(args...); }

  template <typename... Args>
  Map::iterator find(Args&&... args) { return map.find(args...); }
  
  template <typename... Args>
  bool contains(Args&&... args) const { return find(args...) != end(); }

  template <typename... Args>
  const auto& at(Args&&... args) const { return map.at(args...); }

  template <typename... Args>
  auto& at(Args&&... args) { return map.at(args...); }

  void lock_top_counts(unsigned n, Tracee& tracee, int mask);
  
private:
  Map map;
};

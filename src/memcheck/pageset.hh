#pragma once

class PageSet;

#include <unordered_map>
#include <list>
#include "maps.hh"
#include "state.hh"
#include "syscaller.hh"

namespace memcheck {

  class PageInfo {
  public:
    enum class Tier {SHARED, RDONLY, RDWR_LOCKED, RDWR_UNLOCKED};

    void prot(int orig_prot, int cur_prot) {
      orig_prot_ = orig_prot;
      cur_prot_ = cur_prot;
      recompute_tier();
    }

    PageInfo(int flags, int orig_prot, int cur_prot):
      flags_(flags),
      orig_prot_(orig_prot),
      cur_prot_(cur_prot)
    {
      recompute_tier();
    }

    int flags() const { return flags_; }

    int orig_prot() const { return orig_prot_; }

    auto count() const { return count_; }
  
  private:
    Tier tier_;
    int flags_;
    int orig_prot_;
    int cur_prot_;
    unsigned count_ = 0;

    void recompute_tier();

    void lock(void *pageaddr, dbi::Tracee& tracee, const Syscaller& sys, int mask);
    void unlock(void *pageaddr, dbi::Tracee& tracee, const Syscaller& sys);

    Tier tier() const { return tier_; }
    
    friend class PageSet;
  };



  class PageSet {
  public:
    using Map = std::unordered_map<void *, PageInfo>;
  
    PageSet() {}

    template <typename... Args>
    PageSet(Args&&... args) { open(std::forward<Args>(args)...); }

    bool good() const { return sys.good(); }
    void open(const Syscaller& sys) { this->sys = sys; }
    void close() { sys.close(); }
  
    void add_maps(Maps& maps_gen);

    void track_page(void *pageaddr, const PageInfo& page_info) {
      if ((page_info.flags() & MAP_FIXED)) {
	const auto it = map.find(pageaddr);
	if (it != map.end()) {
	  it->second = page_info;
	  return;
	}
      }
      assert(dbi::is_pageaddr(pageaddr));
      const auto res = map.emplace(pageaddr, page_info);
      assert(res.second); (void) res;
    }

    void track_range(void *begin, void *end, const PageInfo& page_info) {
      dbi::for_each_page(begin, end, [this, &page_info] (void *pageaddr) {
	track_page(pageaddr, page_info);
      });
    }
  
    void untrack_page(void *pageaddr);
    void untrack_range(void *begin, void *end);

    void update_page(void *pageaddr, int newprot) {
      map.at(pageaddr).prot(newprot, newprot);
    }
  
    void update_range(void *begin, void *end, int newprot) {
      dbi::for_each_page(begin, end, [this, newprot] (const auto pageaddr) {
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

#if 1
    template <typename... Args>
    const auto& at(Args&&... args) const { return map.at(args...); }

    template <typename... Args>
    auto& at(Args&&... args) { return map.at(args...); }
#endif

    void lock_top_counts(unsigned n, dbi::Tracee& tracee, int mask);

    void lock(Map::value_type& it, dbi::Tracee& tracee, int mask) {
      it.second.lock(it.first, tracee, sys, mask);
    }

    void unlock(Map::value_type& it, dbi::Tracee& tracee) {
      it.second.unlock(it.first, tracee, sys);
    }

    PageInfo::Tier tier(const Map::value_type& it) const {
      return it.second.tier();
    }
  
  private:
    Map map; // pageaddr -> page info
    Syscaller sys;
  };

}

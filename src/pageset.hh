#pragma once

class PageSet;

#include <unordered_set>
#include <list>
#include "maps.hh"
#include "state.hh"

class PageInfo {
public:
  enum class Tier {SHARED, RDONLY, RDWR_LOCKED, RDWR_UNLOCKED};

  Tier tier() const;
  void prot(int orig_prot, int cur_prot);

  PageInfo(int flags, int orig_prot, int cur_prot):
    flags_(flags),
    orig_prot_(orig_prot),
    cur_prot_(cur_prot)
  {}
  
private:
  int flags_;
  int orig_prot_;
  int cur_prot_;
};

class PageSet {
public:
  using Set = std::unordered_set<void *>;
  
  PageSet() {} 
  
  void add_maps(Maps& maps_gen);
  void track_page(void *pageaddr);
  void track_range(void *begin, void *end);
  void untrack_page(void *pageaddr);
  void untrack_range(void *begin, void *end);

  Set::const_iterator begin() const { return set.begin(); }
  Set::const_iterator end() const { return set.end(); }
  Set::size_type size() const { return set.size(); }
  template <typename... Args>
  Set::const_iterator find(Args&&... args) const { return set.find(args...); }
  template <typename... Args>
  bool contains(Args&&... args) const { return find(args...) != end(); }
  
private:
  Set set;
};

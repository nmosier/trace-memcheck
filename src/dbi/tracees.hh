#pragma once

#include <list>

#include "tracee.hh"

namespace dbi {
  
  class TraceeInfo {
  public:
    TraceeInfo(bool suspended): suspended_(suspended) {}

    bool suspended() const { return suspended_; }
    void suspended(bool newval) { suspended_ = newval; }
    
  private:
    bool suspended_;
  };
  
  struct TraceePair {
    Tracee tracee;
    TraceeInfo info;

    TraceePair(Tracee&& tracee, const TraceeInfo& info):
      tracee(tracee),
      info(info)
    {}
  };

  using Tracees = std::list<TraceePair>;
  
}

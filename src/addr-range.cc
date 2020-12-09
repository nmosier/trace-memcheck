#include "addr-range.hh"

std::ostream& operator<<(std::ostream& os, const AddrRange& ar) {
  return os << "[" << ar.begin << ", " << ar.end << ")";
}

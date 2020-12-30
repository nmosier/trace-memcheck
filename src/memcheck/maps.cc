#include <fcntl.h>
#include <sstream>
#include <cstdio>
#include <cstdlib>
#include <sys/mman.h>
#include <unistd.h>
#include <sys/stat.h>
#include <array>
#include "maps.hh"

namespace memcheck {

  void Maps::open(pid_t pid) {
    std::stringstream path;
    path << "/proc/" << pid << "/maps";
    this->path = path.str();
  }

  void Maps::close() {}

  Maps::~Maps() {}

  void Map::init(char *s) {
    const char *space = " \t";
    const char *begin_s = strsep(&s, "-");
    const char *end_s = strsep(&s, space);
    const char *prot_s = strsep(&s, space);
    for (auto i = 0; i < 3; ++i) {
      ::strsep(&s, space);
    }

    for (; *s != '\0' && std::strchr(space, *s) != nullptr; ++s) {}
    if (*s == '\n') {
      desc = "";
    } else {
      desc = ::strsep(&s, "\n");
    }

    std::stringstream begin_ss(begin_s);
    begin_ss >> begin;

    std::stringstream end_ss(end_s);
    end_ss >> end;

    prot = PROT_NONE;
    if (*prot_s++ == 'r') {
      prot |= PROT_READ;
    }
    if (*prot_s++ == 'w') {
      prot |= PROT_WRITE;
    }
    if (*prot_s++ == 'x') {
      prot |= PROT_EXEC;
    }

    flags = 0;
    switch (*prot_s++) {
    case 's':
      flags |= MAP_SHARED;
      break;
    case 'p':
      flags |= MAP_PRIVATE;
      break;
    default:
      abort();
    }
  }

  void Map::init(const char *s) {
    char *s_ = strdup(s);
    if (s_ == nullptr) {
      throw std::string("strdup: ") + std::strerror(errno); 
    }
    init(s_);
    free(s_);
  }

  std::ostream& operator<<(std::ostream& os, const Map& map) {
    os << map.begin << "-" << map.end << " ";
    static const std::pair<int, char> prot[3] = {{PROT_READ, 'r'},
						 {PROT_WRITE, 'w'},
						 {PROT_EXEC, 'x'}};
    for (auto p : prot) {
      os << ((map.prot & p.first) ? p.second : '-');
    }
    return os;
  }

  bool Map::overlaps(const Map& other) const {
    if (begin <= other.begin && other.begin < end) {
      return true;
    } else if (other.begin <= begin && begin < other.end) {
      return true;
    } else {
      return false;
    }
  }

}

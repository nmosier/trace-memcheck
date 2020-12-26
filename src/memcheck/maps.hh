#pragma once

#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <vector>
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <string>

namespace memcheck {

struct Map {
  void *begin;
  void *end;
  int prot; // see mmap(2) or mprotect(2)
  int flags;
  std::string desc;

  Map(char *s) { init(s); }
  Map(const char *s) { init(s); }
  Map(const std::string& s) { init(s.c_str()); }
  Map(void *begin, void *end, int prot, int flags, const std::string& desc):
    begin(begin), end(end), prot(prot), flags(flags), desc(desc) {}

  size_t size() const { return (char *) end - (char *) begin; }
  bool has_addr(const void *addr) const { return begin <= addr && addr < end; }

  bool overlaps(const Map& other) const;
  
private:
  Map() {}
  void init(char *s);
  void init(const char *s);
};

std::ostream& operator<<(std::ostream& os, const Map& map);

class Maps {
public:
  Maps() {}
  Maps(pid_t pid) { open(pid); }
  ~Maps();

  void open(pid_t pid);
  void close();
  
  template <typename OutputIt>
  OutputIt get_maps(OutputIt out_it) {
    std::ifstream ifs;
    ifs.open(path);

    std::string line;
    while (std::getline(ifs, line, '\n')) {
      *out_it++ = Map(line);
    }
    
    return out_it;
  }

private:
  std::string path;

  Map get_map();
};

}

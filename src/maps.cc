#include <fcntl.h>
#include <sstream>
#include <cstdio>
#include <cstdlib>
#include <sys/mman.h>
#include <unistd.h>
#include <sys/stat.h>
#include "maps.hh"

Maps::Maps(pid_t pid): pid(pid) {
  std::stringstream path;
  path << "/proc/" << pid << "/maps";
  if ((fd = open(path.str().c_str(), O_RDONLY)) < 0) {
    std::perror("open");
    abort();
  }
}

Maps::~Maps() {
  if (close(fd) < 0) {
    std::perror("close");
    abort();
  }
}

Map::Map(char *s) {
  const char *begin_s = strsep(&s, "-");
  const char *end_s = strsep(&s, " \t");
  const char *prot_s = strsep(&s, " \t");

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
}


#pragma once

#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <vector>
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <iostream>

struct Map {
  void *begin;
  void *end;
  int prot; // see mmap(2) or mprotect(2)

  Map(char *s);

  size_t size() const { return (char *) end - (char *) begin; }
};

class Maps {
public:
  Maps(): fd(-1) {}
  Maps(pid_t pid) { open(pid); }
  ~Maps();

  void open(pid_t pid);
  void close();
  
  template <typename OutputIt>
  OutputIt get_maps(OutputIt out_it) {
    std::vector<char> buf;
    size_t bufsize = 0x1000;
    ssize_t bytes;
    while (true) {
      buf.resize(bufsize);
      bytes = pread(fd, buf.data(), bufsize, 0);
      if (bytes < 0) {
	perror("pread");
	abort();
      } else if (bufsize == (size_t) bytes) {
	continue;
      } else {
	break;
      }
    }

    buf[bytes] = '\0';
    char *s = buf.data();
    char *line;
    while ((line = strsep(&s, "\n")) != nullptr && *line != '\0') {
      *out_it++ = Map(line);
    }
    
    return out_it;
  }

private:
  int fd;

  Map get_map();
};

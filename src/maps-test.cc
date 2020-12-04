#include <iostream>
#include <sys/mman.h>
#include "maps.hh"

int main(void) {
  const pid_t pid = getpid();
  Maps maps(pid);

  std::cout << pid << std::endl;

  std::vector<Map> map_list;
  maps.get_maps(std::inserter(map_list, map_list.end()));

  for (const auto& map : map_list) {
    std::cout << map.begin << "-" << map.end << " "
	      << ((map.prot & PROT_READ) ? 'r' : '-')
	      << ((map.prot & PROT_WRITE) ? 'w' : '-')
	      << ((map.prot & PROT_EXEC) ? 'x' : '-')
	      << std::endl;
  }

  return 0;
}

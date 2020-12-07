#include <iostream>
#include <sys/mman.h>
#include "maps.hh"
#include "util.hh"

int main(void) {
  const pid_t pid = getpid();
  Maps maps(pid);

  std::cout << pid << std::endl;
  std::cout << &maps << std::endl;

  std::vector<Map> map_list;
  maps.get_maps(util::conditional_inserter<std::vector<Map>>(std::inserter(map_list, map_list.end()),
					   [] (const Map& map) -> bool {
					     return (map.prot & PROT_WRITE);
					   }));

  for (const auto& map : map_list) {
    std::cout << map.begin << "-" << map.end << " "
	      << ((map.prot & PROT_READ) ? 'r' : '-')
	      << ((map.prot & PROT_WRITE) ? 'w' : '-')
	      << ((map.prot & PROT_EXEC) ? 'x' : '-')
	      << std::endl;
  }

  return 0;
}

#include <iostream>

#include "shared-util.hh"

int mul(int val) { return val * 2; }

int main() {
  std::vector<int> vec {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  const auto container = util::make_transform_container<int>(vec, [] (auto i) {
    return -i;
  });
  
  for (const auto& val : container) {
    std::cout << val << "\n";
  }
  
  return 0;
}

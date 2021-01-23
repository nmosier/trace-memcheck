#include <iostream>

#include "shared-util.hh"

int main() {
  std::vector<int> vec = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  auto even_vec = util::make_conditional_container(vec, [] (int x) {
    return x % 2 == 0;
  });

  std::cout << "evens: ";
  for (int i : even_vec) {
    std::cout << i << " ";
  }
  std::cout << "\n";

  const auto sq_vec = util::make_transform_container<int>(even_vec, [] (int x) -> int {
    return x * x;
  });
  std::cout << "even squares: ";
  for (int i : sq_vec) {
    std::cout << i << " ";
  }
  std::cout << "\n";

  std::cout << "add one: ";
  for (int& i : even_vec) {
    ++i;
  }
  for (int i : even_vec) {
    std::cout << i << " ";
  }
  std::cout << "\n";

#if 0
  const auto sq_even_vec =
    util::make_transform_container<int>(util::make_conditional_container(vec, [] (int x) {
      return x % 2 == 0;
    }), [] (int x) { return x * x; });
  std::cout << "sq even vec: ";
  for (int i : sq_even_vec) {
    std::cout << i << " ";
  }
  std::cout << "\n";
#endif
  
  return 0;
}

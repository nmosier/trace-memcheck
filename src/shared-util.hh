#pragma once

#include <type_traits>
#include <algorithm>

namespace util {

  template <typename Ret, typename Func, typename It>
  class transform_iterator {
  private:
    using Traits = std::iterator_traits<It>;
  public:
    using difference_type = typename Traits::difference_type;
    using value_type = typename Traits::value_type;
    using pointer = typename Traits::pointer;
    using reference = typename Traits::reference;
    using iterator_category = typename Traits::iterator_category;

    transform_iterator(It it, Func func): it(it), func(func) {}

    transform_iterator& operator++() { ++it; return *this; }
    transform_iterator& operator++(int i) { return ++*this; }
    bool operator==(const transform_iterator& other) const { return it == other.it; }
    bool operator!=(const transform_iterator& other) const { return !(*this == other); }
    Ret operator*() const { return func(*it); }
      
  private:
    It it;
    Func func;
  };

  template <typename Ret, typename Func, typename It>
  transform_iterator<Ret, Func, It> make_transform_iterator(It it, Func func) {
    return transform_iterator<Ret, Func, It>(it, func);
  }

  template <typename Ret, typename Func, typename Container>
  class transform_container {
  public:
    transform_container(Container& container, Func func): container(container), func(func) {}
    auto begin() const { return make_transform_iterator<Ret>(container.begin(), func); }
    auto end() const { return make_transform_iterator<Ret>(container.end(), func); }
  private:
    Container& container;
    Func func;
  };

  template <typename Ret, typename Func, typename Container>
  transform_container<Ret, Func, Container> make_transform_container(Container& container,
								     Func func) {
    return transform_container<Ret, Func, Container>(container, func);
  }  

}

#pragma once

#include <type_traits>
#include <algorithm>
#include <cassert>

namespace util {

  template <typename Ret, typename Func, typename It>
  class transform_iterator {
  private:
    using Traits = std::iterator_traits<It>;
  public:
    using difference_type = typename Traits::difference_type;
    using value_type = Ret;
    using pointer = void;
    using reference = value_type;
    using iterator_category = typename Traits::iterator_category;

    transform_iterator(It it, Func func): it(it), func(func) {}

    transform_iterator& operator++() { ++it; return *this; }
    transform_iterator operator++(int i) {
      auto old = *this;
      ++*this;
      return old;
    }
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
    using iterator = transform_iterator<Ret, Func, typename Container::iterator>;
    using const_iterator = transform_iterator<Ret, Func, typename Container::const_iterator>;
  private:
    using traits = std::iterator_traits<iterator>;
  public:
    using value_type = Ret;
    using size_type = typename Container::size_type;
    using difference_type = typename Container::difference_type;
    using reference = value_type;
    using const_reference = value_type;
    using pointer = void;
    using const_pointer = void;
    
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

  template <typename Pred, typename It>
  class conditional_iterator {
  private:
    using Traits = std::iterator_traits<It>;
    using TraitsIC = typename Traits::iterator_category;
  public:
    using difference_type = typename Traits::difference_type;
    using value_type = typename Traits::value_type;
    using pointer = typename Traits::pointer;
    using reference = typename Traits::reference;
    static_assert(!std::is_same<TraitsIC, std::output_iterator_tag>(), "");
    using iterator_category = typename
      std::conditional<std::is_same<TraitsIC, std::input_iterator_tag>::value,
		       std::input_iterator_tag,
		       std::forward_iterator_tag>::type;
    
    conditional_iterator(It it, It end, Pred pred): it(it), end(end), pred(pred) { advance(); }

    conditional_iterator& operator++() {
      assert(it != end);
      ++it;
      advance();
      return *this;
    }

    conditional_iterator operator++(int i) {
      auto old = *this;
      ++*this;
      return old;
    }

    bool operator==(const conditional_iterator& other) const { return it == other.it; }
    bool operator!=(const conditional_iterator& other) const { return !(*this == other); }
    const reference operator*() const { return *it; }
    reference operator*() { return *it; }
    
  private:
    It it;
    It end;
    Pred pred;

    void advance() {
      for (; it != end && !pred(*it); ++it) {}
    }
  };

  template <typename Pred, typename It>
  conditional_iterator<Pred, It> make_conditional_iterator(It it, It end, Pred pred) {
    return conditional_iterator<Pred, It>(it, end, pred);
  }

  template <typename Pred, typename Container>
  class conditional_container {
  public:
    using value_type = typename Container::value_type;
    using iterator = conditional_iterator<Pred, typename Container::iterator>;
    using const_iterator = conditional_iterator<Pred, typename Container::const_iterator>;
    using difference_type = typename Container::difference_type;
    using size_type = typename Container::size_type;
    
    conditional_container(Container& container, Pred pred): container(container), pred(pred) {}

    auto begin() const {
      return make_conditional_iterator(container.begin(), container.end(), pred);
    }
    auto end() const { return make_conditional_iterator(container.end(), container.end(), pred); }
    
    auto begin() { return make_conditional_iterator(container.begin(), container.end(), pred); }
    auto end() { return make_conditional_iterator(container.end(), container.end(), pred); }

  private:
    Container& container;
    Pred pred;
  };

  template <typename Pred, typename Container>
  conditional_container<Pred, Container> make_conditional_container(Container& container,
								    Pred pred) {
    return conditional_container<Pred, Container>(container, pred);
  }

  inline bool syscall_error(long rv) {
    return -4096 < rv && rv < 0;
  }

  inline bool syscall_error(unsigned long rv) {
    return syscall_error(static_cast<long>(rv));
  }

  template <typename T>
  inline bool syscall_error(T *rv) {
    return syscall_error(reinterpret_cast<intptr_t>(rv));
  }

  template <typename T>
  inline bool syscall_success(T rv) {
    return !syscall_error(rv);
  }
  
}

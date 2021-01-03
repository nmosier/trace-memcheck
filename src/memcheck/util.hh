#pragma once

#include <memory>
#include <algorithm>
#include <type_traits>

namespace memcheck {

  namespace util {

    struct nullopt_t {};
    constexpr nullopt_t nullopt;
  
    template <typename T>
    class optional {
    public:
      optional() noexcept {}
      optional(nullopt_t nullopt) noexcept {}
      optional(const optional& other): ptr(other ? std::make_unique(*other) : nullptr) {}
      optional(optional&& other) noexcept: ptr(other.ptr) {}
    
      explicit operator bool() const noexcept { return has_value(); }
      bool has_value() const noexcept { return ptr; }

      T& value() { return *ptr; }
      const T& value() const { return *ptr; }

      template <class U>
      T value_or(U&& default_value) const {
	return bool(*this) ? **this : static_cast<T>(std::forward<U>(default_value));
      }

      const T *operator->() const { return ptr.get(); }
      T *operator->() { return ptr.get(); }
      const T& operator*() const { return value(); }
      T& operator*() { return value(); }
      void reset() noexcept { ptr.reset(); }
    
      template <class... Args>
      T& emplace(Args&&... args) {
	ptr = std::make_unique<T>(args...);
	return **this;
      }

      optional& operator=(nullopt_t nullopt) { ptr = nullptr; return *this; }
      optional& operator=(const optional& other) {
	ptr = other ? std::make_unique(*other) : nullptr;
	return *this;
      }
      template <class U>
      optional& operator=(U&& value) { ptr = std::make_unique<T>(value); return *this; }
    
    private:
      std::unique_ptr<T> ptr;
    };

    template <template <class> class Binop, class Container>
    Container& binop_fixed(const Container& l, const Container& r, Container& res) {
      assert(l.size() == r.size());
      assert(l.size() == res.size());
      std::transform(l.begin(), l.end(), r.begin(), res.begin(),
		     Binop<typename Container::value_type>());
      return res;
    }

    template <template <class> class Binop, class Container>
    Container binop_fixed(const Container& l, const Container& r) {
      Container res;
      return binop_fixed<Binop>(l, r);
    }

    template <class Container>
    bool equal_fixed(const Container& l, const Container& r) {
      constexpr auto size = Container::size(); (void) size;
      return std::equal(l.begin(), l.end(), r.begin());
    }

    constexpr bool implies(bool antecedent, bool consequent) {
      return !antecedent || consequent;
    }

    template <class InputIt, class BinaryFunction>
    BinaryFunction for_each_pair(InputIt first, InputIt last, BinaryFunction f) {
      if (first != last) {
	for (auto it = std::next(first, 1); it != last; ++it) {
	  f(*first, *it);
	}
      }
      return f;
    }

    template <typename InputIt>
    auto distance(InputIt begin, InputIt end) {
      return std::distance(begin, end);
    }

    template <> inline auto distance<const void *>(const void *begin, const void *end) {
      return static_cast<const char *>(end) - static_cast<const char *>(begin);
    }

    template <typename InputIt, typename Pred>
    bool all_equal(InputIt begin, InputIt end, Pred pred) {
      if (begin == end) {
	return true;
      }
      const auto first = begin++;
      return std::all_of(begin, end, [first, pred] (const auto& val) {
	return pred(*first, val);
      });
    }

    template <typename InputIt>
    bool all_equal(InputIt begin, InputIt end) {
      return all_equal(begin, end, [] (const auto& lhs, const auto& rhs) { return lhs == rhs; });
    }

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
      transform_container(const Container& container, Func func):
	container(container), func(func) {}
      auto begin() const { return make_transform_iterator<Ret>(container.begin(), func); }
      auto end() const { return make_transform_iterator<Ret>(container.end(), func); }
    private:
      const Container& container;
      Func func;
    };

    template <typename Ret, typename Func, typename Container>
    transform_container<Ret, Func, Container> make_transform_container(const Container& container,
								       Func func) {
      return transform_container<Ret, Func, Container>(container, func);
    }
    
  }
  
}

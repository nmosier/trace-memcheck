#pragma once

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

    inline bool implies(bool antecedent, bool consequent) {
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

    template <class ForwardIt>
    bool all_equal(ForwardIt first, ForwardIt last) {
      if (first == last) {
	return true;
      }
      const auto first_val = *first++;
      return std::all_of(first, last, [&] (const auto& val) {
	return val == first_val;
      });
    }

    template <typename InputIt>
    auto distance(InputIt begin, InputIt end) {
      return std::distance(begin, end);
    }

    template <> inline auto distance<const void *>(const void *begin, const void *end) {
      return static_cast<const char *>(end) - static_cast<const char *>(begin);
    }

  }
  
}

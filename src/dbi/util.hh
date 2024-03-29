#pragma once

#include <sys/types.h>
#include <sys/user.h>
#include <memory>
#include <cassert>
#include <algorithm>

namespace dbi {

  void *get_pc(pid_t child);
  void *get_sp(pid_t pid);
  void get_regs(pid_t pid, user_regs_struct& regs);

  void set_pc(pid_t pid, void *pc);

  void call_fn(pid_t pid, void *fn);

  void write_proc(pid_t pid, int fd, void *proc_ptr, const void *buf, size_t count);

  void single_step_print(pid_t pid, int fd, size_t count);


  user_regs_struct get_regs(pid_t pid);

  void enable_trap(pid_t pid);

  void read_proc(pid_t pid, int fd, const void *proc_ptr, void *buf, size_t count);

#define arrlen(arr) (sizeof(arr) / sizeof((arr)[0]))

  void syscall_proc(pid_t pid, int fd, user_regs_struct& regs);

  template <typename T>
  constexpr std::array<T, 0> make_array(void) { return std::array<T, 0>(); }

  template <typename T, typename... Args>
  constexpr std::array<T, sizeof...(Args)> make_array(Args... args) {
    return std::array<T, sizeof...(Args)> {static_cast<T>(args)...};
  }
  
}

namespace util {

    // TODO: Delete
    template <class Container, typename Cond>
    class conditional_insert_iterator {
    public:
      using It = std::insert_iterator<Container>;
      conditional_insert_iterator(const It& it, const Cond& cond): it(it), cond(cond) {}

      template <typename T>
      conditional_insert_iterator& operator=(T val) {
	if (cond(val)) {
	  *it++ = val;
	}
	return *this;
      }

      conditional_insert_iterator& operator*() { return *this; }
      conditional_insert_iterator& operator++() { return *this; }
      conditional_insert_iterator& operator++(int i) { return *this; }
    
    private:
      It it;
      Cond cond;
    };

    template <class Container, typename Cond>
    conditional_insert_iterator<Container, Cond> conditional_inserter
    (const typename conditional_insert_iterator<Container, Cond>::It& it, const Cond& cond) {
      return conditional_insert_iterator<Container, Cond>(it, cond);
    }


    template <class Container, typename Transform>
    class transform_insert_iterator {
    public:
      using It = std::insert_iterator<Container>;
      transform_insert_iterator(const It& it, Transform op): it(it), op(op) {}

      template <typename T>
      transform_insert_iterator& operator=(T val) {
	*it++ = op(val);
	return *this;
      }

      transform_insert_iterator& operator*() { return *this; }
      transform_insert_iterator& operator++() { return *this; }
      transform_insert_iterator& operator++(int i) { return *this; }
    
    private:
      It it;
      Transform op;
    };

    template <class Container, typename Op>
    transform_insert_iterator<Container, Op> transform_inserter
    (const typename transform_insert_iterator<Container, Op>::It& it, Op op) {
      return transform_insert_iterator<Container, Op>(it, op); 
    }

    template <typename T, typename U>
    constexpr T div_up(T numer, U denom) {
      return (numer + denom - 1) / denom;
    }

    template <typename T, typename U>
    constexpr T align_up(T val, U align) {
      return div_up(val, align) * align;
    }

    template <typename T, typename U>
    constexpr T div_down(T numer, U denom) {
      return numer / denom;
    }

    template <typename T, typename U>
    constexpr T align_down(T val, U align) {
      return div_down(val, align) * align;
    }
  
}

namespace dbi {

  constexpr size_t PAGESIZE = 0x1000;

  template <typename T>
  bool is_pageaddr(const T *addr) {
    return reinterpret_cast<uintptr_t>(addr) % PAGESIZE == 0;
  }

  template <typename T>
  size_t pagecount(const T *begin, const T *end) {
    assert(is_pageaddr(begin));
    assert(is_pageaddr(end));
    return (reinterpret_cast<uintptr_t>(end) - reinterpret_cast<uintptr_t>(begin)) / PAGESIZE;
  }

  template <typename T>
  void *nextpage(T *pageaddr) {
    assert(is_pageaddr(pageaddr));
    return reinterpret_cast<T *>(reinterpret_cast<char *>(pageaddr) + PAGESIZE);
  }

  template <typename T>
  const void *nextpage(const T *pageaddr) {
    assert(is_pageaddr(pageaddr));
    return reinterpret_cast<const T *>(reinterpret_cast<const char *>(pageaddr) + PAGESIZE);
  }

  template <typename T>
  inline T *pageidx(T *pageaddr, size_t idx) {
    return reinterpret_cast<T *>(reinterpret_cast<uintptr_t>(pageaddr) + idx * PAGESIZE);
  }

  template <typename T>
  T *pagealign(T *addr) {
    return reinterpret_cast<T *>(util::align_down(reinterpret_cast<uintptr_t>(addr), PAGESIZE));
  }

  template <typename T>
  T *pagealign_up(T *addr) {
    return reinterpret_cast<T *>(util::align_up(reinterpret_cast<uintptr_t>(addr), PAGESIZE));
  }

  template <typename T>
  T pagealign_up(T size) {
    static_assert(std::is_integral<T>(), "");
    return util::align_up(size, PAGESIZE);
  }

  template <class Func>
  void for_each_page(void *begin, void *end, Func func) {
    for (size_t i = 0; i < pagecount(begin, end); ++i) {
      func(pageidx(begin, i));
    }
  }
}

#include <time.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#define __USE_GNU
#include <dlfcn.h>
#undef __USE_GNU
#include <stdbool.h>
#include <assert.h>
#include <errno.h>
#include <string.h>

int clock_gettime(clockid_t clk_id, struct timespec *tp) {
  return (int) syscall(SYS_clock_gettime, clk_id, tp);
}

int gettimeofday(struct timeval *tv, struct timezone *tz) {
  return (int) syscall(SYS_gettimeofday, tv, tz);
}

time_t time(time_t *tloc) {
  return (time_t) syscall(SYS_time, tloc);
}


/* Heapcheck Module */

#define HEAPCHECK_BUFLEN 0x1000
static char heapcheck_buf[HEAPCHECK_BUFLEN] = {0};
static size_t heapcheck_idx = 0;
#define HEAPCHECK_PADDING 8

static char *heapcheck_alloc(size_t size) {
  char *ptr = &heapcheck_buf[heapcheck_idx];
  heapcheck_idx += size;
  assert(heapcheck_idx <= HEAPCHECK_BUFLEN);
  return ptr;
}

/* malloc() implementation */
static void *malloc_init(size_t size);
static void *(*malloc_ptr)(size_t) = malloc_init;
static bool malloc_active = false;

static void *malloc_init(size_t size) {
  if (malloc_active) {
    return heapcheck_alloc(size);
  } else {
    malloc_active = true;
    malloc_ptr = dlsym(RTLD_NEXT, "malloc");
    malloc_active = false;
  }
  return malloc_ptr(size);
}

void *malloc(size_t size) {
  return malloc_ptr(size + HEAPCHECK_PADDING);
}

/* calloc() implementation
 * implemented using malloc() for simplicity
 */
void *calloc(size_t nmemb, size_t size) {
  /* check if nmemb & size overflow */
  const size_t bytes = nmemb * size;
  if (bytes != 0 && bytes / size != nmemb) {
    errno = ENOMEM;
    return NULL;
  } else {
    void *ptr = malloc(bytes);
    if (ptr != NULL) {
      memset(ptr, 0, bytes);
    }
    return ptr;
  }
}

/* free() implementation */
static void free_init(void *);
static void (*free_ptr)(void *) = free_init;

static void free_init(void *ptr) {
  free_ptr = dlsym(RTLD_NEXT, "free");
  return free_ptr(ptr);
}

void free(void *ptr) {
  if (!malloc_active) {
    return free_ptr(ptr);
  }
}

/* realloc() implementation */
static void *realloc_init(void *, size_t);
static void *(*realloc_ptr)(void *, size_t) = realloc_init;

static void *realloc_init(void *ptr, size_t size) {
  realloc_ptr = dlsym(RTLD_NEXT, "realloc");
  return realloc_ptr(ptr, size);
}

void *realloc(void *ptr, size_t size) {
  return realloc_ptr(ptr, size + HEAPCHECK_PADDING);
}

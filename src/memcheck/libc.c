#include <time.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#define __USE_GNU
#include <dlfcn.h>

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

/* malloc() implementation */

typedef void *malloc_t(size_t);
static void *malloc_init(size_t size);

static malloc_t *malloc_ptr = malloc_init;

static void *malloc_init(size_t size) {
  malloc_ptr = (malloc_t *) dlsym(RTLD_NEXT, "malloc");
  return malloc_ptr(size);
}

void *malloc(size_t size) {
  return malloc_ptr(size);
}



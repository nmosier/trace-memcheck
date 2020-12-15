#include <time.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <unistd.h>

int clock_gettime(clockid_t clk_id, struct timespec *tp) {
  return (int) syscall(SYS_clock_gettime, clk_id, tp);
}

int gettimeofday(struct timeval *tv, struct timezone *tz) {
  return (int) syscall(SYS_gettimeofday, tv, tz);
}

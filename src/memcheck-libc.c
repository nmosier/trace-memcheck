#include <time.h>
#include <sys/syscall.h>
#include <unistd.h>

int clock_gettime(clockid_t clk_id, struct timespec *tp) {
  return (int) syscall(SYS_clock_gettime, clk_id, tp);
}

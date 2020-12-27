#include <unistd.h>

int main(void) {
  char buf[1024];
  int fd;
  * (int **) buf = &fd;
  const ssize_t res = read(fd, buf, sizeof(buf));
  return 0;
}

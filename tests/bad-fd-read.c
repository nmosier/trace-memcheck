#include <unistd.h>

int main(void) {
  char buf[1024];
  int fd;
  read(fd, buf, sizeof(buf));
  return 0;
}

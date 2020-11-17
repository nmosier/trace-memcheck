#include <unistd.h>
#include <stdio.h>

int main(void) {
  pid_t pid;
  if ((pid = fork()) == 0) {
    /* child */
    while (1) {}
  }
  return 0;
}

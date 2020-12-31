#include <unistd.h>
#include <stdio.h>

int main() {
  const pid_t pid = fork();
  printf("pid = %d\n", pid);
  return 0;
}

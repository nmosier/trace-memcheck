#include <stdio.h>
#include <stdlib.h>

unsigned fib(unsigned n) {
  unsigned ans;
  if (n < 2) {
    ans = n;
  } else {
    ans = fib(n - 2) + fib(n - 1);
  }
  return ans;
}

int main(int argc, char *argv[]) {
  if (argc != 2) {
    fprintf(stderr, "usage: %s n\n", argv[0]);
    return 1;
  }

  unsigned n = atoi(argv[1]);

  printf("%u\n", fib(n));

  return 0;
}

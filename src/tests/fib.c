#include <stdio.h>
#include <stdlib.h>

static unsigned fib(unsigned n) {
  if (n < 2) {
    return n;
  } else {
    return fib(n - 2) + fib(n - 1);
  }
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

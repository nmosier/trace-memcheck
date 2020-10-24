#include <stdio.h>

void rec(int i) {
  if (i > 0) {
    rec(i - 1);
  }
  printf("%d\n", i);
}

int main(void) {
  rec(10);
}

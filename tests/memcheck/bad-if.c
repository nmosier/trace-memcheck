#include <stdio.h>

int main() {
  int i;
  printf("%p\n", (void *) &i);
  if (i == 0) {
    printf("i == 0\n");
  } else {
    printf("i != 0\n");
  }
  return 0;
}

#include <signal.h>
#include <stdio.h>

void *get_sp();
void print_sp() {
  printf("rsp %p\n", get_sp());
}

void handler(int i) {
  print_sp();
  return;
}

int fn();

int main(void) {
  signal(SIGTRAP, handler);
  return fn();
}

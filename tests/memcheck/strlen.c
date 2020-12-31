#include <string.h>

int main(int argc, char *argv[]) {
  char buf[64];
  memset(buf, 'a', 24);
  buf[24] = '\0';
  return strlen(buf);
}

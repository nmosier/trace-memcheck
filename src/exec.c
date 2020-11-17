#include <unistd.h>

int main(int argc, char *argv[]) {
  execlp(argv[0], argv[0], NULL);
  return 0;
}

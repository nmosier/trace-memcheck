static int fib(int n) {
  if (n < 2) {
    return n;
  } else {
    int n1 = fib(n - 1);
    int n2 = fib(n - 2);
    return n1 + n2;
  }
}

int main(void) {
  return fib(3);
}

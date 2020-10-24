int main(void) {
  asm volatile ("movq $0x0,0(%rbp)");
}

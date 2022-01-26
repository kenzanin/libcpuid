// Copyright 2022

#include <iostream>

#include "./libcpuid.h"

int main(void) {
  char *test = GetCpuSn();
  std::cout << test << "\n";
  free(test);
  return 0;
}

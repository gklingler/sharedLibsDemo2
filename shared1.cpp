#include "shared1.h"
#include "shared2.h"
#include <iostream>

void f() {
  std::cout << "f()\n";
  Y y;
  y.mY();
}

X::X() {
  std::cout << "X::X()\n";
}

void X::mX() {
  std::cout << "X::mX()\n";
}

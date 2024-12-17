#include <stdio.h>

//__attribute__((import_module("lib"), import_name("hello_world"))) extern void hello_world();

int main() {
    hello_world(); // Call the imported function
    return 0;
}


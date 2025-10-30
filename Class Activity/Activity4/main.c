#include <stdio.h>

extern int factorial(int n);

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    int result = factorial(n);
    printf("Factorial of %d is %d\n", n, result);
    return 0;
}
/*
=========================================================
Question 1:
Write a C program to calculate and display the factorial 
of a number entered by the user.
=========================================================
*/

#include <stdio.h>

int main() {
    int n;                      // variable to store user input
    long long factorial = 1;    // variable to store factorial result

    // Ask user for input
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    // Check if number is negative
    if (n < 0)
        printf("Error! Factorial of a negative number doesn't exist.\n");
    else {
        // Loop from 1 to n, multiplying each number
        for (int i = 1; i <= n; ++i)
            factorial *= i;

        // Display result
        printf("Factorial of %d = %lld\n", n, factorial);
    }

    return 0;   // end program
}

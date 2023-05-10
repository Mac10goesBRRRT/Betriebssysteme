#include <stdio.h>
#include <stdlib.h>

long int fibRek(long int n);

int main(int argc, char *argv[])
{
    char *ptr;
    if(argc != 2){
        printf("Wrong Number of Arguments! Only (1) is allowed.\n");
        exit(1);
    }
    long int index = strtol(argv[1], &ptr, 10);
    printf("Fibonacci Index: %li, Fibonacci Value: %li\n", index, fibRek(index));
    exit(0);
}

long int fibRek(long int n)
{
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;
    return fibRek(n - 1) + fibRek(n - 2);
}
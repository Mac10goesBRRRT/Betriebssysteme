#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv)
{
    if (argc < 2)
    {
        fprintf(stderr, "Usage: %s <# loops>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    int i, loops = atoi(argv[1]);
    for (i = 0; i < loops; i++)
    {
        printf("%d of %d: Hello World!\n", i + 1, loops);
    }
    exit(EXIT_SUCCESS);
}
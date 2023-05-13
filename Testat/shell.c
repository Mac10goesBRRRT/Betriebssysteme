#include <unistd.h>
#include <stdio.h>
#include <linux/limits.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <signal.h>

char *getpath();
char *getInput();
void cdlogic(char *input);
bool userExit(char *input);
void crtlC_handler(int _temp);

int main()
{
    bool run = true;
    while (run == true)
    {
        __sighandler_t sig = signal(SIGINT, crtlC_handler);
        char *path = getpath();
        printf("\033[0;34m%s\033[0;31m$> \033[0m", path);

        char *input = getInput();
        run = userExit(input);
        cdlogic(input);
    }
    return 0;
}
// get the current path
char *getpath()
{
    char *cwd = malloc(PATH_MAX);
    if (cwd == NULL)
    {
        printf("Error Allocating\n");
        exit(EXIT_FAILURE);
    }
    getcwd(cwd, PATH_MAX);
    return cwd;
}

// get Userinput
char *getInput()
{
    size_t bufsize = PATH_MAX;
    char *input = malloc(PATH_MAX);
    if (input == NULL)
    {
        printf("Error Allocating\n");
        exit(EXIT_FAILURE);
    }
    getline(&input, &bufsize, stdin);
    return input;
}

void cdlogic(char *input)
{
    if (input[0] == 'c' && input[1] == 'd')
    {   
        for (int i = 0; input[i] != '\0'; i++)
            {
                if (input[i] == '\n')
                    input[i] = '\0';
            }
        printf("%s detected, proceed with lethal force!\n", input);
        if (input[2] == ' ' && input[3] == '.' && input[4] == '.')
        { // if input looks like "cd .." we go up one directory
            chdir("..");
            return;
        } // if input isnt finished after "cd" we want to access another folder
        else if (input[2] != '\0')
        {
            char *buf = malloc(PATH_MAX);
            strcpy(buf, input + 3);
            int error = chdir(buf);
            if (error != 0)
            {
                printf("Fehler: %d\n", error);
            }
            return;
        }
        else
        {
            chdir("/");
        }
    }
    else
    {
        // Eliminated cd and other good stuff, now we can
        // just call the programs
        system(input);
    }
}

bool userExit(char *input)
{
    if (strcmp(input, "exit\n") == 0)
    {
        printf("Exiting\n");
        return false;
    }
    return true;
}

void crtlC_handler(int _temp)
{
    printf("\nPlease use 'exit' to leave the Shell\n");
}
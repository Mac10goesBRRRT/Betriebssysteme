#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    char *buf = NULL;
    const char s[2] = " ";
    char *word;
    size_t size = 1000;
    buf = malloc(sizeof(char) * size);
    if(buf == NULL){
        printf("Error allocating memory\n");
        exit(1);
    }
    printf("Enter Text:\n");
    getline(&buf, &size, stdin);
    printf("You entered:\n");
    //printWord(buf);
    word = strtok(buf, s);
    while(word != NULL){
        printf("%s\n", word);
        word = strtok(NULL, s);
    }
}
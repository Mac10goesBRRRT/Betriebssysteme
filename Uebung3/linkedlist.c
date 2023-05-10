#include <stdio.h>
#include <stdlib.h>


typedef struct list{
    struct node *head;
    struct node **tail;
}list;

typedef struct node {
    int data;
    struct node *next;
}node;

void push (list* list, int data);
node* pop(list* list);
void printList(list* list);
void initList(list* list);

int main(){
    list* l = malloc(sizeof(list));
    initList(l);
    push(l, 2);
    push(l, 3);
    push(l, 4);
    pop(l);
    printList(l);
    free(l);
    return 0;
}

void push (list* list, int data){
    //malloc speicher, dann tail pointer auf die neue node
    node *new_elem = malloc(sizeof(node));
    if(new_elem == NULL){
        printf("failed to allocate memory");
        exit(1);
    }
    //tail pointer setzen
    *list->tail = new_elem;
    list->tail = &new_elem->next;
    new_elem->next = NULL;
    new_elem->data = data;
}

node* pop(list* list){
    //fehlt free
    node *ptr = list->head;
    list->head = ptr->next;
    free(ptr);
    return &(list->head);
}

void printList(list* list){
    node* node = list->head;
    while(node != NULL){
        printf("%d \n", node->data);
        node = node->next;
    }
}

void initList(list* list){
    list->head = NULL;
    list->tail = &(list->head);
}
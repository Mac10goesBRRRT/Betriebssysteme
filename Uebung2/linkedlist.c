#include <stdlib.h>
#include <stdio.h>

typedef struct list {
    int data;
    struct list *next;
}linklist;

typedef struct node {
    int data;
    struct node *next;
}node;

struct list* append (struct list *, int);
struct list* delete (struct list *, int);
struct list* find(struct list *, int);
void print_list(linklist *);

int main(){
    struct list* head = malloc(sizeof(struct list));
    if(head == NULL){
        return 1;
    }
    head->data = 0;
    head->next = NULL;
    //linklist * node3 = append(node2, 3);
    for(int i = 1; i<10; i++){
        append(head, i);
    }
    //append(node2, 2);
    print_list(head);
    delete(head,0);
    print_list(head);
    return 0;
}


struct list* append (struct list *node, int val){
    //Am ende der Liste pointer anhängen
    struct list* current = node; 
    while (current->next != NULL){
        current = current -> next;
    }
    current->next = malloc(sizeof(struct list));
    current->next->data = val;
    current->next->next = NULL;
}
struct list* delete (struct list *node, int val){
    //ans vorletzte element der liste gehen
    linklist *current = node;
    while(current->next->next != NULL){
        current = current->next;
    }
    free(current->next);
    current->next = NULL;
}
struct list* find(struct list *node, int index){
    //indexiertes element der liste finden
    linklist *current = node;
    for(int i = 0; i<index; i++){
        current = current->next;
    }
    return current;
}

void print_list(linklist * node){
    linklist * current = node;
    while (current != NULL) {
        printf("%d\n", current->data);
        current = current->next;
    }
}
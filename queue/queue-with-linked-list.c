#include <stdio.h>
#include <stdlib.h>

struct node {
    float info;
    struct node* next;
};

typedef struct node tnode;

struct queue {
    tnode* first;
};

typedef struct queue tqueue;

tqueue* create(void) {
    tqueue* new = (tqueue*) malloc(sizeof(tqueue));
    new->first = NULL;
    return new;
}

// insert at top
tnode* insert(tnode* list, float value) {
    tnode* new = (tnode*) malloc(sizeof(tnode));
    new->info = value;
    new->next = list;
    return new;
}

// remove from top
tnode* delete(tnode* list) {
    tnode* new = list->next;
    free(list);
    return new;
}

int is_empty(tqueue* queue) {
    return (queue->first == NULL);
}

void push(tqueue* queue, float value) {
    queue->first = insert(queue->first, value);
}

float pop(tqueue* queue) {
    float value;
    if (is_empty(queue)) {
        printf("queue is empty\n");
        exit(1); // stop program
    }
    value = queue->first->info;
    queue->first = delete(queue->first);
    return value;
}

void free_queue(tqueue* queue) {
    tnode* aux = queue->first;
    while (aux != NULL) {
        tnode* ref = aux->next;
        free(aux);
        aux = ref;
    }
    free(queue);
}

void print_elements(tqueue* queue) {
    tnode* aux = queue->first;
    while (aux != NULL) {
        printf("%.1f\n", aux->info);
        aux = aux->next;
    }
}

int main(void) {
    float item;
    tqueue* queue = create();
    push(queue, 42.0);
    push(queue, 26.0);
    push(queue, 13.0);
    push(queue, 98.0);
    push(queue, 49.0);
    print_elements(queue);
    item = pop(queue);
    printf("pop: %.1f\n", item);
    push(queue, 11.0);
    print_elements(queue);
    return 0;
}

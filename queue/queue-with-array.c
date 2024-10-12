#include <stdio.h>
#include <stdlib.h>
//#include "queue.h"

#define MAX 50

struct queue {
    int number;
    float vec[MAX];
};

typedef struct queue tqueue;

tqueue* create(void) {
    tqueue* new = (tqueue*) malloc(sizeof(tqueue));
    new->number = 0; // initialize with zero elements
    return new;
}

int is_empty(tqueue* queue) {
    return (queue->number == 0);
}

void push(tqueue* queue, float value) {
    if (queue->number == MAX) { // queue is full
        printf("queue capacity overflow\n");
        exit(1); // stop program
    }
    // insert element on next free position
    queue->vec[queue->number] = value;
    queue->number++;
}

float pop(tqueue* queue) {
    float value;
    if (is_empty(queue)) {
        printf("queue is empty\n");
        exit(1); // stop program
    }
    // remove element from top
    value = queue->vec[queue->number-1];
    queue->number--;
    return value;
}

void free_queue(tqueue* queue) {
    free(queue);
}

void print_elements(tqueue* queue) {
    int i = queue->number-1;
    while (i >= 0) {
        printf("%.1f\n", queue->vec[i]);
        i--;
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

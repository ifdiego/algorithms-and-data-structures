#include <stdio.h>
#include <stdlib.h>

#define N 100

struct stack {
    int begin, end;
    float items[N];
};

typedef struct stack tstack;

int increment(int i) {
    return (i+1) % N;
}

int is_empty(tstack* stack) {
    return (stack->begin == stack->end);
}

tstack* create(void) {
    tstack* stack = (tstack*) malloc(sizeof(tstack));
    stack->begin = stack->end = 0; // init empty stack
    return stack;
}

void insert(tstack* stack, float value) {
    if (increment(stack->end) == stack->begin) { // stack is full
        printf("stack overflow\n");
        exit(1);
    }
    // insert new element in next free position
    stack->items[stack->end] = value;
    stack->end = increment(stack->end);
}

float delete(tstack* stack) {
    float value;
    if (is_empty(stack)) {
        printf("stack is empty\n");
        exit(1);
    }
    // remove element
    value = stack->items[stack->begin];
    stack->end = increment(stack->begin);
    return value;
}

void print_stack(tstack* stack) {
    int i = stack->begin;
    while (i != stack->end) {
        printf("%.1f\n", stack->items[i]);
        i = increment(i);
    }
}

int main(void) {
    float item;
    tstack* stack = create();
    insert(stack, 42.0);
    insert(stack, 10.0);
    insert(stack, 23.0);
    insert(stack, 76.0);
    insert(stack, 44.0);
    insert(stack, 87.0);
    print_stack(stack);
    item = delete(stack);
    printf("%.1f removed\n", item);
    item = delete(stack);
    printf("%.1f removed\n", item);
    print_stack(stack);
    free(stack);
    return 0;
}

#include <stdio.h>
#include <stdlib.h>

struct node {
    float info;
    struct node* next;
};

typedef struct node tnode;

struct stack {
    tnode* begin;
    tnode* end;
};

typedef struct stack tstack;

int is_empty(tstack* stack) {
    return (stack->begin == NULL);
}

tstack* create(void) {
    tstack* stack = (tstack*) malloc(sizeof(tstack));
    stack->begin = stack->end = NULL;
    return stack;
}

// insert at the end
tnode* insert(tnode* node, float value) {
    tnode* new = (tnode*) malloc(sizeof(tnode));
    new->info = value;
    new->next = NULL;
    if (node != NULL)
        node->next = new;
    return new;
}

tnode* delete(tnode* node) {
    tnode* item = node->next;
    free(node);
    return item;
}

void push(tstack* stack, float value) {
    stack->end = insert(stack->end, value);
    if (stack->begin == NULL)
        stack->begin = stack->end;
}

float pop(tstack* stack) {
    float value;
    if (is_empty(stack)) {
        printf("stack is empty\n");
        exit(1);
    }
    value = stack->begin->info;
    stack->begin = delete(stack->begin);
    if (stack->begin == NULL)
        stack->end = NULL;
    return value;
}

void free_stack(tstack* stack) {
    tnode* node = stack->begin;
    while (node != NULL) {
        tnode* aux = node->next;
        free(node);
        node = aux;
    }
    free(stack);
}

void print_stack(tstack* stack) {
    tnode* node = stack->begin;
    while (node != NULL) {
        printf("%.1f\n", node->info);
        node = node->next;
    }
}

int main(void) {
    float item;
    tstack* stack = create();
    push(stack, 42.0);
    push(stack, 10.0);
    push(stack, 23.0);
    push(stack, 76.0);
    push(stack, 44.0);
    push(stack, 87.0);
    print_stack(stack);
    item = pop(stack);
    printf("%.1f removed\n", item);
    item = pop(stack);
    printf("%.1f removed\n", item);
    print_stack(stack);
    free_stack(stack);
    return 0;
}

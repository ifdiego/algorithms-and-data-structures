#include <stdio.h>
#include <stdlib.h>

struct node {
    int info;
    struct node* previous;
    struct node* next;
};

typedef struct node tnode;

tnode* initialize(void) {
    return NULL;
}

// insert element at the beginning of the list
tnode* insert_element(tnode* list, int value) {
    tnode* new = (tnode*) malloc(sizeof(tnode));
    new->info = value;
    new->previous = NULL;
    new->next = list;
    // check if list is empty
    if (list != NULL)
        list->previous = new;
    return new;
}

// search an element on the list
tnode* search_element(tnode* list, int value) {
    tnode* aux = list;
    while (aux != NULL) {
        if (aux->info == value)
            return aux;
        aux = aux->next; 
    }
    return NULL; // element not found
}

// remove element from list
tnode* remove_element(tnode* list, int value) {
    tnode* aux = search_element(list, value);
    if (aux == NULL)
        return list; // element not found, returns original list
    // remove element
    if (list == aux)
        list = aux->next;
    else
        aux->previous->next = aux->next;
    if (aux->next != NULL)
        aux->next->previous = aux->previous;
    free(aux);
    return list;
}

// print elements from list
void print_elements(tnode* list) {
    tnode* aux = list; // makes aux points to initial node
    // check if list isn't empty
    if (aux) {
        // traverse list
        do {
            printf("%d\n", aux->info);
            aux = aux->next;
        } while (aux != NULL);
        printf("\n");
    }
}

void free_elements(tnode* list) {
    tnode* aux = list;
    while (aux != NULL) {
        tnode* ref = aux->next;
        free(aux);
        aux = ref;
    }
}

int main(void) {
    tnode* list; // declare an unitialized list
    list = initialize();
    list = insert_element(list, 23);
    list = insert_element(list, 45);
    list = insert_element(list, 56);
    list = insert_element(list, 78);
    print_elements(list);
    list = remove_element(list,  78);
    print_elements(list);
    list = remove_element(list,  45);
    print_elements(list);
    free_elements(list);
    return 0;
}

#include <stdio.h>
#include <stdlib.h>

struct node {
    int info;
    struct node* next;
};

typedef struct node tnode;

// init node
tnode* initialize(void) {
    return NULL;
}

// insert at the beginning
tnode* insert(tnode* list, int value) {
    tnode* new = (tnode*) malloc(sizeof(tnode));
    new->info = value;
    new->next = list;
    return new;
}

// print list elements
void print_elements(tnode* list) {
    tnode* aux = list; // variable to traverse list
    while (aux != NULL) {
        printf("info %d\n", aux->info);
        aux = aux->next;
    }
    printf("\n");
}

// empty list (1: empty,  0: not empty)
int is_empty(tnode* list) {
    return (list == NULL);
}

// print list elements recursive
void rec_print_elements(tnode* list) {
    if (is_empty(list)) {
        printf("\n");
        return;
    }
    // print first element
    printf("info: %d\n", list->info);
    // print sub-list
    rec_print_elements(list->next);
}

// search element in the list
tnode* search(tnode* list, int value) {
    tnode* aux = list;
    while (aux != NULL) {
        if (aux->info == value)
            return aux;
        aux = aux->next;
    }
    return NULL; // element not found
}

// remove list element
tnode* remove_element(tnode* list, int value) {
    tnode* previous = NULL; // pointer to previous element
    tnode* aux = list; // pointer to traverse list
    // search element keeping the previous one
    while (aux != NULL && aux->info != value) {
        previous = aux;
        aux = aux->next;
    }
    // check if element was found
    if (aux == NULL)
        return list; // not found: returns original list
    // remove element
    if (previous == NULL) {
        // remove from beginning
        list = aux->next;
    } else {
        // remove from the middle
        previous->next = aux->next;
    }
    free(aux);
    return list;
}

// remove list element (recursive)
tnode* rec_remove_element(tnode* list, int value) {
    if (is_empty(list)) {
        return list; // empty, returns original
    }
    // check if element to be removed is the first one
    if (list->info == value) {
        tnode* temp = list; // temporary to be free
        list = list->next;
        free(temp);
    } else {
        // remove from sub-list
        list->next = rec_remove_element(list->next, value);
    }
    return list;
}

void free_list(tnode* list) {
    tnode* aux = list;
    while (aux != NULL) {
        tnode* ref = aux->next; // keeps reference to next element
        free(aux);
        aux = ref; // makes aux points to next element
    }
}

// free list (recursive)
void rec_free_list(tnode* list) {
    if (!is_empty(list)) {
        rec_free_list(list->next);
        free(list);
    }
}

// ordened insert (create node)
tnode* create_node(int value) {
    tnode* aux = (tnode*) malloc(sizeof(tnode));
    aux->info = value;
    return aux;
}

// ordened insert (insert node)
tnode* insert_ordened(tnode* list, int value) {
    tnode* new = create_node(value); // create new node
    tnode* previous = NULL; // pointer to previous element
    tnode* aux = list; // pointer to traverse list
    // search insert position
    while (aux != NULL && aux->info < value) {
        previous = aux;
        aux = aux->next;
    }
    // insert element
    if (previous == NULL) { // insert at the beginning
        new->next = list;
        list = new;
    } else { // insert at the middle
        new->next = previous->next;
        previous->next = new;
    }
    return list;
}

int main(void) {
    tnode* list; // declare an unitialized list
    list = initialize();
    list = insert(list, 23);
    list = insert(list, 45);
    list = insert(list, 56);
    list = insert(list, 78);
    print_elements(list);
    list = remove_element(list,  78);
    print_elements(list);
    list = remove_element(list,  45);
    print_elements(list);
    free_list(list);
    return 0;
}

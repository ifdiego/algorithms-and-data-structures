#include <stdio.h>
#include <stdlib.h>

typedef struct llist {
    int data;
    struct llist* next;
} linked_list;

linked_list* init(void) {
    return NULL;
}

linked_list* insert(linked_list* list, int number) {
    linked_list* new = (linked_list*)malloc(sizeof(linked_list));
    new->data = number;
    new->next = list;
    return new;
}

void print(linked_list* list) {
    linked_list* aux;
    for (aux = list; aux != NULL; aux = aux->next) {
        printf("- %d\n", aux->data);
    }
}

void get_free(linked_list* list) {
    linked_list* aux = list;
    while (aux != NULL) {
        linked_list* ref = aux->next;
        free(aux);
        aux = ref;
    }
}

int main(void) {
    linked_list* list = init();
    list = insert(list, 42);
    list = insert(list, 100);
    print(list);
    get_free(list);
    return 0;
}

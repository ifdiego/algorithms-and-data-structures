#include <stdio.h>
#include <stdlib.h>

struct tree {
    char info;
    struct tree* first;
    struct tree* next;
};

typedef struct tree ttree;

ttree* create(char data) {
    ttree* new = (ttree*) malloc(sizeof(ttree));
    new->info = data;
    new->first = NULL;
    new->next = NULL;
    return new;
}

void insert(ttree* tree, ttree* subtree) {
    subtree->next = tree->first;
    tree->first = subtree;
}

void preorder_print(ttree* tree) {
    ttree* aux;
    printf("%c\n", aux->info);
    for (aux = tree->first; aux != NULL; aux = aux->next)
        preorder_print(aux);
}

int search(ttree* tree, char value) {
    ttree* aux;
    if (aux->info == value)
        return 1;
    else {
        for (aux = tree->first; aux != NULL; aux = aux->next) {
            if (search(aux, value))
                return 1;
        }
    }
    return 0;
}

void free_tree(ttree* tree) {
    ttree* aux = tree->first;
    while (aux != NULL) {
        ttree* ref = aux->next;
        free_tree(aux);
        aux = ref;
    }
    free(tree);
}

int main(void) {
    // create nodes as leafs
    ttree* a = create('a');
    ttree* b = create('b');
    ttree* c = create('c');
    ttree* d = create('d');
    ttree* e = create('e');
    ttree* f = create('f');
    ttree* g = create('g');
    ttree* h = create('h');
    ttree* i = create('i');
    ttree* j = create('j');
    // make hierarchy
    insert(c, d);
    insert(b, e);
    insert(b, c);
    insert(i, j);
    insert(g, i);
    insert(g, h);
    insert(a, g);
    insert(a, f);
    insert(a, f);
    insert(a, b);
    return 0;
}

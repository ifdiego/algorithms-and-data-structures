#include <stdio.h>
#include <stdlib.h>

struct tree {
    char info;
    struct tree* left;
    struct tree* right;
};

typedef struct tree ttree;

ttree* initialize(void) {
    return NULL;
}

ttree* create(char data, ttree* left, ttree* right) {
    ttree* new = (ttree*) malloc(sizeof(ttree));
    new->info = data;
    new->left = left;
    new->right = right;
    return new;
}

int is_empty(ttree* tree) {
    return tree == NULL;
}

void print_tree(ttree* tree) {
    if (!is_empty(tree)) {
        printf("%c ", tree->info); // show root
        print_tree(tree->left); // show left subtree
        print_tree(tree->right); // show right subtree
    }
}

ttree* free_tree(ttree* tree) {
    if (!is_empty(tree)) {
        free_tree(tree->left);
        free_tree(tree->right);
        free_tree(tree);
    }
    return NULL;
}

int search(ttree* tree, char data) {
    if (is_empty(tree))
        return 0;
    else
        return tree->info == data || search(tree->left, data) || search(tree->right, data);
}

int main(void) {
    ttree* root = create('a', 
    create('b',
        initialize(),
        create('d', initialize(), initialize())
        ),
    create('c',
        create('e', initialize(), initialize()),
        create('f', initialize(), initialize())
        )
    );
    root->left->left = create('x',
    create('y', initialize(), initialize()),
    create('z', initialize(), initialize())
    );
    print_tree(root);
    return 0;
}

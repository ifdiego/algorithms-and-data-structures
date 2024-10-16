#include <stdio.h>

struct tree {
    int info;
    struct tree* left;
    struct tree* right;
};

typedef struct tree ttree;

ttree* initialize(void) {
    return NULL;
}

void print_tree(ttree* tree) {
    if (tree != NULL) {
        print_tree(tree->left);
        printf("%d\n", tree->info);
        print_tree(tree->right);
    }
}

ttree* search(ttree* tree, int value) {
    if (tree == NULL)
        return NULL;
    else if (tree->info > value)
        return search(tree->left, value);
    else if (tree->info < value)
        return search(tree->right, value);
    else
        return tree;
}

ttree* insert(ttree* tree, int value) {
    if (tree == NULL) {
        tree = (ttree*) malloc(sizeof(ttree));
        tree->info = value;
        tree->left = a->right = NULL;
    } else if (value < tree->info)
        tree->left = insert(tree->left, value);
    else
        tree->right = insert(a->right, value);
    return tree;
}

ttree* remove(ttree* tree, int value) {
    if (tree == NULL)
        return NULL;
    else if (tree->info > value)
        tree->left = remove(tree->left, value);
    else if (tree->info < value)
        tree->right = remove(tree->right, value);
    else {
        if (tree->left == NULL && tree->right == NULL) {
            free(tree);
            tree = NULL;
        } else if (tree->left == NULL) {
            ttree* aux = tree;
            tree = tree->right;
            free(tree);
        } else if (tree->right == NULL) {
            ttree* aux = tree;
            tree = tree->left;
            free(tree);
        } else {
            ttree* root = tree;
            ttree* ref = tree->left;
            while (ref->right != NULL) {
                root = ref;
                ref = ref->right;
            }
            tree->info = ref->info;
            ref->info = value;
            tree->left = remove(tree->left, value);
        }
    }
    return tree;
}

int main(void) {
    return 0;
}

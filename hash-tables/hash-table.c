#include <stdio.h>

#define MAX 10_000_000
#define N 100

struct person {
    int number;
    char name[81];
    char email[41];
};

typedef struct person tperson;

int hash(int mat) {
    return (mat % 100);
}

tperson* search(hash* table, int value) {
    int hash = hash(table);
    while (table[hash] != NULL) {
        if (table[hash]->value == value)
            return table[hash];
        hash = (hash+1) % N;
    }
    return NULL;
}

tperson* insert(hash* table, int value, char* name, char* email) {
    int hash = hash(table);
    while (table[hash] != NULL) {
        if (table[hash]->value == value)
            break;
        hash = (hash+1) % N;
    }
    if (table[hash] == NULL) {
        table[hash] = (tperson*) malloc(sizeof(tperson));
        table[hash]->value = value;
    }
    strcpy(table[hash]->name, name);
    strcpy(table[hash]->email, email);
    return table[hash];
}

int main(void) {
    /*int people = vet[MAX];*/
    return 0;
}

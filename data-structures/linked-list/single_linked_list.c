#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
  int data;
  struct Node *next;
} Node;

Node* create_node(int value);
void insert_node(Node* list, int value);
void print_list(Node* list);
void delete_node(Node* list, int value);

int main(void) {
  Node* list = create_node(1);
  insert_node(list, 2);
  insert_node(list, 3);
  insert_node(list, 4);
  print_list(list);
  delete_node(list, 4);
  print_list(list);
  return 0;
}

Node* create_node(int value) {
  Node* new = (Node*)malloc(sizeof(Node));
  new->data = value;
  new->next = NULL;
  return new;
}

void insert_node(Node* list, int value) {
  Node* new = create_node(value);
  Node* last = list;

  while (last->next != NULL) {
    last = last->next;
  }

  last->next = new;
  return;
}

void print_list(Node* list) {
  Node* temp = list;
  while (temp != NULL) {
    printf("%d -> ", temp->data);
    temp = temp->next;
  }
  printf("\n");
}

void delete_node(Node* list, int value) {
  Node* temp = list;
  Node* prev;

  if (temp != NULL && temp->data == value) {
    list = temp->next;
    free(temp);
    return;
  }

  while (temp != NULL && temp->data != value) {
    prev = temp;
    temp = temp->next;
  }

  if (temp == NULL) return;

  prev->next = temp->next;
  free(temp);
}

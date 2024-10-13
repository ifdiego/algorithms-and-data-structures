typedef struct stack tstack;

tstack* create(void);
void push(tstack* stack, float value);
float pop(tstack* stack);
int is_empty(tstack* stack);
void free_stack(tstack* stack);

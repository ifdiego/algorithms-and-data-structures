typedef struct queue tqueue;

tqueue* create(void);
void push(tqueue* queue, float value);
float pop(tqueue* queue);
int is_empty(tqueue* queue);
void free_queue(tqueue* queue);

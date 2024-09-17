#include <cstdlib>
#include <iostream>

using namespace std;

class Queue {
    private:
        static const int LENGTH = 5; // queue max length
        int head;                    // begin
        int tail;                    // end
        int size;
        int items[LENGTH]; // queue

    public:
        Queue() {
            head = 0;
            tail = 0;
            size = 0;
        }

        void Enqueue(int item) {
            if (isFull()) {
                cout << "queue overflow" << endl;
            } else {
                // makes tail circular
                tail = tail % LENGTH;
                items[tail++] = item;
                size++;
            }
        }

        int Dequeue() {
            if (isEmpty()) {
                cout << "queue underflow" << endl;
                return -1;
            } else {
                // makes head circular
                head = head % LENGTH;
                size--;
                return items[head++];
            }
        }

        int Size() { return size; }

        bool isEmpty() { return head == tail; }

        bool isFull() { return size == LENGTH; }

        int Peek() {
            if (isEmpty()) {
                cout << "queue underflow" << endl;
                return -1;
            } else {
                head = head % LENGTH;
                return items[head];
            }
        }

        void toString() {
            if (!isEmpty()) {
                cout << "[";
                for (int i = tail - 1; i != head; i--) {
                    cout << items[i];
                    if (i <= 0) {
                        i = LENGTH - 1;
                    }

                    if ((i - 1) < head) {
                        break;
                    }
                    cout << ", ";
                }

                cout << items[head] << "]" << endl;
            } else {
                cout << "[]" << endl;
            }
        }
};

int main(int argc, char *argv[]) {
    Queue queue;
    int item;

    item = 42;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);
    item = 26;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);
    item = 13;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);
    item = 98;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);
    item = 49;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);

    cout << "queue: ";
    queue.toString();

    item = 11;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);

    cout << "dequeue: " << queue.Dequeue() << endl;
    cout << "dequeue: " << queue.Dequeue() << endl;
    cout << "dequeue: " << queue.Dequeue() << endl;
    cout << "dequeue: " << queue.Dequeue() << endl;
    cout << "dequeue: " << queue.Dequeue() << endl;
    cout << "dequeue: " << queue.Dequeue() << endl;

    cout << "queue: ";
    queue.toString();
    cout << "queue size: " << queue.Size() << endl;

    item = 49;
    cout << "enqueue: " << item << endl;
    queue.Enqueue(item);
    cout << "queue size: " << queue.Size() << endl;
    cout << "peek: " << queue.Peek() << endl;
    cout << "queue size: " << queue.Size() << endl;

    cout << "queue: ";
    queue.toString();

    return EXIT_SUCCESS;
}

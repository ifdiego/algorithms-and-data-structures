#include <cstdlib>
#include <iostream>

using namespace std;

class Stack {
    private:
        static const int MAX = 5; // stack max size
        int top;                  // control top value
        int items[MAX];           // where values will be stored

    public:
        Stack() { top = -1; }

        void Push(int item) {
            if (top >= MAX - 1) {
                cout << "stack overflow" << endl;
            } else {
                items[++top] = item;
            }
        }

        int Pop() {
            if (top <= -1) {
                cout << "stack underflow" << endl;
                return -1;
            } else {
                return items[top--];
            }
        }

        int Size() { return top + 1; }
        bool isEmpty() { return (top == -1) ? true : false; }
        bool isFull() { return (top == MAX - 1) ? true : false; }
        int Peek() { return (top == -1) ? -1 : items[top]; }

        void toString() {
            for (int i = top; i > -1; i--) {
                cout << "[" << items[i] << "]" << endl;
            }
        }
};

int main(int argc, char *argv[]) {
    Stack stack;
    int item;

    item = 42;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    item = 10;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    item = 23;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    item = 76;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    item = 44;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    item = 87;
    cout << "stack push: " << item << endl;
    stack.Push(item);

    stack.toString();

    if (!stack.isEmpty()) {
        cout << "stack not empty!" << endl;
        cout << "stack size: " << stack.Size() << endl;
    }

    cout << "stack pop: " << stack.Pop() << endl;
    cout << "stack pop: " << stack.Pop() << endl;

    stack.toString();

    if (!stack.isFull()) {
        cout << "stack not full!" << endl;
        item = 50;
        cout << "stack push: " << item << endl;
        stack.Push(item);
    }

    stack.toString();

    cout << "stack peek: " << stack.Peek() << endl;
    stack.toString();

    cout << "stack pop: " << stack.Pop() << endl;
    cout << "stack pop: " << stack.Pop() << endl;
    cout << "stack pop: " << stack.Pop() << endl;
    cout << "stack pop: " << stack.Pop() << endl;
    cout << "stack pop: " << stack.Pop() << endl;

    return EXIT_SUCCESS;
}

class NodeStack<T> {
    data: T;
    next: NodeStack<T> | null;

    constructor(data: T) {
        this.data = data;
        this.next = null;
    }
}

class LinkedListStack<T> {
    head: NodeStack<T> | null;
    private count: number;

    constructor() {
        this.head = null;
        this.count = 0;
    }

    push(value: T): void {
        const newNode = new NodeStack(value);
        newNode.next = this.head;
        this.head = newNode;
        this.count++;
    }

    pop(): T | undefined {
        if (this.isEmpty())
            return undefined;
        let current = this.head!.data;
        this.head = this.head!.next;
        this.count--;
        return current;
    }

    peek(): T | undefined {
        if (this.isEmpty())
            return undefined;
        return this.head!.data;
    }

    isEmpty(): boolean {
        return this.head === null;
    }

    size(): number {
        return this.count;
    }

    traverse(): void {
        let current = this.head;
        while (current != null) {
            console.log(current.data);
            current = current.next;
        }
        console.log();
    }
}

const stackList = new LinkedListStack<number>();
stackList.push(42);
stackList.push(8);
stackList.push(99);
stackList.push(31);
stackList.traverse();
console.log("peek:", stackList.peek());
console.log("pop:", stackList.pop());
console.log("size:", stackList.size());
console.log("pop:", stackList.pop());
stackList.traverse();

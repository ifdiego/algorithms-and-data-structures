class NodeQueue<T> {
    data: T;
    next: NodeQueue<T> | null;

    constructor(data: T) {
        this.data = data;
        this.next = null;
    }
}

class LinkedListQueue<T> {
    head: NodeQueue<T> | null;
    tail: NodeQueue<T> | null;
    private count: number;

    constructor() {
        this.head = null;
        this.tail = null;
        this.count = 0;
    }

    enqueue(value: T): void {
        const newNode = new NodeQueue(value);
        if (this.tail)
            this.tail.next = newNode;
        this.tail = newNode;
        if (!this.head)
            this.head = newNode;
        this.count++;
    }

    dequeue(): T | undefined {
        if (this.isEmpty())
            return undefined;
        const current = this.head!.data;
        this.head = this.head!.next;
        if (!this.head)
            this.tail = null;
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
        while (current) {
            console.log(current.data);
            current = current.next;
        }
        console.log();
    }
}

const queueList = new LinkedListQueue<number>();
queueList.enqueue(42);
queueList.enqueue(8);
queueList.enqueue(99);
queueList.enqueue(31);
queueList.traverse();
console.log("peek:", queueList.peek());
console.log("dequeue:", queueList.dequeue());
console.log("size:", queueList.size());
console.log("dequeue:", queueList.dequeue());
queueList.traverse();

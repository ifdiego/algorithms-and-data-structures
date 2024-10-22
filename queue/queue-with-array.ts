class Queue<T> {
    private items: T[] = [];

    enqueue(value: T): void {
        this.items.push(value);
    }

    dequeue(): T | undefined {
        if (this.isEmpty())
            return undefined;
        return this.items.shift();
    }

    peek(): T | undefined {
        if (this.isEmpty())
            return undefined;
        return this.items[0];
    }

    isEmpty(): boolean {
        return this.items.length === 0;
    }

    size(): number {
        return this.items.length;
    }

    print(): void {
        console.log("items:", this.items);
    }
}

const queue = new Queue<number>();
queue.enqueue(42);
queue.enqueue(8);
queue.enqueue(99);
queue.enqueue(31);
queue.print();
console.log("peek:", queue.peek());
console.log("dequeue:", queue.dequeue());
console.log("size:", queue.size());
console.log("dequeue:", queue.dequeue());
queue.print();

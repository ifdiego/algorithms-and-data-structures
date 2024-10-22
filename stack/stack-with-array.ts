class Stack<T> {
    private items: T[] = [];

    push(value: T): void {
        this.items.push(value);
    }

    pop(): T | undefined {
        if (this.isEmpty())
            return undefined;
        return this.items.pop();
    }

    peek(): T | undefined {
        if (this.isEmpty())
            return undefined;
        return this.items[this.items.length - 1];
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

const stack = new Stack<number>();
stack.push(42);
stack.push(8);
stack.push(99);
stack.push(31);
stack.print();
console.log("peek:", stack.peek());
console.log("pop:", stack.pop());
console.log("size:", stack.size());
console.log("pop:", stack.pop());
stack.print();

class DoublyListNode<T> {
    data: T;
    next: DoublyListNode<T> | null;
    previous: DoublyListNode<T> | null;

    constructor(data: T) {
        this.data = data;
        this.next = null;
        this.previous = null;
    }
}

class DoublyLinkedList<T> {
    head: DoublyListNode<T> | null;
    tail: DoublyListNode<T> | null;

    constructor() {
        this.head = null;
        this.tail = null;
    }

    append(value: T): void {
        const newNode = new DoublyListNode(value);
        if (!this.head) {
            this.head = newNode;
            this.tail = newNode;
        } else {
            newNode.previous = this.tail;
            if (this.tail)
                this.tail.next = newNode;
            this.tail = newNode;
        }
    }

    traverseForward(): void {
        let current = this.head;
        while (current) {
            console.log(current.data);
            current = current.next;
        }
        console.log();
    }

    traverseBackward(): void {
        let current = this.tail;
        while (current) {
            console.log(current.data);
            current = current.previous;
        }
        console.log();
    }

    search(value: T): DoublyListNode<T> | null {
        let current = this.head;
        while (current) {
            if (current.data === value)
                return current;
            current = current.next;
        }
        return null;
    }

    delete(value: T): void {
        if (!this.head) return;
        let current: DoublyListNode<T> | null = this.head;
        while (current) {
            if (current.data === value) {
                if (current.previous)
                    current.previous.next = current.next;
                else
                    this.head = current.next;
                if (current.next)
                    current.next.previous = current.previous;
                else
                    this.tail = current.previous;
                return;
            }
            current = current.next;
        }
    }
}

const doublelist = new DoublyLinkedList<number>();
doublelist.append(42);
doublelist.append(8);
doublelist.append(99);
doublelist.append(31);
doublelist.traverseForward();
doublelist.traverseBackward();
doublelist.delete(8);
doublelist.traverseForward();
doublelist.traverseBackward();
doublelist.delete(31);
doublelist.traverseForward();
doublelist.traverseBackward();

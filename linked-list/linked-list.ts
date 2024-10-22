class ListNode<T> {
    data: T;
    next: ListNode<T> | null;

    constructor(data: T) {
        this.data = data;
        this.next = null;
    }
}

class LinkedList<T> {
    head: ListNode<T> | null;

    constructor() {
        this.head = null;
    }

    append(value: T): void {
        if (!this.head) {
            this.head = new ListNode(value);
        } else {
            let current = this.head;
            while (current.next != null) {
                current = current.next;
            }
            current.next = new ListNode(value);
        }
    }

    traverse(): void {
        let current = this.head;
        while (current != null) {
            console.log(current.data);
            current = current.next;
        }
        console.log();
    }

    search(value: T): ListNode<T> | null {
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
        if (this.head.data === value) {
            this.head = this.head.next;
            return;
        }
        let current: ListNode<T> | null = this.head;
        let previous: ListNode<T> | null = null;
        while (current && current.data !== value) {
            previous = current;
            current = current.next;
        }
        if (current) {
            previous!.next = current.next;
        }
    }
}

const list = new LinkedList<number>();
list.append(42);
list.append(8);
list.append(99);
list.append(31);
list.traverse();
list.delete(8);
list.traverse();
list.delete(31);
list.traverse();

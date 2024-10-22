class NodeHashTable<T> {
    data: T;
    next: NodeHashTable<T> | null;

    constructor(data: T) {
        this.data = data;
        this.next = null;
    }
}

class LinkedListHashTable<T> {
    private head: NodeHashTable<T> | null;
    private compare: (a: T, b: T) => boolean;

    constructor(compare: (a: T, b: T) => boolean) {
        this.head = null;
        this.compare = compare;
    }

    append(value: T): void {
        const newNode = new NodeHashTable(value);
        if (!this.head) {
            this.head = newNode;
        } else {
            let current = this.head;
            while (current.next) {
                current = current.next;
            }
            current.next = newNode;
        }
    }

    search(value: T): NodeHashTable<T> | null {
        let current = this.head;
        while (current) {
            if (this.compare(current.data, value)) {
                return current;
            }
            current = current.next;
        }
        return null;
    }
}

class HashTable {
    private size: number;
    private data: LinkedListHashTable<string>[];

    constructor(size: number) {
        this.size = size;
        this.data = [];
    }

    hash(value: string): number {
        const sum = value
            .split("")
            .reduce((acc: number, char: string) => acc + char.charCodeAt(0), 0);
        return sum % this.size;
    }

    insert(value: string): void {
        const index: number = this.hash(value);
        if (!this.data[index]) {
            this.data[index] = new LinkedListHashTable<string>((a: string, b: string) => a === b);
        }
        this.data[index].append(value);
    }

    search(value: string): string | null {
        const index = this.hash(value);
        if (this.data[index]) {
            const node = this.data[index].search(value);
            return node ? node.data : null;
        }
        return null;
    }
}

const hashTable = new HashTable(10);
hashTable.insert("aabb");
hashTable.insert("bbcc");
hashTable.insert("abcd");
console.log(hashTable.search("abcd"));
console.log(hashTable.search("aabb"));
console.log(hashTable.search("xxxx"));

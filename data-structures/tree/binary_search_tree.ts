class Node {
    data: number;
    left: Node | null;
    right: Node | null;

    constructor(data: number) {
        this.data = data;
        this.right = null;
        this.left = null;
    }
}

function insert(root: Node | null, value: number): Node {
    if (root === null) {
        return new Node(value);
    }
    if (root.data === value) {
        return root;
    }
    if (value < root.data) {
        root.left = insert(root.left, value);
    } else {
        root.right = insert(root.right, value);
    }
    return root;
}

function inOrderTraversal(root: Node | null): void {
    if (root !== null) {
        inOrderTraversal(root.left);
        console.log(root.data);
        inOrderTraversal(root.right);
    }
}

function search(root: Node | null, value: number): Node | null {
    if (root === null || root.data === value) {
        return root;
    }
    if (value < root.data) {
        return search(root.left, value);
    } else {
        return search(root.right, value);
    }
}

function main(): void {
    let tree: Node | null = null;
    tree = insert(tree, 42);
    tree = insert(tree, 8);
    tree = insert(tree, 99);
    tree = insert(tree, 31);
    inOrderTraversal(tree);
}

main();

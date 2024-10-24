function merge(left: number[], right: number[]): number[] {
    const sorted: Array<number> = [];
    while (left.length && right.length) {
        if (left[0] < right[0]) {
            const value = left.shift();
            if (value !== undefined)
                sorted.push(value);
        } else {
            const value = right.shift();
            if (value !== undefined)
                sorted.push(value);
        }
    }
    return [...sorted, ...left, ...right];
}

function mergesort(list: number[]): number[] {
    if (list.length <= 1) return list;
    let left = list.slice(0, list.length / 2);
    let right = list.slice(list.length / 2, list.length);
    left = mergesort(left);
    right = mergesort(right);
    return merge(left, right);
}

const unsorted: Array<number> = [5, 3, 1, 2, 4];
const sorted = mergesort(unsorted);
console.log(sorted);

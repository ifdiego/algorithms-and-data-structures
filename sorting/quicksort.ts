function swap_numbers(arr: number[], i: number, j: number) {
    [arr[i], arr[j]] = [arr[j], arr[i]];
}

function quicksort(array: number[], start: number, end: number) {
    if (start >= end) return;
    const pointer = rearrange(array, start, end);
    quicksort(array, start, pointer - 1);
    quicksort(array, pointer + 1, end);
}

function rearrange(array: number[], start: number, end: number): number {
    const pivot = array[end];
    let pointer = start;
    for (let i = start; i < end; i++) {
        if (array[i] < pivot) {
            swap_numbers(array, pointer, i);
            pointer++;
        }
    }
    swap_numbers(array, pointer, end);
    return pointer;
}

const values: Array<number> = [5, 3, 1, 2, 4];
quicksort(values, 0, values.length - 1);
console.log(values);

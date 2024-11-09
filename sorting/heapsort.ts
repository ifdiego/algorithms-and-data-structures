function heapsort(array: number[]) {
    const size: number = array.length;
    for (let i = Math.floor(size/2) - 1; i >= 0; i--) {
        heapify(array, size, i);
    }
    let j: number = size - 1;
    while (j >= 1) {
        heapsortSwap(array, 0, j);
        heapify(array, j, 0);
        j--;
    }
}

function heapify(array: number[], size: number, i: number) {
    let largest: number = i;
    let left: number = 2 * i + 1;
    let right: number = 2 * i + 2;
    if (left < size && array[left] > array[largest])
        largest = left;
    if (right < size && array[right] > array[largest])
        largest = right;
    if (largest != i) {
        heapsortSwap(array, i, largest);
        heapify(array, size, largest);
    }
}

function heapsortSwap(array: number[], a: number, b: number) {
    const temp = array[a];
    array[a] = array[b];
    array[b] = temp;
}

const heap_arr = [5, 3, 1, 2, 4];
heapsort(heap_arr);
console.log(heap_arr);

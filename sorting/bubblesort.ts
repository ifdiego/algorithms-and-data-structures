function swap(arr: number[], i: number, j: number) {
    [arr[i], arr[j]] = [arr[j], arr[i]];
}

function bubblesort(array: number[]) {
    for (let i = 0; i < array.length - 1; i++) {
        let swapped: boolean = false;
        for (let j = 0; j < array.length - 1; j++) {
            if (array[j] > array[j + 1]) {
                swap(array, j, j + 1);
                swapped = true;
            }
        }
        if (!swapped) break;
    }
}

const arr = [5, 3, 1, 2, 4];
bubblesort(arr);
console.log(arr);

function insertionsort(arr: number[]): number[] {
    for (let i = 1; i < arr.length; i++) {
        const temp = arr[i];
        let j = i - 1;
        while (j >= 0 && arr[j] > temp) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = temp;
    }
    return arr;
}

const nums = [5, 3, 1, 2, 4];
const numsSorted = insertionsort(nums);
console.log(numsSorted);

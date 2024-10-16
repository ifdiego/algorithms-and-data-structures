#include <stdio.h>

void quicksort(int number, int* array) {
    if (number <= 1)
        return;
    int pivot = array[0];
    int i = 1;
    int j = number-1;
    do {
        while (i < number && array[i] <= pivot) i++;
        while (array[j] > pivot) j--;
        if (i < j) {
            int temp = array[i];
            array[i] = array[j];
            array[j] = temp;
            i++;
            j--;
        }
    } while(i <= j);
    array[0] = array[j];
    array[j] = pivot;
    quicksort(j, array);
    quicksort(number-i, &array[i]);
}

int main(void) {
    int array[8] = { 25, 48, 37, 12, 57, 86, 33, 92 };
    quicksort(8, array);
    printf("sorted array: ");
    for (int i = 0; i < 8; i++)
        printf("%d ", array[i]);
    printf("n");
    return 0;
}

#include <stdio.h>

void bubblesort(int number, int* array) {
    int i, j;
    for (i = number-1; i >= 1; i--) {
        int change = 0;
        for (j = 0; j < i; j++)
            if (array[j] > array[j+1]) {
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
                change = 1;
            }
            if (change == 0)
                return;
    }
}

int main(void) {
    int i;
    int array[8] = { 25, 48, 37, 12, 57, 86, 33, 92 };
    bubblesort(8, array);
    printf("ordened array: ");
    for (i = 0; i < 8; i++)
        printf("%d ", array[i]);    return 0;
    printf("\n");
    return 0;
}

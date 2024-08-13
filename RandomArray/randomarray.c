#include <stdio.h>
#include <stdlib.h>
#include <openssl/rand.h>

int generate_random_byte(int* array, int size, int i) {
    int num;
    while (1) {
        if (!RAND_bytes((unsigned char*)&num, sizeof(int))) {
            fprintf(stderr, "Error with rand byte\n");
            exit(EXIT_FAILURE);
        }
        //make sure number is between 0-99
        num = abs(num % 100);

        // Check if the number is already in the array or is sequential to the previous number
        int is_unique = 1;
        for (int j = 0; j < i; j++) {
            if (array[j] == num || (i > 0 && abs(array[i - 1] - num) == 1)) {
                is_unique = 0;
                break;
            }
        }

        if (is_unique) {
            return num;
        }
    }
}

void generate_random_array(int* array, int size) {
    for (int i = 0; i < size; i++) {
        array[i] = generate_random_byte(array, size, i);
    }
}

void sort_array(int* array, int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

void print_array(int* array, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}

int main() {
    int array[100];
    int size = 100;

    generate_random_array(array, size);
    printf("Randomized Array:\n");
    print_array(array, size);

    sort_array(array, size);
    printf("Sorted Array:\n");
    print_array(array, size);

    return 0;
}
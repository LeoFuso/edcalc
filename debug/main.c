#include <stdlib.h>
#include <stdio.h>

#include "../adapter/c/C_Distance.h"

int
main()
{

    double * x = (double *) calloc(32, sizeof(double));
    double * y = (double *) calloc(32, sizeof(double));

    unsigned long array_size = 10;
    unsigned long num_tests = 10;

    srand(3);

    for (unsigned int i = 0; i < array_size; i++) {
        x[i] = (rand() % 100) + 1;
        y[i] = (rand() % 100) + 1;
    }

    double result = 0.0;
    for (unsigned int i = 0; i< num_tests; ++i) {
        result = calculate(x, y, array_size);
    }

    printf("      METHOD:   EUCLIDEAN\n");
    printf("      RESULT:   %f\n", result);

    return 0;
}

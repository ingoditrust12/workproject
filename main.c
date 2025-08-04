#include <stdio.h>
#include "swap.h"

int main(void)
{
    int x = 4, y = 9;
    swap_int(&x, &y);
    printf("x = %d, y = %d\n", x, y);
    return 0;
}


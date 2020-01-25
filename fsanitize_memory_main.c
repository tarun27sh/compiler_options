#include<stdio.h>
#include<stdlib.h>
int main()
{
    int *a = malloc(sizeof(int) *10);
    int b = a[2];
    if (b)
        printf("b=%d\n", b);
    return 0;
}

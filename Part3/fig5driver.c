#include <stdio.h>
extern int find_max();

int find_max();

int main() {
    int max = find_max();
    printf("Max = %d\n", max);
    return 0;
}

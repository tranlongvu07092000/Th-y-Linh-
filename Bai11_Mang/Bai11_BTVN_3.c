#include <stdio.h>
#include <conio.h>

int main(){

    int A[1000];
    int n;
    int i;
    printf("So Phan tu cua mang can dao la: ");
    scanf("%d", &n);
    for (i=1; i<n; i++)
    {
        printf("So thu %d: ", i);
        scanf("%d", &A[i]);
    }
    for(i=n-1; i>=1; i--)
    {
        printf("\n%d", A[i]);
    }
   return 0;
}

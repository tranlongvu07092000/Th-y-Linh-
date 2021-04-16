#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void main(){

int A[10][10], B[10][10], C[10][10];
int row, col;
int i, j;

int *ptr1[10], *ptr2[10], *ptr3[10];

ptr1[0] = (int*)malloc(10*10*sizeof(int));
ptr2[0] = (int*)malloc(10*10*sizeof(int));
ptr3[0] = (int*)malloc(10*10*sizeof(int));


printf("Enter the dimension of the matrix: ");
scanf("%d %d", &row, &col);


printf("Enter the value of matrix A and B: \n");

for(i=0; i<row; i++)
{
for(j=0; j<col; j++)
{
printf("\nA[%d, %d], B[%d, %d] : ", i,j,i,j);
scanf("%d %d", &A[i][j], &B[i][j]);
C[i][j] = A[i][j] + B[i][j];
ptr1[i][j] = A[i][j];
ptr2[i][j] = B[i][j];
ptr3[i][j] = C[i][j];

}

}

for(i=0; i<row; i++)
{
for(j=0; j<col; j++)
{
printf("\nA[%d, %d] = %d, B[%d, %d] = %d, C[%d, %d] = %d\n",i,j,ptr1[i][j],i,j,ptr2[i][j],i,j,ptr3[i][j]);
}
}

free(ptr1);
free(ptr2);
free(ptr3);

getch();

}


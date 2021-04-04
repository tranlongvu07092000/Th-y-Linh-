#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int iResult, a = 10 , b = 8 , c = 6 , d=5 , e=2;
	iResult= a - b - c - d ;
	printf("Gia tri cua iresult khi iresult = a - b - c - d la:%d \n",iResult);
	iResult=a-b+c-d;
	printf("Gia tri cua iresult khi iResult=a-b+c-d la :%d \n ",iResult);
	iResult=a+b/c/d;
	printf("Gia tri cua iresult khi iResult=a+b/c/d la : %d \n ",iResult);
	iResult =a+b/c*d;
	printf("Gia tri cua iresult khi iResult =a+b/c*d la : %d \n",iResult);
	iResult = a/b*c*d;
	printf("Gia tri cua iresult khi iResult = a/b*c*d la : %d \n ",iResult);
	
	iResult = a%b/c*d;
	printf("Gia tri cua iresult khi iResult = a mod b/c*d la :%d \n",iResult);
	iResult = a%b%c%d;
	printf("Gia tri cua iresult khi iResult = a mod b mod c mod d la :%d \n",iResult);
	iResult = a-(b-c)-d;
	printf("Gia tri cua iresult khi iResult = a-(b-c)-d la :%d \n",iResult);
	iResult = a-((b-c)-d);
	printf("Gia tri cua iresult khi iResult = a-((b-c)-d) la :%d \n",iResult);
	iResult = a%(b%c)*d*e;
	printf ("Gia tri cua iresult khi iResult =a mod (b mod c)*d*e la : %d \n",iResult);
	iResult = a+(b-c)*d-e;
	printf ("gia tri cua iresult khi iResult = a+(b-c)*d-e la :%d \n",iResult);
	iResult =(a+b)*c+d*e;
	printf ("Gia tri cua iresult khi iResult =(a+b)*c+d*e la :%d \n",iResult);
	return 0;
}

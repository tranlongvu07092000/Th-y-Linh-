#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char A;
	printf("Nhap vao mot ki tu :"); scanf("%c",&A);
	getch();
	printf("Ma ASCII cua ki tu %c la: %d",A);
	return 0;
}

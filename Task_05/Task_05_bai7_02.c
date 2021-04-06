#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a,b;
	printf("Nhap a:"); scanf("%d",&a);
	printf("Nhap b:"); scanf("%d",&b);
	if (a*b >= 1000)
	printf(" tich cua a va b lon hon 1000!",a*b);
	else
	printf("tich cua a va b nho hon 1000!",a*b);
	
	return 0;
}

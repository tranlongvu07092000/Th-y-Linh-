#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a,b;
	printf("Nhap a =\n"); scanf("%d",&a);
	printf("Nhap b =\n"); scanf("%d",&b);
	a+b;
	printf("Tong =%d\n",a+b);
	printf("Hieu =%d\n",a-b);
	printf("Tich =%d\n",a*b);
	printf("Thuong=%d\n",a%b);
	return 0;
}

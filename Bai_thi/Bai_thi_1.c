#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	int a,b;
	int sum = 0;
	printf("Nhap a = ");
	scanf("%d",&a);
	b = a;
	while (b != 0)
	{
		sum += b % 10;
		b/=10;
	}
	printf("Tong cac chu so cua a = %d",sum);
	return 0;
}

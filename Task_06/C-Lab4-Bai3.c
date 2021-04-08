#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a,b,c;
	printf("Nhap a= ");
	scanf("%d",&a);
	printf("Nhap b=");
	scanf("%d",&b);
	printf("Nhap c=");
	scanf("%d",&c);
	if(a>b && a>c);
	printf("a is max");
	if(b>a && b>c)
	printf("b is max");
	if(c>a && c>b)
	printf("c is max");
	else 
	printf("Xem lai di co hai so bang nhau roi");
	return 0;
}

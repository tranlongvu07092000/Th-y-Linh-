#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float r,h,V;
	const float PI=3.14159;
	printf("Chieu cao cua hinh tru ="); scanf("%d",&h);
	printf("Ban kinh cua hinh tru ="); scanf("%d",&r);
	V=PI*r*r*h;
	printf("The tich cua hinh tru la : V = %.1f",V);
	
	return 0;
}

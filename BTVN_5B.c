#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	float inch,feet,a;
	printf("Nhap so thuc a(cm): "); scanf("%f",&a);
	inch=a/2.54;
	feet=a/(2.54*12);
	printf("So inch tuong ung la : %.1f \n",inch);
	printf("So feet tuong ung la : %.1f ",feet);
	return 0;
}

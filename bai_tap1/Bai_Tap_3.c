#include <stdio.h>
#include <stdlib.h>


/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	float r;
    const float PI = 3.14159;
	float chuvi,dientich;
	printf("Nhap ban kinh hinh tron r =");
	scanf("%f",&r);
	chuvi=PI*r*2;
	printf("Chu vi hinh tron la:%.1f\n",chuvi);
	dientich=PI*r*r;
	printf("Dien tich hinh tron la:%1.f\n",dientich);
	
	
	
	
	return 0;
}

#include<stdio.h>
#define PI 3.14159

int main(){
	int r;
	float C , S;
	printf("Nhap ban kinh cua hinh tron : \n R =");
	scanf("%d",&r);
	C = 2*PI*r;
	S = PI*r*r;
	printf("Chu vi hinh tron = %.1f /n",C);
	printf("dien tich hinh tron = %.1f",S);
	getch();
}

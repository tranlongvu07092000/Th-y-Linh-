#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float toan,ly,hoa;
	printf("Nhap diem mon toan :"); scanf("%f",&toan);
	printf("Nhap diem mon ly :"); scanf("%f",&ly);
	printf("Nhap diem mon hoa:"); scanf("%f",&hoa);
	printf("Trung binh ba mon la:%.1f",(toan+ly+hoa)/3);
	return 0;
}

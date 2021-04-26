#include <stdio.h>
#include <stdlib.h>

float chuvi(float chieudai , float chieurong)
{
	float chuvi;
	chuvi = 2*(chieudai + chieurong );
	return chuvi;
}
float dientich(float chieudai , float chieurong)
{
	float dientich;
	dientich = chieudai*chieurong;
	return dientich;
}

int main() {
	float chieudai;
	float chieurong;
	printf("Nhap chieu dai HCN = ");
	scanf("%f",&chieudai);
	printf("Nhap chieu rong HCN = ");
	scanf("%f",&chieurong);
	printf("Dien Tich HCN = %f \n",chieudai*chieurong);
	printf("Chu vi HCN = %f \n",2*(chieudai+chieurong));
	return 0;
}

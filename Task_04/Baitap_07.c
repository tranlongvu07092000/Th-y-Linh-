#include <stdio.h>
#include <stdlib.h>
#define Pi 3.1459

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float bankinh,canh,chieudai,chieurong;
	printf("Nhap ban kinh hinh tron :");
	 scanf("%f",&bankinh);
	printf("Nhap canh hinh vuong :");
	scanf("%f",&canh);
	printf("Nhap chieu dai hinh chu nhat :");
	scanf("%f",&chieudai);
	printf("Nhap chieu rong hinh chu nhat:");
	scanf("%f",&chieurong);
	printf("Chu vi hinh tron =%.2f\n",2*Pi*bankinh);
	printf("Dien tich hinh tron=%.2f\n",Pi*bankinh*bankinh);
	printf("Chu vi hinh vuong =%.2f\n",canh*4);
	printf("Dien tich hinh vuong =%.2f\n",canh*canh);
	printf("Chu vi hinh chu nhat=%.2f",(chieudai+chieurong)/2);
	printf("Dien tich hinh chu nhat=%.2f\n",chieudai*chieurong); 
	
	return 0;
}

#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	float top,bottom,height;
	printf("Top ="); scanf("%f",&top);
	printf("Bottom ="); scanf("%f",&bottom);
	printf("Height ="); scanf("%f",&height);
	printf("Dien tich cua hinh thang =%.1f",(top+bottom*height)/2);
	return 0;
}

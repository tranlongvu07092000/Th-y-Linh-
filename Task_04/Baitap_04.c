#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float C,F;
    
    printf("Nhap do C :"); scanf("%f",&C);
    F=(9*C + 160)/5;
    printf("chuyen sang do F =%.1f",F);
	return 0;
}

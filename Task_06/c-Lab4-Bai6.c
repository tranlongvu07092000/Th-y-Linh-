#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	float AB,BC,AC;
	printf("Cho tam giac ABC!\n");
	printf("Nhap chieu dai canh AB :"); scanf("%f",&AB);
	
	printf("Nhap chieu dai canh AC :"); scanf("%f",&AC);
	
	printf("Nhap chieu dai canh BC :"); scanf("%f",&BC);
	
	if(AB*AB==AC*AC+BC*BC ){
		printf("ABC la tam giac vuong! \nVoi AB la canh huyen!");
	} else if(AC*AC==AB*AB+BC*BC)
	{
		printf("ABC la tam giac vuong voi AC la canh huyen! ");
	} else if(BC*BC==AB*AB+AC*AC)
		{
		printf("ABC la tam giac vuong voi BC la canh huyen");
	} else 
	printf ("ABC khong phai la tam giac vuong");
	
	return 0;
}


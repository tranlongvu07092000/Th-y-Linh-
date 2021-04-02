#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a;
	printf("Nhap mot so :"); scanf("%d",&a);
	if(a<0){
		printf("a la so nguyen am");
	} if(a==0){
		printf("so 0 khong phai la so nguyen am hay so nguyen duong");
	} if(a>0){
		printf("a la so nguyen duong");
		
	}
	    return 0;
	
}

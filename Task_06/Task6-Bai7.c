#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int num1,num2;
	printf("Enter num1 :"); 
	scanf("%d",&num1);
	printf("Enter num2 :");
	scanf("%d",&num2);
	if(num1%num2==0){
		printf("Num2 la uoc cua num1");
	} else if(num2%num1==0){
		printf("Num1 la uoc cua num2");
	}else 
	printf("Hai so khong phai la uoc cua nhau.");
	return 0;
}


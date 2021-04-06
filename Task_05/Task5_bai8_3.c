#include <stdio.h>

int main(){
	int a,b,c,x,y,z;
	printf("Nhap a = "); scanf("%d",&a);
	printf("Nhap b = "); scanf("%d",&b);
	printf("Nhap c = "); scanf("%d",&c);
	x=a;
	y=b;
	z=c;
	if (x>y&&x>z){
	printf("Gia tri lon nhat la :%d",x);
	} else if(y>x&&y>z) {
	printf("Gia tri lon nhat la : %d",y);
	} else if(z>x&&z>y) {
	printf("Gia tri lon nhat la:%d",z);
	 return 0;
	 }
	 }
	

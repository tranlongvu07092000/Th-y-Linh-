#include <stdio.h>
#include <math.h>
 
 float dientich(int a,int b,int c){
 	float p,s;
 	p = (a+b+c)/2.0;
 	s = sqrt(p*(p-a)*(p-b)*(p-c));
 	return s;
 }
 int main(){
 	int a,b,c;
 	float s;
   printf("nhap ba canh cua tam giac\n");
   printf("nhap canh a ="); scanf("%d",&a);
   printf("nhap canh b="); scanf("%d",&b);
   printf("nhap canh c="); scanf("%d",&c);
 	s=dientich(a,b,c);
 	printf("dien tich cua tam giac = %.1f",s);
 	return 0;
 }
 

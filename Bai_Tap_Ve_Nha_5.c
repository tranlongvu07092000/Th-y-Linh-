#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	float s, m = 3 , n = 5 , r,t;
	float x= 3.0 , y;
	t=n/m;
	printf("The value after t = n/m is : %.1f\n",t);
	r = n%m;
	printf("The value after r=n%m is :%.1f\n",r);
	y=n/m;
	printf("The value after y=n/m is :%1.f\n",y);
	t=x*y-m/2;
	printf("The value after t=x*y-m/2 is :%1.f\n",t);
	x=x*2.0;
	printf("The value after x=x*2.0 is :%.1f\n ",x);
	s=(m+n)/r;
	printf("The value after s=(m+n)/r is :%.1f\n",s);
	y=--n;
	printf("The value after y=--n is :%.1f\n",y);
	
	
	
	
	return 0;
}

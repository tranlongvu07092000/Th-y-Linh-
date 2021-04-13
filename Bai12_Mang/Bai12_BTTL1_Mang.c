#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	int a[5];
	int min,max,locationmin;
	int i;
	
	for (i=0;i<5;i++)
	{
		printf("Nhap cac gia tri : ",i+1);
		scanf("%d",&a[i]);
	}
	max = a[0];
	for (i=1;i<5;i++)
	{
		if (a[i]>max)
		max=a[i];
	}
	printf ("So lon nhat trong day so tren la : %d\n",max);
	for (i=1;i<5;i++)
	{
		if (a[i]<=min)
		min = a[i];
		locationmin=i;
	}
	printf("So be nhat trong day so tren la : %d",min);
	return 0;
}

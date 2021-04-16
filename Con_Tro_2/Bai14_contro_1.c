#include <stdio.h>
#include <string.h>
int main(){
	int b=0,i;
	char n[20],*a,temp;
	
	printf ("Nhap 1 chuoi bat ky: ");	
		scanf("%s",n);	
	b=strlen(n);
	a=n;
	printf ("chuoi %s dao nguoc thanh ",n);
	for (i=0;i<b/2;i++){
		temp=*(a+i);
		*(a+i)=*(a+b-i-1);
		*(a+b-i-1)=temp;	
	}	
	for (i=0;i<b;i++){
		printf ("%c",*(a++));
	}
	
}

#include<stdio.h>

int main(){
	int i=0;
	char a[]="Son chua co nguoi yeu";
	int b=0;
	int c=0;
	while (a[i++] != '\0') 
	{
		if (a[i] == 'u' || a[i]=='e' || a[i] == 'o' || a[i]=='a' || a[i] == 'i')
		b++;
		else 
		c++;
		
	}
	printf("Chuoi %s co chua : \n %d nguyen am va %d phu am.",a,b,c);
	return 0;
}

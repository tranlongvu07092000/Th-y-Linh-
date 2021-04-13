#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i;
	char a[]="nghieng";
	int b=0;
	int c=0;
	while (a[i++] != '\0')
	{
		if (a[i]== 'i' || a[i]=='e')
		b++;
		else
		c++;
	}
	printf("Tu %s co %d phu am va %d nguyen am!",a,b,c);
	return 0;
}

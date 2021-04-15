#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<malloc.h>

int main ()
{
char *a;
char *b;
b=(char*)malloc(100*sizeof(char));
a=(char*)malloc(100*sizeof(char));
printf("Nhap vao ten con thu: ");
scanf("%s",a);
strcpy(a,"s");
strcat(b,a);
a=b;
printf("\n%s",a);

getch();
return 0;
}

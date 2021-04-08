#include "stdio.h"
#include "conio.h"
void main(void)
{
char ch=getch();
printf("Nhap vao mot ki tu:"); scanf("%c",&ch);
if (ch>='a'&&ch<='z')
 printf("Chu %c la chu cai thuong!");
else if (ch>='A'&&ch<='Z')
 printf("Chu %c la chu cai in hoa");
else if (ch>='1'&&ch<='9')
 printf("Cai nay la so roi nhung van thuoc bang chu cai . Chap nhan duoc!");
else printf("Ki tu dac biet");
getch();
}



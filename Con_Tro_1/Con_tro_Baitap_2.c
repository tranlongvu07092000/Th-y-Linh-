#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<malloc.h>

int main ()
{
char *ptr;
ptr=(char*)malloc(100*sizeof(char));
int i, j, n, k = 0;
printf ("\nNhap chuoi:");
scanf ("%s",ptr);
n = strlen( ptr );
for (i = 0,j = ( n - 1 ); i < ( n / 2 ); i++ , j--)
{
if ( *( ptr + i ) == *( ptr + j ) )
{
k++;
}
}
if ( k == ( n / 2 ) )
{
printf ("Chuoi nay la chuoi doc xuoi nguoc deu giong nhau\n");
}
else
{
printf ("Chuoi nay la chuoi binh thuong\n");
}
getch();
return 0;
}

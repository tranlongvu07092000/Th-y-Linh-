#include<stdio.h>
#include<string.h>

char LOWERCASE(char s[100])
{
  int i;
  for(i=0;i<strlen(s);i++)
     {
       if(s[i]>='A' && s[i]<='Z')
        {
      s[i]=s[i]+32;
         }          
     }

}

int main()
{
   char s[100];
   printf("Nhap chuoi: ");
   gets(s);
   LOWERCASE(s);
   printf("%s",s);
}

#include <stdio.h>
 
int main() {
   int arr[5];
   float arr_copy[10];
   int i;
      
   for(i = 0; i < 5; i++) 
   {
   	printf("cac phan tu trong mang arr[%d] = \n",i);
      scanf("%d",&arr[i]);
      arr_copy[i]=arr[i];
}
			
   for(i = 5; i < 10; i++)
    arr_copy[i]=0;   
    {
    	for (i=0;i<10;i++)
    	{
		
      printf(" %d %.1f \n", arr[i], arr_copy[i]);
   }


}
   return 0;
}

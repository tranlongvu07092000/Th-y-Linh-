#include <stdio.h>
#include <stdlib.h>
 
 int linh(int a){
 	int b,i,j;
 	if (a%50==0){
 		return 1;
	 } else 
	 return 0;
 	
 }
 int main(){
 	int v[5],u[5],i,j=0;
 	int a;
 	for (i=0;i<5;i++){
	 
 	printf("Nhap vao mang so nguyen :",i+1);
 	scanf("%d",v+i);
 	if(linh(v[i])){
 		u[j++]=v[i];
	 }
 }  
  for (i=0;i<j;i++){
 	printf("Nhung so la boi so cua 50 la: %d \n",u[i]);
 }
}

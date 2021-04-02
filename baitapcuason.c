#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int toan,ly,hoa,tong;
	float trungbinh;

	printf("Nhap diem mon toan :",toan);
	scanf("%d",&toan);
	printf("Nhap diem mon hoa :",hoa);
	scanf("%d",&hoa);
	printf("Nhap diem mon ly:",ly);
	scanf("%d",&ly);
	tong = toan + ly + hoa;
	trungbinh = tong/3.0;
	printf("Trung binh cua 3 mon la:%.1f",trungbinh);
	
	
	if(trungbinh <=3){
		printf("Hoc ngu vl");
	} else if(trungbinh<=5){
	    printf("Loai may chi the thoi!");	
	
	}else if(trungbinh<=8){
	    printf("Khong di chep bo may cua chim!");
	}else {
		printf("Hoc ngu vl!");
		}

		
	
	return 0;
	
	
	return 0;
}

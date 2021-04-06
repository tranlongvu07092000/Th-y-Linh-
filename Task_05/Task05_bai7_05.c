#include <stdio.h>


int main(){
	int diem,socaudung,diemmoicau=1;
	printf("Nhap so cau dung:");
	scanf("%d",&socaudung);
	diem=socaudung*diemmoicau;
	printf("Diem bai kiem tra la:%d\n",diem);
	if (diem>75){
	printf("Hoc sinh xep loai A!");
	} else if(60<diem&&diem<=75){
	printf("Hoc sinh xep loai B!");
	} else if(45<diem&&diem<=60){
	printf("Hoc sinh xep loai C!");
	} else if(30<diem&&diem<=45){
	printf("Hoc sinh xep loai D!");
	} else if(diem<=30){
	printf("Hoc sinh xep loai E!");
	return 0;
	}
	}

#include <stdio.h>


int main(){
	int luongcoban,phucap,tongluong;
	char thuhang;
	printf("Nhap luong co ban:"); scanf("%d",&luongcoban);
	fflush (stdin);
	printf("Nhap thu hang:"); scanf("%c",&thuhang);
	switch (thuhang) {
		case 'A':
			phucap=300;
			break;
		case 'B':
			phucap=250;
			break;
		case 'C':
			phucap=100;
			break;
		default:
			phucap = 0;
}
    tongluong = luongcoban + phucap;
    printf("Tong luong cua nhan vien la: %d",tongluong);
    return 0;
}

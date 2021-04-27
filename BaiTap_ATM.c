#include<stdio.h>


int login(int user , int mk)
{
	if( user == 79 && mk == 20)
	{
		return 1;
	}
	return 0;
}
int withdraw(int sodu , int ruttien)
{
	int sodu1;
   	printf("Vui long nhap so tien can rut(so tien phai lon hon 50) :");
	scanf("%d",&ruttien);
	sodu1 = sodu - ruttien;
		if( ruttien < 50)
			{
				printf("So tien phai lon hon 50 \n");
			} else {	
			printf("Rut tien thanh cong vui long nhan tien va kiem tra hoa don \n");
			printf("So du con lai trong tai khoan la : %d \n",sodu1);
} return sodu1;
}
char menu(int sodu)
{
	int ruttien;
	int sodu1;
	int chose;
	int a;
	do
	{
	printf("======Menu===== \n");
	printf(" 1. Rut tien \n 2. Xem so du \n 3. Chuyen khoan \n 4. Thoat. \n");
	printf("Vui long chon : ");
	scanf("%d",&chose);
	switch (chose){
		case 1:
			sodu = withdraw(sodu,ruttien);
			break;
		case 2:
			printf("So du hien tai cua ban la: %d",sodu);
			break;
		case 3:
			printf("Vui long nhap so tien can chuyen: "); scanf("%d",&a);
			printf("Chuyen thanh cong %d VND den tai khoan Tran Long Vu",a);
			printf("So du hien tai la: %d",sodu - a);
			break;
		case 4:
			printf("Cam on da su dung dich vu!.");
			return 0;
		default:
				printf("Nhap sai vui long nhap lai! \n",chose);
				break;
	}
} while (chose != 0);
}

int main(){
	
	int sodu =5000 , sodu1 , ruttien;
   int mk;
   int user;
    printf("\t ======Wellcom To ATM======= \n");
	printf("User : "); scanf("%d",&user);
	printf("MK   : "); scanf("%d",&mk);
	if(user == 79 && mk == 20){
		printf("Dang nhap thanh cong! \n");
		menu(sodu);
	} else {
		printf("Dang nhap khong thanh cong! \n");
	}
	
}

#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	printf("\tMENU\n");
	printf("====================\n");
	printf("1. CF\n");
	printf("2. C\n");
	printf("3. HDJ\n");
	printf("4. Dreamweaver\n");
	printf("5. RDBMS\n");
	printf("6. Learn Java By Example\n");
	printf("======================\n");
	printf("Chon :");
	int choose;
	scanf("%d",&choose);
	 switch(choose){
	 	case 1:
	 		printf("Ban chon 1. CF");
	 		break ;
	 	case 2:
	 		printf("Ban chon 2. C");
	 		break;
	 	case 3:
	 		printf("Ban chon 3. HDJ");
	 		break;
	 	case 4:
	 		printf("Ban chon 4. Dreanweaver");
	 		break;
	 	case 5:
	 		printf("Ban chon 5. RDBMS");
	 		break;
	 	case 6:
	 		printf("Ban chon 6. Learn Java By Example");
	 		break;
	 	default :
	 		printf("Khong co trong menu!");
	
	return 0;
}
}

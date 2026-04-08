#include <stdio.h>
#include <stdlib.h>

void exer15(){
    int num;

    do{
        printf("Enter a positive number: ");
        scanf("%d", &num);
        if ( num >= 2){
            printf("número  fatores: \n");
        }else
            printf("Invalid number;
            break;
        }
    }while(num < 0);{
        while ((num % 2) == 0){
            printf("%d 2\n", num);
            num = num/2;
        }
        while ((num % 3) == 0){
            printf("%d 3\n", num);
            num = num/3;
        }
        while ((num % 5) == 0){
            printf("%d 5\n", num);
            num = num/5;
        }
        while ((num % 7) == 0){
            printf("%d 7\n", num);
            num = num/7;

        }
        printf("1\n");
    };

}

int main()
{
    printf("Hello world!\n");
    exer15();
    return 0;
}

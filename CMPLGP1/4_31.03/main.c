#include <stdio.h>
#include <stdlib.h>


void exerc1(){
    int month;

    printf("Digite o número correspondente ao mês: ");
    scanf("%d", &month);

    switch(month){
    case(1):
        printf("Janeiro");
        break;
    case(2):
        printf("Fevereiro");
        break;
    case(3):
        printf("Março");
        break;
    case(4):
        printf("Abril");
        break;
    case(5):
        printf("Maio");
        break;
    case(6):
        printf("Junho");
        break;
    case(7):
        printf("Julho");
        break;
    default:
        printf("Entrada inválida!");
    }

}

void exer2(){
    int loc;

    printf("Digite o número correspondente a origem: ");
    scanf("%d", &loc);

    switch(loc){
    case(1):
        printf("Sul");
        break;
    case(2):
        printf("Norte");
        break;
    case(3):
        printf("Leste");
        break;
    case(4):
        printf("Oeste");
        break;
    case(5):
    case(6):
        printf("Nordeste");
        break;
    case(7):
    case(8):
    case(9):
        printf("Sudeste");
        break;
    default:
        printf("Código inválido!");
    }

}

void exer3(){
    int option;
    float num1, num2;

    printf("Digite o número correspondente a operação matemática\n");
    printf("(1 - Adição | 2 - Subtração | 3 - Divisão | 4 - Multiplicação): ");
    scanf("%d", &option);

    printf("Digite o valor 1: ");
    scanf("%f", &num1);

    printf("Digite o valor 2: ");
    scanf("%f", &num2);

    switch(option){
        case 1:
            printf("Adição: %.2f\n", num1 + num2);
            break;
        case 2:
            printf("Subtração: %.2f\n", num1 - num2);
            break;
        case 3:
            if(num2 != 0)
                printf("Divisão: %.2f\n", num1 / num2);
            else
                printf("Erro: divisão por zero!\n");
            break;
        case 4:
            printf("Multiplicação: %.2f\n", num1 * num2);
            break;
        default:
            printf("Opção inválida!\n");
    }
}
int main()
{
    exer3();
    return 0;
}

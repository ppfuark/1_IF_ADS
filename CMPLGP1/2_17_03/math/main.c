#include <stdio.h>
#include <stdlib.h>

int main()
{
    float Nota1= 0.0;
    float Nota2= 0.0;
    float Media = 0.0;

    printf("Entre com o primeiro valor: \t");
    scanf("%f", &Nota1);
    printf("Entre com o segundo valor!:  \t");
    scanf("%f", &Nota2);

    Media = (Nota1 + Nota2) / 2;

    printf("A média é %2.2f", Media);
}

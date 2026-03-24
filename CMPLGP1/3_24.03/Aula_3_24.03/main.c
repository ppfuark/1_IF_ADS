#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

void exer1(){
    srand(time(NULL));

    int num2 = (rand() % 6 + 1);
    int num3 = (rand() % 6 + 1);
    int num1 = (rand() % 6 + 1);
    int num4 = (rand() % 6 + 1);



    printf("You rolled the dice 4 times and get: %d, %d, %d and %d", num1, num2, num3, num4);
}

void exer2(){
    float x;
    float y;
    float z;

    printf("Type a value for 'z': ");
    scanf("%f", &z);
    printf("Type a value for 'y': ");
    scanf("%f", &y);

    x = y*y + z*z*z + 1;

    printf("The value of 'x' is: %f", x);
}

void exer3(){
    float num1;
    float num2;
    float num3;
    float num4;


    printf("Type a value for the 'xa' number: ");
    scanf("%f", &num1);
    printf("Type a value for the 'ya' number: ");
    scanf("%f", &num2);
    printf("Type a value for the 'xb' number: ");
    scanf("%f", &num3);
    printf("Type a value for the 'yb' number: ");
    scanf("%f", &num4);

    float dist = sqrt(((num3-num1)*(num3-num1)) + ((num4-num2)*(num4-num2)));

    printf("The distance between A and B vectors is: %.2f", dist);
}
void exer4(){
    float angle;
    int height;
    printf("Type the angle value: ");
    scanf("%f", &angle);
    printf("Type the height of the wall: ");
    scanf("%f", &height);

    printf("The stair width is: %f", height/sin(angle));
}

int main()
{
    exer1();
    exer2();
    exer3();
    exer4();
    return 0;
}

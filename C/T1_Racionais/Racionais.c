#include <stdio.h>

struct Rac{
    int num,den;                                      /* estrutura de Racional a/b */
};

struct rac A,B;                                       /* RACIONAIS A e B */

struct Rac le_num(){
int num,den;
    scanf("%d %d", &le_num.num, &le_num.den);         /* leitura de racional A = a / b*/
    return le_num;
};

struct Rac SOMA(Struct Rac A, Struct Rac B){          /* SOMA de dois racionais A + B */
int ma, mb;
    SOMA.den = MMC(A.den,B.den);
    ma = SOMA.den / A.den;
    mb = SOMA.den / B.den;
    A.num = ma*A.num;
    B.num = mb*B.num;
    SOMA.num = A.num + B.num;
    return SOMA;
};

struct Rac SUB(Struct Rac A, Struct Rac B){           /* SUB de dois racionais A - B */
int ma, mb;
    SUB.den = MMC(A.den,B.den);
    ma = SUB.den / A.den;
    mb = SUB.den / B.den;
    A.num = ma*A.num;
    B.num = mb*B.num;
    SUB.num = A.num - B.num;
    return SUB;
};

struct Rac MULT(Struct Rac A, Struct Rac B){          /* MULT de dois racionais A * B */
    MULT.num = A.num * B.num;
    MULT.den = A.den * B.den;
    return MULT;
};

struct Rac DIV(Struct Rac A, Struct Rac B){           /* DIV de dois racionais A div B */
    DIV.num = A.num * B.den;
    DIV.den = A.den * B.num;
    return DIV;
};

struct Rac Simplifica(struct Rac A){               /* Simplificação de um Racional A */
int MDCbase;
    MDCbase = MDC(A);
    if (MDCbase != 1){
        A.num = A.num/MDCbase;
        A.den = A.den/MDCbase;
    };
    return A;
};

int MMC(int a, int b){                                /* MMC de dois numeros(denominadores de A e B) */
int resto, num1, num2;
    num1 = a;
    num2 = b;
    do {
        resto = a % b;
        a = b;
        b = resto;
    } while (resto != 0);
    return (a * b)/ num1;
};

int MDC(struct Rac A){                                /* MDC entre numerador e denominador de A*/
int resto;
    do {
        resto = a % b;
        a = b;
        b = resto;
    } while (resto != 0);
    return a;
};

void imprim(Rac A){
    if(A.num = 0){
        printf("0")
    };
    else if(A.den = 1){
        printf("%d", A.num);
    };
    else{
        printf("%d/%d", A.num, A.den);
    }
}

int main(){
    A = le_num();
    B = le_num();
    imprim(SOMA(A,B));
    imprim(SUB(A,B));
    imprim(MULT(A,B));
    imprim(DIV(A,B));
    return 0;
}
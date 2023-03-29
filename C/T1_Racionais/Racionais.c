#include <stdio.h>

struct Rac{
    int num,den;                                      /* estrutura de Racional a/b */
};

struct Rac le_num(){
    struct Rac R;
    scanf("%d %d", &R.num, &R.den);                   /* leitura de racional A = a / b*/
    return R;
}

int MMC(int num1, int num2){                                /* MMC de dois numeros(denominadores de A e B) */
    int resto, a, b;
    a = num1;
    b = num2;
    do {
        resto = a % b;
        a = b;
        b = resto;
    } while (resto != 0);
    return (num1 * num2)/ a;
}

int MDC(struct Rac A){                                /* MDC entre numerador e denominador de A*/
    int resto = 0;
    do {
        resto = A.num % A.den;
        A.num = A.den;
        A.den = resto;
    } while (resto != 0);
    return A.num;
}

struct Rac SOMA(struct Rac A, struct Rac B){          /* SOMA de dois racionais A + B */
    int ma, mb;
    struct Rac R;
    R.den = MMC(A.den, B.den);
    ma = R.den / A.den;
    mb = R.den / B.den;
    A.num = ma*A.num;
    B.num = mb*B.num;
    R.num = A.num + B.num;
    return R;
}

struct Rac SUB(struct Rac A, struct Rac B){           /* SUB de dois racionais A - B */
    struct Rac R;
    int ma, mb;
    R.den = MMC(A.den,B.den);
    ma = R.den / A.den;
    mb = R.den / B.den;
    A.num = ma*A.num;
    B.num = mb*B.num;
    R.num = A.num - B.num;
    return R;
}

struct Rac MULT(struct Rac A, struct Rac B){          /* MULT de dois racionais A * B */
    struct Rac R;
    R.num = A.num * B.num;
    R.den = A.den * B.den;
    return R;
}

struct Rac DIV(struct Rac A, struct Rac B){           /* DIV de dois racionais A div B */
    struct Rac R;
    R.num = A.num * B.den;
    R.den = A.den * B.num;
    return R;
}

struct Rac Simplifica(struct Rac A){                  /* Simplificação de um Racional A */
    int MDCbase;
    MDCbase = MDC(A);
    if (MDCbase != 1){
        A.num = A.num/MDCbase;
        A.den = A.den/MDCbase;
    };
    if (A.den < 0){
        A.num = -A.num;
        A.den = -A.den;
    }
    return A;
}

void imprim(struct Rac A){                            /* Impressão e simplificação de resultado */
    if (A.num == 0){
        printf("0\n");
    }
    else if (A.den == 1){
        printf("%d\n", A.num);
    }
    else{
        printf("%d/%d\n", A.num, A.den);
    };
}

int main(){
    struct Rac A, B;                                  /* RACIONAIS A e B */ 
    while (1){
        A = le_num();
        if (A.den == 0){
            break;
        }
        B = le_num();
        if (B.den == 0){
            break;
        }
        imprim(Simplifica(SOMA(A, B)));
        imprim(Simplifica(SUB(A, B)));
        imprim(Simplifica(MULT(A, B)));
        imprim(Simplifica(DIV(A, B)));
    printf("\n");        
    }
    return 0;
}
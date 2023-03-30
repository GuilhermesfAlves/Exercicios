#include <stdio.h>

struct rac{
    int num,den;                                      /* estrutura de Racional a/b */
};

struct rac le_num(){
    struct rac result;
    scanf("%d %d", &result.num, &result.den);                   /* leitura de racional a = a / b*/
    return result;
}

int MMC(int num1, int num2){                                /* MMC de dois numeros(denominadores de a e b) */
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

int MDC(struct rac a){                                /* MDC entre numerador e denominador de a*/
    int resto = 0;
    do {
        resto = a.num % a.den;
        a.num = a.den;
        a.den = resto;
    } while (resto != 0);
    return a.num;
}

struct rac SOMA(struct rac a, struct rac b){          /* SOMA de dois racionais a + b */
    int ma, mb;
    struct rac result;
    result.den = MMC(a.den, b.den);
    ma = result.den / a.den;
    mb = result.den / b.den;
    a.num = ma*a.num;
    b.num = mb*b.num;
    result.num = a.num + b.num;
    return result;
}

struct rac SUB(struct rac a, struct rac b){           /* SUB de dois racionais a - b */
    struct rac result;
    int ma, mb;
    result.den = MMC(a.den,b.den);
    ma = result.den / a.den;
    mb = result.den / b.den;
    a.num = ma*a.num;
    b.num = mb*b.num;
    result.num = a.num - b.num;
    return result;
}

struct rac MULT(struct rac a, struct rac b){          /* MULT de dois racionais a * b */
    struct rac result;
    result.num = a.num * b.num;
    result.den = a.den * b.den;
    return result;
}

struct rac DIV(struct rac a, struct rac b){           /* DIV de dois racionais a div b */
    struct rac result;
    result.num = a.num * b.den;
    result.den = a.den * b.num;
    return result;
}

struct rac Simplifica(struct rac a){                  /* Simplificação de um Racional a */
    int MDCbase;
    MDCbase = MDC(a);
    if (MDCbase != 1){
        a.num = a.num/MDCbase;
        a.den = a.den/MDCbase;
    };
    if (a.den < 0){
        a.num = -a.num;
        a.den = -a.den;
    }
    return a;
}

void imprim(struct rac a){                            /* Impressão e simplificação de resultado */
    if (a.num == 0){
        printf("0\n");
    }
    else if (a.den == 1){
        printf("%d\n", a.num);
    }
    else{
        printf("%d/%d\n", a.num, a.den);
    };
}

int main(){
    struct rac a, b;                                  /* RACIONAIS a e b */ 
    a = le_num();
    if (a.den != 0)
          b = le_num();
    else
        return 1;
    while (b.den != 0){
        imprim(Simplifica(SOMA(a, b)));
        imprim(Simplifica(SUB(a, b)));
        imprim(Simplifica(MULT(a, b)));
        imprim(Simplifica(DIV(a, b)));
        printf("\n");
        a = le_num();
        if (a.den != 0)
            b = le_num();
        else
            return 1;
    }
    return 0;
}

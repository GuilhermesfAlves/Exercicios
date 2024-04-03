#include <stdio.h>
#include <string.h>

/*Recebe um ponteiro para uma string
como argumento e duplica a mesma,
alocando a memória necessária;
retorna o ponteiro para a string
duplicada.*/

int main(){
    char string01[101], *string02;

    printf("Digite uma string: " );
    scanf("%s", string01);
    string02 = strdup(string01);
    printf("A string digitada foi: %s", string02);
    return 0;
}
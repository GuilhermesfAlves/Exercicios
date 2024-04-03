#include <stdio.h>
#include <string.h>

/*Mesmo funcionamento da strcat.
Porém, recebe um terceiro
argumento inteiro indicando quantos
caracteres devem ser concatenados,
no máximo (excluindo o ‘\0’).*/

int main(){
    char string01[101], string02[101];

    printf("Digite uma string: " );
    scanf("%s", string01);
    printf("Digite outra string: " );
    scanf("%s", string02);
    if (strlen(string01) <= 50){
        strncat(string01, string02, 50);
        printf("A concatenacao das stringse: %s", string01);
    }
    return 0;
}
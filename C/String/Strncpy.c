#include <stdio.h>
#include <string.h>

/*Mesmo funcionamento da strcpy.
Porém, recebe um terceiro
argumento inteiro indicando quantos
caracteres devem ser copiados, no
máximo (excluindo o ‘\0’).*/

int main(){
    char string[101], copia[101];
    
    printf("Digite uma string: ");
    scanf("%s", string);
    strncpy(copia, string, 4);
    printf("A string digitada foi: %s", copia);
    return 0;
}
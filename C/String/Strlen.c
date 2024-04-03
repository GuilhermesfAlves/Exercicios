#include <stdio.h>
#include <string.h>

/*Recebe o ponteiro para uma string
como argumento; retorna a
quantidade de caracteres na mesma
(sem contar o ‘\0’).*/

int main(){
    char string[101];
    
    printf("Digite uma string: " );
    scanf("%s", string);
    printf("A string digitada tem %d caracteres!" , strlen(string));
    return 0;
}
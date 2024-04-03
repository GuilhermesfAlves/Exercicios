#include <stdio.h>
#include <string.h>

/*Recebe, em ordem, o ponteiro para
onde a string base deve ser copiada
(um vetor de char com tamanho
suficiente) e o ponteiro para a
string base; retorna o ponteiro para
a string copiada.*/

int main(){
    char string[101], copia[101];
    
    printf("Digite uma string: ");
    scanf("%s", string);
    strcpy(copia, string);
    printf("A string digitada foi: %s", copia);
    return 0;
}
#include <stdio.h>
#include <string.h>

/*Recebe dois ponteiros para strings,
sendo que a segunda string deve ser
concatenada na primeira (a primeira
string deve ter espaço previamente
alocado); retorna o ponteiro para a
string copiada.*/

int main(){
    char string01[101], string02[101];
    
    printf("Digite uma string: " );
    scanf("%s", string01);
    printf("Digite outra string: " );
    scanf("%s", string02);
    if ((strlen(string01) <= 50) && (strlen(string02) <= 50)){
        strcat(string01, string02);
        printf("A concatenacao das strings e: %s", string01);
    }
    return 0;
}
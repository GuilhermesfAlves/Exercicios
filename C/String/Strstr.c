#include <stdio.h>
#include <string.h>

/*Recebe um ponteiro para string base
e um para uma substring; retorna o
ponteiro para a primeira ocorrência
da substring na string fornecida. Se
não houverem ocorrências, retorna
NULL (0).*/

int main(){
    char string[101], *busca;

    printf("Digite uma string: " );
    scanf("%s", string);
    busca = strstr(string, "aba");
    if (busca != 0)
        printf("A substring esta a partir do indice %d", busca-string);
    else
        printf("Nao existe a substring 'aba' na string!" );
    return 0;
}
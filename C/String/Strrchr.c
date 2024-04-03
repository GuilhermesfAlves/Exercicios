#include <stdio.h>
#include <string.h>

/*Recebe um ponteiro para string e um
caractere qualquer; retorna o
ponteiro para a última ocorrência do
caractere na string fornecida. Se
não houverem ocorrências, retorna
NULL (0).*/

int main(){
    char string[101], *busca;

    printf("Digite uma string: " );
    scanf("%s", string);
    busca = strrchr(string, 'a');
    if (busca != 0)
        printf("O ultimo 'a' encontrado está no indice %d", busca-string);
    else
        printf("Nao existe a letra 'a' na string!");
    return 0;
}
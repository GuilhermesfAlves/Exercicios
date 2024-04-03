#include <stdio.h>
#include <string.h>

/*Recebe um ponteiro para string base
e um para uma substring
separadora; retorna o ponteiro para
a primeira ocorrência de um
caractere na string base antes/após
a substring fornecida. Se não
houverem ocorrências, retorna NULL
(0).*/

int main(){
    char string[101], separador [] = "-", *token;

    printf("Digite uma string: " );
    scanf("%[^\n]", string);
    getchar();
    printf("%s\n", string);
    token = strtok(string, separador);
    do {
        printf("O token encontrado foi: %s\n", token);
        printf("%s\n", string);
        token = strtok(NULL, separador);
    } while(token);
    return 0;
}
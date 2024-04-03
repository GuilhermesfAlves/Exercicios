#include <stdio.h>

int main(){
    FILE* arq;
    char c, *s;


    arq = fopen ("abc.txt","r");
    /*leitura somente, se nao existe, retorna NULL*/

    arq = fopen ("abc.txt","w");
    /*escrita somente, se nao existe, cria um novo, se existe reseta*/
    
    arq = fopen ("abc.txt","a");
    /*leitura e escrita, se nao existe, cria um novo, se existe preserva*/



    arq = fopen ("abc.txt","r+");
    /*escreve e lê no inicio do arq*/
    
    arq = fopen ("abc.txt","w+");
    /*lê e escreve no inicio do arq, conteudo apagado*/
    
    arq = fopen ("abc.txt","a+");
    /*lê no inicio, escreve no final, conteudo preservado*/

    fputc("a",arq);
    fputs("aa",arq);
    fprintf(arq,"aa %d", 8);

    c = fgetc(arq);
    fscanf(arq,"%s",&s);

    if (!feof(arq));


    fclose (arq);

    return 0;
}
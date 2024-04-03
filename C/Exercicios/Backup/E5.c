#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv){
    FILE* arq = fopen("bkp.bin", "rb");
    FILE* final;
    unsigned int numReg = 0;
    unsigned int tamReg = 0;
    unsigned int tamNome = 0;
    unsigned int comecoNome = 0;
    unsigned int comecoCont = 0;
    char* nomeArq;
    char* conteudo;
    char percorre = 'a';
    
    if(argc < 2){
        fread(&numReg, sizeof(unsigned int), 1, arq);
        for(int i = 0; i < numReg; i++){
            fread(&tamReg, sizeof(unsigned int), 1, arq);
            comecoNome = ftell(arq);
            percorre = 'a';
            while(percorre != '\n'){
                fread(&percorre, sizeof(char), 1, arq);
            }
            comecoCont = ftell(arq);
            tamNome = comecoCont - comecoNome;
            tamReg = tamReg - tamNome;
            fseek(arq, comecoNome, SEEK_SET);
            nomeArq = malloc(sizeof(char) * tamNome);        
            for(int i = 0; i < tamNome; i++){
                fread(&nomeArq[i], sizeof(char), 1, arq);
            }
            final = fopen(nomeArq, "wb");
            conteudo = malloc(sizeof(char)*tamReg);
            for(int i = 0; i < tamReg; i++){
                fread(&conteudo[i], sizeof(char), 1, arq);
            }
            fwrite(conteudo, sizeof(char), tamReg, final);
            fclose(final);

            free(nomeArq);
            free(conteudo);
        }
    }else if(strcmp(argv[1], "-t") == 0){
        fread(&numReg, sizeof(unsigned int), 1, arq);
        for(int i = 0; i < numReg; i++){
            fread(&tamReg, sizeof(unsigned int), 1, arq);
            comecoNome = ftell(arq);
            percorre = 'a';
            while(percorre != '\n'){
                fread(&percorre, sizeof(char), 1, arq);
            }
            comecoCont = ftell(arq);
            tamNome = comecoCont - comecoNome;
            tamReg = tamReg - tamNome;
            fseek(arq, comecoNome, SEEK_SET);
            nomeArq = malloc(sizeof(char) * tamNome);        
            for(int i = 0; i < tamNome; i++){
                fread(&nomeArq[i], sizeof(char), 1, arq);
            }
            conteudo = malloc(sizeof(char)*tamReg);
            for(int i = 0; i < tamReg; i++){
                fread(&conteudo[i], sizeof(char), 1, arq);
            }
            printf("%s%u Bytes\n", nomeArq, tamReg);
            free(nomeArq);
            free(conteudo);
        }
        }else{
            printf("opcao invalida \n");
        }
        
    
    fclose(arq);

    return 0;
}
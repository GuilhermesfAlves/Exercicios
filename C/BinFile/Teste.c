#include <stdio.h>

int main (){
    void *a;
    FILE *arq;

    arq = fopen("abc.txt","a+b");
    
    /*size_t fread (void* data, size_t size, size_t count, FILE* stream)*/
        /*data: buffer que armazenará os blocos lidos de um arquivo*/
        /*size: tamanho do bloco de dados, em bytes*/
        /*count: quantidade de blocos de dados a serem lidos*/
        /*stream: arquivo de origem dos blocos a serem lidos*/
    /*O retorno consiste na quantidade de blocos lidos com sucesso para o buffer.*/
    fread(a, 2, 3, arq);
    
    /*size_t fwrite (const void* data, size_t size, size_t count, FILE* stream)*/
        /*data: buffer armazena os blocos a serem escritos no arquivo*/
        /*size: tamanho do bloco de dados, em bytes*/
        /*count: quantidade de blocos de dados a serem escritos*/
        /*stream: arquivo de destino dos blocos a serem escritos*/
    /*O retorno consiste na quantidade de blocos escritos com sucesso no arquivo.*/
    fwrite("oi", 2, 3, arq);

    /*int fseek (FILE* stream, long int offset, int whence)*/
    fseek(arq, 2, 2);
    
    /*void rewind (FILE* stream)*/
    /*retorna para o inicio*/
    rewind(arq);
    
    /*long int ftell (FILE* stream)*/
    /*retorna a posição em bytes no arquivo*/
    ftell(arq);

    /*int truncate (const char *path, off_t length);*/
        /* *path para o caminho do arquivo*/
        /*lenght para bytes que vão ser mantidos*/
    truncate();

    /*int ftruncate (int fd, off_t length);*/
        /*fd para o nome do arquivo aberto*/
        /*lenght para bytes que vão ser mantidos*/
    ftruncate();

    /*int stat (const char *pathname, struct stat *statbuf);*/
    //stat("arq.txt",);
    
    /*int fstat (int fd, struct stat *statbuf);*/
    //fstat(arq,);

    fclose(arq);

    return 0;
}
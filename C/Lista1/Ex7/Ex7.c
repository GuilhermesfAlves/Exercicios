#include <stdio.h>
#define tam 1024

int main (){

    int n;
    int V[tam], rep[tam];
    scanf("%d",&n);
    for (int i=0;i<n;i++){
        rep[i]=0;
    }
    for (int i=0;i<n;i++){
        scanf("%d",&V[i]);
    }
    for (int i=0;i<n;i++){
        rep[V[i]] = rep[V[i]]+1;
    }
    for (int i=0;i<n;i++){
        if (rep[i]!=0){
            printf("Elemento %d apareceu %d vezes\n", i, rep[i]);
        }
    }
    return 0;
}
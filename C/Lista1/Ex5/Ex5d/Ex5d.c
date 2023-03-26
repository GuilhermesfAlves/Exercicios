#include <stdio.h>
#define tam 1024

int main (){
    int n;
    int V[tam];
    int pme=0,pma=0;
    scanf("%d",&n);
    for (int i=0;i<n;i++){
        scanf("%d", &V[i]);
    }
    for (int i=0;i<n;i++){
        if (V[pme]>V[i]){
            pme = i;
        } 
    }
    for (int i=0;i<n;i++){
        if (V[pma]<V[i]){
            pma = i;
        }
    }
    printf("maior: V[%d] = %d\n", pma, V[pma]);
    printf("menor: V[%d] = %d\n", pme, V[pme]);
    return 0;
}
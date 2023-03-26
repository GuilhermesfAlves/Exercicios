#include <stdio.h>
#define tam 1024

int main(){
    int n;
    int V[tam], U[tam], X[tam];
    scanf("%d",&n);
    for (int i=0; i<n; i++){
        scanf("%d", &U[i]);
    }
    for (int i=0; i<n; i++){
        scanf("%d", &V[i]);
    }
    for (int i=0; i<n; i++){
        X[i]= U[i];
        X[i+n]= V[i];
    }
    for (int i=0;i<2*n; i++){
        printf("X[%d] = %d\n", i, X[i]);
    }
    return 0;
}
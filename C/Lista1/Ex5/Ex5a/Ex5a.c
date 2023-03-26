#include <stdio.h>
#define tam 1024
int main(){
    int n;
    int V[tam];
    int U[tam];
    scanf("%d",&n);
    for (int i = 0; i<n; i++){
        scanf("%d",&V[i]);
    }
    for (int i = 0; i<n; i++){
        U[n-i-1] = V[i];
    }
    for (int i = 0; i<n; i++){
        printf("U[%d] = %d\n", i, U[i]);
    }
    return 0;
}
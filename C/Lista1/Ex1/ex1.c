#include <stdio.h>
#define tam 1024

int main (){
    int V[tam];
    int n;
    scanf("%d",&n);
    for (i = 0; i<n; i++){
        V[i] = i;
        printf("V[%d] = %d", i, V[i]);
    }
    return 0;
}
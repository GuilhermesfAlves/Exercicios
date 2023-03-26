#include <stdio.h>
#define tam 1024
int main(){
    int n;
    int V[tam];
    scanf("%d",&n);
    for (int i = 0; i<n; i++){
        V[i] = n-i-1;
        printf("V[%d] = %d\n", i, V[i]);
    }
    return 0;
}
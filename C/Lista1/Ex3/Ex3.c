#include <stdio.h>
#define tam 1024
int main(){
    int n;
    int V[tam];
    scanf("%d",&n);
    for (int i = 0; i<n; i++){
        scanf("%d",&V[i]);
    }
    for (int i = 0; i<n; i++){
        printf("V[%d] = %d\n", i, V[i]);        
    }
    return 0;
}
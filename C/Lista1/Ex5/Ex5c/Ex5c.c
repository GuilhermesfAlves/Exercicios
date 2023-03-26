#include <stdio.h>
#define tam 1024

int main(){
    int n, s=0;
    int V[tam];
    double m;
    scanf("%d",&n);
    for (int i = 0; i<n; i++){
        scanf("%d",&V[i]);
    }
    for (int i = 0; i<n; i++){
        s = s + V[i];
    }
    for (int i = 0; i<n; i++){
        printf("V[%d] = %d\n", i, V[i]);
    }
    m = s/n;
    printf("n = %d\n", n);
    printf("s = %d\n", s);    
    printf("media = %f\n", m);
    return 0;
}
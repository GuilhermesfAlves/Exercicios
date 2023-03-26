#include <stdio.h>
#define tam 1024

int main(){
    int n, s;
    int V[tam];

    scanf("%d",&n);
    for (int i = 0; i<n; i++){
        scanf("%d",&V[i]);
    }
    for (int i = 0; i<n; i++){
        s = s + V[i];
    }
    printf("s =  %d\n", s);
    return 0;
}
#include <stdio.h>
#define MAX 30

int main(){
    int v[MAX], n;
    
    scanf("%d", &n);
    v[0] = 1;
    v[1] = 1;
    v[2] = v[0] + v[1];

    if (n<=2)
        printf("1\n");
    else if (n<MAX){
        for(int i=3; i<n; i++){
            v[i] = v[i-2] + v[i-1];
        }
    printf("%d\n", v[n-1]);
    }
    else{
        printf("erro, estoura o vetor\n");
        return 1;
    }
    return 0;
}
#include <stdio.h>
#define tam 1024

int main (){
    int n, par = 0, impar = 0;
    int V[tam];

    scanf("%d",&n);
    for (int i=0;i<n;i++){
        scanf("%d",&V[i]);
    }
    for (int i=0;i<n;i++){
        if (V[i] % 2 == 0){
            par = par + 1;
        }
        else{
            impar = impar + 1;
        }
    }
    printf("par = %d, impar = %d\n", par, impar);
    return 0;
}
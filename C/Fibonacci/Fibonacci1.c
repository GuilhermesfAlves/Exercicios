#include <stdio.h>

int main(){
    int a1, a2, a3, n;
    
    scanf("%d", &n);
    a1 = 1;
    a2 = 1;
    a3 = a1 + a2;

    if (n<=2)
        printf("1\n");
    else 
        for(int i=3; i<n; i++){
            a1 = a2;
            a2 = a3;
            a3 = a1 + a2;
        }
    printf("%d\n", a3);
    return 0;
}
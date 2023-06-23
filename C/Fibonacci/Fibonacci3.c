#include <stdio.h>

long long int F(int n){
    if (n<=2)
        return 1;
    else 
        return F(n-1) + F(n-2);
}

int main(){
    int n;
    
    scanf("%d", &n);
    printf("%lld\n", F(n));
}
#include <stdio.h>
#include <math.h>

double powerR(double x, int n){
    
    if (n==1)
        return x;
        
    return powerR(x,n-1)*x;
}

double powerI(double x, int n){

    while (n>1){
        x = x * x;
        n--;
    }
    return x;
}

int main(){
    int n;
    double r5 = sqrt(5);
    double phy = (1+r5)/2;

    scanf("%d", &n);
    printf("%d\n", (int)round((powerR(phy,n)/r5)));
}
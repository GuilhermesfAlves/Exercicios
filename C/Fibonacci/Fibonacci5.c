#include <stdio.h>

void multiplica(int F[2][2], int M[2][2]){
    int x = F[0][0]*M[0][0] + F[0][1]*M[1][0];
    int y = F[0][0]*M[0][1] + F[0][1]*M[1][1];
    int z = F[1][0]*M[0][0] + F[1][1]*M[1][0];
    int w = F[1][0]*M[0][1] + F[1][1]*M[1][1];

    F[0][0] = x;
    F[0][1] = y;
    F[1][0] = z;
    F[1][1] = w;
}

void power(int F[2][2], int n){
    int i;
    int M[2][2] = {{1,1},{1,0}};

    for (i = 2; i <= n; i++)
	    multiplica(F, M);
}

int fib(int n){
    int F[2][2] = {{1,1},{1,0}};

    if (n == 0)
	    return 0;
    power(F, n);

    return F[1][0];
}

int main(){
    int n;
    scanf("%d",&n);
    printf("%d\n", fib(n));
    return 0;
}

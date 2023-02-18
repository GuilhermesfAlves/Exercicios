! Faca um programa que leia tres numeros que representam os lados de um triangulo.
! O programa deve imprimir se o triangulo e isosceles, equilatero ou escaleno.

program triangulo_tipo
implicit none
real:: a,b,c
print*,'Entre com o comprimento de 3 lados de um triangulo'
read*,a,b,c

! Verificando se e um triangulo
if ((a+c>b).and.(a+b>c).and.b+c>a) then
    print*
    print*,'Os 3 lados digitados formam um triangulo!'
    print*
    print*
else
    print*
    print*
    print*,'E impossivel formar um triangulo com os 3 lados digitados'
    stop
end if

! Verificando o tipo do triangulo
if (a==c.and.a==b) then
    print*,'Os 3 lados digitados formam um triangulo equilatero'
else if (a==c.or.a==b.or.b==c) then
    print*,'Os 3 lados digitados formam um triangulo isosceles'
    else
    print*,'Os 3 lados digitados formam um triangulo escaleno'
end if

end program triangulo_tipo


!  Faca um programa que leia quatro numeros e imprima-os em ordem crescente.


program nome4
implicit none
real:: a,b,c,d,x1,x2,x3,x4
print*,'entre com 4 valores'
read*,a,b,c,d

! Definicao do maior valor

if ((a>b).and.(a>c).and.a>d) then
    ! print*,'maior valor ',a
    x4=a
    x3=b
    x2=c
    x1=d
    else if (b>c.and.b>d) then
    ! print*,'maior valor ',b
    x4=b
    x3=a
    x2=c
    x1=d
    else if (c>d) then
    ! print*,'maior valor ',c
    x4=c
    x3=a
    x2=b
    x1=d
    else
    ! print*,'maior valor ',d
    x4=d
    x3=a
    x2=b
    x1=c
end if
! troca auxiliar de variaveis
    a=x1; b=x2; c=x3
    
! Definicao do 2o. maior valor
    
if ((a>b).and.(a>c)) then
    ! print*,' 2o. maior valor ',a
    x3=a
    x2=b
    x1=c
    else if (b>c) then
    ! print*,' 2o. maior valor ',b
    x3=b
    x2=a
    x1=c
    else
    ! print*,' 2o. maior valor ',c
    x3=c
    x2=a
    x1=b
end if
! troca auxiliar de variaveis
    a=x1; b=x2
    
! Definicao do 3o. e 4o. valores

if (a>b) then
    ! print*,' 3o. maior valor ',a
    x2=a
    x1=b
    else
    ! print*,' 3o. maior valor ',b
    x2=b
    x1=a
end if

! Exibindo o resultado em ordem crescente

print*
print*,'  Valores que voce digitou em ordem crescente '
print*
Print*,'  ',x1,x2,x3,x4

read*
end  program ordem_4
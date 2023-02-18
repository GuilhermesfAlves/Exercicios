program SOMAserie
implicit none

         ! A serie infinita
         ! y  = (x+1) - (x+2) + (x+3) - (x+4) + (x+5) - (x+6) ...

! declaracao de variaveis
integer::i,n
REAL::x,y

! Execucao dos comandos

print*,'digite o valor de x ='
READ*, x


print*,' Para qual numero de termos da serie voce deseja calcular o somatorio? '
READ*, n

! CALCULO DOS TERMOS DA SERIE
DO i=1,n

   print*,TERMO(i,x)

END DO

! resultados
PRINT*,'x = ',x,'n = ',n
print*

y=SOMT(n,x)

PRINT*,'Soma serie y = ',y


read*

    contains
    
! funcao para calcular os valores dos termos da serie
REAL FUNCTION TERMO(i,x)
IMPLICIT NONE
integer,intent(in)::i
real,intent(in)::x

     TERMO= (x + i)* (-1)**(i+1)

end FUNCTION TERMO

! funcao para calcular o valor do somatorio dos termos
REAL FUNCTION SOMT(n,x)
IMPLICIT NONE
integer,intent(in)::n
REAL,intent(in)::x
REAL::z
integer::k

 z=0.0
DO k=1,n
      z = z + (x + k)* (-1)**(k+1)
END DO
SOMT=z
END FUNCTION SOMT

end program SOMAserie
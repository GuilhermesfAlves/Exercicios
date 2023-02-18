PROGRAM divisores
! Este programa acha os divisores de uma valor inteiro informado.
! O divisor é salvo em um arquivo.
INTEGER n, k, d(10)
OPEN (UNIT = 1, FILE = "div.txt")
PRINT *, "Informe um valor inteiro positivo :"
READ *, n
WRITE (1,*) "Divisores de ", N, " :"
k = 0
DO i = 1, n
IF (MOD(n,i) .EQ. 0) THEN
k = k + 1
d(k) = i
END IF
IF (k .EQ. 10) THEN
WRITE (1,5) (d(j), j = 1, 10)
k = 0
END IF
END DO
WRITE (1,5) (d(j), j = 1, k)
5 FORMAT (10I7)
 CLOSE (1)
PRINT *, "Os divisores estao salvos no arquivo 'div.txt' "
END program divisores

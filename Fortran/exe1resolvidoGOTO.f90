
      !1. Fa‡a um programa que imprima todos os numeros de 10 a 40,
      ! em ordem crescente.
      PROGRAM exe1
      implicit none
      INTEGER:: B,J
      
      PRINT*,'PROGRAMA PARA IMPRIMIR NA TELA NUMEROS DE 10 a 40.'
      print*,'digite o valor de B '
      read*,B


      !DO WHILE(B<=40)

   10 PRINT*,B
      B=B+1

      IF(B <= 40) THEN
      GO TO 10
      ELSE
      PRINT*,'TODOS OS NUMEROS IMPRESSOS NA TELA'
      END IF
      
      READ(*,*)    !para deixar o programa mostrar o resultado
      END PROGRAM exe1


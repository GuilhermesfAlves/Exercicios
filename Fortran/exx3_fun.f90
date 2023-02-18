!3. Faca um programa que calcule a soma dos termos da seguinte
!s‚rie: 10    20	 30	 40	 50	 60	 ... 6000

      PROGRAM exe3
      implicit none
      INTEGER::B,J
      PRINT*,'PROGRAMA PARA CALCULAR A SOMA DOS TERMOS DA SERIE:'
      PRINT*,'10     20     30     40     50    60  ... 6000'
      B=0

      do J=10,6000,10  ! DO finito
      B=B+J
      end do

      PRINT*,'resultado do somatorio B:',B
      B=0
      PRINT*,'resultado do somatorio:',funcao(B)
      
      read*
      
          contains
          
      INTEGER FUNCTION funcao(z)
      implicit none
      integer,intent(inout)::z
      integer::I
      
      do I=10,6000,10  ! DO finito
      z=z+I
      end do
      
      funcao=z
      end function funcao
      
      end program exe3


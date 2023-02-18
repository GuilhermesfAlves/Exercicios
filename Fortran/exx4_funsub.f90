!4. Faca um programa que calcule a media dos termos da seguinte
!s‚rie:  5    10	 15	 20	 25	 30	 ... 10000

      PROGRAM exe4
      implicit none
      REAL::S,M
      INTEGER::N,I

      S=0.0
      I=0
      
      open(unit=11, file='exx4.txt',status='replace')
      PRINT*,'PROGRAMA PARA CALCULAR A MEDIA DOS TERMOS DA SERIE:'
      PRINT*,'5    10	 15	 20	 25	 30	 ... 10000'
      write(11,*)'PROGRAMA PARA CALCULAR A MEDIA DOS TERMOS DA SERIE:'
      write(11,*)'5    10	 15	 20	 25	 30	 ... 10000'
      !N=2000 n£mero de termos da serie finita

      M=f1(S,I)

      CALL IMDADOS(S,I,M)

      READ*
      
      contains
      
      real function f1(S,I)
      implicit none
      real,intent(inout)::S
      integer::I,N
      

      DO N=5,10000,5

      S=S+N
      I=I+1

      END DO

      f1=S/I
      
      end function f1
      
      SUBROUTINE IMDADOS(S,I,M)
      implicit none
      REAL,INTENT(IN)::S,M
      INTEGER,INTENT(IN)::I
      
      PRINT*,'NO. termos serie:',I
      PRINT*,'SOMA=',S
      PRINT*,'MEDIA=',M

      write(11,*)'NO. termos serie:',I
      write(11,*)'SOMA=',S
      write(11,*)'MEDIA=',M
      
      END SUBROUTINE IMDADOS
      
      END PROGRAM exe4



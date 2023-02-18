!Fa�a um programa fortran para ordenar n valores lidos, imprimir
!o menor e o maior valores e ap�s imprimir os valores em ordem crescente

program ordenar_matriz
      implicit none
      REAL, DIMENSION(:), ALLOCATABLE :: matriz !matriz a ser utilizada
      integer :: n, i , err

      !Ler a qtd de itens
      print *,"Entre com a quantidade de �tens de valores a serem lidos"
      read *, n
      
      !Alocar na mem�ria
      ALLOCATE(matriz(n), STAT=err)
      IF (err /= 0) PRINT*, "Matriz : Falhou na alocacao de mem�ria"

      !Entrada de valores

      do i=1,n
         Print *,"Entre com o valor n: ",i
         read *, matriz(i)
      end do


      call crescente(n, matriz)

      !Mostra os valores
      print *
      print *,"============Resultado==================================="
      print *, "O Menor valor � : ", matriz(1)
      print *, "O Maior valor � : ", matriz(n)
      
      do i=1, n
        print *, "Matriz (",i,") = ",matriz(i)
      end do
      
      read*

!====================================================================
      CONTAINS

      subroutine crescente(j, vet)
      implicit none
      integer :: j,i, k
      Real, Dimension(:) :: vet
      Real :: x
      
       do i=1, j-1        !la�o para pegar um valor
           do k=i+1, j    !la�o para fazer comparacoes entre os nr.
              if (vet(i) > vet(k)) then !efetua a troca entre os valores
                 x = vet(i)
                 vet(i) = vet(k)
                 vet(k) = x
              end if
           end do
       end do
      end subroutine

      
end program ordenar_matriz

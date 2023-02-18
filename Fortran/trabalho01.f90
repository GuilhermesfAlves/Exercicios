  program Trabalho_Final!Tatiane Maria Klein Mohr//!Camilly Kauanne dos Santos
        implicit none !declara��o de vari�veis
        integer ::i,j,k,r
        real:: a,s,f,p
p=3025610.00
open(unit=2, file='results.txt', status='unknown')!abrir programa para armazenar os resultados
print*, 'Rela��o de valores da funCAo f(x)=3+2^x durante o intervalo de 1 a 21:'
print*, '/x/           /y/'
write(2,*) '/x/            /y/'
do i = 1,21 !loop para fornecer os valores de x e y dentro do intervalo indicado
   print '(i2,a3,f15.2)', i,' ;', func(i) !escrita no terminal
   write (2, '(i2,a3,f15.2)') i,' ;', func(i) !escrita no arquivo
   end do
3 print*, 'em quantos trapezios voce deseja dividir a funcao:'
read*, j
select case (j)
       case (1)
       print*, 'ok, quantidade possivel'
       k=20
       case (2)
       print*, 'ok, quantidade possivel'
       k=10
       case (5)
       print*, 'ok, quantidade possivel'
       k=4
       case (10)
       print*, 'ok, quantidade possivel'
       k=2
       case (20)
       print*, 'ok, quantidade possivel'
       k=1
       case default
       print*, 'quantidade impossivel, tente novamente'
       goto 3
end select
print '(//a,i2,a/a)', 'Dividindo em ',j,' trapezios', 'A area de cada trapezio e:'
write(2, "(//a,i2,a/a)")  'Dividindo em ',j,' trapezios', 'A area de cada trapezio e:'
do i = 1,20,k !loop para o calculo da area dos trapezios
   a = (func(i) + func (i+k))*k/2
   print '(f11.2)', a !escrita no terminal
   write(2, '(f11.2)') a !escrita no arquivo
   s=s+a !loop para a soma total dos trapezios
   end do
f=s-p
print '(//a,f13.2/a/a,f11.2/)', 'A area total da soma dos trapezios e:', s ,'A integral e: 3025610.00','A diferenca e de: ', f !escrita terminal
write (2, '(//a, f13.2/ a/ a, f11.2/)') 'A area total da soma dos trapezios e:', s , 'A integral e: 3025610.00','A diferenca e:', f  !escrita no arquivo
1 print*, 'voce deseja dividir esse intervalo em outra quantidade:','digite (1) para sim ou (2) para nao'
read*, r
s=0
select case(r)
       case(1)
       print*, 'ok!'
       goto 3
       case(2)
       print*, 'ok!'
       case default
       print*, 'nao entendi, poderia tentar novamente?'
       goto 1
end select
close (2)!fechar programa que armazena dados
contains
real function func (i) !fun��o usada para o calculo da integral
     integer::i
     func= 3+2**i
     end function func
end program Trabalho_Final
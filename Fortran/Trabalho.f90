program trab   !nome1 //nome2
    implicit none  !declaração de variáveis
    integer::i,f,j,k,r
    real::a,s
open(unit=2,file='resultados.txt', status='unknown')!abrir programa para armazenar os resultados
print*, 'Relacao de valores da funcao f(x)=3+2^x durante o intervalo de 1 e 21:'
print*, '/ x /            / y /'
do i = 1,21 !loop para fornecer os valores de x e y dentro do intervalo indicado
    print '(i4,a3,f15.2)', i,' ; ', ioio(i) !escrita no terminal
    write(2,'(i4,a3,f15.2)') i,' ; ', ioio(i) !escrita no arquivo
    end do
3 print*, 'Em quantos trapezios voce deseja dividir a funcao:(1,2,5,10,20)'
read*, j
select case (j)
    case (1)
    print*,'OK, quantidade possivel'
    k=20
    case (2)
    print*,'OK, quantidade possivel'
    k=10
    case (5)
    print*,'OK, quantidade possivel'
    k=4
    case (10)
    print*,'OK, quantidade possivel'
    k=2
    case (20)
    print*,'OK, quantidade possivel'
    k=1
    case default
    print*, 'quantidade impossivel, tente novamente'
    goto 3
end select
print '(a26)', 'A area de cada trapezio e:'
do i = 1,20, k !loop para o calculo da area dos trapezios 
    a = (ioio(i) + ioio(i+k))*k/2
    s=s+a !loop para a soma total dos trapezios
    print '(f13.2)', a  !escrita no terminal
    write(2, '(f13.2)') a !escrita no arquivo
    end do
    f=s-3025610
print '(a37 f8.2 / a78 / a60, f15.2//)', 'A area total da soma dos trapezios e:', s ,'A integral desta para o intervalo de 1 e 21 e aproximadamente: 3.025610', 'a diferenca entre a soma de trapezios e a integral real e:' f
write(2,'(a37,/, f13.2)') 'A area total da soma dos trapezios e:', s  
1 print*, 'Voce deseja dividir esse intervalo em outra quantidade?',' Digite (1) para sim ou (2) para nao'
read*, r
select case (r)
    case(1)
    print*, 'OK!'
    goto 3
    case (2)
    print*, 'OK!'
    case default
    print*, 'Não entendi, poderia tentar novamente?'
    goto 1
end select
close(2) !fechar programa que armazena os dados
contains
real function ioio(i) !função usada para o calculo da integral
    integer:: i 
    ioio= 3 + 2**i
    end function ioio
end program trab
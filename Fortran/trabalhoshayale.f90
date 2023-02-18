program trabalho_shay_ale  
    implicit none  
    integer::i=1,f,j,div,r
    real::a,s
open(unit=2,file='respostas.txt', status='unknown')
    print*, 'resultados da funcao f(x)=1+2/x entre x = 1 e 21:'
    print*, '  x                y  '
do i=1,21 
    print '(i4,a3,f15.2)', i,' ; ', fofs(i) 
    write(2,'(i4,a3,f15.2)') i,' ; ', fofs(i) 
    end do
1 print*, 'Em quantos trapezios voce deseja dividir a funcao:'
read*, j
if ( j==20 ) then
        div=1
    else if (j==10)then
        div=2
    else if (j==5)then
        div=4
    else if (j==2)then
        div=10
    else if (j==1)then
        div=20
    else
    print*, 'Impossivel'
    go to 1
end if
print*, 'Area dos trapezios:'
do i = 1,20, div
    a = (fofs(i) + fofs(i+div))*div/2
    s=s+a 
    print '(f13.2)', a  
    write(2, '(f13.2)') a 
    end do
    f=s-3025610
print*, 'A area total da soma dos trapezios e:', s 
write(2,*) 'A area total da soma dos trapezios e:', s  
s=0
2 print*, 'Dividir denovo?',' (1) para sim ou (2) para nao'
read*, r
select case (r)
    case(1)
        print*, 'OK!'
        goto 1
    case (2)
        print*, 'OK!'
    case default
        print*, 'tente novamente?'
        go to 2
end select
close(2)
contains
real function fofs(i)
    integer:: i 
    fofs= 1+(2)/i
    end function fofs
end program trabalho_shay_ale
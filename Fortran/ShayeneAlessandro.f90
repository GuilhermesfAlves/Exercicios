program soma                                                            
implicit none                                                            
integer::j
open(unit=2,file='integral.txt',status='unknown')
do j=1,5
write(2,*)j,' ; ', shsh(j)
print*,j,' ; ', shsh(j)
enddo
print*, 'O valor do trapezio no intervalo de 1 e 5 e: 8.8'
print*,'O valor exato da integral e 4+2ln(5) , aproximadamente 7,21888'
write(2,*)'O valor exato da integral e 4+2ln(5) , aproximadamente 7,21888'
close(2)
read*
contains 
real function shsh(j)
integer::j
shsh=2/j
end function
end program soma
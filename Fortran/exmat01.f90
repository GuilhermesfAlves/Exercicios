program mat01
implicit none


INTEGER,DIMENSION(1:10)::x
INTEGER::n,i
print*,'entre com o no. de elementos'
READ(*,*)n
DO i=1,n
print*,'entre com o elemento ',i
READ(*,*)x(i)
END DO

print*,'Vetor X'
DO i=1,n
write(*,*)x(i)
END DO

read*
end program mat01

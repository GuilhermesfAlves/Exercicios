program demonio
    implicit none
    integer::i,j,k,h,c,n,m,imp,salb,sall,d
    real,allocatable , dimension(20:4) ::a1
    !real, dimension(:5)::a2
    character(len=6):: name

open(unit=12, file='salariosin.txt', status='old', action='read')
open(unit=11, file='salariosout.txt', status="new", action="write")

do i=1,20
    read(11,'(a,f3.2,i2,i1)') name, h, n, c
 call porra(name,h,n,c)
end do
contains
subroutine porra(name,h,n,c)
implicit none
integer::i,j,k,m,imp,salb,sall,d,h,n,c
    real, dimension(20:4) ::a1
    character(len=6):: name
      if (salb<2200) then
        m=0.15
        else    
        m=0.25    
    end if 
        d=n*250
        salb= d+ c*h
        imp=salb*m
        sall=salb-imp
    a1(i,1)= name
    a1(i,2)= salb
    a1(i,3)= imp
    a1(i,4)= sall
end subroutine porra
end program demonio
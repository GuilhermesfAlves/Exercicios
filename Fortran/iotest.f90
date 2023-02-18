program io_test
      real, dimension(:), allocatable :: x
      integer :: n

      open (unit=99, file='array.txt', status='old',access='sequential', action='read')
      read(99, *) n
      allocate(x(n))
      read(99,*) x

      write(*,'(10(f5.1))') x
print'(3/)'
write(*,*) x
read*
end program


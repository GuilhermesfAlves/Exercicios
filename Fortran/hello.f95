program Helloworlddd
    implicit none
    character (len = 20) :: f_name, l_name
    print*, "What's your name hijo de puta"
    read*, f_name, l_name
    write(*,*), "Hello", " ", trim(f_name), " ", trim(l_name)
end program Helloworlddd
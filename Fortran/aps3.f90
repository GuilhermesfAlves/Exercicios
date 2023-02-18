!aps3 
!Tatiane Maria Klein Mohr
!programa usado para gerar o gráfico: Excel
program aps3
implicit none    
!declaração de variáveis
    integer::i,fim
    real::x
    fim=360
!abrir arquivo para colocar os resultados
    !open(unit=2, file='grafico.txt', status='new')
    !write(2, "(a)") 'x ; y'
    print'(a)', 'x ; y'
    
    !começar a formar a função para cada valor de i e escrever na tela e no arquivo
    do i=1,fim
       ! write(2,'(i4,a,f4.3)') i,';', func(i)
        print*, i,';', func(i)
    end do
    close(2)
    read* 
    contains
    !declaração da função
    real function func(i) 
        integer::i
        func= log10(float(i))
        end function func

end program aps3
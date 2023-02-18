! O programa usado para plotagem é o GNUPlot. https://sourceforge.net/projects/gnuplot/files/latest/download

real function funcao_nao_linear(x) result(y)
    ! Ela, função não-linear geradora, é equivalente a equação y=x²+2x-2.
    y=x**2+2*x+1
end function funcao_nao_linear

program gerador_de_valores
    integer :: inicio, fim, i, temp, status
    real :: y, x

    ! Pede-se o intervalo para o usuário.
    write(*, *) 'Insira o início e o fim do intervalo (Ex.: 2 e 79): '
    read(*, *) inicio, fim 

    ! Caso o intervalo dado seja decrescente, ou seja, o começo maior do que o final, inverte-se a ordem.
    if(inicio > fim) then
        temp = inicio
        inicio = fim
        fim = temp
    end if

    ! Cria-se uma tabela com um cabeçalho
    open (unit=1, file="valores.csv", action="write", status="replace")
    write (1, "(3A)") 'x,y'

    print *, 'No intervalo ', inicio, 'até ', fim, 'os valores de y para seus respectivos x serão: '

    ! Um loop do inicio do intervalo até o seu fim. Ex.: Um intervalo de inicio 2 e fim 7 apresenta os números 2, 3, 4, 5, 6 e 7.
    do i = inicio, fim  
        ! O intervalo é definido como números inteiros, já que, a quantidade de passos é um número natural.
        ! Dito isso, precisa-se transforma-lo em um número real, pois esta conta nem sempre resultará em inteiros.
        x = real(i)
        ! E então, calcula-se o valor de Y para seu respectivo X.
        y = funcao_nao_linear(x)
        ! Adiciona-se os valores calculados à tabela.
        write (1,"(f0.3,A,f0.3)") x, ",", y
        print ("(f0.3,A,f0.3)"), x, " ", y
    end do

    ! Verifica-se o usuário tem o programa de plotagem instalado.
    status = system('gnuplot --version')

    if(status == 1) then
        print *, 'Programa de plotagem GNUPlot não encontrado. Pulando a demonstração gráfica'
    else
        ! Caso ele tenha instalado, começa-se uma plotagem.
        status = system("gnuplot -p -c plot.p")
    end if

end program gerador_de_valores
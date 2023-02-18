!Guilherme dos Santos Ferreira Alves
!Shayene Gomes de Lima


program Media_das_notas
    implicit none 
    character::name*5, m*20, g*20
    real :: r, a, b, c, d, v, s
    integer:: n
!arquivo base de notas
    open(UNIT=15, FILE = "notas.txt", status='old')
!arquivo para escrever
    open(UNIT=20,FILE = "resultado.txt")
!para conferir se a turma possui mais que 30 alunos
    print*, 'insira o numero de alunos'
    read(*,*) n 
    if ( n>=30 ) then
    print*, 'numero suficiente'
    else
    print*, 'numero insuficiente'
    end if 
do 
    !ler cada linha do arquivo
        read(15,*) name, a, b, c, d
    !calculo
        r= ( a+b+c+d )/ 4  
    !resultado
    if (r == 6 ) then
    !aprovado
        write(20,*) name, 'A media dele(a) é ', r,' aprovado'
        print*, name, 'A media dele(a) é ', r,' aprovado'
    else
    !reprovado
        write(20,*) name, 'A media dele(a) é ',r ,' reprovado' 
        print*, name, 'A media dele(a) é ', r, ' reprovado'  
    end if
end do
do 
    !média da turma
    read(20,*) name, m, r, g 
    !cálculo
    s=r+s
    v=s/n 
end do
!resultado
    print*, 'a media da turma é', v
    write(20,*) 'a media da turma é', v
    if ( v>=6 ) then
        print*, 'media suficiente'
        write(20,*) 'media suficiente'
    else
        print*, 'media insuficiente'
        write(20,*) 'media insuficiente'
    end if
    close(UNIT=15)
    close(UNIT=20)
    read*,
end program  Media_das_notas

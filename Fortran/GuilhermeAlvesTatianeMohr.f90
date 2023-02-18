!aps2
!Guilherme dos Santos Ferreira Alves
!Tatiane Maria Klein Mohr   


program Contadeluz

    implicit none 
    character::name*7
    real:: u,p,f
    
    !abrir relação de nomes e kwh
    open(UNIT=2, FILE = "kwh.txt", status='old')
    !abrir lista de resultados
    open(UNIT=3,FILE = "conta.txt", status='replace')
do 
    read(2,*) name, u
!finalizar
    if ( name=='sair' ) exit
!para menor que 30
    if (u<=30.0)then
        p=u*1.3
        print*, name,'//', p 
        write(3,*) name,'//', p 
!para entre 30 e 100
    else if (u>30.0 .and. u<=100) then
        f=u-30
        p=f*1.8+39
        print*, name,'//', p 
        write(3,*) name,'//', p 
!para maior que 100
    else
        f=u-100
        p=f*2.5+39+126 
        print*, name,'//', p 
        write(3,*) name,'//', p 
    
    end if 
    
end do
    close(2)
    close(3)
read*,

end program Contadeluz
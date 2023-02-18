! CALCULAR MED ARITIMETICA/ PONDERADA/ HARMONICA

PROGRAM MEDAPH
implicit none
character:: media
real:: n1, n2, n3, res1, res2, res3
print*,"Escreva suas 3 notas"
read*, n1
read*, n2
read*, n3
print*,"Selecione uma das op�oes para calcular a m�dia das 3 notas:"


print*,"A se for aritm�tica ; P se for ponderada(3,3,4) ; H se for harm�nica"
1 read*, media


if (media == "A" .or. media == "a") then
    res1=(n1+n2+n3)/3
    print*,'m�dia aritmetica =',res1
else if (media == "P" .or. media == "h") then
    res2=(n1*0.3+n2*0.3+n3*0.4)
    print*,' m�dia ponderada =',res2
else if ( media == "H" .or. media == "h") then
    res3= 3.0/(1/n1+1/n2+1/n3)
    print*,'media harmonica =',res3
else 
    print*,'Voce nao colocou um valor aceitavel'
    goto 1
endif

read*
END PROGRAM MEDAPH

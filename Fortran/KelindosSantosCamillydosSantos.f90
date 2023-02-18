!atividade aps2
!Kelin dos Santos Correia
!Camilly Kauanne dos Santos
program consumoenergia

real::x,y,z
character:: d*20
OPEN (UNIT=1, FILE="consumo.txt", status='old')
OPEN (UNIT=2, FILE='resultado.txt',status='replace')
do
read(1,*) d, x
if ( D=='EXIT' ) then
    exit
end if
!Consumo de energia

if (x<30) then
 y=x*1.3
 else if ( x >= 30 .and. x <100 ) then
 z=x-30
 y=39+z*1.8
 ELSE
 Z=x-100
 y=39+126+Z*2.5
end if

print*,'================================================================'
print*,'O valor da conta em reais de ', d, 'é', y
write(2,*)'================================================================'
write(2,*)'O valor da conta em reais de ', d, 'é', y

end do
close(1)
close(2)
read*,
end program consumoenergia
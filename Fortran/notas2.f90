PROGRAM Notas2
IMPLICIT NONE
 CHARACTER:: name*20
REAL:: mark1 , mark2 , mark3
OPEN (UNIT=4,FILE='NOTAS1.DAT',STATUS='OLD')
OPEN (UNIT=14,FILE='MEDIAS.DAT',STATUS='replace')
DO
READ( 4 , * ) name, mark1 , mark2 , mark3
IF(name == 'fim' )EXIT
WRITE(UNIT=14,FMT=*) name,mark1,mark2,mark3
WRITE(14,*)'MEDIA= ', (mark1 + mark2 + mark3)/3.0
WRITE(14,*)
WRITE(UNIT=*,FMT=*) name,mark1,mark2,mark3, (mark1 + mark2 + mark3)/3.0
END DO
 CLOSE(4)
 close(14)
END PROGRAM Notas2

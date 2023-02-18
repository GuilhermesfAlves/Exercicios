PROGRAM Notas
 IMPLICIT NONE
 CHARACTER(LEN=20):: name
 REAL:: mark1 , mark2 , mark3
OPEN (UNIT=4,FILE='NOTAS.DAT' )
DO
READ( * , * ) name, mark1 , mark2 , mark3
IF(name == 'fim' )EXIT
WRITE(UNIT=4,FMT=*) name,mark1,mark2,mark3, (mark1 + mark2 + mark3)/3.0
WRITE(UNIT=*,FMT=*) name,mark1,mark2,mark3, (mark1 + mark2 + mark3)/3.0
END DO
 CLOSE(UNIT=4)
END PROGRAM Notas

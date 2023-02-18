PROGRAM Avg
IMPLICIT NONE
REAL::a,b,c,m
PRINT*,' DIGITE AS 3 NOTAS '
READ(*,*)a,b,c
m=Average(a,b,c)
PRINT'(2F5.2,2F4.1,//,A)',a,b,c,m,'FIM'

read*

contains

REAL FUNCTION Average(x,y,z)
IMPLICIT NONE
REAL,INTENT(IN)::x,y,z
Average=(x+y+z)/3.0
END FUNCTION Average
END PROGRAM Avg

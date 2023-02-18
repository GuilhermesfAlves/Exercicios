program salariosAPS4                                                   !Camilly Kauanne dos Santos
implicit none                                                           !Maria Eduarda Bueno Linardi

INTEGER, DIMENSION(3):: x                                               ! x = horas, categoria, dependentes
INTEGER:: i                                                             !i=contador
REAL :: bruto, liquido
CHARACTER*20:: nome

i=1
                                                                        !Abrindo o arquivo 'documentos' e 'sal�rios'
OPEN (unit=18, file='documentos.txt', status='old', action='read')      !entrada
OPEN (unit=4, file='salarios.txt', status='unknown')


DO i=1,20

      READ(18,*) x, nome
   
      CALL salario (x,bruto, liquido)
   
      PRINT'(2a)', 'Nome: ', nome
      PRINT'(a,f10.2)', 'Salario BRUTO:', bruto
      PRINT'(a,f10.2/)', 'Salario LIQUIDO:', liquido


      WRITE(4,'(2a)') 'Nome: ', nome
      WRITE(4,'(a,f10.2)') 'Salario BRUTO:', bruto
      WRITE(4,'(a,f10.2/)') 'Salario LIQUIDO:', liquido

END DO

CLOSE(18)
CLOSE(4)
READ*,

contains

SUBROUTINE salario (x,bruto, liquido)
implicit none
INTEGER, DIMENSION(3), intent(in):: x
REAL, intent(out) :: bruto, liquido

IF(x(2)==1) THEN
  bruto = x(1) * 30 + (250* x(3))

      ELSE IF(x(2)==2) THEN
             bruto = x(1) *40 + (250* x(3))
 
      ELSE
             bruto = x(1) *50 + (250* x(3))

 
END IF


IF (bruto> 2200 ) THEN
      liquido = bruto*0.75
   
      ELSE
          liquido = bruto*0.85

END IF

END SUBROUTINE

end program salariosAPS4
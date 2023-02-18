PROGRAM OPERACAO
IMPLICIT NONE
real:: x,y,s,a,m,d
character*3:: oper,CONTROLE='s'

DO WHILE(CONTROLE=='s')
print*, 'Entre com 2 m£meros reais'
Read*, x,y
print*

print*, 'Entre com a opera‡ao desejada(adi,sub,mult,div)'
Read*, oper
   DO WHILE(oper/='adi'.and.oper/='sub'.and.oper/='mul'.and.oper/='div')
   print*,"Vocˆ entrou com uma opcao inv lida"
   PRINT*,'DIGITE NOVAMENTE'
   READ*,oper
   END DO

call conta (a,x,y,s,m,d)

print'(3/)'
print'(a,f5.2,3x,f5.2,/)','Numeros ',x,y
     If (oper=='adi') then
        Print*, 'Soma =', a
     Else If (oper=='sub') then
        Print*, 'Subtra‡ao =', s
     Else If (oper=='mul') then
        Print*, 'Multiplica‡ao =', m
     Else If (oper=='div') then
        Print*, 'Divisao =', d
     End if

   print'(3/)'
   PRINT*,'Quer continuar com a execucao do programa? Entao digite: s'
   PRINT'(a,$)','Se quiser parar digite: n  '
   READ*,CONTROLE
   DO WHILE(CONTROLE /= 's'.and.CONTROLE/='n')
   print*,"Vocˆ entrou com uma opcao inv lida"
   PRINT*,'DIGITE NOVAMENTE'
   READ*,CONTROLE
   END DO
   print'(3/)'
END DO

contains

subroutine conta (ad,c,d,su,mul,di)
IMPLICIT NONE
Real:: c,d,su,ad,mul,di

 ! real,intent(in)::c,d
 ! real,intent(out)::ad,su,mul,di
 
ad = c+d
Su = c-d
Mul = c*d
Di = c/d
end subroutine conta
end program OPERACAO

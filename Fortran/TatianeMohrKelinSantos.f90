        program primeiraavaliacao
implicit none

!Tatiane Maria Klein Mohr
!Kelin Santos

!Vari�veis
real::x, y, z, media, turma, soma
integer::I

!Informa��es iniciais
!Os alunos devem ter 3 notas
! o numero de alunos informado deve estar correto
!Inicialmente o n�mero de alunos � 32

print*,'Este programa calcula a media das notas de uma turma'
print*,'=================================================================================================='

!Arquivos
OPEN (UNIT = 1, FILE = "media.txt")
OPEN (UNIT = 2, FILE = "notas.txt")
print*,'Informe a quantidade de alunos (maior que 30)'
read*,i

!Caso a turma tenha menos de 30 alunos
if (i<=30) then
print*, 'O numero de alunos � incompativel'
end if

!Caso a turma tenha mais de 30 alunos
if(i>30) then
soma=0.0
do i=1,i,1
print*,'=================================================================================================='
!Declara��o das notas (separadamente no arquivo "notas.txt" sendo de 0 a 100)
read(2,*),x,y,z

!Calculo da m�dia
 media=(x+y+z)/3.0
 soma=soma+media
 turma=(soma)/i

write(1,*),'A media e', media
print*,'A m�dia �', media
!Informa��o se o aluno esta aprovado ou n�o
if (media<60) then
write(1,*)'A nota e insuficiente'      
write(1,*)'=================================================================================================='
print*,'A nota � insuficiente'


else:
write(1,*)'A nota e suficiente'
write(1,*)'=================================================================================================='
print*,'A nota � suficiente'


end do
end if
print*,'=================================================================================================='
write(1,*)'A media da turma e:', turma
print*,'A m�dia da turma �:', turma
print*,'A m�dia foi salva no arquivo (media.txt)'
read*

end program primeiraavaliacao


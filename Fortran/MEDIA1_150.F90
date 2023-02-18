program media1_150
implicit none
integer::J,S
real::media    

S = 0
	DO  J=1,150,1         ! quando o passo eh 1 nao precisa ser colocado
	 S = S + J
		 print*,S
	END DO
print*
print*
print*,'soma final ',S
print*
print*
print*,'media =',S/150.0

read*
end program media1_150
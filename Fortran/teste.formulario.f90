PROGRAM selaps_3
    IMPLICIT NONE
    
       CHARACTER::VAUX,COND='S'
    
    DO WHILE (COND=='S'.OR.COND=='s')
        PRINT*,'DIGITE UMA LETRA MAIUSCULA'
       READ*,VAUX
       SELECT CASE (VAUX)
        CASE ('A')
            PRINT*, ' (frase 1) '
        CASE ('B' : 'I')
            PRINT*, ' (frase 2) '
         CASE DEFAULT
            PRINT*, ' (frase 3) '
       END SELECT
    
       PRINT*
       PRINT*,'QUER CONTINUAR DIGITANDO LETRAS? (S/N)'
       READ*,COND
    END DO
    
    END PROGRAM selaps_3
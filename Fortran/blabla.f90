program bb
   implicit none
   integer h(3,4),a,b,c

   logical l1,l2
   
   character cor*5
   
   data h/1,2,3,4,5,6,7,8,9,10,11,12/
   
   data a/5/,b/3/,c/10/
   
   data l1,l2,cor/.true.,.false.,'preto'/
   
   print '(2x,6i2.2,/,2x,6i2.2)',h
   
   print '(2x,3(i2.2,2x))',a,b,c
   
   print '(2x,l7,2x,l7)',l1,l2
   
   print *,cor
end program bb
program ex35;
var x:Real;
begin
  read(x);
  if (x<540) then 
    write('NAO')
  else if (x<=1424) and (x>540)then
    Write('1 0.00')
  else if (x>1424) and (x<=2150) then
    write('2 ',x*0.075:0:2)
  else if (x>2150) and (x<=2866) then
    write('3 ',x*0.15:0:2)
  else if (x>2866) and (x<=3582) then 
    write('4 ',x*0.225:0:2)
  else if (x>3582) then
    write('5 ',x*0.275:0:2);
end.
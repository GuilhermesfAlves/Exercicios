program ex116;
var x:LongInt;
begin
  read(x);
  if ((x mod 2 <> 0)and (x<-20)) or ((x mod 2 = 0)and(x>7)) then
    write('SIM')
    else
    write('NAO');
end.
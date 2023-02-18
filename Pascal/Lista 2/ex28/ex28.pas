program ex28;
var f:LongInt;
c:Extended;
begin
  read(f);
  c:=(f-32)*5/9;
  writeln(c:0:2);
  if c<=0 then write('solido')
  else if c>=100 then write('gasoso')
  else 
  write('liquido');
end.
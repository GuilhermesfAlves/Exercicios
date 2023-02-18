program ex38;
var id:LongInt;
begin
  read(id);
  if (id<8) then
    write('1')
  else if (id>=8) and (id<11) then
    write('2')
  else if (id>=11) and (id<13) then
    write('3')
  else if (id>=14) and (id<17) then
    write('4')
  else 
    write('5');
end.
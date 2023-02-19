program ex22;
var x,y:integer;
begin
  read(x,y);
  if (x=0) and (y=0) then
  write('O')
  else if (x=0) then
  write('Y')
  else if (y=0) then 
  write('X')
  else if (x>0) and (y>0) then
  write('1')
  else if (x<0) and (y>0) then
  write('2')
  else if (x<0) and (y<0) then 
  write('3')
  else 
  write('4');
end.
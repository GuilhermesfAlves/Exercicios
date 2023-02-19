program ex55;
var x, m, cont:longint;
begin
  read(x,m);
  cont:=0;
  while(m<>0) do
  begin 
    if (m mod 10 = x) then
      cont:=cont+1;
    m:=m div 10;
  end;
  if (cont<>0) then
    write(cont)
  else 
  write('NAO');
end.
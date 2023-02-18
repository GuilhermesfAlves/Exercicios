program ex3;
var x,y,z:LongInt;
begin
  read(x);
  z:=1;
  while (x<>0) do
  begin
    read(y);
    if not (y=sqr(x)) then z:=0;
    read(x);
  end;
  write(z);
end.
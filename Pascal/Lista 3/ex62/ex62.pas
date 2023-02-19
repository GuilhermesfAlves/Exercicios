program ex62;
var x:real;
begin
  read(x);
  while (x<>0) do
  begin
    if (x<0) then writeln(x:0:2);
    read(x);
  end;
end.
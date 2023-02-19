program ex48;
var a,b,r:longint;
begin
  read(a,b);
  r:=b;
  while(a<b) do
    begin
    r:=r*a;
    a:=a+2;
    end;
  writeln(r);
end.
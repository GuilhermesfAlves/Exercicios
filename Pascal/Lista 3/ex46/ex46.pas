program ex46;
var n:longint;
    p,sp,r:real;
begin
read(n,p);
sp:=0;
r:=0;
  while(n<>0) and (p<>0) do
  begin
    r:=n*p+r;
    sp:=sp+p;
    read(n,p);
  end;
  writeln(r/sp:0:2);
end.
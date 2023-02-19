program ex49;
var x,r1,r2,r3,r4,t:real;
begin
x:=1;
r1:=0;
r2:=0;
r3:=0;
r4:=0;
read(x);
  while(x<>0) do
  begin
    if (x/20 > 450) then
      r4:=r4+1
    else if (x/10 > 450) and (x/20 <= 450) then
      r3:=r3+1
    else if (x/4 > 450) and (x/10 <= 450) then
      r2:=r2+1
    else 
      r1:=r1+1;
    read(x);
  end;
  t:=r1+r2+r3+r4;
  writeln(r1/t*100:0:2);
  writeln(r2/t*100:0:2);
  writeln(r3/t*100:0:2);
  write(r4/t*100:0:2);
end.
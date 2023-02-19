program ex26;
var x,y:integer;
begin
read(x);
if x<=6 then
y:=100
else if (x>6) then
begin
y:=80;
x:=x-3;
y:=y+x*15
end;
writeln(y);
end.
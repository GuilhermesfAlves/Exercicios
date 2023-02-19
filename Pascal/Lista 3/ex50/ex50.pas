program ex50;
var n,x,y:Integer;
begin
read(x,y); 
n:=0;
while x mod y = 0 do
begin
   n:=n+1;
   x:=x div y;
end;
writeln(n);
end.
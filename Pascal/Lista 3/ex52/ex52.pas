program ex52;
var aux,y,n,m:integer;
begin
aux:=0;
y:=0;
read(m);
while aux<m do
begin
read(n);
y:=y+n;
aux:=aux+1;
end;
y:=y div m;
writeln(y);
end. 
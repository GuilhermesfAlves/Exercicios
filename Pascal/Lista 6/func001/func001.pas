program func001;
var n,m: longint;

function contrario(var a,b:longint):Boolean;
var a1,cont,n:LongInt;
begin
  a1:=a div 10;
  cont:=1;
  contrario:=False;
  while (a1>0) do
  begin
    cont:=cont*10;
    a1:=a1 div 10;
  end;
  a1:=a;
  n:=0;
  while (cont>0) do
  begin
    n:=n+cont*(a1 mod 10);
    a1:=a1 div 10;
    cont:=cont div 10;
  end;
  if (n=b) then
  contrario:=true;
end;
begin
read (n,m);
if contrario (n,m) then
writeln (n,' eh o contrario de ',m)
else
writeln (n,' nao eh o contrario de ',m);
end.
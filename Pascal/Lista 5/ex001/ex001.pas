program ex001;
var cima, n, sinal, aux:LongInt;
    s:Extended;
begin
  read(n);
  aux:=1;
  sinal:=1;
  cima:=1000;
  s:=cima/aux;
  while (aux<=(n-1)) do
  begin
    sinal:=-sinal;
    aux:=aux+1;
    cima:=cima-3;
    s:=s+(cima*sinal)/aux;
  end;
  writeln(s:0:2);
end.
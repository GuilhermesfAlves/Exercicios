program ex43;
var aux,n,r:LongInt;
begin
  r:=0;
  aux:=1;
  read(n);
  while (0<n) do
  begin
    r:=r+aux;
    n:=n-1;
    aux:=aux+2; 
  end;
  write(r);
end.
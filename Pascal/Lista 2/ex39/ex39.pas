program ex39;
var aux,n,r:LongInt;
begin
  r:=1;
  aux:=2;
  read(n);
  while (0<n) do
  begin
    r:=r*aux;
    n:=n-1;
    aux:=aux+2; 
  end;
  write(r);
end.
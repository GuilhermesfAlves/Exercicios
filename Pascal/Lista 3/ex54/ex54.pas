program ex54;
var l1,l2,aux:integer;
    ver:boolean;
begin
  aux:=0;
  read(l1);
  l2:=l1;
  ver:=true;
  while (l1<>0) do
  begin
    if (l1<>l2) then 
       ver:=false;
    aux:=aux+1;
    read(l1);
  end;
  if (aux>=3) and ver then
     writeln('SIM')
  else 
     writeln('NAO');
end.
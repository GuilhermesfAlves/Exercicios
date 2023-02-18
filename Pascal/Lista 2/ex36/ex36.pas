program ex36;
var tipo, area:LongInt;
    valor:real;
begin
  read(tipo, area);
  if (tipo=1) then
    begin
      valor:=area/2;
      valor:=valor+Frac(valor);
    end
  else if (tipo=2) then
     begin
       valor:=area/3;
       valor:=valor+Frac(valor);
     end
  else 
     begin
       valor:=area/4;
       valor:=INT(valor+Frac(valor));
     end;
  write(valor:0:0,' caixas');
end.
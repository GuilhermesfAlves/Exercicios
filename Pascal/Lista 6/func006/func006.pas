program func006;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(d1,m1,a1,d2,m2,a2:LongInt):Boolean;
begin
  eh_anterior:=true;
  a1:=a1*10000+m1*100+d1;
  a2:=a2*10000+m2*100+d2;
  if (a1>=a2) then
    eh_anterior:=false;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.
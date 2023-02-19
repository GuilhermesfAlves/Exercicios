program func002;
var n:longint;

function eh_binario(a:LongInt):Boolean;
begin
eh_binario:=true;
  while (a>0) do
  begin
    if (a mod 10 > 1) then
      eh_binario:=false;
    a:=a div 10;
  end;
end;

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.
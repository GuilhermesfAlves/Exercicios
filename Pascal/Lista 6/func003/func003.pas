program func003;
var n: longint;

function converte_em_decimal(a:LongInt):LongInt;
var mult:LongInt;
begin
  mult:=1;
  converte_em_decimal:=0;
  while (a>0) do
  begin
    converte_em_decimal:= converte_em_decimal+((a mod 10)*mult);
    a:=a div 10;
    mult:=mult*2;
  end;
end;

begin
    read (n);
    writeln (converte_em_decimal (n));
end.
program ex7;
var x,y:integer; 
begin
  read(x,y);
  while (x>1) and (y>1) do
  begin
    x:=x-1;
    y:=y-1;
  end;
  if (x>y) then
    if (x mod 2 = 0) then WriteLn('PRETA') else  Writeln('BRANCA')
    else if (y mod 2 = 0) then WriteLn('PRETA') else  Writeln('BRANCA');
end.
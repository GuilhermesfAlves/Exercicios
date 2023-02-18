program ex8;
var x,y,cont,s:LongInt;
begin
  read(x,y);
  cont:=2;
  s:=x+y;
  while (not(x*2=y)) and (not(x/2=y)) do
  begin
    x:=y;
    read(y);
    cont:=cont+1;
    s:=s+y;
    writeln(s);
  end; 
WriteLn(cont,' ',s,' ',x,' ',y);
end.
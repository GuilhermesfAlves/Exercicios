program ex4;
var n,ult,agr,s:Integer;
begin
  read(n);
  agr:=n mod 10;
  ult:=n div 10;
  s:=agr+ult;
  writeln(s,' ',agr,' ',ult,' ');
  while (s<n) do
  begin
     ult:=agr;
     agr:=s;
     s:=s+ult;     
  end;
  if (s=n) and (not (s=5)) then WriteLn('1') else WriteLn('0');
end.
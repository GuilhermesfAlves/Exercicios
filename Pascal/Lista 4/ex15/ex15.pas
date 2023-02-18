program ex15;
var n,m,s:Integer;
begin
  read(n);
  m:=n*37;
  s:=0;
  while (m>0) do 
  begin
     s:=m mod 10 + s;
     m:=m div 10;
  end;
  if (s=n) then 
     WriteLn('SIM')
  else 
     WriteLn('NAO');
end.
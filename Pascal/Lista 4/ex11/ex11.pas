program ex11;
var n, r:LongInt;
    ver:Boolean;
begin
  read(n);
  r:=2;
  ver:=false;
  while (n mod r <> 0) and (ver=false) do
  begin
    r:=r+1;
    if (r=n) or (r=n+1)then
      ver:=true;
  end;
  if (ver=true) then 
    Write('SIM')
  else 
    Write('NAO');
end.
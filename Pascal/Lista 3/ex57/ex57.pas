program ex57;
var x,ma:longint;
begin
  read(x);
  while (x<>0) do
  begin
    if (x mod 7 = 0) then
      if (x>ma) then 
        ma:=x;
    read(x); 
  end;
  write(ma);
end.
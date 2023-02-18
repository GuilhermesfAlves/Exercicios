program ex40;
var ma, me, x:LongInt;
begin
  ma:=0;
  me:=0;
  read(x);
  while (x<>0) do
  begin
    if (x>ma) then
      ma:=x
    else if (x<me) then
      me:=x;
    read(x);
  end;
  write(ma,' ',me);
end.
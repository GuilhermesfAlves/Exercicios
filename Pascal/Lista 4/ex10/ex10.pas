program ex10;
var x,r,ver:LongInt;
begin
  read(x);
  r:=r+1;
  ver:=0;
  while (r*(r+1)*(r+2)<=x) do
    if r*(r+1)*(r+2)=x then
      ver:=1;
    r:=r+1;
  write(ver);
end.
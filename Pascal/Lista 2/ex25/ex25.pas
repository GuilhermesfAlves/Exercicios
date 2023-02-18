program ex25;
var i, d, m, a: LongInt;
begin 
  read(d,m,a);
  i:=2020-a;
  if (m<4) then
    i:=i+1
  else if (m=4) then
    if (d>=29) then i:=i+1;
    write(i);
end.
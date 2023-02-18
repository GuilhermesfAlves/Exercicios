program ex005;
var n1,n2,nx,temp:LongInt;
    s:Extended;
begin
  temp:=1;
  n1:=1;
  n2:=3;
  s:=n1/n2;
  while (temp<10) do
  begin
     nx:=n1;
     n1:=2*n2;
     n2:=2*nx;
     s:=s+n1/n2;
     temp:=temp+1;
  end;
  WriteLn(s:0:2);
end.
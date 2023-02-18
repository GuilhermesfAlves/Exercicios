program ex47;
var n, r:LongInt;
begin
  n:=1;
  r:=0;
  while n<=50 do
    begin
        r:=n*n+r;
        n:=n+1;
    end;
    write(r);
end.
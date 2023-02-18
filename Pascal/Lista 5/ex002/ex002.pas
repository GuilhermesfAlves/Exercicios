program ex002;
var r,i,r1:integer; t:real;
begin
i:=1;
t:=0;
  read(r1);
  r:=r1-1;
    while r1>i do
    begin
       t:=t + r/i;
       r:=r-1;
       i:=i+1;
    end;
  WriteLn(t:0:2);
end. 
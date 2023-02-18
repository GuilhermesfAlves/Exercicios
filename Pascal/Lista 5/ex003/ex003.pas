program ex003;
var a,b,c:integer; t:real;
begin
a:=1;
b:=1;
t:=0;
c:=1;
    while c<=5 do
    begin
       t:=t + a/b;
       a:=a+b;
       b:=b+a;
       c:=c+1
    end;
  WriteLn(t:0:2);
end.
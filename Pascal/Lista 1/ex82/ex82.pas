program ex;
var t,h,m,s:longint;
begin
read(t);
h:=t div 3600;
t:=t-h*3600;
m:=t div 60;
t:=t-m*60;
s:=t;
write(h,':',m,':',s);
end.
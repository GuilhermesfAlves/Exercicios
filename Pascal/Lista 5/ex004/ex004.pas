program ex004;
var a,b,cont:Longint;
    s:Extended;
begin
  a:=1;
  b:=2;
  cont:=1;
  s:=a/b;
  while (cont<10) do
  begin
    cont:=cont+1;  
    if (cont mod 2 = 0) then
      begin
        a:=a+3;
        b:=b+1;
      end
    else
      begin
        a:=a+1;
        b:=b+3;
      end;
    s:=s+a/b;
  end;
  WriteLn(s:0:2);
end.
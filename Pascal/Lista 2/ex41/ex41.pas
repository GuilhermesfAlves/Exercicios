program ex41;
var ult,pen,agr,res,num:LongInt;
begin
  ult:=1;
  pen:=0;
  res:=1;
  read(num);
  while (num>2) do
  begin
    agr:=ult+pen;
    res:=res+agr;
    pen:=ult;
    ult:=agr;
    num:=num-1;
  end;
  write(res);
end.
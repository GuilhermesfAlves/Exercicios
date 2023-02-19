program ex30;
var pr,x:integer;
begin
  read(pr,x);
  if (pr=1001) or (pr=987) then
  writeln(5.32*x:0:2)
  else if (pr=1324) then
  writeln(6.45*x:0:2)
  else if (pr=6548) then
  writeln (2.37*x:0:2)
  else if (pr=7623) then
  writeln(6.45*x:0:2)
  else writeln('ERRO');
end.
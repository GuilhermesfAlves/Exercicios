program ex24;
var x:LongInt;
begin
  read(x);
  WriteLn(2020-x);
  if (2020-x)>=16 then writeln('SIM')
  else writeln('NAO');
  if (2020-x)>=18 then write('SIM')
  else write('NAO');
end.
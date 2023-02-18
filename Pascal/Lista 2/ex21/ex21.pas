program ex21;
var x:LongInt;
begin
  read(x);
  if (x mod 77 = 0) then writeln('Multiplo de 7 e de 11.')
  else if (x mod 11 = 0) then writeln('Multiplo exclusivamente de 11.')
  else if (x mod 7 = 0) then WriteLn('Multiplo exclusivamente de 7.')
  else WriteLn('Nao e multiplo nem de 7 nem de 11.');
end.
program ex33;
var lad,med:longint;
begin
  read(lad,med);
  if (lad<3) or (lad>5) then
    writeln('ERRO')
  else if (lad=3) then
    writeln('TRIANGULO ', lad*med)
  else if (lad=4) then
    writeln('QUADRADO ', 5*med)
  else if (lad=5) then
    writeln('PENTAGONO ');
end.
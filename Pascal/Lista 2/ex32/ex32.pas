program ex32;
var sal, cod:Longint;
begin
  read(sal,cod);
  if (cod=101) then
    begin
      writeln(sal*1.0:0:2);
      writeln(sal*1.1:0:2);
      writeln(sal*0.1:0:2);
    end
  else if (cod=102) then
    begin
      writeln(sal*1.0:0:2);
      writeln(sal*1.2:0:2);
      writeln(sal*0.2:0:2);
    end
  else if (cod=103) then
    begin
      writeln(sal*1.0:0:2);
      writeln(sal*1.3:0:2);
      writeln(sal*0.3:0:2);
    end
  else 
    begin
      writeln(sal*1.0:0:2);
      writeln(sal*1.4:0:2);
      writeln(sal*0.4:0:2);
    end;
end.
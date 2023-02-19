program ex31;
var i:Longint;
begin
  read(i);
  if (i<=200) then
    begin
      writeln(i);
      write('0');
    end
  else if (i>200) and (i<=400) then
    begin
      writeln(i);
      write('20%');
    end
  else if (i>400) and (i<=600) then
    begin
      writeln(i);
      write('30%');
    end
  else if (i>600) then
    begin
      writeln(i);
      write('40%');
    end;
end.
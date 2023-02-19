program ex61;
var n,inv:integer;
begin
  read(n);
  inv:=1;
  while (inv<n) do
  begin
    writeln(inv,' ',n-inv);
    inv:=inv+1;
  end;
end.
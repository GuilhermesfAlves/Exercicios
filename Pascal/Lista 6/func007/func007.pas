program func007;
var n: longint;

procedure incrementa(var i:LongInt);
begin
  i:=i+1;
end;

begin
    n:= 1;
    while (n <= 10) do
    begin
        writeln (n);
        incrementa(n);
    end;
end.
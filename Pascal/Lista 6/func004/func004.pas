program func004;
var i: longint;

function eh_primo(n:LongInt):Boolean;
var aux:LongInt;
begin
  eh_primo:=True;
  aux:=n-1;
  while (aux>1) do
  begin
    if (n mod aux = 0) then
      eh_primo:=False;
    aux:=aux-1;
  end;
end;

begin
    for i:= 1 to 10000 do
        if eh_primo (i) then
            writeln (i);
end.
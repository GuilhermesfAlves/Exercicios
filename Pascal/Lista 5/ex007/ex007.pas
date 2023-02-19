program ex007;
var num,den,sinal,cont:Longint;
    s,mult:extended;
begin
    num:=1;
    sinal:=-1;
    cont:=1;
    den:=2;
    mult:=0.1;
    s:=mult*num/den*sinal;
    while (cont<10) do
    begin
      if (cont mod 2 <>0) then
      mult:=10
      else
      mult:=0.1;
      num:=num+2;
      den:=den+2;
      sinal:=-sinal;
      cont:=cont+1;
      s:=s+(mult*num/den*sinal);
    end;
    writeln(s:0:2);
end.
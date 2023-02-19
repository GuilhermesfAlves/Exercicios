program ex59;
var cont,x:integer;
begin
    read(x);
    while (x<>0) do
    begin
        if (x mod 10 = 7) then 
            cont:=cont+1;
        read(x);
    end;
    write(cont);
end.
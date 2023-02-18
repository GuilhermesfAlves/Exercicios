program ex19;
var n1, n2, n3, m:Real;
    f:Integer;
begin
  read(n1,n2,n3,f);
  if f<10 then
  begin 
    m:=(n1+n2+n3)/3;
        if m<4 then
        write('NAO')
        else if (m>=4) and (m<7) then 
        write('TALVEZ')
        else 
        write('SIM');
  end
    else
    write('NAO');
end.
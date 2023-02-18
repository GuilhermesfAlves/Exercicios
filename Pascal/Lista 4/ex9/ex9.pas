program ex9;
var i:Integer;
    Ta, Tb, Pa, Pb:Real;
begin
  read(Pa, Pb, Ta, Tb);
  i:=0;
    if ((Pa<Pb) and (Ta>Tb)) then
      while (Pa<Pb) and (Ta>Tb) do
      begin 
          Pa:=Pa+Pa*Ta;
          Pb:=Pb+Pb*Tb;
          i:=i+1;
      end
    else if ((Pa>Pb) and (Ta<Tb)) then 
    while (Pa>Pb) and (Ta<Tb) do
      begin 
          Pa:=Pa+Pa*Ta;
          Pb:=Pb+Pb*Tb;
          i:=i+1;
      end;
  WriteLn(i);
end.
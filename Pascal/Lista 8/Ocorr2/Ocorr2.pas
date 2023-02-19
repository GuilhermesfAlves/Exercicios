program ocorr2;
var i,cont,n,m,im,ni :Integer;
    vetn,vetm:array[1..100] of Integer;
    saida:Boolean;
begin
  read(n);
  read(m);
  for i:=1 to n do read(vetn[i]);
  for i:=1 to m do read(vetm[i]);
  cont:=0;




  for i:=1 to (n-m+1) do
  begin
    im:=1;
    ni:=1;
    if (vetn[i]=vetm[im]) then
    begin
      im:=2;
      saida:=False;
      while (im<=m) and (not(saida)) do 
      begin
          if vetn[i+ni]<>vetm[im] then saida:=true;
          if (not (saida)) and (im=m) then 
          begin
            cont:=cont+1;
          end;  
          ni:=ni+1;
          im:=im+1;
      end;
    end;
  end;



 Write(cont);



end.
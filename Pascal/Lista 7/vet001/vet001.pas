program vet001;
var n,i:Integer;
    aloc:array[1..200] of Real;
    sp,si:Real;
begin
  ReadLn(N);
  i:=1;
  si:=0;
  sp:=0;
  while (n>=i) do
  begin
    Read(aloc[i]);
    i:=i+1;
  end;
  i:=2;
  while (n>=i) do
  begin
    if (aloc[i]>0) then
        sp:=sp+aloc[i];
    i:=i+2;
  end;
  i:=1;
  while (n>=i) do
  begin
    if (aloc[i]<0) then
        si:=si+aloc[i];
    i:=i+2;
  end;
  if (n=0) then 
    WriteLn('vetor vazio')
  else if (si=0) then
    Writeln('divisao por zero') 
  else 
    WriteLn(sp/si:0:2);
end.
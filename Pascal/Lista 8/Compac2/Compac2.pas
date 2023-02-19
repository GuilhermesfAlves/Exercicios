program compac;
var n1,n,i,cont,r:Integer;
    vetor:array[1..100,1..2] of Integer;
    saida:Boolean;
begin
   read(n);
   

while (n<>0) do
begin
   cont:=0;
  for i:=1 to n do vetor[i,1]:=-100;
  for i:=1 to n do vetor[i,2]:=-100;
  for i:=1 to n do 
   begin
     read(r);
     n1:=1;
     saida:=false;
     vetor[i,1]:=r;
     while (not(saida)) do
     begin
       if (vetor[n1,2]=-100) then 
       begin 
         vetor[n1,2]:=r;
         cont:=cont+1;
         saida:=true;
       end
       else if (vetor[n1,2]=r) then saida:=true;
       n1:=n1+1;
     end;
  end;
   Write('O: ');
   for i:=1 to n do Write(vetor[i,1],' ');
   WriteLn(' ');
   Write('C: ');
   for i:=1 to cont do Write(vetor[i,2],' ');
      WriteLn(' ');


   read(n);
end;
end.
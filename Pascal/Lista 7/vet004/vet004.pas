program vet004;
var n1,n,i,cont,r:Integer;
    vetor:array[1..100,1..2] of Integer;
    saida:Boolean;
begin
   read(n);
   cont:=0;
   for i:=1 to n do vetor[i,2]:=0;



   for i:=1 to n do 
   begin
     read(r);
     n1:=1;
     saida:=false;
     while (n1<=(cont+1)) and (not(saida)) do
     begin
       if (vetor[n1,2]=0) then 
       begin 
         vetor[n1,1]:=r;
         vetor[n1,2]:=vetor[n1,2]+1;
         cont:=cont+1;
         saida:=true;
       end
       else if (vetor[n1,1]=r) then 
       begin
         vetor[n1,2]:=vetor[n1,2]+1;
         saida:=true;
       end;
       n1:=n1+1;
     end;
  end;




     i:=1;
     if (cont=1) then Write('a sequencia tem ',cont,' numero distinto: ')
     else if (cont=0) then Writeln('vetor vazio')
     else Write('a sequencia tem ',cont,' numeros distintos: '); 
     for i:=1 to cont do write(vetor[i,1],' ');
     WriteLn(' ');
     for i:=1 to cont do 
     begin
       if (vetor[i,2]=1) then writeln(vetor[i,1], ' ocorre ', vetor[i,2], ' vez')
       else
         writeln(vetor[i,1], ' ocorre ', vetor[i,2], ' vezes');
     end;
end.
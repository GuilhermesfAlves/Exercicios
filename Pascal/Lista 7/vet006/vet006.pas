program vet006;
var n,i,aux,max:Integer;
    vetor:array[1..200] of Real;
    valor:Real;
    trustfactor,saida:Boolean;



begin
   read(n);
   i:=1;
   max:=0;


   while (i<=200) do
   begin
       vetor[i]:=0;
       i:=i+1;
   end;


   while (n<>0) do
   begin
      trustfactor:=false;
      i:=1;
      saida:=false;
      if (n=1) then
      begin
          if (max=200) then 
              trustfactor:=true;
          ReadLn(valor);
          while (not(trustfactor)) and (not(saida)) do
          begin
              if (valor<vetor[i]) then
                begin
                    aux:=max+1;
                    while (i<aux) do
                        begin
                            vetor[aux]:=vetor[aux-1];
                            aux:=aux-1;
                        end;
                    vetor[i]:=valor;
                    max:=max+1;
                    saida:=true;
                 end
              else if (max+1=i) then
                 begin
                   vetor[i]:=valor;
                   max:=max+1;
                   saida:=true;
                 end;
                i:=i+1; 
                end;
      end



      else if (n=2) then
      begin
          read(valor);
          if vetor[i]>valor then 
            trustfactor:=true
          else
          while (valor>=vetor[i]) and (not(trustfactor)) and (not(saida))do
          begin
              if (vetor[i]=valor) then
              begin
                  while (i<max) do
                  begin
                      vetor[i]:=vetor[i+1];
                      i:=i+1;
                  end;
                  saida:=true;
                  max:=max-1;
              end
              else if (vetor[i+1]>valor) or (i+1>max) then
                  trustfactor:=true;
              i:=i+1;
          end;
      end;



      if (trustfactor=true) then
          writeln('erro')



      else if (n=1) or (n=2) then
      begin 
          if (max>0) then
          begin
            i:=1;
            while (i<=max) do
            begin
                write(vetor[i]:0:1,' ');
                i:=i+1;
            end;
          end
          else 
          begin
            writeln('vazio');
            writeln('vazio');
          end;


       end;


          WriteLn(' ');
          readln(n);
   end;



          i:=1;
          while (i<=max) do
          begin
              write(vetor[i]:0:1,' ');
              i:=i+1;
          end;
end. 
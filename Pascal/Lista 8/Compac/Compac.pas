program compac;
type  vetor = array[1..100,1..2] of Integer;
var n,cont:Integer;
    v:vetor;

procedure zeravet(var v:vetor);
var i:Integer;
begin
    for i:=1 to n do v[i,1]:=-100;
    for i:=1 to n do v[i,2]:=-100;
end;

procedure escreve(var n,s:Integer;v:vetor);
var i:Integer;
begin
     Write('O: ');
     for i:=1 to n do Write(v[i,1],' ');
     WriteLn(' ');
     Write('C: ');
     for i:=1 to s do Write(v[i,2],' ');
     WriteLn(' ');
end;

procedure calcula(var n,cont:Integer;var v:vetor);
var n1,i,r:Integer;
    saida:Boolean;
begin
    for i:=1 to n do 
    begin
        read(r);
        n1:=1;
        saida:=false;
        v[i,1]:=r;
        while (not(saida)) do
        begin
            if (v[n1,2]=-100) then 
            begin 
                v[n1,2]:=r;
                cont:=cont+1;
                saida:=true;
            end
            else if (v[n1,2]=r) then saida:=true;
            n1:=n1+1;
        end;
    end;
end;

begin
   read(n);
   while (n<>0) do
   begin
      zeravet(v);
      cont:=0;
      calcula(n,cont,v);
      escreve(n,cont,v);   
      read(n);   
   end;
end.
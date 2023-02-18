program repetmat;
type matriz = array [1..100,1..100] of Integer;
var Mat:matriz;
    n,m:Integer;

procedure lermatriz(var mat:matriz;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to m do 
            read(mat[j,i]);
end;

function sobrepoe(var mat:matriz;n,m:Integer):Boolean;
var i,j,a,b:Integer;
    repet:array [1..100] of Integer;
    sair:Boolean;
begin
    for a:=1 to 100 do 
        repet[a]:=-100;
            
    sobrepoe:=False;
    for i:=1 to n do 
        for j:=1 to m do
        begin
            b:=4*(i-1)+j;
            sair:=False;
            a:=1;
            while (not(sair)) and (a<=b) and (not(sobrepoe)) do
            begin
                if (repet[a]=-100) then
                begin
                    repet[a]:=mat[j,i];
                    sair:=True;                
                end
                else if (repet[a]=mat[j,i]) then
                begin
                    sobrepoe:=true; 
                    sair:=true;
                end;
                a:=a+1
            end;
        end;
end;

begin
    ReadLn(n,m);
    lermatriz(mat,n,m);
    if sobrepoe(mat,n,m) then
        WriteLn('sim')
    else 
        WriteLn('nao');
end.
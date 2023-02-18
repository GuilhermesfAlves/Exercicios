program permutmat;
type matriz = array [1..100,1..100] of Integer;
var Mat:matriz;
    n:Integer;

procedure lermatriz(var mat:matriz;n:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to n do 
            read(mat[j,i]);
end;

function conferelin(var mat:matriz;n:Integer):Boolean;
var i,j:Integer;
    linhacom:Boolean;
begin
    conferelin:=False;
    for i:=1 to n do
    begin
        linhacom:=False;
        for j:=1 to n do 
            if (not(linhacom)) and (mat[j,i]=1) and (not(conferelin)) then
                linhacom:=True
            else if (linhacom) and (mat[j,i]<>0) then
                conferelin:=True;
    end; 
end;

function conferecol(var mat:matriz;n:Integer):Boolean;
var i,j:Integer;
    colunacom:Boolean;
begin
    conferecol:=False;
    for j:=1 to n do
    begin
        colunacom:=False;
        for i:=1 to n do 
            if (not(colunacom)) and (mat[j,i]=1) then
                colunacom:=True
            else if ((colunacom) and (mat[j,i]<>0)) then
                conferecol:=True
    end; 
end;

begin
    read(n);
    lermatriz(mat,n);
    if (conferelin(mat,n)) or (conferecol(mat,n)) then
        WriteLn('nao')
    else 
        WriteLn('sim');
end.
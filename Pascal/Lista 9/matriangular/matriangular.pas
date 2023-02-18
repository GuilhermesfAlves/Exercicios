program matriangular;
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

function confere(var mat:matriz;n:Integer):Boolean;
var i,j:Integer;
    lado1,lado2:Boolean;
begin
    confere:=False;
    lado1:=True;
    lado2:=True;
    for i:=1 to n do 
        for j:=1 to n do 
            if (j>i) and (mat[j,i]<>0) then
                lado1:=false;
    for i:=1 to n do 
        for j:=1 to n do 
            if (j<i) and (mat[j,i]<>0) then
                lado2:=false;
    if lado1 or lado2 then
      confere:=true;
end;

begin
    Read(n);
    lermatriz(Mat,n);
    if confere(mat,n) then
        WriteLn('sim')
    else 
        WriteLn('nao');
end.
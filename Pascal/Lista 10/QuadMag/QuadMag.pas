program quadmag;
type matriz = array[1..100,1..100] of Integer;
     vetor = array[1..100] of Integer;
var mat:matriz;
    res:vetor;
    n:Integer;

procedure lemat(var mat:matriz;n:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to n do 
            read(mat[j,i]);
end;

procedure somalin(var res:vetor;mat:matriz;n:Integer);
var i,r,j:Integer;
begin
    for i:=1 to n do 
    begin
        r:=0;
        for j:=1 to n do 
            r:=r+mat[j,i];
        res[i]:=r;
    end;
end;

procedure somacol(var res:vetor;mat:matriz;n:Integer);
var i,r,j:Integer;
begin
    for j:=1 to n do 
    begin
        r:=0;
        for i:=1 to n do 
            r:=r+mat[j,i];
        res[j+n]:=r;
    end;
end;

procedure somadig(var res:vetor;mat:matriz;n:Integer);
var i,r:Integer;
begin
    r:=0;
    for i:=1 to n do 
        r:=r+mat[i,i];
    res[(2*n)+1]:=r;
    r:=0;
    for i:=1 to n do 
    begin
        r:=r+mat[i,(n+I-1)];
    end;
    res[(2*n)+2]:=r;
end;

function confereres(res:vetor):Boolean;
var i:Integer;
begin
    confereres:=True;
    for i:=1 to n-1 do 
        if res[i]<>res[i+1] then
            confereres:=false;  
end;

begin
    readln(n);
    lemat(mat,n);
    somalin(res,mat,n);
    somacol(res,mat,n);
    somadig(res,mat,n);
    if confereres(res) then 
        WriteLn('sim') 
    else
        WriteLn('nao');
end.
program quadmag2;
type matriz = array[1..100,1..100] of Integer;
     vetor = array[1..100] of Integer;
var mat,matred:matriz;
    res:vetor;
    pos1,pos2,n,tam,cont:Integer;

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
        r:=r+mat[i,(n-i+1)];
    res[(2*n)+2]:=r;
end;

function confereres(res:vetor;n:Integer):Boolean;
var i:Integer;
begin
    confereres:=True;
    n:=(n*2)+1;
    for i:=1 to n do 
        if res[i]<>res[i+1] then
            confereres:=False;  
end;

procedure transmatriz(var mat,matred:matriz;tam,m,n:Integer);
var i,j:Integer;
begin
    for i:=1 to tam do 
        for j:=1 to tam do 
            matred[j,i]:=mat[n+j-1,m+i-1];
end;

begin
    readln(n);
    lemat(mat,n);
    tam:=n;
    cont:=0;
    while (tam>=2) do 
    begin
        for pos1:=1 to (n-tam+1) do
            for pos2:=1 to (n-tam+1) do 
            begin
                transmatriz(mat,matred,tam,pos1,pos2);
                somalin(res,matred,tam);
                somacol(res,matred,tam);
                somadig(res,matred,tam);
                if confereres(res,tam) then
                    cont:=cont+1;
            end;
        tam:=tam-1;
    end;
    WriteLn(cont);
end.
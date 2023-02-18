program elemnulos;
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

function conferelinha(var mat:matriz;n,m:Integer): Integer;
var i,j:Integer;
begin
    conferelinha:=0;
    for i:=1 to n do
    begin
        j:=1;
        while (mat[j,i]=0) do 
        begin
            if (j=m) then
                conferelinha:=conferelinha+1;
            j:=j+1;
        end;
    end;
end;

function conferecoluna(var mat:matriz;n,m:Integer): Integer;
var i,j:Integer;
begin
    conferecoluna:=0;
    for j:=1 to m do
    begin
        i:=1;
        while (mat[j,i]=0) do 
        begin
            if (i=n) then
                conferecoluna:=conferecoluna+1;
            i:=i+1;
        end;
    end;
end;

begin
    read(n,m);
    lermatriz(mat,n,m);
    WriteLn('linhas: ',conferelinha(mat,n,m));
    WriteLn('colunas: ',conferecoluna(mat,n,m));
end.
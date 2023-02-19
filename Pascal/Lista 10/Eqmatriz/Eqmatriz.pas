program eqmatriz;
type matriz = array[1..10,1..10] of Real;
type vetor = array[1..10] of Real;
var mat:matriz;
    res:vetor;
    n,m,i:Integer;
    final:Boolean;

procedure lerres(var res:vetor;m:Integer);
var j:Integer;
begin
    for j:=1 to m do 
        read(res[j]);
end;

procedure lermat(var mat:matriz;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to m do 
            read(mat[j,i]);
    for i:=1 to n do 
        read(mat[m+1,i]);
end;

function testalinha(mat:matriz;res:vetor;i,m:Integer):Boolean;
var j:Integer;
    r:real;
begin
    r:=0;
    testalinha:=False;
    for j:=1 to m do 
        r:=r+mat[j,i]*res[j];
    if mat[m+1,i]=r then 
        testalinha:=True;
end;

begin
    final:=True;
    read(n,m);
    lerres(res,m);
    lermat(mat,n,m);
    for i:=1 to n do 
    begin
        if (not(testalinha(mat,res,i,m))) then
            final:=False;
    end;
    if final then
        Writeln('sim')
    else 
        Writeln('nao');
end.
program palavrascr;
type matriz = array [1..100,1..100] of Integer;
type matrizbool = array [1..100,1..100] of Boolean;
var mat:matriz;
    matdir,matbai:matrizbool;
    cont,n,m,i,j:Integer;

procedure zeramat(var mat:matrizbool;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to m do 
            mat[j,i]:=False;
end;

procedure lermat(var mat:matriz;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
        for j:=1 to m do 
            read(mat[j,i]);
end;

procedure prenxlinha(var mat:matriz;var matdir:matrizbool;i,j,m:Integer);
begin
    while (j<=m) and (mat[j,i]<>-1)do
    begin
        matdir[j,i]:= true;
        j:=j+1;
    end;
end;

procedure prenxcol(var mat:matriz;var matbai:matrizbool;i,j,n:Integer);
begin
    while (i<=n) and (mat[j,i]<>-1)do
    begin
        matbai[j,i]:= true;
        i:=i+1;
    end;
end;

procedure escrevemat(mat:matriz;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do 
    begin
        for j:=1 to m do 
            Write(mat[j,i],' ');
        WriteLn(' '); 
    end;
end;

procedure escrevematbool(mat:matrizbool;n,m:Integer);
var i,j:Integer;
begin
    for i:=1 to n do
    begin
        for j:=1 to m do 
            if mat[j,i] then
                write('1 ')
            else 
                Write('0 ');
        WriteLn(' ');
    end;
end;

begin
    cont:=1;
    read(n,m);
    lermat(mat,n,m);
    zeramat(matdir,n,m);
    zeramat(matbai,n,m);
    for i:=1 to n do 
        for j:=1 to m do 
        begin
            if (mat[j,i]=0) then  
                if (not(matbai[j,i])) and (mat[j,i+1]<>-1) and (i+1<=n) then
                begin
                    mat[j,i]:=cont;
                    cont:=cont+1;
                    prenxcol(mat,matbai,i,j,n);
                end 
                else if (not(matdir[j,i])) and (mat[j+1,i]<>-1) and (j+1<=m) then
                begin
                    mat[j,i]:=cont;
                    cont:=cont+1;
                    prenxlinha(mat,matdir,i,j,m);
                end; 
        end;
    WriteLn(' ');
    escrevemat(mat,n,m);
end.

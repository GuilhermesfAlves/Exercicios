program vet003;
type vetor = array[1..200] of Integer;
var n,i:Integer;
    verif:Boolean;
    vet:vetor;

procedure lervet(var vet:vetor;n:Integer);
var i,r:Integer;
begin
    for i:=0 to n-1 do
    begin
        read(r);   
        vet[n-i]:=r+200;     
    end; 
end;

procedure escrevevet(vet:vetor;n:Integer);
var i:Integer;
begin
    for i:=1 to n do 
        Write(vet[i]-200,' ');
    WriteLn('');
end;

begin
    read(n);
    verif:=false;
    lervet(vet,n);
    i:=1;
    while (i<=n) and (not(verif))do
    begin
        if (vet[i+1]>vet[i]) then
            verif:=true;
        i:=i+1;
    end;
    if (n>0) then
    begin
        if verif then
            WriteLn('nao')
        else
            WriteLn('sim');
        escrevevet(vet,n);          
    end
    else   
        WriteLn('vetor vazio');
end.
program vet003;
type vec = array[1..200] of LongInt;
var n,i:LongInt;
    verif:Boolean;
    vetor:vec;

procedure lervetor (var vetor:vec;n:Integer);
var i:Integer;
begin
    for i:=0 to n-1 do 
        read(vetor[n-i]);
end;

procedure escrevevetor (var vetor:vec;n:Integer);
var i:Integer;
begin
    for i:=1 to n do 
        Write(vetor[i],' ');
end;

begin
    read(n);
    verif:=false;
    lervetor(vetor,n);
    i:=1;
    while (i<=n) and (not(verif))do
    begin
        if (vetor[i+1]>0) then
            if (vetor[i+1])<(vetor[i]) then
                verif:=False;
        if (vetor[i+1]<0) and (vetor[i]<0) then
            if (vetor[i+1])<(vetor[i]) then
                verif:=False;
        i:=i+1;
    end;
    if (n>0) then
    begin
        if verif then
            WriteLn('nao')
        else 
            WriteLn('sim');
        i:=1;
        escrevevetor(vetor,n);
    end
    else   
     WriteLn('vetor vazio');
end.
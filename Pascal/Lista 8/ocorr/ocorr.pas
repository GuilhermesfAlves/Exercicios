program ocorr;
type vetor = array[1..100] of Integer;
var n,m :Integer;
    vetn,vetm:vetor;

procedure iniciavet(var vet:vetor;x:Integer);
var i:Integer;
begin
    for i:=1 to x do read(vet[i]);
end;

function calcula(var n,m:Integer;var vetn,vetm:vetor):Integer;
var im,ni,i:Integer;
    saida:Boolean;
begin
    calcula:=0;
    for i:=1 to (n-m+1) do
    begin
        im:=1;
        ni:=1;
        if (vetn[i]=vetm[im]) then
        begin
           im:=2;
            saida:=False;
            while (im<=m) and (not(saida)) do 
            begin
                if vetn[i+ni]<>vetm[im] then saida:=true;
                if (not (saida)) and (im=m) then calcula:=calcula+1;
                ni:=ni+1;
                im:=im+1;
            end;
        end;
    end;

end;
begin
    read(n);
    read(m);
    iniciavet(vetn,n);
    iniciavet(vetm,m);
    Write(calcula(n,m,vetn,vetm));
end.
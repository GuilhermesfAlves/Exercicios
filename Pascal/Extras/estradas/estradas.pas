program estradas;
const MAX = 100;
type matriz = record
        ate:array [1..MAX] of Boolean;
        sai:Integer;
        chega:Integer;
        end;
type relacao = record 
        n:Integer;
        cidade: array [1..MAX] of matriz;
        end;
var mapa: relacao;

procedure start(var mapa:relacao);
var i,j:Integer;
begin
    for i:=1 to MAX do
    begin
        for j:=1 to MAX do 
            mapa.cidade[i].ate[j]:=false;
        mapa.cidade[i].sai:=-1;
        mapa.cidade[i].chega:=-1;
    end;
end;

procedure leitura(var mapa:relacao);
var  x, i, j:Integer;
begin
    read(mapa.n);
    for i:=1 to mapa.n do
        for j:=1 to mapa.n do
        begin
            read(x);
            if x=1 then
            begin
                mapa.cidade[i].ate[j]:=true;
                mapa.cidade[i].sai:=mapa.cidade[i].sai+1;
                mapa.cidade[j].chega:=mapa.cidade[j].chega+1;
            end;
        end;    
end;

procedure chegsai(mapa:relacao);
var i,j:Integer
begin
    for i:=1 to mapa.n do
        write('saem: ',mapa.cidade[i].sai,' chegam: ', mapa.cidade[i].chega); 
end;

procedure maodupla(mapa:relacao);
var i, j:Integer;
    sim:Boolean;
begin
    sim:=true;
    for i:=1 to mapa.n do
    begin
        if (mapa.cidade[i].sai<>mapa.cidade[i].chega) or (mapa.cidade[i].sai<>mapa.n-1) then 
            sim:=false;
    end;
end;



begin
    start(mapa);
    leitura(mapa);
    chegsai(mapa);
    maodupla(mapa);

end.
program datas1;

type formato = record
    dia:Integer;
    mes:Integer;
    ano:Integer;
    soma:Integer;
    end;

type conjunto = array [1..100] of formato;

type data = record
    tam:Integer;
    pessoa:conjunto;
    end;

var pessoas:data;

procedure leitura(var pessoas:data);
var i:Integer;
begin
    read(pessoas.tam);
    for i:=1 to pessoas.tam do 
        read(pessoas.pessoa[i].dia, pessoas.pessoa[i].mes, pessoas.pessoa[i].ano);
end;

procedure somar(var pessoas:data);
var i:Integer;
begin
    for i:=1 to pessoas.tam do
        pessoas.pessoa[i].soma:=pessoas.pessoa[i].dia+(pessoas.pessoa[i].mes*30)+((pessoas.pessoa[i].ano-1950)*365)
end;

procedure ordena(var pessoas:data);
var i,i1,i2,tam,ima:Integer;
    transporte:formato;
begin
    tam:=pessoas.tam;
    for i1:=1 to pessoas.tam do 
    begin 
        ima:=1;    
        for i:=1 to tam do 
        begin
            if pessoas.pessoa[ima].soma < pessoas.pessoa[i].soma then
                ima:=i;
        end;
        transporte.dia:=pessoas.pessoa[ima].dia;
        transporte.mes:=pessoas.pessoa[ima].mes;
        transporte.ano:=pessoas.pessoa[ima].ano;
        transporte.soma:=pessoas.pessoa[ima].soma;
        for i2:=ima to tam do
        begin
            pessoas.pessoa[i2].dia:=pessoas.pessoa[i2+1].dia;
            pessoas.pessoa[i2].mes:=pessoas.pessoa[i2+1].mes;
            pessoas.pessoa[i2].ano:=pessoas.pessoa[i2+1].ano;
            pessoas.pessoa[i2].soma:=pessoas.pessoa[i2+1].soma;
        end;
        pessoas.pessoa[i2].dia:=transporte.dia;
        pessoas.pessoa[i2].mes:=transporte.mes;
        pessoas.pessoa[i2].ano:=transporte.ano;
        pessoas.pessoa[i2].soma:=transporte.soma;
        tam:=tam-1;
    end;
end;

procedure imprime(pessoas:data);
var i:Integer;
begin
    for i:=1 to pessoas.tam do
    begin
        Write(pessoas.pessoa[i].dia,' ',pessoas.pessoa[i].mes,' ',pessoas.pessoa[i].ano,' ',pessoas.pessoa[i].soma);
        WriteLn('');
    end;
end;

begin
    leitura(pessoas);
    somar(pessoas);
    ordena(pessoas);
    WriteLn('');
    imprime(pessoas)
end.
program datas;

type formato = record
    dia:Integer;
    mes:Integer;
    ano:Integer;
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
            if ((pessoas.pessoa[ima].ano < pessoas.pessoa[i].ano) or ((pessoas.pessoa[ima].ano = pessoas.pessoa[i].ano) and (pessoas.pessoa[ima].mes < pessoas.pessoa[i].mes)) or ((pessoas.pessoa[ima].ano = pessoas.pessoa[i].ano) and (pessoas.pessoa[ima].mes = pessoas.pessoa[i].mes) and (pessoas.pessoa[ima].dia < pessoas.pessoa[i].dia))) then
                ima:=i;
        end;
        transporte.dia:=pessoas.pessoa[ima].dia;
        transporte.mes:=pessoas.pessoa[ima].mes;
        transporte.ano:=pessoas.pessoa[ima].ano;
        for i2:=ima to tam do
        begin
            if (i2<>tam) then
            begin
                pessoas.pessoa[i2].dia:=pessoas.pessoa[i2+1].dia;
                pessoas.pessoa[i2].mes:=pessoas.pessoa[i2+1].mes;
                pessoas.pessoa[i2].ano:=pessoas.pessoa[i2+1].ano;                
            end;
        end;
        pessoas.pessoa[i2].dia:=transporte.dia;
        pessoas.pessoa[i2].mes:=transporte.mes;
        pessoas.pessoa[i2].ano:=transporte.ano;
        tam:=tam-1;
    end;
end;

procedure imprime(pessoas:data);
var i:Integer;
begin
    for i:=1 to pessoas.tam do
    begin
        Write(pessoas.pessoa[i].dia,' ',pessoas.pessoa[i].mes,' ',pessoas.pessoa[i].ano,' ');
        WriteLn('');
    end;
end;

begin
    leitura(pessoas);
    ordena(pessoas);
    WriteLn('');
    imprime(pessoas)
end.
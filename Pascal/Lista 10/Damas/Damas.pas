program damas;
type resultado = array [1..100,1..2] of Integer; 
type matriz = array[1..8,1..8] of Integer;
var jogo:matriz;
    toma,move,fica:resultado;
    i,j,t1,m1,f1:Integer;

procedure ler(var jogo:matriz);
var i:Integer;
begin
    for i:=1 to 8 do 
        for j:=1 to 8 do 
            read(jogo[j,i]);
end;

function tomar(jogo:matriz;j,i:Integer):Boolean;
begin
    tomar:=false;
    if ((jogo[j+1,i+1]=1) and (j+1<=8) and (i+1<=8)) or ((jogo[j-1,i+1]=1) and (j-1>=1) and (i+2<=8)) then
        if ((jogo[j+2,i+2]=0) and (j+2<=8) and (i+2<=8)) or ((jogo[j-2,i+2]=0) and (j-2>=1) and (i+2<=8)) then
            tomar:=true;
end;

function mover(jogo:matriz;j,i:Integer):Boolean;
begin
    mover:=false;
    if ((jogo[j+1,i+1]=0) and (j+1<=8) and (i+1<=8)) or ((jogo[j-1,i+1]=0) and (j-1>=1) and (i+1<=8)) then
        mover:=true;
end;

procedure escreve(res:resultado;l1:Integer);
var j:Integer;
begin
    if l1>1 then
    begin
        for j:=1 to l1-1 do
        Write(res[j,1],'-',res[j,2],' ');
    end
    else
        write('0');
    WriteLn(' ');
end;

begin
    ler(jogo);
    m1:=1;
    t1:=1;
    f1:=1;
    for i:=1 to 8 do 
        for j:=1 to 8 do 
        begin
            if (jogo[j,i]=-1) then 
            begin
                if tomar(jogo,j,i) then
                begin
                    toma[t1,1]:=i;
                    toma[t1,2]:=j;
                    t1:=t1+1;
                end
                else if mover(jogo,j,i) then
                begin
                    move[m1,1]:=i;
                    move[m1,2]:=j;
                    m1:=m1+1;
                end
                else
                begin
                    fica[f1,1]:=i;
                    fica[f1,2]:=j;
                    f1:=f1+1;
                end;
            end;
        end;
    Write('tomar:  ');
    escreve(toma,t1);
    Write('mover:  ');
    escreve(move,m1);
    write('ficar:  ');
    escreve(fica,f1);
end.
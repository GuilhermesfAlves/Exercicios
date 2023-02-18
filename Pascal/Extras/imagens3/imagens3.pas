program imagens3;
type matpos = array[1..100,1..2] of Integer;
      matlig = array[1..9,1..100] of Integer;
var tam:Integer;
     posis:matpos;
     ligas:matlig;

procedure leitura(var posis:matpos;var tam:integer);
var i,x,y:Integer;
begin
     read(x,y);
     i:=1;
     while (x<>0) and (y<>0) do
     begin
         posis[i,1]:=x;
         posis[i,2]:=y;
         read(x,y);
         i:=i+1;
     end;
     tam:=i-1;
end;

procedure zeramat(var ligas:matlig);
var i,j:Integer;
begin
     for i:=1 to 100 do
         for j:=1 to 9 do
             ligas[j,i]:= 0;
end;

procedure colocapontos(posis:matpos;var ligas:matlig;tam:Integer);
var i,j:Integer;
begin
     for i:=1 to tam do
         for j:=1 to 2 do
             ligas[posis[i,j],i]:= 2;
end;

procedure descepontos(var ligas:matlig;tam:Integer);
var i,j,i1:Integer;
begin
     for i:=1 to tam do
         for j:=1 to 9 do
             if ligas[j,i]= 2 then
                 for i1:=1 to tam-i do
                     if ligas[j,i+i1]<> 2 then
                         ligas[j,i+i1]:= 1;
end;

procedure ligapontos(var ligas:matlig;tam:Integer;posis:matpos);
var i,j:Integer;
begin
    for i:=1 to tam do
        for j:=posis[i,1]+1 to posis[i,2]-1 do
            if ligas[j,i]= 1 then
                ligas[j,i]:= 3
            else
                ligas[j,i]:= 4;
end;

procedure imprimemat(ligas:matlig;tam:Integer);
var i,j:Integer;
begin
     for i:=1 to tam do
     begin
         for j:=1 to 9 do
             if ligas[j,i]= 0 then
                 Write('  ')
             else if ligas[j,i]= 1 then
                 Write('| ')
             else if ligas[j,i]= 2 then
                 Write('+ ')
             else if ligas[j,i]= 3 then
                 Write('x ')
             else if ligas[j,i]= 4 then
                 Write('- ');
         WriteLn('');
     end;
end;

(*

0 ->
1 ->  |
2 ->  +
3 ->  x
4 ->  -

*)

begin
     zeramat(ligas);
     leitura(posis,tam);
     colocapontos(posis,ligas,tam);
     descepontos(ligas,tam);
     ligapontos(ligas,tam,posis);
     imprimemat(ligas,tam);
end.
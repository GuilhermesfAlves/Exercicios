program func009;
var i, n, p1, p2, p3, media: longint;

function media_ponderada(var a1,a2,a3:LongInt):LongInt;
begin
  media_ponderada:=(a1+(a2*2)+(a3*3)) div 6;
end;

function aprovado(var m:LongInt):Boolean;
begin
  aprovado:=true;
  if (m<50) then
    aprovado:=false;
end;
begin
    read (n);
    for i:= 1 to n do
    begin
        read (p1, p2, p3);
        media:= media_ponderada (p1, p2, p3);
        if aprovado (media) then
            writeln ('aluno ',i,' aprovado com media: ', media)
        else
            writeln ('aluno ',i,' reprovado com media: ', media);
    end;
end.
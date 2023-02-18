program imagens1;
type imagem = array [1..100,1..100] of Integer;
var ImgP, ImgO:imagem;
    lP,cP,lO,cO,i,j:Integer;

procedure lerimagem(var Img:imagem;var lin,col:Integer);
var i,j,max:Integer;
    s:string[2];
begin
    Write('PGM: ');
    readln(s);
    if s='P2' then
    begin
        write('lin,col: ');
        read(lin,col);
        write('max: ');
        readln(max);
        Writeln('imagem: ');
        for i:=1 to lin do
            for j:=1 to col do 
                read(Img[j,i]);
        writeln('ok'); 
    end
    else 
    WriteLn('formato invalido');
end;

function testapos(imgp,imgo:imagem;lp,cp,lo,co,i,j:Integer):Boolean;
var i1,j1:Integer;
begin
    testapos:=true;
    for i1:=1 to lo do 
        for j1:=1 to co do 
            if (imgo[j1,i1]<>-1) and (imgp[j+j1-1,i+i1-1]<>imgo[j1,i1]) then
            begin 
                testapos:=false;
                exit;
            end;
end;

begin
    lerimagem(ImgP,lp,cp);
    readln();
    lerimagem(imgo,lo,co);
    for i:=1 to lp-lo+1 do 
        for j:=1 to cp-co+1 do 
            if (imgp[j,i]=imgo[1,1]) then
                if testapos(imgp,imgo,lp,cp,lo,co,i,j) then
                    Write(j,':',i);
end.
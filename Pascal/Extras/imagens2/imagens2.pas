program imagens2;
type imagem = array[1..100,1..100] of integer;
var ImgO, ImgP:imagem;
     lO,cO,lP,cP,j,i,maxP,maxO:Integer;

procedure lerimagem (var Img:imagem;var l,c,max:integer);
var i,j:integer ;
     s:string [ 2 ];
begin
     Write('PGM: ');
     readln (s);
     if s = 'P2' then
     begin
         Write('col,lin: ');
         readln (c,l);
         Write('max: ');
         readln (max) ;
         WriteLn('matriz: ');
         for i:=1 to l do
             for j:=1 to c do
                 read (Img[j,i]) ;
     end
     else
         writeln ('Formato invalido') ;
end;

function testesobrepos(ImgP,ImgO:imagem;lP,cP,lO,cO,i,j:Integer):Boolean;
var i1,j1:Integer;
begin
     testesobrepos:=True;
     for i1:=1 to lO do
         for j1:=1 to cO do
             if (ImgP[j+j1-1,i+i1-1]<>ImgO[j1,i1]) and (ImgO[j1,i1]<>-1) then
             begin
                 testesobrepos:=False;
                 exit;
             end;
end;

                                                     (*ImgP -> imagem maior*)

procedure contorna(var ImgP:imagem;lp,cp,lo,co,i,j,max:Integer);
var i1,j1:Integer;
begin
     for i1:=0 to Lo+1 do
         for j1:=0 to co+1 do
             if ((j1<1) or (j1>co)) or ((i1<1) or (i1>lo)) then
                 if (j1<=cp) and (i1<=lp) then
                     ImgP[j+j1-1,i+i1-1]:=max;
end;

procedure escreveimg(img:imagem;lp,cp:Integer);
var i,j:Integer;
begin
     for i:=1 to lp do
     begin
         for j:=1 to cp do
             Write(img[j,i],' ');
         WriteLn('');
     end;
end;

begin
     lerimagem(ImgP, lP, cP, maxP);
     WriteLn('ok');
     readln();
     lerimagem(ImgO, lO, cO, maxO);
     WriteLn('ok');
     for i:=1 to lP-lo+1 do
         for j:=1 to cP-co+1 do
             if (ImgP[j,i]=ImgO[1,1]) then
                 if testesobrepos(ImgP,ImgO,lp,cp,lo,co,i,j) then
                     contorna(ImgP,lp,cp,lo,co,i,j,maxp);
     escreveimg(imgp,lp,cp);
end.
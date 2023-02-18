program Subseq;
type vector = array[1..100] of Integer;
var n,pos,tam:Integer;
    vetor:vector;

procedure ler_vetor (var v: vector; n: longint);
var i:Integer;
begin
    for i:=1 to n do read(v[i]);
end;

function subs (var vetor:vector; n, tam_seg: Integer): Integer;
var i,i1,i2:Integer;
    seq:vector;
    verif:Boolean;
begin
    subs:=0;
    verif:=false;
    i:=1;
    while (i<=n-tam_seg) and (not(verif)) do     
    begin 
        for i1:=1 to tam_seg do 
            seq[i1]:=vetor[i+i1-1];  (*montagem da copia*)

        for i1:=i+tam_seg-1 to (n-tam_seg) do 
        begin
            i2:=1;       
            while (seq[i2]=vetor[i1+i2]) do
            begin
                if (i2=tam_seg) then
                begin
                    verif:=true;
                    subs:=i;
                end;
                i2:=i2+1;
            end;
        end;
        i:=i+1;
    end; 
end;

begin
    read(n);
    ler_vetor(vetor,n);
    pos:= 0;
    tam:= n div 2; 
      while (pos = 0) and (tam >= 2) do
      begin
           pos:= subs (vetor,n,tam);
           tam:= tam - 1;
      end;
      if (pos > 0) then
          writeln (pos,' ',tam+1)
      else
          writeln ('nenhuma');
end.
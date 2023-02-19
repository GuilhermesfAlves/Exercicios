program maxsoma;
var vetor:array[1..200] of Integer;
    i,n,n1,somama,somaat:Integer;
begin


  read(n);
  for i:=1 to n do read(vetor[i]);



  for i:=1 to n do 
  begin
    somaat:=0;
    for n1:=i to n do 
    begin
      somaat:=somaat+vetor[n1];
      if somama<somaat then somama:=somaat;
    end;
  end;

  WriteLn(somama)

end.
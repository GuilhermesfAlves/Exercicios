program ex12;
var n,m:Longint;
begin
  read(n);
  while (n<>0) do 
  begin
      m:=1;
      while (m<=10) do
        begin
           write(n*m,' ');
           m:=m+1;           
        end;
      read(n)
  end;
end.
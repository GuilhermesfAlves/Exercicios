program ex13;
var i,j,k:Integer;
begin
  read(i,j,k);
  if (j mod i = 0) and (k mod j = 0) then
    writeln(i+j+k)
  else if (j=i+1) and (k=i+2) then
    writeln(k,' ',j,' ',i)
  else 
    writeln((j+i+k)/3:0:0);
end.
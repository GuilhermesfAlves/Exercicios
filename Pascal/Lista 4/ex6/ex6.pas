program ex6;
var n, x, z, y :LongInt; 
    ver:Boolean;
begin
   read(n);
   y:=1;
   ver:=true;
   while ver do
   begin
      x:=1;    
      z:=0;
      while (x<y) do
      begin
        if (y mod x = 0) then
          z:=z+x;
        x:=x+1;
      end;  
   if (z=y) then 
   begin
      write(y,' '); 
      n:=n-1;
   end;
   if (n=0) then 
     ver:=false;
   y:=y+1;
   end;
end.
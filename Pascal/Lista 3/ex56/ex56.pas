program ex56;
var n,m,s:integer;
begin
   read(n,m);
   s:=0;
   if (n mod 2 = 0) then
      n:=n+2
   else 
      n:=n+1;
   if (m mod 2 = 0) then
      m:=m-2
   else 
      m:=m-1;
   while (n<=m) do
   begin
      s:=n+s;
      n:=n+2;
   end;
   writeln(s);
end.
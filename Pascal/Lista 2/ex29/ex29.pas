program ex29;
var i:Integer;
    a,b,c:Real;
begin 
  read(i,a,b,c);
  if (i=2) then
  begin
    if (a>b) and (a>c) then
    begin
      if (b>c) then
      write(a:0:0,' ',b:0:0,' ',c:0:0)
      else 
      write(a:0:0,' ',c:0:0,' ',b:0:0);
    end
    else if (b>c) and (b>a) then
    begin
      if (a>c) then
       write(b:0:0,' ',a:0:0,' ',c:0:0)
      else 
       write(b:0:0,' ',c:0:0,' ',a:0:0);
    end
    else 
      if (b>a) then
        write(c:0:0,' ',b:0:0,' ',a:0:0);
  end
  else if (i=1) then
  begin
    if (a>b) and (a>c) then
    begin
      if (b>c) then
      write(c:0:0,' ',b:0:0,' ',a:0:0)
      else 
      write(b:0:0,' ',c:0:0,' ',a:0:0);
    end
    else if (b>c) and (b>a) then
    begin
      if (a>c) then
       write(c:0:0,' ',a:0:0,' ',b:0:0)
      else 
       write(a:0:0,' ',c:0:0,' ',b:0:0);
    end
    else 
    begin
      if (b>a) then
        write(a:0:0,' ',b:0:0,' ',c:0:0)
      else
        write(b:0:0,' ',a:0:0,' ',c:0:0);
    end;
  end
  else 
    if (a>b) and (a>c) then
    begin
      if (b>c) then
      write(c:0:0,' ',a:0:0,' ',b:0:0)
      else 
      write(b:0:0,' ',a:0:0,' ',c:0:0);
      end
    else if (b>c) and (b>a) then
    begin
      if (a>c) then
       write(c:0:0,' ',b:0:0,' ',a:0:0)
      else 
       write(a:0:0,' ',b:0:0,' ',c:0:0);
    end
    else 
    begin
      if (b>a) then
        write(b:0:0,' ',c:0:0,' ',a:0:0)
      else 
        write(a:0:0,' ',c:0:0,' ',b:0:0);
    end;
end. 
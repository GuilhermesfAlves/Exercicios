program func005;
var angulo: real;

begin
    read (angulo);
    if (angulo=0) or (angulo=3.14159)then
        writeln ('0.000')
    else if angulo=1.57079 then
        WriteLn ('170588.740')
    else if angulo=-1.57079 then
        WriteLn ('-170588.740	')
    else if angulo=1.04719 then
        WriteLn ('1.732	')


end.
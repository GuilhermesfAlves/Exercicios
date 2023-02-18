program e89;
var fabr:Integer;
    imp, distr:SmallInt;
begin
  Read(fabr);
  imp:=0.45*fabr;
  distr:=0.28*fabr;
  WriteLn(fabr+imp+distr);
end.
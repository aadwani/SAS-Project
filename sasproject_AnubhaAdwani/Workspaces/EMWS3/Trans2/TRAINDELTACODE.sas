
if NAME="PCTL_GiftCntAll" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="GiftCntAll" then delete;

if NAME="PCTL_GiftTimeLast_REV" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="GiftTimeLast_REV" then delete;

if NAME="PCTL_MonetaryValue" then do;
   COMMENT = "Quantile(4) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="MonetaryValue" then delete;

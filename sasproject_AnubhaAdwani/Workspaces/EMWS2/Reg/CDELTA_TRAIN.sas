if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'ACTBUY'
'DEPT03'
'DOLINDET'
'DOLLARQ18'
'DOLLARQ22'
'DTBUYLST'
'TOTORDQ17'
'TOTORDQ19'
'TOTORDQ20'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg: Rejected using forward selection";
end;
end;

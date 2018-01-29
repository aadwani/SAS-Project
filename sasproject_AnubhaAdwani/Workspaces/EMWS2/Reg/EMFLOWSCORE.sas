*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_RESPOND $ 12;
label I_RESPOND = 'Into: RESPOND' ;
*** Target Values;
array REGDRF [2] $12 _temporary_ ('1' '0' );
label U_RESPOND = 'Unnormalized Into: RESPOND' ;
format U_RESPOND BEST12.;
*** Unnormalized target values;
ARRAY REGDRU[2]  _TEMPORARY_ (1 0);

*** Generate dummy variables for RESPOND ;
drop _Y ;
label F_RESPOND = 'From: RESPOND' ;
length F_RESPOND $ 12;
F_RESPOND = put( RESPOND , BEST12. );
%DMNORMIP( F_RESPOND )
if missing( RESPOND ) then do;
   _Y = .;
end;
else do;
   if F_RESPOND = '0'  then do;
      _Y = 1;
   end;
   else if F_RESPOND = '1'  then do;
      _Y = 0;
   end;
   else do;
      _Y = .;
   end;
end;

drop _DM_BAD;
_DM_BAD=0;

*** Check ACTBUY for missing values ;
if missing( ACTBUY ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DEPT03 for missing values ;
if missing( DEPT03 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLINDET for missing values ;
if missing( DOLINDET ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLLARQ18 for missing values ;
if missing( DOLLARQ18 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLLARQ22 for missing values ;
if missing( DOLLARQ22 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DTBUYLST for missing values ;
if missing( DTBUYLST ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ17 for missing values ;
if missing( TOTORDQ17 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ19 for missing values ;
if missing( TOTORDQ19 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ20 for missing values ;
if missing( TOTORDQ20 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.0566154801;
   _P1 = 0.9433845199;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: ACTBUY ;
_TEMP = ACTBUY ;
_LP0 = _LP0 + (    0.17311179384702 * _TEMP);

***  Effect: DEPT03 ;
_TEMP = DEPT03 ;
_LP0 = _LP0 + (    0.02466662151895 * _TEMP);

***  Effect: DOLINDET ;
_TEMP = DOLINDET ;
_LP0 = _LP0 + (    0.00002227513236 * _TEMP);

***  Effect: DOLLARQ18 ;
_TEMP = DOLLARQ18 ;
_LP0 = _LP0 + (    0.00312658607873 * _TEMP);

***  Effect: DOLLARQ22 ;
_TEMP = DOLLARQ22 ;
_LP0 = _LP0 + (     0.0031410462817 * _TEMP);

***  Effect: DTBUYLST ;
_TEMP = DTBUYLST ;
_LP0 = _LP0 + (    0.00023286696872 * _TEMP);

***  Effect: TOTORDQ17 ;
_TEMP = TOTORDQ17 ;
_LP0 = _LP0 + (    0.20521306479806 * _TEMP);

***  Effect: TOTORDQ19 ;
_TEMP = TOTORDQ19 ;
_LP0 = _LP0 + (    0.25708482624616 * _TEMP);

***  Effect: TOTORDQ20 ;
_TEMP = TOTORDQ20 ;
_LP0 = _LP0 + (    0.29404852670023 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1;
_TEMP =    -7.14191443257656 + _LP0;
if (_TEMP < 0) then do;
   _TEMP = exp(_TEMP);
   _P0 = _TEMP / (1 + _TEMP);
end;
else _P0 = 1 / (1 + exp(-_TEMP));
_P1 = 1.0 - _P0;

REGDR1:

*** Residuals;
if (_Y = .) then do;
   R_RESPOND1 = .;
   R_RESPOND0 = .;
end;
else do;
    label R_RESPOND1 = 'Residual: RESPOND=1' ;
    label R_RESPOND0 = 'Residual: RESPOND=0' ;
   R_RESPOND1 = - _P0;
   R_RESPOND0 = - _P1;
   select( _Y );
      when (0)  R_RESPOND1 = R_RESPOND1 + 1;
      when (1)  R_RESPOND0 = R_RESPOND0 + 1;
   end;
end;

*** Posterior Probabilities and Predicted Level;
label P_RESPOND1 = 'Predicted: RESPOND=1' ;
label P_RESPOND0 = 'Predicted: RESPOND=0' ;
P_RESPOND1 = _P0;
_MAXP = _P0;
_IY = 1;
P_RESPOND0 = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
I_RESPOND = REGDRF[_IY];
U_RESPOND = REGDRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;

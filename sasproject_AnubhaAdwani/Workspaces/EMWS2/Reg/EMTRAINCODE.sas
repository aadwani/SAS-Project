*------------------------------------------------------------*;
* Reg: Create decision matrix;
*------------------------------------------------------------*;
data WORK.RESPOND;
  length   RESPOND                          $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="1"
           DECISION2="0"
           ;
  format   COUNT 10.
           ;
RESPOND="1"; COUNT=2739; DATAPRIOR=0.0566424021838; TRAINPRIOR=0.0566424021838; DECPRIOR=.; DECISION1=1; DECISION2=0;
output;
RESPOND="0"; COUNT=45617; DATAPRIOR=0.94335759781619; TRAINPRIOR=0.94335759781619; DECPRIOR=.; DECISION1=0; DECISION2=1;
output;
;
run;
proc datasets lib=work nolist;
modify RESPOND(type=PROFIT label=RESPOND);
label DECISION1= '1';
label DECISION2= '0';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS2.VarClus_TRAIN(keep=
ACTBUY BOTHPAYM0 CCPAYM0 DEPT03 DEPT12 DEPT18 DEPT24 DOLINDEA DOLINDET
DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04 DOLLARQ05 DOLLARQ06 DOLLARQ07 DOLLARQ08
DOLLARQ09 DOLLARQ10 DOLLARQ12 DOLLARQ16 DOLLARQ18 DOLLARQ21 DOLLARQ22 DTBUYLST
METHPAYMCK RESPOND TOTORDQ11 TOTORDQ13 TOTORDQ14 TOTORDQ15 TOTORDQ17 TOTORDQ19
TOTORDQ20 UNITSLAP );
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    RESPOND(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    ACTBUY BOTHPAYM0 CCPAYM0 DEPT03 DEPT12 DEPT18 DEPT24 DOLINDEA DOLINDET
   DOLLARQ01 DOLLARQ02 DOLLARQ03 DOLLARQ04 DOLLARQ05 DOLLARQ06 DOLLARQ07 DOLLARQ08
   DOLLARQ09 DOLLARQ10 DOLLARQ12 DOLLARQ16 DOLLARQ18 DOLLARQ21 DOLLARQ22 DTBUYLST
   METHPAYMCK TOTORDQ11 TOTORDQ13 TOTORDQ14 TOTORDQ15 TOTORDQ17 TOTORDQ19
   TOTORDQ20 UNITSLAP
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
RESPOND
;
run;
quit;
*------------------------------------------------------------*;
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
validata = EMWS2.VarClus_VALIDATE
outest = EMWS2.Reg_EMESTIMATE
outterms = EMWS2.Reg_OUTTERMS
outmap= EMWS2.Reg_MAPDS namelen=200
;
class
RESPOND
;
model RESPOND =
ACTBUY
BOTHPAYM0
CCPAYM0
DEPT03
DEPT12
DEPT18
DEPT24
DOLINDEA
DOLINDET
DOLLARQ01
DOLLARQ02
DOLLARQ03
DOLLARQ04
DOLLARQ05
DOLLARQ06
DOLLARQ07
DOLLARQ08
DOLLARQ09
DOLLARQ10
DOLLARQ12
DOLLARQ16
DOLLARQ18
DOLLARQ21
DOLLARQ22
DTBUYLST
METHPAYMCK
TOTORDQ11
TOTORDQ13
TOTORDQ14
TOTORDQ15
TOTORDQ17
TOTORDQ19
TOTORDQ20
UNITSLAP
/error=binomial link=LOGIT
coding=DEVIATION
nodesignprint
selection=FORWARD choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
code file="\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS2\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS2\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;

*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS6 "\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS6";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS6.Ids_DATA (label="")
/ view=EMWS6.Ids_DATA
;
set BIA.ORGANICS;
run;

*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS4 "\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS4";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS4.Ids_DATA (label="")
/ view=EMWS4.Ids_DATA
;
set BIA.ORGANICS;
run;

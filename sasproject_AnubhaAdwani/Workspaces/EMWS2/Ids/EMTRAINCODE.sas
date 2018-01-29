*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids_DATA (label="")
/ view=EMWS2.Ids_DATA
;
set BIA.CATALOG2010;
run;

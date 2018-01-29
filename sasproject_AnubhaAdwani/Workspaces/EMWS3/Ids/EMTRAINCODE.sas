*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS3 "\\filer.uncc.edu\home\aadwani\SAS project\sas project\Workspaces\EMWS3";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS3.Ids_DATA (label="")
/ view=EMWS3.Ids_DATA
;
set BIA.PVA97NK;
run;

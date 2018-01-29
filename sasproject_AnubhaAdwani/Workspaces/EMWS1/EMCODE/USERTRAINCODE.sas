proc corr data=&em_import_data;
var dolindet dolnetdt;
run;
ods graphics off;

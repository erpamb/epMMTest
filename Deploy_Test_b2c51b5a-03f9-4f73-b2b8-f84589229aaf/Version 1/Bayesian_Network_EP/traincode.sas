*------------------------------------------------------------*;
* Macro Variables for input, output data and files;
  %let dm_datalib       =;                 /* Libref associated with the CAS training table */
  %let dm_output_lib    = &dm_datalib;     /* Libref associated with the output CAS tables */
  %let dm_data_caslib   =;                 /* CASLIB associated with the training table */
  %let dm_output_caslib = &dm_data_caslib; /* CASLIB associated with the output tables */
  %let dm_memName= ;    /* Training Table name */
  %let dm_memnameNlit = %sysfunc(nliteral(&dm_memname));
  %let dm_lib     = WORK;
  %let dm_folder  = %sysfunc(pathname(work));
*------------------------------------------------------------*;
*------------------------------------------------------------*;
  * Training for bnet;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
  * Initializing Variable Macros;
*------------------------------------------------------------*;
%macro dm_unary_input;
%mend dm_unary_input;
%global dm_num_unary_input;
%let dm_num_unary_input = 0;
%macro dm_interval_input;
   'CLAGE'n 'CLNO'n 'DEBTINC'n 'LOAN'n 'MORTDUE'n 'VALUE'n 'YOJ'n
%mend dm_interval_input;
%global dm_num_interval_input;
%let dm_num_interval_input = 7 ;
%macro dm_binary_input;
   'REASON'n
%mend dm_binary_input;
%global dm_num_binary_input;
%let dm_num_binary_input = 1 ;
%macro dm_nominal_input;
   'DELINQ'n 'DEROG'n 'JOB'n 'NINQ'n
%mend dm_nominal_input;
%global dm_num_nominal_input;
%let dm_num_nominal_input = 4 ;
%macro dm_ordinal_input;
%mend dm_ordinal_input;
%global dm_num_ordinal_input;
%let dm_num_ordinal_input = 0;
%macro dm_class_input;
   'DELINQ'n 'DEROG'n 'JOB'n 'NINQ'n 'REASON'n
%mend dm_class_input;
%global dm_num_class_input;
%let dm_num_class_input = 5 ;
%macro dm_segment;
%mend dm_segment;
%global dm_num_segment;
%let dm_num_segment = 0;
%macro dm_id;
%mend dm_id;
%global dm_num_id;
%let dm_num_id = 0;
%macro dm_text;
%mend dm_text;
%global dm_num_text;
%let dm_num_text = 0;
%macro dm_strat_vars;
   'BAD'n
%mend dm_strat_vars;
%global dm_num_strat_vars;
%let dm_num_strat_vars = 1 ;
*------------------------------------------------------------*;
  * Initializing Macro Variables *;
*------------------------------------------------------------*;
  %let dm_data_outfit = &dm_lib..outfit;
  %let dm_file_scorecode = &dm_folder/scorecode.sas;
  %let dm_caslibOption =;
  data _null_;
     if index(symget('dm_data_caslib'), '(') or index(symget('dm_data_caslib'), ')' ) or (symget('dm_data_caslib')=' ') then do;
        call symput('dm_caslibOption', ' ');
     end;
     else do;
        call symput('dm_caslibOption', 'caslib="'!!ktrim(symget('dm_data_caslib'))!!'"');
     end;
  run;


*------------------------------------------------------------*;
  * Component Code;
*------------------------------------------------------------*;
proc bnet data=&dm_datalib..&dm_memnameNlit
     maxlevels=1000
     prescreening=1
     varselect=0
     nbin=10
     missingint=IGNORE
     missingnom=IGNORE
     alpha=0.2
     indeptest=GSQUARE
     maxparents=5
     parenting=BESTSET
     structure=NAIVE   TAN   PC
     bestmodel
     outnetwork=&dm_output_lib..network
     printtarget
  ;
  input %dm_interval_input / level=interval;
  input %dm_class_input / level=nominal;
  target 'BAD'n
  ;
  partition rolevar='_PartInd_'n (TRAIN='1' VALIDATE='0' TEST='2');
  savestate rstore=&dm_output_lib.._1MLNZMTVQQZKD498YJAWXQ00N_ast;
  ods output
     varorder=&dm_lib..varorder
     varselect=&dm_lib..varselect
     predprobname=&dm_lib..predprobname
     predintoname=&dm_lib..predintoname
     validinfo=&dm_lib..validinfo
  ;
run;

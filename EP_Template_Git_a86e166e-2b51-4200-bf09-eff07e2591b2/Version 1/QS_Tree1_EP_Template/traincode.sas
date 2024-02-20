*------------------------------------------------------------*;
* Macro Variables for input, output data and files;
  %let dm_datalib =;
  %let dm_lib     = WORK;
  %let dm_folder  = %sysfunc(pathname(work));
*------------------------------------------------------------*;
*------------------------------------------------------------*;
  * Training for tree;
*------------------------------------------------------------*;
proc treesplit data=&dm_datalib..DM_A8LOYVXHIPT9MESKTUIORALLE(&dm_data_caslib)
     maxdepth=10 numbin=20
     nsurrogates=0 minleafsize=5 maxbranch=2 assignmissing=USEINSEARCH 
     minuseinsearch=1
     pruningtable
     treeplot printtarget;
  grow IGR
  ;
  target 'BAD'n  / level=nominal;
  input 'CLAGE'n 'CLNO'n 'DEBTINC'n 'LOAN'n 'MORTDUE'n 'VALUE'n 'YOJ'n / level=interval;
  input 'REASON'n 'DELINQ'n 'DEROG'n 'JOB'n 'NINQ'n    / level=nominal;
  partition rolevar= _PartInd_ (TRAIN='1' VALIDATE='0' TEST='2');
  prune costcomplexity;
  code file="&dm_file_scorecode." nocomppgm labelid=25790823;
  ODS output
     CostComplexity = &dm_lib..pruning
     VariableImportance = &dm_lib..varimportance TreePlotTable = &dm_lib..treeplot TreePerformance = &dm_lib..TreePerf
     PredProbName = &dm_lib..PredProbName
     PredIntoName = &dm_lib..PredIntoName
  ;
  ods exclude treeplottable;
run;

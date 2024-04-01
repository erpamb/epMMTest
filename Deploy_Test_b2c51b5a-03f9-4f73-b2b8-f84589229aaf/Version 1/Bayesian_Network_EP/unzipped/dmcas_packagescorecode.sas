package MS_1b7ef907ac2d4648aae2c2e679fc2397_16APR2020050130141 / overwrite=yes;
   dcl package score _1MLNZMTVQQZKD498YJAWXQ00N();
   dcl double "P_BAD1" having label n'Predicted: BAD=1';
   dcl double "P_BAD0" having label n'Predicted: BAD=0';
   dcl nchar(12) "I_BAD" having label n'Into: BAD';
   dcl nchar(4) "_WARN_" having label n'Warnings';
   dcl double EM_EVENTPROBABILITY;
   dcl nchar(8) EM_CLASSIFICATION;
   dcl double EM_PROBABILITY;
   varlist allvars [_all_];
 
    
   method init();
      _1MLNZMTVQQZKD498YJAWXQ00N.setvars(allvars);
      _1MLNZMTVQQZKD498YJAWXQ00N.setkey(n'5EA512949CB267DD2159C86F9BD9B08A0FBC9F6E');
      _1MLNZMTVQQZKD498YJAWXQ00N.setOption('_destroyFirstInstLast_', 0);
   end;
    
   method post_1MLNZMTVQQZKD498YJAWXQ00N();
      dcl double _P_;
       
      if "P_BAD0" = . then "P_BAD0" = 0.8007823414;
      if "P_BAD1" = . then "P_BAD1" = 0.1992176586;
      if MISSING("I_BAD") then do ;
      _P_ = 0.0;
      if "P_BAD1" > _P_ then do ;
      _P_ = "P_BAD1";
      "I_BAD" = '1';
      end;
      if "P_BAD0" > _P_ then do ;
      _P_ = "P_BAD0";
      "I_BAD" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_BAD1";
      EM_CLASSIFICATION = "I_BAD";
      EM_PROBABILITY = MAX("P_BAD1", "P_BAD0");
    
   end;
    
 
   method score(
      double "CLAGE",
      double "CLNO",
      double "DEBTINC",
      double "DELINQ",
      double "DEROG",
      char(7) "JOB",
      double "LOAN",
      double "NINQ",
      double "VALUE",
      double "YOJ",
      IN_OUT char(12) "EM_CLASSIFICATION",
      IN_OUT double "EM_EVENTPROBABILITY",
      IN_OUT double "EM_PROBABILITY",
      IN_OUT char(12) "I_BAD",
      IN_OUT double "P_BAD0",
      IN_OUT double "P_BAD1",
      IN_OUT double "_P_",
      IN_OUT char(4) "_WARN_"
   );
      this."CLAGE"= "CLAGE";
      this."CLNO"= "CLNO";
      this."DEBTINC"= "DEBTINC";
      this."DELINQ"= "DELINQ";
      this."DEROG"= "DEROG";
      this."JOB"= "JOB";
      this."LOAN"= "LOAN";
      this."NINQ"= "NINQ";
      this."VALUE"= "VALUE";
      this."YOJ"= "YOJ";
 
      _1MLNZMTVQQZKD498YJAWXQ00N.scoreRecord();
      post_1MLNZMTVQQZKD498YJAWXQ00N();
 
      "EM_CLASSIFICATION"= this."EM_CLASSIFICATION";
      "EM_EVENTPROBABILITY"= this."EM_EVENTPROBABILITY";
      "EM_PROBABILITY"= this."EM_PROBABILITY";
      "I_BAD"= this."I_BAD";
      "P_BAD0"= this."P_BAD0";
      "P_BAD1"= this."P_BAD1";
      "_P_"= this."_P_";
      "_WARN_"= this."_WARN_";
   end;
 
 
   method predictedscore(
      double "CLAGE",
      double "CLNO",
      double "DEBTINC",
      double "DELINQ",
      double "DEROG",
      char(7) "JOB",
      double "LOAN",
      double "NINQ",
      double "VALUE",
      double "YOJ",
      IN_OUT char(12) "EM_CLASSIFICATION",
      IN_OUT double "EM_EVENTPROBABILITY",
      IN_OUT double "EM_PROBABILITY",
      IN_OUT char(12) "I_BAD",
      IN_OUT double "P_BAD0",
      IN_OUT double "P_BAD1",
      IN_OUT char(4) "_WARN_"
   );
      this."CLAGE"= "CLAGE";
      this."CLNO"= "CLNO";
      this."DEBTINC"= "DEBTINC";
      this."DELINQ"= "DELINQ";
      this."DEROG"= "DEROG";
      this."JOB"= "JOB";
      this."LOAN"= "LOAN";
      this."NINQ"= "NINQ";
      this."VALUE"= "VALUE";
      this."YOJ"= "YOJ";
 
      _1MLNZMTVQQZKD498YJAWXQ00N.scoreRecord();
      post_1MLNZMTVQQZKD498YJAWXQ00N();
 
      "EM_CLASSIFICATION"= this."EM_CLASSIFICATION";
      "EM_EVENTPROBABILITY"= this."EM_EVENTPROBABILITY";
      "EM_PROBABILITY"= this."EM_PROBABILITY";
      "I_BAD"= this."I_BAD";
      "P_BAD0"= this."P_BAD0";
      "P_BAD1"= this."P_BAD1";
      "_WARN_"= this."_WARN_";
   end;
 
endpackage;

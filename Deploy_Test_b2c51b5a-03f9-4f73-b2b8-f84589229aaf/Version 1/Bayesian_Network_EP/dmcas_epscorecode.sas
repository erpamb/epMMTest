data sasep.out;
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
    
 
   method run();
      set SASEP.IN;
      _1MLNZMTVQQZKD498YJAWXQ00N.scoreRecord();
      post_1MLNZMTVQQZKD498YJAWXQ00N();
   end;
 
   method term();
   end;
 
enddata;

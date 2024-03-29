/*----------------------------------------------------------------------------------*/
/* Product:            Visual Data Mining and Machine Learning                      */
/* Release Version:    V2022.09                                                     */
/* Component Version:  V2022.10                                                     */
/* CAS Version:        V.04.00M0P09192022                                           */
/* SAS Version:        V.04.00M0P091922                                             */
/* Site Number:        70180938                                                     */
/* Host:               sas-cas-server-default-client                                */
/* Encoding:           utf-8                                                        */
/* Java Encoding:      UTF8                                                         */
/* Locale:             en_US                                                        */
/* Project GUID:       f7201051-ccd1-4b8c-bc58-3a6a19d97b26                         */
/* Node GUID:          856f1365-85c1-46fb-ade0-26190b46ac66                         */
/* Node Id:            7WDW60WI13EWA3T1GYHSNVWBQ                                    */
/* Algorithm:          Decision Tree                                                */
/* Generated by:       edmdev                                                       */
/* Date:               18OCT2022:16:59:07                                           */
/*----------------------------------------------------------------------------------*/
data sasep.out;
   dcl package score _7WDW60WI13EWA3T1GYHSNVWBQ();
   dcl double EM_EVENTPROBABILITY;
   dcl double "DELINQ";
   dcl nchar(12) EM_CLASSIFICATION;
   dcl double EM_PROBABILITY;
   dcl double "MORTDUE";
   dcl double "DEBTINC";
   dcl double "VALUE";
   dcl double "DEROG";
   dcl double "NINQ";
   dcl double "CLAGE";
   dcl double "CLNO";
   dcl double "P_BAD1" having label n'Predicted: BAD=1';
   dcl double "P_BAD0" having label n'Predicted: BAD=0';
   dcl nchar(32) "I_BAD" having label n'Into: BAD';
   dcl nchar(4) "_WARN_" having label n'Warnings';
   varlist allvars [_all_];
 
    
   method init();
      _7WDW60WI13EWA3T1GYHSNVWBQ.setvars(allvars);
      _7WDW60WI13EWA3T1GYHSNVWBQ.setkey(n'58F2894E9C1C80D14548C0DC2D5C18F65911FE43');
   end;
    
   method post_7WDW60WI13EWA3T1GYHSNVWBQ();
      dcl double _P_;
       
      if "P_BAD0" = . then "P_BAD0" = 0.7890939597;
      if "P_BAD1" = . then "P_BAD1" = 0.2109060403;
      if MISSING("I_BAD") then do ;
      _P_ = 0.0;
      if "P_BAD1" > _P_ then do ;
      _P_ = "P_BAD1";
      "I_BAD" = '           1';
      end;
      if "P_BAD0" > _P_ then do ;
      _P_ = "P_BAD0";
      "I_BAD" = '           0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_BAD1";
      EM_CLASSIFICATION = "I_BAD";
      EM_PROBABILITY = MAX("P_BAD1", "P_BAD0");
    
   end;
    
 
   method run();
      set SASEP.IN;
      _7WDW60WI13EWA3T1GYHSNVWBQ.scoreRecord();
      post_7WDW60WI13EWA3T1GYHSNVWBQ();
   end;
 
   method term();
   end;
 
enddata;

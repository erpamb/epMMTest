ds2_options sas tkgmac scond=none;
 package &SCOREPACK/overwrite=yes;
 #_local _NEW_ID_;
 #_local _NODE_ID_;
 #_local _NUMVAL_;
 #_local _DT_PRED_PROB_;
 #_local _DT_PRED_LEV_;
 #_local _I_;
 #_local _DT_PREDP_;
 dcl double EM_EVENTPROBABILITY;
 dcl char(32) EM_CLASSIFICATION;
 dcl double EM_PROBABILITY;
 method score(double "CLAGE", double "CLNO", double "DEBTINC", double 
"DELINQ", double "DEROG", char(14) "JOB", double "NINQ", double "VALUE", 
in_out double "P_BAD1", in_out char(12) "EM_CLASSIFICATION", in_out double 
"EM_EVENTPROBABILITY", in_out double "EM_PROBABILITY", in_out char(12) 
"I_BAD", in_out double "P_BAD0");
dcl char(14) _STRFMT_;
 dcl double _DT_FI_25790823_[2];
 dcl char(12) _TLEVNAME_25790823_[2];
 _TLEVNAME_25790823_:=('           1', '           0');
_STRFMT_ = ' ';
_NODE_ID_ = 0.0;
_NEW_ID_ = -1.0;
NEXTNODE_25790823: if _NODE_ID_ = 0.0 then do ;
_NUMVAL_ = DEBTINC;
if MISSING(_NUMVAL_) then do ;
_NODE_ID_ = 1.0;
goto NEXTNODE_25790823;
end;
if (_NUMVAL_ >= 51.5997353989059 & _NUMVAL_ < 203.312148691165) then do 
;
_NEW_ID_ = 1.0;
end;
 else if (_NUMVAL_ >= 1.02893096815279 & _NUMVAL_ < 51.5997353989059) 
then do ;
_NEW_ID_ = 2.0;
end;
 else if (_NUMVAL_ < 1.02893096815279) then do ;
_NEW_ID_ = 2.0;
end;
 else if (_NUMVAL_ >= 203.312148691165) then do ;
_NEW_ID_ = 1.0;
end;
 else do ;
_NEW_ID_ = 2.0;
end;
end;
 else if _NODE_ID_ = 1.0 then do ;
_STRFMT_ = LEFT(TRIM(put(NINQ, BEST12.)));
if _STRFMT_ in ('4', '7', '1', '0', '3', '2', '.') then do ;
_NEW_ID_ = 3.0;
end;
 else if _STRFMT_ in ('11', '10', '5', '6', '9', '8') then do ;
_NEW_ID_ = 4.0;
end;
 else do ;
_NEW_ID_ = 3.0;
end;
end;
 else if _NODE_ID_ = 2.0 then do ;
_STRFMT_ = LEFT(TRIM(put(DELINQ, BEST12.)));
if _STRFMT_ in ('5', '4', '1', '0', '3', '2', '.') then do ;
_NEW_ID_ = 5.0;
end;
 else if _STRFMT_ in ('7', '6', '8') then do ;
_NEW_ID_ = 6.0;
end;
 else do ;
_NEW_ID_ = 5.0;
end;
end;
 else if _NODE_ID_ = 3.0 then do ;
_NUMVAL_ = DEBTINC;
if MISSING(_NUMVAL_) then do ;
_NODE_ID_ = 8.0;
goto NEXTNODE_25790823;
end;
if (_NUMVAL_ >= 11.1430918543034 & _NUMVAL_ < 203.312148691165) then do 
;
_NEW_ID_ = 7.0;
end;
 else if (_NUMVAL_ >= 1.02893096815279 & _NUMVAL_ < 11.1430918543034) 
then do ;
_NEW_ID_ = 8.0;
end;
 else if (_NUMVAL_ < 1.02893096815279) then do ;
_NEW_ID_ = 8.0;
end;
 else if (_NUMVAL_ >= 203.312148691165) then do ;
_NEW_ID_ = 7.0;
end;
 else do ;
_NEW_ID_ = 8.0;
end;
end;
 else if _NODE_ID_ = 4.0 then do ;
_LEAF_ID_ = 4.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 5.0 then do ;
_NUMVAL_ = VALUE;
if MISSING(_NUMVAL_) then do ;
_NODE_ID_ = 9.0;
goto NEXTNODE_25790823;
end;
if (_NUMVAL_ >= 473722.7 & _NUMVAL_ < 854114.0) then do ;
_NEW_ID_ = 9.0;
end;
 else if (_NUMVAL_ >= 8800.0 & _NUMVAL_ < 473722.7) then do ;
_NEW_ID_ = 10.0;
end;
 else if (_NUMVAL_ < 8800.0) then do ;
_NEW_ID_ = 10.0;
end;
 else if (_NUMVAL_ >= 854114.0) then do ;
_NEW_ID_ = 9.0;
end;
 else do ;
_NEW_ID_ = 10.0;
end;
end;
 else if _NODE_ID_ = 6.0 then do ;
_LEAF_ID_ = 6.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 7.0 then do ;
_LEAF_ID_ = 7.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 8.0 then do ;
_STRFMT_ = LEFT(TRIM(put(DEROG, BEST12.)));
if _STRFMT_ in ('5', '4', '7', '6', '9', '8') then do ;
_NEW_ID_ = 11.0;
end;
 else if _STRFMT_ in ('1', '0', '3', '2', '.') then do ;
_NEW_ID_ = 12.0;
end;
 else do ;
_NEW_ID_ = 12.0;
end;
end;
 else if _NODE_ID_ = 9.0 then do ;
_STRFMT_ = LEFT(TRIM(put(JOB, $14.)));
if _STRFMT_ in ('Other', 'Mgr', 'Office') then do ;
_NEW_ID_ = 13.0;
end;
 else if _STRFMT_ in ('ProfExe', '') then do ;
_NEW_ID_ = 14.0;
end;
 else do ;
_NEW_ID_ = 13.0;
end;
end;
 else if _NODE_ID_ = 10.0 then do ;
_STRFMT_ = LEFT(TRIM(put(DEROG, BEST12.)));
if _STRFMT_ in ('5', '6', '1', '0', '3', '2', '.') then do ;
_NEW_ID_ = 15.0;
end;
 else if _STRFMT_ in ('4', '7', '9') then do ;
_NEW_ID_ = 16.0;
end;
 else do ;
_NEW_ID_ = 15.0;
end;
end;
 else if _NODE_ID_ = 11.0 then do ;
_LEAF_ID_ = 11.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 12.0 then do ;
_NUMVAL_ = VALUE;
if MISSING(_NUMVAL_) then do ;
_NODE_ID_ = 17.0;
goto NEXTNODE_25790823;
end;
if (_NUMVAL_ >= 304659.9 & _NUMVAL_ < 854114.0) then do ;
_NEW_ID_ = 17.0;
end;
 else if (_NUMVAL_ >= 8800.0 & _NUMVAL_ < 304659.9) then do ;
_NEW_ID_ = 18.0;
end;
 else if (_NUMVAL_ < 8800.0) then do ;
_NEW_ID_ = 18.0;
end;
 else if (_NUMVAL_ >= 854114.0) then do ;
_NEW_ID_ = 17.0;
end;
 else do ;
_NEW_ID_ = 18.0;
end;
end;
 else if _NODE_ID_ = 13.0 then do ;
_LEAF_ID_ = 13.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 14.0 then do ;
_LEAF_ID_ = 14.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 1.0;
_DT_PRED_PROB_ = 0.6;
_DT_FI_25790823_[1.0] = 0.4;
_DT_FI_25790823_[2.0] = 0.6;
end;
 else if _NODE_ID_ = 15.0 then do ;
_LEAF_ID_ = 15.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 1.0;
_DT_PRED_PROB_ = 0.93716012084592;
_DT_FI_25790823_[1.0] = 0.06283987915407;
_DT_FI_25790823_[2.0] = 0.93716012084592;
end;
 else if _NODE_ID_ = 16.0 then do ;
_LEAF_ID_ = 16.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 0.6;
_DT_FI_25790823_[1.0] = 0.6;
_DT_FI_25790823_[2.0] = 0.4;
end;
 else if _NODE_ID_ = 17.0 then do ;
_LEAF_ID_ = 17.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 0.96969696969696;
_DT_FI_25790823_[1.0] = 0.96969696969696;
_DT_FI_25790823_[2.0] = 0.03030303030303;
end;
 else if _NODE_ID_ = 18.0 then do ;
_STRFMT_ = LEFT(TRIM(put(DELINQ, BEST12.)));
if _STRFMT_ in ('5', '4', '1', '0', '3', '2', '.') then do ;
_NEW_ID_ = 19.0;
end;
 else if _STRFMT_ in ('11', '15', '7', '6') then do ;
_NEW_ID_ = 20.0;
end;
 else do ;
_NEW_ID_ = 19.0;
end;
end;
 else if _NODE_ID_ = 19.0 then do ;
_STRFMT_ = LEFT(TRIM(put(JOB, $14.)));
if _STRFMT_ in ('Self', 'ProfExe', 'Other', 'Mgr', 'Sales', 'Office') 
then do ;
_NEW_ID_ = 21.0;
end;
 else if _STRFMT_ in ('') then do ;
_NEW_ID_ = 22.0;
end;
 else do ;
_NEW_ID_ = 21.0;
end;
end;
 else if _NODE_ID_ = 20.0 then do ;
_LEAF_ID_ = 20.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 21.0 then do ;
_NUMVAL_ = CLNO;
if MISSING(_NUMVAL_) then do ;
_NODE_ID_ = 23.0;
goto NEXTNODE_25790823;
end;
if (_NUMVAL_ >= 58.5 & _NUMVAL_ < 65.0) then do ;
_NEW_ID_ = 23.0;
end;
 else if (_NUMVAL_ >= 0.0 & _NUMVAL_ < 58.5) then do ;
_NEW_ID_ = 24.0;
end;
 else if (_NUMVAL_ < 0.0) then do ;
_NEW_ID_ = 24.0;
end;
 else if (_NUMVAL_ >= 65.0) then do ;
_NEW_ID_ = 23.0;
end;
 else do ;
_NEW_ID_ = 24.0;
end;
end;
 else if _NODE_ID_ = 22.0 then do ;
_LEAF_ID_ = 22.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 1.0;
_DT_PRED_PROB_ = 0.85714285714285;
_DT_FI_25790823_[1.0] = 0.14285714285714;
_DT_FI_25790823_[2.0] = 0.85714285714285;
end;
 else if _NODE_ID_ = 23.0 then do ;
_LEAF_ID_ = 23.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 1.0;
_DT_FI_25790823_[1.0] = 1.0;
_DT_FI_25790823_[2.0] = 0.0;
end;
 else if _NODE_ID_ = 24.0 then do ;
_NUMVAL_ = CLNO;
if MISSING(_NUMVAL_) then do ;
_NUMVAL_ = -1.7976931348623E308;
end;
if (_NUMVAL_ >= 3.25 & _NUMVAL_ < 65.0) then do ;
_NEW_ID_ = 25.0;
end;
 else if (_NUMVAL_ >= 0.0 & _NUMVAL_ < 3.25) then do ;
_NEW_ID_ = 26.0;
end;
 else if (_NUMVAL_ < 0.0) then do ;
_NEW_ID_ = 26.0;
end;
 else if (_NUMVAL_ >= 65.0) then do ;
_NEW_ID_ = 25.0;
end;
 else do ;
_NEW_ID_ = 25.0;
end;
end;
 else if _NODE_ID_ = 25.0 then do ;
_NUMVAL_ = CLAGE;
if MISSING(_NUMVAL_) then do ;
_NUMVAL_ = -1.7976931348623E308;
end;
if (_NUMVAL_ >= 97.4620656564614 & _NUMVAL_ < 649.747104376409) then do 
;
_NEW_ID_ = 27.0;
end;
 else if (_NUMVAL_ >= 0.0 & _NUMVAL_ < 97.4620656564614) then do ;
_NEW_ID_ = 28.0;
end;
 else if (_NUMVAL_ < 0.0) then do ;
_NEW_ID_ = 28.0;
end;
 else if (_NUMVAL_ >= 649.747104376409) then do ;
_NEW_ID_ = 27.0;
end;
 else do ;
_NEW_ID_ = 27.0;
end;
end;
 else if _NODE_ID_ = 26.0 then do ;
_LEAF_ID_ = 26.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 0.9375;
_DT_FI_25790823_[1.0] = 0.9375;
_DT_FI_25790823_[2.0] = 0.0625;
end;
 else if _NODE_ID_ = 27.0 then do ;
_LEAF_ID_ = 27.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 1.0;
_DT_PRED_PROB_ = 0.54251012145749;
_DT_FI_25790823_[1.0] = 0.45748987854251;
_DT_FI_25790823_[2.0] = 0.54251012145749;
end;
 else if _NODE_ID_ = 28.0 then do ;
_LEAF_ID_ = 28.0;
_NEW_ID_ = -1.0;
_DT_PRED_LEV_ = 0.0;
_DT_PRED_PROB_ = 0.79729729729729;
_DT_FI_25790823_[1.0] = 0.79729729729729;
_DT_FI_25790823_[2.0] = 0.2027027027027;
end;
if _NEW_ID_ >= 0.0 then do ;
_NODE_ID_ = _NEW_ID_;
goto NEXTNODE_25790823;
end;
I_BAD = _TLEVNAME_25790823_[_DT_PRED_LEV_ + 1.0];
_I_ = 1.0;
_DT_PREDP_ = _DT_FI_25790823_[_I_];
P_BAD1 = _DT_PREDP_;
_I_ + 1.0;
_DT_PREDP_ = _DT_FI_25790823_[_I_];
P_BAD0 = _DT_PREDP_;
_I_ + 1.0;
EM_EVENTPROBABILITY = "P_BAD1";
EM_CLASSIFICATION = "I_BAD";
EM_PROBABILITY = MAX("P_BAD0", "P_BAD1");
_return: ;
end;
 endpackage;
*------------------------------------------------------------*;
* DMCAS Release:         1.0;
* SAS Release:           V.03.03M0P110817;
* Site Number:           70180938;
* Host:                  greenrpm-7.edm.sashq-r.openstack.sas.com;
* Encoding:              utf-8;
* Java Encoding:         UTF8;
* Locale:                en_US;
* Project GUID:          acf2c74b-3575-406b-9822-3fba5f2286d2;
* Node GUID:             ee34d555-cefd-4aef-9475-03141ca86c84;
* Generated by:          kriapo;
* Date:                  27NOV2017:15:22:19
*------------------------------------------------------------*;
*------------------------------------------------------------*;
*Nodeid: _E3OPAZ3WFH74EDJIARB22WXOK;
*------------------------------------------------------------*;
   length _strfmt_ $14; drop _strfmt_;
   _strfmt_ = ' ';

   array _tlevname_25790823_{2} $12 _temporary_ ( '           1'
   '           0');

   array _dt_fi_25790823_{2} _temporary_;

   _node_id_ =  0;
   _new_id_  = -1;
   nextnode_25790823:
   if _node_id_ eq 0 then do;
         _numval_ = DEBTINC;
         if missing(_numval_) then do;
            _node_id_ = 1;
            goto nextnode_25790823;
         end;
         if (_numval_ ge 51.5997353989059 and _numval_ lt 203.312148691165) then do;

            _new_id_ = 1;
         end;
         else if (_numval_ ge 1.02893096815279 and _numval_ lt 51.5997353989059) then do;

            _new_id_ = 2;
         end;
         else if (_numval_ lt 1.02893096815279) then do;
            _new_id_ = 2;
         end;
         else if (_numval_ ge 203.312148691165) then do;
            _new_id_ = 1;
         end;
         else do;
         _new_id_ = 2;
         end;
   end;
   else if _node_id_ eq 1 then do;
         _strfmt_ = left(trim(put(NINQ,BEST12.)));
         if _strfmt_ in ('4',
         '7',
         '1',
         '0',
         '3',
         '2',
         '.') then do;

         _new_id_ = 3;
         end;
         else if _strfmt_ in ('11',
         '10',
         '5',
         '6',
         '9',
         '8') then do;

         _new_id_ = 4;
         end;
         else do;
         _new_id_ = 3;
         end;
   end;
   else if _node_id_ eq 2 then do;
         _strfmt_ = left(trim(put(DELINQ,BEST12.)));
         if _strfmt_ in ('5',
         '4',
         '1',
         '0',
         '3',
         '2',
         '.') then do;

         _new_id_ = 5;
         end;
         else if _strfmt_ in ('7',
         '6',
         '8') then do;

         _new_id_ = 6;
         end;
         else do;
         _new_id_ = 5;
         end;
   end;
   else if _node_id_ eq 3 then do;
         _numval_ = DEBTINC;
         if missing(_numval_) then do;
            _node_id_ = 8;
            goto nextnode_25790823;
         end;
         if (_numval_ ge 11.1430918543034 and _numval_ lt 203.312148691165) then do;

            _new_id_ = 7;
         end;
         else if (_numval_ ge 1.02893096815279 and _numval_ lt 11.1430918543034) then do;

            _new_id_ = 8;
         end;
         else if (_numval_ lt 1.02893096815279) then do;
            _new_id_ = 8;
         end;
         else if (_numval_ ge 203.312148691165) then do;
            _new_id_ = 7;
         end;
         else do;
         _new_id_ = 8;
         end;
   end;
   else if _node_id_ eq 4 then do;
         _leaf_id_ = 4;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 5 then do;
         _numval_ = VALUE;
         if missing(_numval_) then do;
            _node_id_ = 9;
            goto nextnode_25790823;
         end;
         if (_numval_ ge 473722.7 and _numval_ lt 854114) then do;

            _new_id_ = 9;
         end;
         else if (_numval_ ge 8800 and _numval_ lt 473722.7) then do;

            _new_id_ = 10;
         end;
         else if (_numval_ lt 8800) then do;
            _new_id_ = 10;
         end;
         else if (_numval_ ge 854114) then do;
            _new_id_ = 9;
         end;
         else do;
         _new_id_ = 10;
         end;
   end;
   else if _node_id_ eq 6 then do;
         _leaf_id_ = 6;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 7 then do;
         _leaf_id_ = 7;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 8 then do;
         _strfmt_ = left(trim(put(DEROG,BEST12.)));
         if _strfmt_ in ('5',
         '4',
         '7',
         '6',
         '9',
         '8') then do;

         _new_id_ = 11;
         end;
         else if _strfmt_ in ('1',
         '0',
         '3',
         '2',
         '.') then do;

         _new_id_ = 12;
         end;
         else do;
         _new_id_ = 12;
         end;
   end;
   else if _node_id_ eq 9 then do;
         _strfmt_ = left(trim(put(JOB,$14.)));
         if _strfmt_ in ('Other',
         'Mgr',
         'Office') then do;

         _new_id_ = 13;
         end;
         else if _strfmt_ in ('ProfExe',
         '') then do;

         _new_id_ = 14;
         end;
         else do;
         _new_id_ = 13;
         end;
   end;
   else if _node_id_ eq 10 then do;
         _strfmt_ = left(trim(put(DEROG,BEST12.)));
         if _strfmt_ in ('5',
         '6',
         '1',
         '0',
         '3',
         '2',
         '.') then do;

         _new_id_ = 15;
         end;
         else if _strfmt_ in ('4',
         '7',
         '9') then do;

         _new_id_ = 16;
         end;
         else do;
         _new_id_ = 15;
         end;
   end;
   else if _node_id_ eq 11 then do;
         _leaf_id_ = 11;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 12 then do;
         _numval_ = VALUE;
         if missing(_numval_) then do;
            _node_id_ = 17;
            goto nextnode_25790823;
         end;
         if (_numval_ ge 304659.9 and _numval_ lt 854114) then do;

            _new_id_ = 17;
         end;
         else if (_numval_ ge 8800 and _numval_ lt 304659.9) then do;

            _new_id_ = 18;
         end;
         else if (_numval_ lt 8800) then do;
            _new_id_ = 18;
         end;
         else if (_numval_ ge 854114) then do;
            _new_id_ = 17;
         end;
         else do;
         _new_id_ = 18;
         end;
   end;
   else if _node_id_ eq 13 then do;
         _leaf_id_ = 13;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 14 then do;
         _leaf_id_ = 14;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =                  0.6;
         _dt_fi_25790823_{1} =                  0.4;
         _dt_fi_25790823_{2} =                  0.6;
   end;
   else if _node_id_ eq 15 then do;
         _leaf_id_ = 15;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =     0.93716012084592;
         _dt_fi_25790823_{1} =     0.06283987915407;
         _dt_fi_25790823_{2} =     0.93716012084592;
   end;
   else if _node_id_ eq 16 then do;
         _leaf_id_ = 16;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                  0.6;
         _dt_fi_25790823_{1} =                  0.6;
         _dt_fi_25790823_{2} =                  0.4;
   end;
   else if _node_id_ eq 17 then do;
         _leaf_id_ = 17;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.96969696969696;
         _dt_fi_25790823_{1} =     0.96969696969696;
         _dt_fi_25790823_{2} =     0.03030303030303;
   end;
   else if _node_id_ eq 18 then do;
         _strfmt_ = left(trim(put(DELINQ,BEST12.)));
         if _strfmt_ in ('5',
         '4',
         '1',
         '0',
         '3',
         '2',
         '.') then do;

         _new_id_ = 19;
         end;
         else if _strfmt_ in ('11',
         '15',
         '7',
         '6') then do;

         _new_id_ = 20;
         end;
         else do;
         _new_id_ = 19;
         end;
   end;
   else if _node_id_ eq 19 then do;
         _strfmt_ = left(trim(put(JOB,$14.)));
         if _strfmt_ in ('Self',
         'ProfExe',
         'Other',
         'Mgr',
         'Sales',
         'Office') then do;

         _new_id_ = 21;
         end;
         else if _strfmt_ in ('') then do;

         _new_id_ = 22;
         end;
         else do;
         _new_id_ = 21;
         end;
   end;
   else if _node_id_ eq 20 then do;
         _leaf_id_ = 20;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 21 then do;
         _numval_ = CLNO;
         if missing(_numval_) then do;
            _node_id_ = 23;
            goto nextnode_25790823;
         end;
         if (_numval_ ge 58.5 and _numval_ lt 65) then do;

            _new_id_ = 23;
         end;
         else if (_numval_ ge 0 and _numval_ lt 58.5) then do;

            _new_id_ = 24;
         end;
         else if (_numval_ lt 0) then do;
            _new_id_ = 24;
         end;
         else if (_numval_ ge 65) then do;
            _new_id_ = 23;
         end;
         else do;
         _new_id_ = 24;
         end;
   end;
   else if _node_id_ eq 22 then do;
         _leaf_id_ = 22;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =     0.85714285714285;
         _dt_fi_25790823_{1} =     0.14285714285714;
         _dt_fi_25790823_{2} =     0.85714285714285;
   end;
   else if _node_id_ eq 23 then do;
         _leaf_id_ = 23;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =                    1;
         _dt_fi_25790823_{1} =                    1;
         _dt_fi_25790823_{2} =                    0;
   end;
   else if _node_id_ eq 24 then do;
         _numval_ = CLNO;
         if missing(_numval_) then do;
            _numval_ = -1.7976931348623E308;
         end;
         if (_numval_ ge 3.25 and _numval_ lt 65) then do;

            _new_id_ = 25;
         end;
         else if (_numval_ ge 0 and _numval_ lt 3.25) then do;

            _new_id_ = 26;
         end;
         else if (_numval_ lt 0) then do;
            _new_id_ = 26;
         end;
         else if (_numval_ ge 65) then do;
            _new_id_ = 25;
         end;
         else do;
         _new_id_ = 25;
         end;
   end;
   else if _node_id_ eq 25 then do;
         _numval_ = CLAGE;
         if missing(_numval_) then do;
            _numval_ = -1.7976931348623E308;
         end;
         if (_numval_ ge 97.4620656564614 and _numval_ lt 649.747104376409) then do;

            _new_id_ = 27;
         end;
         else if (_numval_ ge 0 and _numval_ lt 97.4620656564614) then do;

            _new_id_ = 28;
         end;
         else if (_numval_ lt 0) then do;
            _new_id_ = 28;
         end;
         else if (_numval_ ge 649.747104376409) then do;
            _new_id_ = 27;
         end;
         else do;
         _new_id_ = 27;
         end;
   end;
   else if _node_id_ eq 26 then do;
         _leaf_id_ = 26;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =               0.9375;
         _dt_fi_25790823_{1} =               0.9375;
         _dt_fi_25790823_{2} =               0.0625;
   end;
   else if _node_id_ eq 27 then do;
         _leaf_id_ = 27;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =     0.54251012145749;
         _dt_fi_25790823_{1} =     0.45748987854251;
         _dt_fi_25790823_{2} =     0.54251012145749;
   end;
   else if _node_id_ eq 28 then do;
         _leaf_id_ = 28;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.79729729729729;
         _dt_fi_25790823_{1} =     0.79729729729729;
         _dt_fi_25790823_{2} =      0.2027027027027;
   end;
   if _new_id_ >= 0 then do;
       _node_id_ = _new_id_;
      goto nextnode_25790823;
   end;

   I_BAD = _tlevname_25790823_{_dt_pred_lev_+1};
   _i_ = 1;
   _dt_predp_ = _dt_fi_25790823_{_i_};
   P_BAD1 = _dt_predp_;
   _i_+1;
   _dt_predp_ = _dt_fi_25790823_{_i_};
   P_BAD0 = _dt_predp_;
   _i_+1;
   drop _dt_predp_;
   drop _i_;
   drop _dt_pred_lev_;
   drop _dt_pred_prob_;
   drop _numval_;
   drop _node_id_;
   drop _new_id_;



*------------------------------------------------------------*;
* Generating fixed output names;
*------------------------------------------------------------*;
Length EM_EVENTPROBABILITY 8;
LABEL EM_EVENTPROBABILITY = "Predicted for BAD =1";
EM_EVENTPROBABILITY ='P_BAD1'n;
LENGTH EM_CLASSIFICATION $32;
LABEL EM_CLASSIFICATION= "Prediction for BAD ";
EM_CLASSIFICATION ='I_BAD'n;
Length EM_PROBABILITY 8;
LABEL EM_PROBABILITY = "Probability of Classification";
EM_PROBABILITY = max('P_BAD0'n,'P_BAD1'n);

-- 22/11/2014 9h16min42s BRST
-- Default comment for updating dictionary
UPDATE LBR_TaxFormula SET IsTaxIncluded='N', LBR_FormulaNet_ID=1000007,Updated=TO_TIMESTAMP('2014-11-22 09:16:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxFormula_ID=1000023
;

-- 22/11/2014 9h21min32s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,CreatedBy,Created,Description,IsActive,LBR_Formula,LBR_Formula_ID,LBR_Formula_UU,Name,Updated,UpdatedBy) VALUES (0,0,0,TO_TIMESTAMP('2014-11-22 09:21:32','YYYY-MM-DD HH24:MI:SS'),'Adiciona o II na base de cálculo','Y','(1+II)',1000017,'236b2481-61d8-4152-92cc-b4c19adea58a','FLBR16',TO_TIMESTAMP('2014-11-22 09:21:32','YYYY-MM-DD HH24:MI:SS'),0)
;

-- 22/11/2014 9h21min49s BRST
UPDATE LBR_TaxFormula SET LBR_Formula_ID=1000017, LBR_FormulaNet_ID=1000017,Updated=TO_TIMESTAMP('2014-11-22 09:21:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxFormula_ID=1000030
;


SELECT lbr_register_migration_script('201411221040.sql') FROM dual
;

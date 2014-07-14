-- Jan 4, 2014 12:45:24 PM BRST
-- Ajuste da exibição do campo IE
UPDATE AD_Field SET DisplayLogic='@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y'' & @LBR_IsIEExempt@=''N''',Updated=TO_TIMESTAMP('2014-01-04 12:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000017
;

SELECT lbr_register_migration_script('201401041246.sql') FROM dual
;


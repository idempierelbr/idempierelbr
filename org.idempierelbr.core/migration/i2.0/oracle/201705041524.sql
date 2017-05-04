SET SQLBLANKLINES ON
SET DEFINE OFF

-- Set InterestAmt column to 0.00 (when null) in rows before the interest feature
-- Correct field display
-- 04/05/2017 15h7min44s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y'' | @LBR_BPTypeBR@=''PF''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-05-04 15:07:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800508
;

UPDATE C_AllocationLine SET InterestAmt=0 WHERE InterestAmt IS NULL;

UPDATE C_Payment SET InterestAmt=0 WHERE InterestAmt IS NULL;

UPDATE C_PaymentAllocate SET InterestAmt=0 WHERE InterestAmt IS NULL;

-- 04/05/2017 15h9min39s BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2017-05-04 15:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801636
;

-- 04/05/2017 15h33min21s BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2017-05-04 15:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801629
;

-- 04/05/2017 15h33min27s BRT
ALTER TABLE C_Payment MODIFY InterestAmt NUMBER DEFAULT 0
;

-- 04/05/2017 15h33min46s BRT
ALTER TABLE C_AllocationLine MODIFY InterestAmt NUMBER DEFAULT 0
;

-- 04/05/2017 15h34min10s BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2017-05-04 15:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801637
;

-- 04/05/2017 15h34min11s BRT
ALTER TABLE C_PaymentAllocate MODIFY InterestAmt NUMBER DEFAULT 0
;

SELECT lbr_register_migration_script('201705041524.sql') FROM dual
;

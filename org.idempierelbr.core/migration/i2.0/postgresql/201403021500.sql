-- Mar 2, 2014 4:38:14 PM BRT
-- Dynamic field content for Tax Transaction Dialog
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Description,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_TaxStatus.LBR_TaxName_ID=@LBR_TaxName_ID@',1000003,'LBR','LBR_TaxStatus of LBR_TaxName',NULL,'S','d8870689-5ec5-4c82-8bd9-9b6b61161f78',0,0,TO_TIMESTAMP('2014-03-02 16:38:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-03-02 16:38:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Mar 2, 2014 4:39:36 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000003,Updated=TO_TIMESTAMP('2014-03-02 16:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000208
;

-- Mar 2, 2014 4:41:22 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_TaxBaseType.LBR_TaxStatus_ID=@LBR_TaxStatus_ID@',1000004,'LBR','LBR_TaxBaseType of LBR_TaxStatus','S','d76504cd-f3c5-42c4-9cca-b36426d7c2a6',0,0,TO_TIMESTAMP('2014-03-02 16:41:22','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-03-02 16:41:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Mar 2, 2014 4:41:42 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000004,Updated=TO_TIMESTAMP('2014-03-02 16:41:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000202
;

SELECT lbr_register_migration_script('201403021500.sql') FROM dual
;

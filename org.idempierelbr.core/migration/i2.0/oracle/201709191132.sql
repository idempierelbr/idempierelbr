SET SQLBLANKLINES ON
SET DEFINE OFF

-- New LBR Account: LBR_P_RevenueReturn_Acct
-- 19/09/2017 11h0min58s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800449,0,0,'Y',TO_DATE('2017-09-19 11:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:00:57','YYYY-MM-DD HH24:MI:SS'),0,'LBR_P_RevenueReturn_Acct','Product Revenue Return','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.','Product Revenue Return','LBR','28998371-93c6-46be-be18-5834c3c9ca80')
;

-- 19/09/2017 11h1min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801668,0,'Product Revenue Return','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',273,'LBR_P_RevenueReturn_Acct',22,'N','N','N','N','N',0,'N',25,0,0,'Y',TO_DATE('2017-09-19 11:01:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:01:49','YYYY-MM-DD HH24:MI:SS'),0,800449,'Y','N','LBR','N','N','N','Y','22adc89c-4efb-4894-a1e3-d9936111729f','Y',0,'N','N')
;

-- 19/09/2017 11h1min52s BRT
UPDATE AD_Column SET FKConstraintName='LBRPRevenueReturnAcct_MProduct', FKConstraintType='N',Updated=TO_DATE('2017-09-19 11:01:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801668
;

-- 19/09/2017 11h1min52s BRT
ALTER TABLE M_Product_Acct ADD LBR_P_RevenueReturn_Acct NUMBER(10) DEFAULT NULL 
;

-- 19/09/2017 11h1min52s BRT
ALTER TABLE M_Product_Acct ADD CONSTRAINT LBRPRevenueReturnAcct_MProduct FOREIGN KEY (LBR_P_RevenueReturn_Acct) REFERENCES c_validcombination(c_validcombination_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/09/2017 11h2min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801426,'Product Revenue Return','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',210,801668,'Y',22,290,'N','N','N','N',0,0,'Y',TO_DATE('2017-09-19 11:02:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:02:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','30427461-6dbf-464d-bb8b-8ed4076a6534','Y',300,2)
;

-- 19/09/2017 11h3min34s BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:03:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801426
;

-- 19/09/2017 11h3min45s BRT
UPDATE AD_Element SET Name='Product Revenue Return (LBR)', PrintName='Product Revenue Return (LBR)',Updated=TO_DATE('2017-09-19 11:03:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800449
;

-- 19/09/2017 11h3min45s BRT
UPDATE AD_Column SET ColumnName='LBR_P_RevenueReturn_Acct', Name='Product Revenue Return (LBR)', Description='Account for Product Revenue Return', Help='The Product Revenue Return Account indicates the account used for recording sales returns for this product.' WHERE AD_Element_ID=800449
;

-- 19/09/2017 11h3min46s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_P_RevenueReturn_Acct', Name='Product Revenue Return (LBR)', Description='Account for Product Revenue Return', Help='The Product Revenue Return Account indicates the account used for recording sales returns for this product.', AD_Element_ID=800449 WHERE UPPER(ColumnName)='LBR_P_REVENUERETURN_ACCT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/09/2017 11h3min46s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_P_RevenueReturn_Acct', Name='Product Revenue Return (LBR)', Description='Account for Product Revenue Return', Help='The Product Revenue Return Account indicates the account used for recording sales returns for this product.' WHERE AD_Element_ID=800449 AND IsCentrallyMaintained='Y'
;

-- 19/09/2017 11h3min46s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_P_RevenueReturn_Acct', Name='Product Revenue Return (LBR)', Description='Account for Product Revenue Return', Help='The Product Revenue Return Account indicates the account used for recording sales returns for this product.' WHERE AD_Element_ID=800449 AND IsCentrallyMaintained='Y'
;

-- 19/09/2017 11h3min46s BRT
UPDATE AD_Field SET Name='Product Revenue Return (LBR)', Description='Account for Product Revenue Return', Help='The Product Revenue Return Account indicates the account used for recording sales returns for this product.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800449) AND IsCentrallyMaintained='Y'
;

-- 19/09/2017 11h3min46s BRT
UPDATE AD_PrintFormatItem SET PrintName='Product Revenue Return (LBR)', Name='Product Revenue Return (LBR)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800449)
;

-- 19/09/2017 11h5min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801669,0,'Product Revenue Return (LBR)','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',401,'LBR_P_RevenueReturn_Acct',22,'N','N','N','N','N',0,'N',25,0,0,'Y',TO_DATE('2017-09-19 11:05:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:05:00','YYYY-MM-DD HH24:MI:SS'),0,800449,'Y','N','LBR','N','N','N','Y','f53b1d07-af4f-49b2-a916-3d919c381e38','Y',0,'N','N','N')
;

-- 19/09/2017 11h5min3s BRT
UPDATE AD_Column SET FKConstraintName='LBRPRevenueReturnAcct_MProduct', FKConstraintType='N',Updated=TO_DATE('2017-09-19 11:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801669
;

-- 19/09/2017 11h5min3s BRT
ALTER TABLE M_Product_Category_Acct ADD LBR_P_RevenueReturn_Acct NUMBER(10) DEFAULT NULL 
;

-- 19/09/2017 11h5min3s BRT
--ALTER TABLE M_Product_Category_Acct ADD CONSTRAINT LBRPRevenueReturnAcct_MProduct FOREIGN KEY (LBR_P_RevenueReturn_Acct) REFERENCES c_validcombination(c_validcombination_id) DEFERRABLE INITIALLY DEFERRED
--;

-- 19/09/2017 11h5min33s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801427,'Product Revenue Return (LBR)','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',324,801669,'Y',22,310,'N','N','N','N',0,0,'Y',TO_DATE('2017-09-19 11:05:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:05:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','77527ef3-9677-4faf-add8-627f63d96d14','Y',330,2)
;

-- 19/09/2017 11h5min59s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:05:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801427
;

-- 19/09/2017 11h5min59s BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:05:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3945
;

-- 19/09/2017 11h6min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801670,0,'Product Revenue Return (LBR)','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',315,'LBR_P_RevenueReturn_Acct',22,'N','N','N','N','N',0,'N',25,0,0,'Y',TO_DATE('2017-09-19 11:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:06:27','YYYY-MM-DD HH24:MI:SS'),0,800449,'Y','N','LBR','N','N','N','Y','b09a11f8-ca1a-4df8-be3b-7a558907ff1f','Y',0,'N','N','N')
;

-- 19/09/2017 11h6min29s BRT
UPDATE AD_Column SET FKConstraintName='LBRPRevenueReturnAcct_CAcctSch', FKConstraintType='N',Updated=TO_DATE('2017-09-19 11:06:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801670
;

-- 19/09/2017 11h6min29s BRT
ALTER TABLE C_AcctSchema_Default ADD LBR_P_RevenueReturn_Acct NUMBER(10) DEFAULT NULL 
;

-- 19/09/2017 11h6min29s BRT
ALTER TABLE C_AcctSchema_Default ADD CONSTRAINT LBRPRevenueReturnAcct_CAcctSch FOREIGN KEY (LBR_P_RevenueReturn_Acct) REFERENCES c_validcombination(c_validcombination_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/09/2017 11h6min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801428,'Product Revenue Return (LBR)','Account for Product Revenue Return','The Product Revenue Return Account indicates the account used for recording sales returns for this product.',252,801670,'Y',22,680,'N','N','N','N',0,0,'Y',TO_DATE('2017-09-19 11:06:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-09-19 11:06:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','39ff1f11-dabe-4104-9304-5a4b2bc11f2b','Y',790,2)
;

-- 19/09/2017 11h7min53s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3827
;

-- 19/09/2017 11h7min53s BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3829
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3828
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2650
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2659
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2649
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2661
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2655
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2657
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12347
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12348
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2656
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2658
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3825
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4860
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4861
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4862
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=56527
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58783
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=202403
;

-- 19/09/2017 11h7min54s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_FieldGroup_ID=200013, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-09-19 11:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801428
;

SELECT lbr_register_migration_script('201709191132.sql') FROM dual
;

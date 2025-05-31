-- 
SELECT register_migration_script('202505311422_NovasDespesas.sql') FROM dual;

-- May 31, 2025, 2:22:03 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800483,0,0,'Y',TO_TIMESTAMP('2025-05-31 14:22:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-05-31 14:22:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IOFCharge_ID','IOF Charge','IOF Charge','LBR','ccd28c7b-6cb5-4c90-a10b-d8fb82e5ed78')
;

-- May 31, 2025, 2:22:46 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801716,0,'IOF Charge',297,'LBR_IOFCharge_ID',10,'N','N','N','N','N',0,'N',18,200,0,0,'Y',TO_TIMESTAMP('2025-05-31 14:22:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-05-31 14:22:46','YYYY-MM-DD HH24:MI:SS'),10,800483,'Y','N','LBR','N','N','N','Y','4da57b52-00b4-4954-acf3-a3b4dd7e83a7','Y',0,'N','N','N','N')
;

-- May 31, 2025, 2:22:48 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRIOFCharge_CBankAccount', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-05-31 14:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801716
;

-- May 31, 2025, 2:22:48 PM BRT
ALTER TABLE C_BankAccount ADD COLUMN LBR_IOFCharge_ID NUMERIC(10) DEFAULT NULL 
;

-- May 31, 2025, 2:22:48 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRIOFCharge_CBankAccount FOREIGN KEY (LBR_IOFCharge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 31, 2025, 2:29:40 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801717,0,'Interest Charge','Charge to allocate interests','This field must be filled with a charge that will receive the interests paid by customers',297,'LBR_InterestCharge_ID',10,'N','N','N','N','N',0,'N',18,200,0,0,'Y',TO_TIMESTAMP('2025-05-31 14:29:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-05-31 14:29:39','YYYY-MM-DD HH24:MI:SS'),10,800121,'Y','N','LBR','N','N','N','Y','55c5da9b-1d82-4218-a7fe-e65d34076064','Y',0,'N','N','N','N','N')
;

-- May 31, 2025, 2:29:41 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRInterestCharge_CBankAccount', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-05-31 14:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801717
;

-- May 31, 2025, 2:29:41 PM BRT
ALTER TABLE C_BankAccount ADD COLUMN LBR_InterestCharge_ID NUMERIC(10) DEFAULT NULL 
;

-- May 31, 2025, 2:29:41 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRInterestCharge_CBankAccount FOREIGN KEY (LBR_InterestCharge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 31, 2025, 2:30:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801686,'IOF Charge',228,801716,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-05-31 14:30:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-05-31 14:30:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e88f9a89-820b-4662-a5a9-8ab30b299846','Y',260,2)
;

-- May 31, 2025, 2:30:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801687,'Interest Charge','Charge to allocate interests','This field must be filled with a charge that will receive the interests paid by customers',228,801717,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-05-31 14:30:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-05-31 14:30:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e512b054-bb42-498b-8cf0-b64b17a8b7aa','Y',270,2)
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='7f08e550-2e96-4adf-898e-930ef4158b4b'
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='5fa1f360-2133-4069-a626-a51f6559748a'
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2220
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=60881
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2221
;

-- May 31, 2025, 2:31:00 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_FieldGroup_ID=200009, XPosition=1,Updated=TO_TIMESTAMP('2025-05-31 14:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800134
;

-- May 31, 2025, 2:34:07 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_TIMESTAMP('2025-05-31 14:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801686
;

-- May 31, 2025, 2:34:14 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_TIMESTAMP('2025-05-31 14:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801687
;

-- May 31, 2025, 2:35:39 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_FieldGroup_ID=NULL, XPosition=4,Updated=TO_TIMESTAMP('2025-05-31 14:35:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800134
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, XPosition=1,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801686
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=4,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801687
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='7f08e550-2e96-4adf-898e-930ef4158b4b'
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='5fa1f360-2133-4069-a626-a51f6559748a'
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2220
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=60881
;

-- May 31, 2025, 2:35:40 PM BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2025-05-31 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2221
;


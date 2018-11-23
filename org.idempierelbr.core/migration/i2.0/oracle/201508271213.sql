SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20/08/2015 16h8min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_PenaltyAmt',800119,'Penalty Amount','Penalty Amount','fb8ea441-92a2-47e3-921d-600576ee6821',TO_DATE('2015-08-20 16:08:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-20 16:08:12','YYYY-MM-DD HH24:MI:SS'))
;


-- 20/08/2015 16h19min11s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_PenaltyCharge',800120,'Penalty Charge','Penalty Charge','aad5e090-87cc-4ad1-8a1b-0aeccdd4d097',TO_DATE('2015-08-20 16:19:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-20 16:19:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h19min32s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_InterestCharge',800121,'Interest Charge','Interest Charge','0ff7614c-c7ef-4c92-a66a-f9f001da36a8',TO_DATE('2015-08-20 16:19:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-20 16:19:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h20min18s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_PaymentAllocationPriority',800122,'Payment Allocation Priority','Payment Allocation Priority','fe946fa0-a03d-4ac4-935d-c6c94ca69d6c',TO_DATE('2015-08-20 16:20:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-20 16:20:17','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h35min21s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800567,'N','N','N',0,'N',10,'N','N','N','Y','0d3c574c-955f-4e70-83ba-c17798ac1375','Y','LBR_PenaltyCharge','Penalty Charge','Y',TO_DATE('2015-08-20 16:35:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-08-20 16:35:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800120,18,200,1000052,0,0,'LBR')
;

-- 20/08/2015 16h36min29s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800568,'N','N','N',0,'N',10,'N','N','N','Y','a9cf99cf-7f80-4504-898d-e24ca668320f','Y','LBR_InterestCharge','Interest Charge','Y',TO_DATE('2015-08-20 16:35:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-08-20 16:35:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800121,18,200,1000052,0,0,'LBR')
;

-- 20/08/2015 16h36min37s BRT
UPDATE AD_Column SET FKConstraintName='LBRInterestCharge_LBRCollectio', FKConstraintType='N',Updated=TO_DATE('2015-08-20 16:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800568
;

-- 20/08/2015 16h37min33s BRT
UPDATE AD_Element SET ColumnName='LBR_InterestCharge_ID',Updated=TO_DATE('2015-08-20 16:37:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800121
;

-- 20/08/2015 16h37min33s BRT
UPDATE AD_Column SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800121
;

-- 20/08/2015 16h37min33s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description=NULL, Help=NULL, AD_Element_ID=800121 WHERE UPPER(ColumnName)='LBR_INTERESTCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/08/2015 16h37min34s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800121 AND IsCentrallyMaintained='Y'
;

-- 20/08/2015 16h37min34s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800121 AND IsCentrallyMaintained='Y'
;

-- 20/08/2015 16h38min30s BRT
UPDATE AD_Column SET FieldLength=10, FKConstraintType=NULL,Updated=TO_DATE('2015-08-20 16:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800568
;

-- 20/08/2015 16h38min44s BRT
UPDATE AD_Column SET FKConstraintName='LBRInterestCharge_LBRCollectio', FKConstraintType='N',Updated=TO_DATE('2015-08-20 16:38:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800568
;

-- 20/08/2015 16h38min44s BRT
ALTER TABLE LBR_Collection_Default ADD LBR_InterestCharge_ID NUMBER(10) DEFAULT NULL 
;

-- 20/08/2015 16h38min45s BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT LBRInterestCharge_LBRCollectio FOREIGN KEY (LBR_InterestCharge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20/08/2015 16h39min18s BRT
UPDATE AD_Element SET ColumnName='LBR_PenaltyCharge_ID',Updated=TO_DATE('2015-08-20 16:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800120
;

-- 20/08/2015 16h39min18s BRT
UPDATE AD_Column SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800120
;

-- 20/08/2015 16h39min18s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description=NULL, Help=NULL, AD_Element_ID=800120 WHERE UPPER(ColumnName)='LBR_PENALTYCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/08/2015 16h39min18s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800120 AND IsCentrallyMaintained='Y'
;

-- 20/08/2015 16h39min18s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=800120 AND IsCentrallyMaintained='Y'
;

-- 20/08/2015 16h39min31s BRT
UPDATE AD_Column SET FKConstraintName='LBRPenaltyCharge_LBRCollection', FKConstraintType='N',Updated=TO_DATE('2015-08-20 16:39:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800567
;

-- 20/08/2015 16h39min31s BRT
ALTER TABLE LBR_Collection_Default ADD LBR_PenaltyCharge_ID NUMBER(10) DEFAULT NULL 
;

-- 20/08/2015 16h39min32s BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT LBRPenaltyCharge_LBRCollection FOREIGN KEY (LBR_PenaltyCharge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20/08/2015 16h41min21s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,UpdatedBy,AD_Client_ID,Created) VALUES (800009,'LBR_PaymentAllocationPriority_L','LBR','d1e7bcba-25df-4bba-9342-7dfc54184c58','N','L',0,0,TO_DATE('2015-08-20 16:41:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,0,TO_DATE('2015-08-20 16:41:20','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h42min27s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,CreatedBy,UpdatedBy,Updated,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Created,Name) VALUES (800027,800009,'49ec2dc1-18e2-4861-8ea5-65e7e4f50115','CPI',0,0,TO_DATE('2015-08-20 16:42:26','YYYY-MM-DD HH24:MI:SS'),'Y','C',0,0,TO_DATE('2015-08-20 16:42:26','YYYY-MM-DD HH24:MI:SS'),'Capital / Penalty / Interest')
;

-- 20/08/2015 16h43min9s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,CreatedBy,UpdatedBy,Updated,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Created,Name) VALUES (800028,800009,'682baeba-b040-422d-a790-91913aeaf91d','CIP',0,0,TO_DATE('2015-08-20 16:43:08','YYYY-MM-DD HH24:MI:SS'),'Y','LBR',0,0,TO_DATE('2015-08-20 16:43:08','YYYY-MM-DD HH24:MI:SS'),'Capital / Interest / Penalty')
;

-- 20/08/2015 16h43min27s BRT
UPDATE AD_Ref_List SET Name='Capital / Penalty / Interest',Updated=TO_DATE('2015-08-20 16:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800027
;

-- 20/08/2015 16h44min4s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,CreatedBy,UpdatedBy,Updated,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Created,Name) VALUES (800029,800009,'22630ca2-2d65-4880-9b27-a412067370fe','PIC',0,0,TO_DATE('2015-08-20 16:44:03','YYYY-MM-DD HH24:MI:SS'),'Y','LBR',0,0,TO_DATE('2015-08-20 16:44:03','YYYY-MM-DD HH24:MI:SS'),'Penalty / Interest / Capital')
;

-- 20/08/2015 16h45min20s BRT
UPDATE AD_Reference SET Name='LBR_PaymentAllocationPriority',Updated=TO_DATE('2015-08-20 16:45:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=800009
;

-- 20/08/2015 16h46min31s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800569,'N','N','N',0,'N',3,'N','N','N','Y','b90352d4-5573-4ac8-819b-543e3bc47b48','Y','LBR_PaymentAllocationPriority','CIP','Payment Allocation Priority','Y',TO_DATE('2015-08-20 16:46:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-08-20 16:46:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N',800122,17,800009,1000052,0,0,'LBR')
;

-- 20/08/2015 16h46min38s BRT
ALTER TABLE LBR_Collection_Default ADD LBR_PaymentAllocationPriority NVARCHAR2(3) DEFAULT 'CIP' 
;

-- 20/08/2015 16h47min2s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000095,10,'N','N',240,'Y',800126,'N','LBR','Penalty Charge','cac00869-d935-44f6-82d0-bc8d3470f556','Y','N',0,0,TO_DATE('2015-08-20 16:47:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,0,2,800567,0,TO_DATE('2015-08-20 16:47:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h47min3s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000095,10,'N','N',250,'Y',800127,'N','LBR','Interest Charge','78629bb7-b26b-4291-b445-cba118598989','Y','N',0,0,TO_DATE('2015-08-20 16:47:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,0,2,800568,0,TO_DATE('2015-08-20 16:47:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h47min3s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000095,3,'N','N',260,'Y',800128,'N','LBR','Payment Allocation Priority','b11995f0-c93c-477a-ba08-0909750538ff','Y','N',0,0,TO_DATE('2015-08-20 16:47:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,0,2,800569,0,TO_DATE('2015-08-20 16:47:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', XPosition=1, AD_FieldGroup_ID=1000020,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800126
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001767
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001768
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=140, IsDisplayed='Y', XPosition=1,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001769
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', XPosition=1, AD_FieldGroup_ID=1000021,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800127
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001770
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001771
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001773
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001774
;

-- 20/08/2015 16h51min21s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_DATE('2015-08-20 16:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001775
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001776
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001777
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001778
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001934
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001955
;

-- 20/08/2015 16h51min22s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_DATE('2015-08-20 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001760
;

-- 25/08/2015 14h50min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_BankCollectionCharge_ID',800123,'Bank Collection Charge','Bank Collection Charge','c6648868-5903-42b4-b311-f2bcebf27a4c',TO_DATE('2015-08-25 14:50:14','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-25 14:50:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/08/2015 14h50min55s BRT
UPDATE AD_Element SET Help='In this field you place the charge that will receive the bank collection costs', Description='Charge to allocate bank collection costs',Updated=TO_DATE('2015-08-25 14:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800123
;

-- 25/08/2015 14h50min55s BRT
UPDATE AD_Column SET ColumnName='LBR_BankCollectionCharge_ID', Name='Bank Collection Charge', Description='Charge to allocate bank collection costs', Help='In this field you place the charge that will receive the bank collection costs' WHERE AD_Element_ID=800123
;

-- 25/08/2015 14h50min55s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BankCollectionCharge_ID', Name='Bank Collection Charge', Description='Charge to allocate bank collection costs', Help='In this field you place the charge that will receive the bank collection costs', AD_Element_ID=800123 WHERE UPPER(ColumnName)='LBR_BANKCOLLECTIONCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 25/08/2015 14h50min55s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BankCollectionCharge_ID', Name='Bank Collection Charge', Description='Charge to allocate bank collection costs', Help='In this field you place the charge that will receive the bank collection costs' WHERE AD_Element_ID=800123 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h50min55s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_BankCollectionCharge_ID', Name='Bank Collection Charge', Description='Charge to allocate bank collection costs', Help='In this field you place the charge that will receive the bank collection costs' WHERE AD_Element_ID=800123 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_Element SET Help='This field must be filled with a charge that will receive the interests paid by customers', Description='Charge to allocate interests',Updated=TO_DATE('2015-08-25 14:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800121
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_Column SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description='Charge to allocate interests', Help='This field must be filled with a charge that will receive the interests paid by customers' WHERE AD_Element_ID=800121
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description='Charge to allocate interests', Help='This field must be filled with a charge that will receive the interests paid by customers', AD_Element_ID=800121 WHERE UPPER(ColumnName)='LBR_INTERESTCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description='Charge to allocate interests', Help='This field must be filled with a charge that will receive the interests paid by customers' WHERE AD_Element_ID=800121 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_InterestCharge_ID', Name='Interest Charge', Description='Charge to allocate interests', Help='This field must be filled with a charge that will receive the interests paid by customers' WHERE AD_Element_ID=800121 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h56min52s BRT
UPDATE AD_Field SET Name='Interest Charge', Description='Charge to allocate interests', Help='This field must be filled with a charge that will receive the interests paid by customers' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800121) AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h57min9s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2015-08-25 14:57:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800127
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_Element SET Help='This field must be filled with a charge that will receive late payment penalty values paid by customers', Description='Charge to allocate penalty payments',Updated=TO_DATE('2015-08-25 14:58:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800120
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_Column SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description='Charge to allocate penalty payments', Help='This field must be filled with a charge that will receive late payment penalty values paid by customers' WHERE AD_Element_ID=800120
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description='Charge to allocate penalty payments', Help='This field must be filled with a charge that will receive late payment penalty values paid by customers', AD_Element_ID=800120 WHERE UPPER(ColumnName)='LBR_PENALTYCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description='Charge to allocate penalty payments', Help='This field must be filled with a charge that will receive late payment penalty values paid by customers' WHERE AD_Element_ID=800120 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_PenaltyCharge_ID', Name='Penalty Charge', Description='Charge to allocate penalty payments', Help='This field must be filled with a charge that will receive late payment penalty values paid by customers' WHERE AD_Element_ID=800120 AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h58min19s BRT
UPDATE AD_Field SET Name='Penalty Charge', Description='Charge to allocate penalty payments', Help='This field must be filled with a charge that will receive late payment penalty values paid by customers' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800120) AND IsCentrallyMaintained='Y'
;

-- 25/08/2015 14h58min38s BRT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2015-08-25 14:58:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800126
;

-- 25/08/2015 15h0min33s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,CreatedBy,UpdatedBy,Updated,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Created,Name) VALUES (800030,800009,'381e8718-8cc2-4e13-baaf-9df5ce830fcc','ICP',0,0,TO_DATE('2015-08-25 15:00:31','YYYY-MM-DD HH24:MI:SS'),'Y','LBR',0,0,TO_DATE('2015-08-25 15:00:31','YYYY-MM-DD HH24:MI:SS'),'Interest / Capital / Penalty')
;

-- 25/08/2015 15h0min50s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,CreatedBy,UpdatedBy,Updated,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Created,Name) VALUES (800031,800009,'11f4eccc-d873-4af6-a4e1-4c4f1c03c9e5','PCI',0,0,TO_DATE('2015-08-25 15:00:49','YYYY-MM-DD HH24:MI:SS'),'Y','LBR',0,0,TO_DATE('2015-08-25 15:00:49','YYYY-MM-DD HH24:MI:SS'),'Penalty / Capital / Interest')
;


-- 26/08/2015 1h41min46s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800575,'N','N','N',0,'N',10,'N','N','N','Y','4c97f518-a38a-41fe-9ecd-d2f4b810a12a','Y','LBR_BankCollectionCharge_ID','Charge to allocate bank collection costs','In this field you place the charge that will receive the bank collection costs','Bank Collection Charge','Y',TO_DATE('2015-08-26 01:41:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-08-26 01:41:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800123,18,200,297,0,0,'LBR')
;

-- 26/08/2015 1h41min51s BRT
UPDATE AD_Column SET FKConstraintName='LBRBankCollectionCharge_CBankA', FKConstraintType='N',Updated=TO_DATE('2015-08-26 01:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800575
;

-- 26/08/2015 1h41min51s BRT
ALTER TABLE C_BankAccount ADD LBR_BankCollectionCharge_ID NUMBER(10) DEFAULT NULL 
;

-- 26/08/2015 1h41min52s BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRBankCollectionCharge_CBankA FOREIGN KEY (LBR_BankCollectionCharge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 27, 2015 11:21:19 AM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_BA_BPartner_ID',800124,'This field defines the Business Partner associated with a Bank Account.','Bank Account Business Partner','Bank Account Business Partner','b9f56524-46bc-4a0c-b69d-b742062669b7',TO_DATE('2015-08-27 11:21:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-08-27 11:21:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2015 12:08:55 PM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800576,'N','N','N',0,'N',10,'N','N','N','Y','05c629fd-166b-42fe-bc27-7b771e11d08c','Y','LBR_BA_BPartner_ID','This field defines the Business Partner associated with a Bank Account.','Bank Account Business Partner','Y',TO_DATE('2015-08-27 12:08:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-08-27 12:08:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800124,30,192,297,0,0,'LBR')
;

-- Aug 27, 2015 12:09:04 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRBABPartner_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2015-08-27 12:09:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800576
;

-- Aug 27, 2015 12:09:04 PM BRT
ALTER TABLE C_BankAccount ADD LBR_BA_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 27, 2015 12:09:05 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRBABPartner_CBankAccount FOREIGN KEY (LBR_BA_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 27, 2015 12:10:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',228,10,'N','N',210,'Y',800134,'N','In this field you place the charge that will receive the bank collection costs','LBR','Charge to allocate bank collection costs','Bank Collection Charge','9fadb373-368b-4df2-9619-4c9a2768518d','Y','N',0,0,TO_DATE('2015-08-27 12:10:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,0,2,800575,0,TO_DATE('2015-08-27 12:10:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2015 12:10:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',228,10,'N','N',220,'Y',800135,'N','This field defines the Business Partner associated with a Bank Account.','LBR','Bank Account Business Partner','b019b01f-17a7-4bb8-b4d5-a38b33f59f7e','Y','N',0,0,TO_DATE('2015-08-27 12:10:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,0,2,800576,0,TO_DATE('2015-08-27 12:10:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=160, IsDisplayed='Y', XPosition=1,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800135
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=170, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800134
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001950
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001954
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2220
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=60881
;

-- Aug 27, 2015 12:10:43 PM BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_DATE('2015-08-27 12:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2221
;

-- Aug 27, 2015 12:12:06 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y', MandatoryLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2015-08-27 12:12:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800135
;

-- Aug 27, 2015 12:12:16 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y', MandatoryLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2015-08-27 12:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800134
;


SELECT lbr_register_migration_script('201508271213.sql') FROM dual
;

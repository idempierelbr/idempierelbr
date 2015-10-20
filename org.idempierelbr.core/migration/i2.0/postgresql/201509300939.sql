-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 30/08/2015 1h20min30s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800033,'65 - NF-e',1000040,'65',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:20:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:20:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','310d1a99-fa04-4927-97cb-876d2c160eea')
;

-- 30/08/2015 1h21min18s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800034,'65 - NFC-e',1000050,'65',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:21:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:21:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','db2ce535-949e-4f8b-8338-df5b82431374')
;

-- 30/08/2015 1h21min55s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800035,'Simplified DANFE',1000052,'3',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:21:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:21:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR','c0434391-ee92-4417-8385-ab8c409424e7')
;

-- 30/08/2015 1h22min37s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800036,'DANFE NFC-e',1000052,'4',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:22:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:22:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR','6a09d3b8-6626-4c04-803e-66acb32466da')
;

-- 30/08/2015 1h22min58s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800037,'DANFE NFC-e in Electronic Message',1000052,'5',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:22:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:22:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','c0173f71-5ceb-4f7b-9401-0580a75147b0')
;
-- 30/08/2015 1h29min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800129,0,0,'Y',TO_TIMESTAMP('2015-08-30 01:29:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:29:06','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CustomerCPF','Unidentified Customer’s CPF Number','Unidentified Customer’s CPF Number','LBR','6a3fea1f-e54f-4528-a560-7bca582dffdd')
;

-- 30/08/2015 1h30min13s BRT
UPDATE AD_Element SET ColumnName='LBR_UnidentifiedCustomerCPF',Updated=TO_TIMESTAMP('2015-08-30 01:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800129
;

-- 30/08/2015 1h30min13s BRT
UPDATE AD_Column SET ColumnName='LBR_UnidentifiedCustomerCPF', Name='Unidentified Customer’s CPF Number', Description=NULL, Help=NULL WHERE AD_Element_ID=800129
;

-- 30/08/2015 1h30min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_UnidentifiedCustomerCPF', Name='Unidentified Customer’s CPF Number', Description=NULL, Help=NULL, AD_Element_ID=800129 WHERE UPPER(ColumnName)='LBR_UNIDENTIFIEDCUSTOMERCPF' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/08/2015 1h30min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_UnidentifiedCustomerCPF', Name='Unidentified Customer’s CPF Number', Description=NULL, Help=NULL WHERE AD_Element_ID=800129 AND IsCentrallyMaintained='Y'
;

-- 30/08/2015 1h30min13s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_UnidentifiedCustomerCPF', Name='Unidentified Customer’s CPF Number', Description=NULL, Help=NULL WHERE AD_Element_ID=800129 AND IsCentrallyMaintained='Y'
;

-- 30/08/2015 1h32min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (800593,0,'Unidentified Customer’s CPF Number',259,'LBR_UnidentifiedCustomerCPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-08-30 01:32:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:32:13','YYYY-MM-DD HH24:MI:SS'),0,800129,'Y','N','LBR','N','N','N','Y','b0f971ec-e673-49cd-98ef-06fcdb95cb70','Y',0,'N','N')
;

-- 30/08/2015 1h32min18s BRT
ALTER TABLE C_Order ADD COLUMN LBR_UnidentifiedCustomerCPF VARCHAR(11) DEFAULT NULL 
;

-- 30/08/2015 1h32min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800146,'Unidentified Customer’s CPF Number',186,800593,'Y',0,640,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:32:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:32:57','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','54892135-703c-4fd6-809f-d3ae24d5120d','Y',640,1,1,1,'N','N','N')
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510, AD_FieldGroup_ID=1000015, XPosition=1, ColumnSpan=2,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800146
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=520,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800061
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=530,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1112
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=540,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1113
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=550,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1082
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=560,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1084
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=570,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=60922
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=580,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6560
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=590,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200756
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=600,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1083
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=610,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58037
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=620,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3660
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=630,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=60972
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=640,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001703
;

-- 30/08/2015 1h34min7s BRT
UPDATE AD_Field SET SeqNo=650,Updated=TO_TIMESTAMP('2015-08-30 01:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800054
;

-- 30/08/2015 1h34min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800594,0,'Unidentified Customer’s CPF Number',318,'LBR_UnidentifiedCustomerCPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-08-30 01:34:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:34:44','YYYY-MM-DD HH24:MI:SS'),0,800129,'Y','N','LBR','N','N','N','Y','8a8a0139-b7c7-44ab-93c5-7ea2d1610fe9','Y',0,'N','N','N')
;

-- 30/08/2015 1h34min49s BRT
ALTER TABLE C_Invoice ADD COLUMN LBR_UnidentifiedCustomerCPF VARCHAR(11) DEFAULT NULL 
;

-- 30/08/2015 1h35min50s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (800147,'Unidentified Customer’s CPF Number',263,800594,'Y',0,540,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:35:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:35:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1d9d7f58-1a7e-4cc6-a8e3-2bbc2d58c553','Y',530,1,1,1,'N','N','N')
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350, AD_FieldGroup_ID=1000015, XPosition=1, ColumnSpan=2,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800147
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800062
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2786
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2780
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2778
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2771
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8657
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10485
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6564
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2777
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3663
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3899
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=13700
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=53257
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=490,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=53258
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=500,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=60970
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=510,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200050
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=520,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001704
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=530,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002049
;

-- 30/08/2015 1h36min16s BRT
UPDATE AD_Field SET SeqNo=540,Updated=TO_TIMESTAMP('2015-08-30 01:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800055
;

-- 30/08/2015 1h36min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800595,0,'Unidentified Customer’s CPF Number',1000033,'LBR_UnidentifiedCustomerCPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-08-30 01:36:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:36:44','YYYY-MM-DD HH24:MI:SS'),0,800129,'Y','N','LBR','N','N','N','Y','8ed2dad5-616b-40ce-b1a4-78e90325473c','Y',0,'N','N','N')
;

-- 30/08/2015 1h36min48s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_UnidentifiedCustomerCPF VARCHAR(11) DEFAULT NULL 
;

-- 30/08/2015 1h37min14s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800148,'Unidentified Customer’s CPF Number',1000068,800595,'Y',11,470,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-08-30 01:37:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 01:37:13','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d5457354-798d-4c1f-bcba-543d5fd1a74f','Y',440,2)
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300, XPosition=1,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800148
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310, XPosition=4,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001397
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001629
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001630
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001215
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001216
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001217
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001218
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001462
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001463
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001224
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001219
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001193
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001192
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001507
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800059
;

-- 30/08/2015 1h38min19s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2015-08-30 01:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800060
;

-- 30/08/2015 2h9min47s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800134,0,0,'Y',TO_TIMESTAMP('2015-08-30 02:09:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 02:09:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR_C_DocTypeNFCe_ID','Document Type for Brazilian Customer Fiscal Invoice','Document type used for Brazilian Customer Fiscal Invoice generated from this document','The Document Type for Brazilian Customer Fiscal Invoice indicates the document type that will be used when an Brazilian Customer Fiscal Invoice is generated from this document. This field will display only for some base document type.','Doc Type NFC-e','LBR','9d8c9ad2-78ba-4f77-9191-b5691311ab93')
;

-- 30/08/2015 2h10min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800600,0,'Document Type for Brazilian Customer Fiscal Invoice','Document type used for Brazilian Customer Fiscal Invoice generated from this document','The Document Type for Brazilian Customer Fiscal Invoice indicates the document type that will be used when an Brazilian Customer Fiscal Invoice is generated from this document. This field will display only for some base document type.',217,1000006,'LBR_C_DocTypeNFCe_ID',22,'N','N','N','N','N',0,'N',18,170,0,0,'Y',TO_TIMESTAMP('2015-08-30 02:10:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 02:10:29','YYYY-MM-DD HH24:MI:SS'),0,800134,'Y','N','U','N','N','N','Y','7d87aa23-9449-423b-85ba-ffacd92ac678','Y',0,'N','N','N')
;

-- 30/08/2015 2h10min30s BRT
UPDATE AD_Column SET FKConstraintName='LBRCDocTypeNFCe_CDocType', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-08-30 02:10:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800600
;

-- 30/08/2015 2h10min30s BRT
ALTER TABLE C_DocType ADD COLUMN LBR_C_DocTypeNFCe_ID NUMERIC(10) DEFAULT NULL 
;

-- 30/08/2015 2h10min31s BRT
ALTER TABLE C_DocType ADD CONSTRAINT LBRCDocTypeNFCe_CDocType FOREIGN KEY (LBR_C_DocTypeNFCe_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30/08/2015 2h13min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800153,'Document Type for Brazilian Customer Fiscal Invoice','Document type used for Brazilian Customer Fiscal Invoice generated from this document','The Document Type for Brazilian Customer Fiscal Invoice indicates the document type that will be used when an Brazilian Customer Fiscal Invoice is generated from this document. This field will display only for some base document type.',167,800600,'Y',22,480,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-08-30 02:13:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 02:13:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','7aa9a971-60d1-4031-b0ea-6b97ef5e3fa6','Y',420,2)
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=4,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800153
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, XPosition=1,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002045
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=807
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=808
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54233
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54230
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54232
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10345
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10346
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10481
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10480
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58859
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10371
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10528
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10340
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200004
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6567
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3125
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001511
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001512
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001513
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001514
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001515
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001710
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001711
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- 30/08/2015 2h13min33s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2015-08-30 02:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- 30/08/2015 2h13min50s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' | @DocBaseType@=''POO'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARC'' | @DocBaseType@=''API'' | @DocBaseType@=''ARI'' ',Updated=TO_TIMESTAMP('2015-08-30 02:13:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800153
;

-- 30/08/2015 2h15min16s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-08-30 02:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800600
;

-- 30/08/2015 2h15min57s BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-08-30 02:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800153
;

-- 30/08/2015 2h16min38s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800065,0,0,'Y',TO_TIMESTAMP('2015-08-30 02:16:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 02:16:37','YYYY-MM-DD HH24:MI:SS'),0,'NF Model',1000008,20,17,1000046,'N',0,'N','LBR_NFeModel','Y','U',1000173,'d38b060a-8e0f-40bd-8f29-6d0ae21c9f3a','N')
;

-- 30/08/2015 2h16min47s BRT
UPDATE AD_Process_Para SET IsMandatory='Y', DefaultValue='55',Updated=TO_TIMESTAMP('2015-08-30 02:16:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800065
;

-- 30/08/2015 11h6min33s BRT
UPDATE AD_Ref_List SET Name='NFC-e',Updated=TO_TIMESTAMP('2015-08-30 11:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800033
;

-- 30/08/2015 10h58min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800601,0,'NF Model',1000045,'LBR_NFeModel',5,'N','N','N','N','N',0,'N',17,1000040,0,0,'Y',TO_TIMESTAMP('2015-08-30 10:58:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 10:58:48','YYYY-MM-DD HH24:MI:SS'),0,1000173,'Y','N','U','N','N','N','Y','e8ed4301-96ad-4246-9fa8-d5b32cdecb7d','Y',0,'N','N','N')
;

-- 30/08/2015 10h58min51s BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_NFeModel VARCHAR(5) DEFAULT NULL 
;

-- 30/08/2015 10h59min35s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800154,'NF Model',1000087,800601,'Y',5,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-08-30 10:59:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 10:59:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','6057255e-b44c-45fd-bc0c-67b699a47050','Y',80,2)
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=200015, XPosition=1,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800154
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=5,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001642
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001635
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001638
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001639
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001640
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001641
;

-- 30/08/2015 11h0min7s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2015-08-30 11:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001636
;

-- 30/08/2015 11h1min38s BRT
UPDATE AD_Column SET DefaultValue='55', IsMandatory='Y',Updated=TO_TIMESTAMP('2015-08-30 11:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800601
;

-- 30/08/2015 11h1min43s BRT
INSERT INTO t_alter_column values('lbr_nfewebservice','LBR_NFeModel','VARCHAR(5)',null,'55')
;

-- 30/08/2015 11h1min43s BRT
UPDATE LBR_NFeWebService SET LBR_NFeModel='55' WHERE LBR_NFeModel IS NULL
;

-- 30/08/2015 11h1min43s BRT
INSERT INTO t_alter_column values('lbr_nfewebservice','LBR_NFeModel',null,'NOT NULL',null)
;

-- 30/08/2015 11h2min20s BRT
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2015-08-30 11:02:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800154
;

/*
-- 30/08/2015 11h8min44s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:08:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:08:44','YYYY-MM-DD HH24:MI:SS'),0,1000014,'9997bd81-8c93-4ad9-86e6-2d151f3477bd','Y','NFeAutorizacao','3.10','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/nfeautorizacao.asmx')
;

-- 30/08/2015 11h9min3s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:09:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:09:03','YYYY-MM-DD HH24:MI:SS'),0,1000015,'f62c56a7-e4d8-4579-84b7-9d4127bf71ce','Y','NFeRetAutorizacao','3.10','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/nferetautorizacao.asmx')
;

-- 30/08/2015 11h9min15s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:09:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:09:15','YYYY-MM-DD HH24:MI:SS'),0,1000016,'b4ba0be9-3999-42be-8daa-b9f719cb0b8d','Y','NfeInutilizacao','3.10','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx')
;

-- 30/08/2015 11h9min39s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:09:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:09:39','YYYY-MM-DD HH24:MI:SS'),0,1000017,'4c904760-dc69-4e4e-8b02-1796790f9919','Y','NfeConsultaProtocolo','3.10','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/nfeconsulta2.asmx')
;

-- 30/08/2015 11h9min51s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:09:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:09:51','YYYY-MM-DD HH24:MI:SS'),0,1000018,'4c8e3e9d-7ae1-43a7-a89e-55f45e4708a8','Y','RecepcaoEvento','1.00','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/recepcaoevento.asmx')
;

-- 30/08/2015 11h10min0s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:10:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:10:00','YYYY-MM-DD HH24:MI:SS'),0,1000019,'4cdb2185-5416-4bc4-95aa-4553b30174ed','Y','NfeStatusServico','3.10','2',465,'https://homologacao.nfce.fazenda.sp.gov.br/ws/nfestatusservico2.asmx')
;

-- 30/08/2015 11h10min17s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:10:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:10:17','YYYY-MM-DD HH24:MI:SS'),0,1000020,'9292f9e9-164f-49a6-9012-172a8193683f','Y','NFeAutorizacao','3.10','1',465,'https://nfce.fazenda.sp.gov.br/ws/nfeautorizacao.asmx')
;

-- 30/08/2015 11h10min27s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:10:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:10:27','YYYY-MM-DD HH24:MI:SS'),0,1000021,'fd19b909-4f5c-4a8c-a305-b5aa608a5ad0','Y','NFeRetAutorizacao','3.10','1',465,'https://nfce.fazenda.sp.gov.br/ws/nferetautorizacao.asmx')
;

-- 30/08/2015 11h10min36s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:10:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:10:36','YYYY-MM-DD HH24:MI:SS'),0,1000022,'698b74b5-9f6a-4e2c-8848-f1e94e8a3a51','Y','NfeInutilizacao','3.10','1',465,'https://nfce.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx')
;

-- 30/08/2015 11h10min54s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:10:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:10:54','YYYY-MM-DD HH24:MI:SS'),0,1000023,'f9f27f02-b821-4605-aac6-081641d7da33','Y','NfeConsultaProtocolo','3.10','1',465,'https://nfce.fazenda.sp.gov.br/ws/nfeconsulta2.asmx')
;

-- 30/08/2015 11h11min5s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:11:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:11:05','YYYY-MM-DD HH24:MI:SS'),0,1000024,'2e8a4883-cb2c-4658-a405-701bc2cadd62','Y','RecepcaoEvento','1.00','1',465,'https://nfce.fazenda.sp.gov.br/ws/recepcaoevento.asmx')
;

-- 30/08/2015 11h11min18s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-08-30 11:11:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-08-30 11:11:18','YYYY-MM-DD HH24:MI:SS'),0,1000025,'39bca869-3bec-4e1e-90c0-0cb4a0001072','Y','NfeStatusServico','3.10','1',465,'https://nfce.fazenda.sp.gov.br/ws/nfestatusservico2.asmx')
;

-- 29/09/2015 11h4min24s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-09-29 11:04:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 11:04:24','YYYY-MM-DD HH24:MI:SS'),100,1000026,'71f9f57f-d2ea-40b4-b220-e0f70c917dfe','Y','NFCeConsulta','100','1',465,'https://www.homologacao.nfce.fazenda.sp.gov.br/NFCeConsultaPublica')
;

-- 29/09/2015 11h5min25s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-09-29 11:05:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 11:05:25','YYYY-MM-DD HH24:MI:SS'),100,1000027,'1beb5729-7cc2-46c3-b94f-2d3b82f374d0','Y','NFCeConsulta','100','2',465,'https://nfe.fazenda.sp.gov.br/ConsultaNFe/consulta/publica/ConsultarNFe.aspx')
;

-- 29/09/2015 11h6min11s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-09-29 11:06:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 11:06:11','YYYY-MM-DD HH24:MI:SS'),100,1000028,'12dc3005-1300-4f56-bbd3-78eb82fe2560','Y','NFCeConsultaQRCode','100','2',465,'https://www.homologacao.nfce.fazenda.sp.gov.br/NFCeConsultaPublica/Paginas/ConsultaQRCode.aspx')
;

-- 29/09/2015 11h6min23s BRT
INSERT INTO LBR_NFeWebService (LBR_NFeModel,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,LBR_NFeWebService_ID,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES ('65',0,0,TO_TIMESTAMP('2015-09-29 11:06:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 11:06:23','YYYY-MM-DD HH24:MI:SS'),100,1000029,'0f3cb98d-dba8-4e92-9598-2a46366837f3','Y','NFCeConsultaQRCode','100','1',465,'https://www.nfce.fazenda.sp.gov.br/NFCeConsultaPublica/Paginas/ConsultaQRCode.aspx')
;
*/

-- 31/08/2015 21h16min21s BRT
UPDATE AD_Ref_List SET Name='65 -NFC-e',Updated=TO_TIMESTAMP('2015-08-31 21:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800033
;

-- 31/08/2015 21h24min40s BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=1000040,Updated=TO_TIMESTAMP('2015-08-31 21:24:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800065
;

-- 31/08/2015 21h26min49s BRT
UPDATE AD_Ref_List SET Name='65 - NFC-e',Updated=TO_TIMESTAMP('2015-08-31 21:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800033
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 29/09/2015 18h37min53s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800011,'Taxpayer Security Code','LBR_CSC',0,'3',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:37:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:37:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBR','N','Y','L','N','Y','a1e4e4a2-ac48-4867-9707-5a8c08e3b32f','N','N')
;

-- 29/09/2015 18h37min53s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CSC',1000000,'N','N','Table LBR_CSC','Y','Y',0,0,TO_TIMESTAMP('2015-09-29 18:37:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:37:53','YYYY-MM-DD HH24:MI:SS'),100,800019,'Y',1000000,1,200000,'d64d1412-0e9e-48fa-87b7-6c68ba9b47f4')
;

-- 29/09/2015 18h38min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800603,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800011,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:26','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBR','N','N','N','Y','81de60f7-81e2-449f-b5e3-08d1e5aadd52','N',0,'N','N','N')
;

-- 29/09/2015 18h38min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800604,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800011,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:27','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBR','N','N','N','Y','ab32fc3c-50bc-4a0f-9b57-987256722eed','N',0,'N','N','N')
;

-- 29/09/2015 18h38min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800605,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800011,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:27','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBR','N','N','N','Y','afbf6c35-b0aa-4a9b-9f9a-5f350e9472f4','N',0,'N','N','N')
;

-- 29/09/2015 18h38min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800606,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800011,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:28','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBR','N','N','N','Y','fc049be2-a337-4453-9778-fd549a92862a','N',0,'N','N','N')
;

-- 29/09/2015 18h38min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800607,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800011,'Description',255,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:28','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBR','N','N','N','Y','02b8e7fd-1799-42f7-9a4c-8f38e7c6b4cd','Y',0,'N','N','N')
;

-- 29/09/2015 18h38min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800608,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800011,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBR','N','N','N','Y','b9d2f215-38c0-42c7-b061-019658bc21cd','N',0,'N','N','N')
;

-- 29/09/2015 18h38min30s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800137,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CSC_ID','Taxpayer Security Code','Taxpayer Security Code','LBR','58cc3946-140d-465a-ac07-9208f6405d46')
;

-- 29/09/2015 18h38min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800609,0,'Taxpayer Security Code',800011,'LBR_CSC_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,800137,'N','N','LBR','N','N','N','Y','f9104734-4c12-4f09-be27-ffde93046742','N',0,'N','N','N')
;

-- 29/09/2015 18h38min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800138,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CSC_UU','LBR_CSC_UU','LBR_CSC_UU','LBR','ac28a78c-2be3-4ffe-bd91-2490d92bd3b6')
;

-- 29/09/2015 18h38min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800610,0,'LBR_CSC_UU',800011,'LBR_CSC_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:31','YYYY-MM-DD HH24:MI:SS'),100,800138,'N','N','LBR','N','N','N','Y','469cdc8b-771f-4e20-877d-a09aa3659cd5','N',0,'N','N','N')
;

-- 29/09/2015 18h38min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800611,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800011,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:32','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBR','N','N','N','Y','00e190fa-dc01-4f08-80f3-f7f43b2f5032','N',0,'N','N','N')
;

-- 29/09/2015 18h38min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800612,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800011,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:32','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBR','N','N','N','Y','f83c3cf0-81f8-4109-93c3-2c841a88099a','N',0,'N','N','N')
;

-- 29/09/2015 18h38min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800613,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800011,'Value',5,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:33','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBR','N','N','N','Y','a44d27ed-7818-4623-a505-181615969593','Y',0,'N','N','N')
;

-- 29/09/2015 18h39min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (800614,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800011,'Name',60,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:38:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:38:59','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','U','N','N','N','Y','1b1d6f20-5aa0-4945-8649-311f6582bd97','Y',0,'N','N')
;

-- 29/09/2015 18h39min14s BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCSC', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-09-29 18:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800603
;

-- 29/09/2015 18h39min14s BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCSC', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-09-29 18:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800604
;

-- 29/09/2015 18h39min14s BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCSC', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-09-29 18:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800606
;

-- 29/09/2015 18h39min14s BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCSC', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-09-29 18:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800612
;

-- 29/09/2015 18h39min14s BRT
CREATE TABLE LBR_CSC (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_CSC_ID NUMERIC(10) NOT NULL, LBR_CSC_UU VARCHAR(36) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , Value VARCHAR(5) NOT NULL, CONSTRAINT LBR_CSC_Key PRIMARY KEY (LBR_CSC_ID), CONSTRAINT LBR_CSC_UU_idx UNIQUE (LBR_CSC_UU))
;

-- 29/09/2015 18h39min14s BRT
ALTER TABLE LBR_CSC ADD CONSTRAINT ADClient_LBRCSC FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/09/2015 18h39min14s BRT
ALTER TABLE LBR_CSC ADD CONSTRAINT ADOrg_LBRCSC FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/09/2015 18h39min14s BRT
ALTER TABLE LBR_CSC ADD CONSTRAINT CreatedBy_LBRCSC FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/09/2015 18h39min15s BRT
ALTER TABLE LBR_CSC ADD CONSTRAINT UpdatedBy_LBRCSC FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/09/2015 18h39min59s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800003,'Taxpayer Security Code',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:39:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:39:58','YYYY-MM-DD HH24:MI:SS'),100,'M','N','U','Y','N',0,0,'N','a202ad79-869c-4639-b171-3f7ef8cbe1f2')
;

-- 29/09/2015 18h42min17s BRT
UPDATE AD_Window SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-09-29 18:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=800003
;

-- 29/09/2015 18h43min16s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800009,'Taxpayer Security Code',800003,10,'Y',800011,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:43:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:43:15','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBR','Y','N','fb30a372-9130-4a7e-a366-47ccd38b7557','B')
;

-- 29/09/2015 18h43min23s BRT
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_TIMESTAMP('2015-09-29 18:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800011
;

-- 29/09/2015 18h45min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (800615,0,'Sefaz NF-e Environment',800011,'LBR_NFeEnv',1,'N','N','Y','N','N',0,'N',17,1000051,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:02','YYYY-MM-DD HH24:MI:SS'),100,1000234,'Y','N','U','N','N','N','Y','566918c8-23c2-4f9a-86fc-6c9ac7b53e21','Y',0,'N','N','N')
;

-- 29/09/2015 18h45min4s BRT
ALTER TABLE LBR_CSC ADD COLUMN LBR_NFeEnv CHAR(1) NOT NULL
;

-- 29/09/2015 18h45min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800156,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800009,800603,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','bd2591c7-3e0e-4420-9608-5ade95b68b58','N',2)
;

-- 29/09/2015 18h45min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (800157,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800009,800604,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','61c12a0d-0f32-4458-b26e-fcfe124be01b','Y','Y',10,4,2)
;

-- 29/09/2015 18h45min35s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800158,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800009,800613,'Y',5,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c3ab6c95-1203-4504-8721-57243c2183e1','Y',20,2)
;

-- 29/09/2015 18h45min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800159,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800009,800614,'Y',60,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','32c1fa62-7b22-46ba-9659-b9b05a45345f','Y',30,5)
;

-- 29/09/2015 18h45min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (800160,'Description','Optional short description of the record','A description is limited to 255 characters.',800009,800607,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','250cdbc0-fd75-49a1-aa3f-4aefbe49dfc8','Y',40,5,8)
;

-- 29/09/2015 18h45min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800161,'Taxpayer Security Code',800009,800609,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b451dd7f-cb93-456a-b374-5f4b8c19a54c','N',2)
;

-- 29/09/2015 18h45min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (800162,'LBR_CSC_UU',800009,800610,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','2796ea85-adf7-417a-93af-3fd9c8a69d49','N',2)
;

-- 29/09/2015 18h45min38s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800163,'Sefaz NF-e Environment',800009,800615,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','965fe14a-4780-46f9-a341-728ff2a18b76','Y',50,2)
;

-- 29/09/2015 18h45min38s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (800164,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800009,800608,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 18:45:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:45:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','ba1130d0-b1b9-46f7-9505-405a2b067d0d','Y',60,2,2)
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_FieldGroup_ID=113, XPosition=2, ColumnSpan=1,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800164
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=113, ColumnSpan=2,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800158
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800163
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=1, ColumnSpan=5,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800159
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800160
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800162
;

-- 29/09/2015 18h47min56s BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2015-09-29 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800161
;

-- 29/09/2015 18h48min59s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800009,'Taxpayer Security Code','W',800003,0,0,'Y',TO_TIMESTAMP('2015-09-29 18:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 18:48:57','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','U','Y','787f9506-2df5-45ab-bba6-ebb81b74af85')
;

-- 29/09/2015 18h48min59s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 800009, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800009)
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 29/09/2015 18h49min9s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 29/09/2015 18h49min12s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 29/09/2015 18h49min14s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 29/09/2015 18h54min44s BRT
UPDATE AD_Column SET FieldLength=6,Updated=TO_TIMESTAMP('2015-09-29 18:54:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800613
;

-- 29/09/2015 18h54min46s BRT
INSERT INTO t_alter_column values('lbr_csc','Value','VARCHAR(6)',null,null)
;

-- 29/09/2015 18h54min53s BRT
UPDATE AD_Column SET FieldLength=36,Updated=TO_TIMESTAMP('2015-09-29 18:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800614
;

-- 29/09/2015 18h54min54s BRT
INSERT INTO t_alter_column values('lbr_csc','Name','VARCHAR(36)',null,null)
;
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 29/09/2015 23h49min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (800618,0,'Default','Default value','The Default Checkbox indicates if this record will be used as a default value.',800011,'IsDefault',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2015-09-29 23:49:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 23:49:00','YYYY-MM-DD HH24:MI:SS'),100,1103,'Y','N','N','U','N','N','N','Y','1b55a779-52d7-4780-8242-17cad8b24404','Y',0,'N','N')
;

-- 29/09/2015 23h49min14s BRT
UPDATE AD_Column SET DefaultValue='N', ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2015-09-29 23:49:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800618
;

-- 29/09/2015 23h49min16s BRT
ALTER TABLE LBR_CSC ADD COLUMN IsDefault CHAR(1) DEFAULT 'N' CHECK (IsDefault IN ('Y','N')) NOT NULL
;

-- 29/09/2015 23h51min7s BRT
UPDATE AD_Table SET AD_Window_ID=800003,Updated=TO_TIMESTAMP('2015-09-29 23:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800011
;

-- 29/09/2015 23h51min14s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (800166,'Default','Default value','The Default Checkbox indicates if this record will be used as a default value.',800009,800618,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 23:51:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 23:51:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','3798874f-b4be-4a47-b18f-46026d44bdee','Y',70,2,2)
;

-- 29/09/2015 23h51min24s BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-09-29 23:51:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800166
;

-- 29/09/2015 23h51min33s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-09-29 23:51:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800618
;

-- 29/09/2015 23h52min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, XPosition=5,Updated=TO_TIMESTAMP('2015-09-29 23:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800166
;

-- 29/09/2015 23h52min7s BRT
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2015-09-29 23:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800158
;

-- 29/09/2015 23h52min7s BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2015-09-29 23:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800163
;

-- 29/09/2015 23h52min7s BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2015-09-29 23:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800159
;

-- 29/09/2015 23h52min7s BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2015-09-29 23:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800160
;

-- 29/09/2015 20h5min37s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800140,0,0,'Y',TO_TIMESTAMP('2015-09-29 20:05:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 20:05:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFCeQRCodeURL','NFC-e QRCode URL','QRCode URL of NFC-e','NFC-e QRCode URL','LBR','3d4f367b-33fa-4e8d-b001-967930fcd565')
;

-- 29/09/2015 20h6min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (800617,0,'NFC-e QRCode URL','QRCode URL of NFC-e',1000033,'LBR_NFCeQRCodeURL',600,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2015-09-29 20:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 20:06:18','YYYY-MM-DD HH24:MI:SS'),100,800140,'Y','N','U','N','N','N','Y','a021f357-d984-42c5-9947-b95bb853b9e2','Y',0,'N','N')
;

-- 29/09/2015 20h6min20s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_NFCeQRCodeURL VARCHAR(600) DEFAULT NULL 
;

-- 29/09/2015 20h7min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800165,'NFC-e QRCode URL','QRCode URL of NFC-e',1000068,800617,'Y',600,480,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-09-29 20:07:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-09-29 20:07:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','82cc3011-c41f-462c-bb38-8e76acc18fe6','Y',450,5)
;

-- 29/09/2015 20h7min18s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-09-29 20:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=800617
;

-- 29/09/2015 20h7min30s BRT
UPDATE AD_Field SET EntityType='LBR',Updated=TO_TIMESTAMP('2015-09-29 20:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800165
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=1,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800165
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001191
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001199
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001198
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001197
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001190
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1002046
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001200
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001201
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001202
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800155
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001203
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001204
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001205
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001206
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001207
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001220
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001221
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001208
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001209
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001210
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001211
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=300,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001212
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001213
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800148
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001629
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001214
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001630
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001215
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001397
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001216
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001217
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001218
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001462
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001463
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001224
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=440,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001219
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=450,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001193
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=460,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001192
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=470,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001507
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=480,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800059
;

-- 29/09/2015 20h7min57s BRT
UPDATE AD_Field SET SeqNo=490,Updated=TO_TIMESTAMP('2015-09-29 20:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800060
;

-- 29/09/2015 20h8min19s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2015-09-29 20:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800165
;

-- 29/09/2015 20h10min14s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeStatus@=100 | @LBR_NFeStatus@=150 & @LBR_NFeModel@=65',Updated=TO_TIMESTAMP('2015-09-29 20:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800165
;

-- 29/09/2015 20h11min12s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2015-09-29 20:11:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=800165
;

SELECT lbr_register_migration_script('201509300939.sql') FROM dual;
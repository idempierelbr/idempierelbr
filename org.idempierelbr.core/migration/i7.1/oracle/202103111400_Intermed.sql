SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- Mar 11, 2021, 4:33:18 AM PST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800463,0,0,'Y',TO_DATE('2021-03-11 04:33:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:33:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFeIndIntermed','Intermediary Indicator','Intermediary Indicator','U','65c11f9d-782c-4d67-bd14-ad7932d4ab0e')
;

-- Mar 11, 2021, 4:34:00 AM PST
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2021-03-11 04:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800463
;

-- Mar 11, 2021, 4:36:40 AM PST
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800058,'LBR_NFE_IndIntermed','L',0,0,'Y',TO_DATE('2021-03-11 04:36:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:36:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','7750bc20-bb07-4c0f-a05e-cc0411fb969a')
;

-- Mar 11, 2021, 4:39:22 AM PST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800219,'Without an intermediary',800058,'0',0,0,'Y',TO_DATE('2021-03-11 04:39:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:39:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','f553be42-85f4-4760-9815-32926083323a')
;

-- Mar 11, 2021, 4:40:42 AM PST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800220,'Third party website ',800058,'1',0,0,'Y',TO_DATE('2021-03-11 04:40:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:40:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','0d28fb2b-90c1-4600-b39e-b59d08a55f0d')
;

-- Mar 11, 2021, 4:41:54 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801692,0,'Intermediary Indicator',217,'LBR_NFeIndIntermed',1,'N','N','N','N','N',0,'N',17,800058,0,0,'Y',TO_DATE('2021-03-11 04:41:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:41:54','YYYY-MM-DD HH24:MI:SS'),0,800463,'Y','N','LBR','N','N','N','Y','4135b45b-ca77-4666-986e-f3332ee031c8','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 4:41:57 AM PST
ALTER TABLE C_DocType ADD LBR_NFeIndIntermed CHAR(1) DEFAULT NULL 
;

-- Mar 11, 2021, 4:43:15 AM PST
ALTER TABLE C_DocType MODIFY LBR_NFeIndIntermed CHAR(1) DEFAULT NULL 
;

-- Mar 11, 2021, 4:43:47 AM PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801530,'Intermediary Indicator',167,801692,'Y',1,530,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-11 04:43:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 04:43:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c676b172-8927-454f-b439-61ede2e87c73','Y',520,2)
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801530
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=807
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=808
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54233
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54230
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54232
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200004
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3075
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3072
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10481
;

-- Mar 11, 2021, 4:44:18 AM PST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10480
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58859
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10528
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10340
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6567
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3125
;

-- Mar 11, 2021, 4:44:19 AM PST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=204719
;

-- Mar 11, 2021, 4:44:49 AM PST
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 04:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801530
;

-- Mar 11, 2021, 5:08:05 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801694,0,'Intermediary Indicator',1000033,'LBR_NFeIndIntermed',1,'N','N','N','N','N',0,'N',17,800058,0,0,'Y',TO_DATE('2021-03-11 05:08:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 05:08:05','YYYY-MM-DD HH24:MI:SS'),0,800463,'Y','N','LBR','N','N','@LBR_NFeIndPres@ = ''1'' | @LBR_NFeIndPres@ = ''2'' | @LBR_NFeIndPres@ = ''3'' | @LBR_NFeIndPres@ = ''4'' | @LBR_NFeIndPres@ = ''9''','N','Y','0fea19bd-0145-4578-b4f3-4d9be8e538b0','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 5:08:08 AM PST
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeIndIntermed CHAR(1) DEFAULT NULL 
;

-- Mar 11, 2021, 5:26:37 AM PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801531,'Intermediary Indicator',1000068,801694,'Y',1,500,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-11 05:26:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 05:26:37','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','bcab17af-df52-459b-964c-4c82d2197883','Y',460,2)
;

-- Mar 11, 2021, 5:27:28 AM PST
UPDATE AD_Field SET SeqNo=255, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 05:27:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801531
;

-- Mar 11, 2021, 5:35:40 AM PST
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeIndPres@ = ''2'' | @LBR_NFeIndPres@ = ''3'' | @LBR_NFeIndPres@ = ''4'' | @LBR_NFeIndPres@ = ''9''',Updated=TO_DATE('2021-03-11 05:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801694
;

-- Mar 11, 2021, 5:45:41 AM PST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800221,'Operacao presencial, fora doestabelecimento',NULL,1000035,'5',0,0,'Y',TO_DATE('2021-03-11 05:45:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 05:45:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR','74ade8c0-d871-4421-a689-3302ae6e5107')
;

-- Mar 11, 2021, 5:46:00 AM PST
UPDATE AD_Ref_List SET Name='Operacao presencial, fora do estabelecimento',Updated=TO_DATE('2021-03-11 05:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800221
;

-- Mar 11, 2021, 6:47:11 AM PST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800464,0,0,'Y',TO_DATE('2021-03-11 06:47:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 06:47:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BP_Intermed_ID','Intermediary BP','Intermediary BP','LBR','3ef2e60c-c0fe-444f-9090-3555a46df1dc')
;

-- Mar 11, 2021, 6:49:34 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801695,0,'Intermediary BP',217,'LBR_BP_Intermed_ID',220,'N','N','N','N','N',0,'N',30,138,0,0,'Y',TO_DATE('2021-03-11 06:49:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 06:49:33','YYYY-MM-DD HH24:MI:SS'),0,800464,'Y','N','LBR','N','N','N','Y','d4023d57-2043-4ff0-90f4-431a1195e79a','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 6:49:37 AM PST
UPDATE AD_Column SET FKConstraintName='LBRBPIntermed_CDocType', FKConstraintType='N',Updated=TO_DATE('2021-03-11 06:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801695
;

-- Mar 11, 2021, 6:49:37 AM PST
ALTER TABLE C_DocType ADD LBR_BP_Intermed_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 11, 2021, 6:49:38 AM PST
ALTER TABLE C_DocType ADD CONSTRAINT LBRBPIntermed_CDocType FOREIGN KEY (LBR_BP_Intermed_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 11, 2021, 6:50:44 AM PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801532,'Intermediary BP',167,801695,'Y',220,540,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-11 06:50:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 06:50:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cfa03ec8-c99b-44bc-9988-ca6e8cb2c9e5','Y',530,5)
;

-- Mar 11, 2021, 6:51:21 AM PST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801532
;

-- Mar 11, 2021, 6:51:21 AM PST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- Mar 11, 2021, 6:51:21 AM PST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- Mar 11, 2021, 6:51:22 AM PST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- Mar 11, 2021, 6:51:22 AM PST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- Mar 11, 2021, 6:51:22 AM PST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- Mar 11, 2021, 6:51:22 AM PST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=807
;

-- Mar 11, 2021, 6:51:23 AM PST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=808
;

-- Mar 11, 2021, 6:51:23 AM PST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 06:51:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54233
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- Mar 11, 2021, 8:03:38 AM PST
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeIndPres@ = ''2'' | @LBR_NFeIndPres@ = ''3'' | @LBR_NFeIndPres@ = ''4'' | @LBR_NFeIndPres@ = ''9''',Updated=TO_DATE('2021-03-11 08:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801692
;

-- Mar 11, 2021, 8:06:00 AM PST
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeIndIntermed@ = ''1''',Updated=TO_DATE('2021-03-11 08:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801695
;

-- Mar 11, 2021, 8:06:53 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801696,0,'Intermediary BP',1000033,'LBR_BP_Intermed_ID',220,'N','N','N','N','N',0,'N',30,138,0,0,'Y',TO_DATE('2021-03-11 08:06:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 08:06:53','YYYY-MM-DD HH24:MI:SS'),0,800464,'Y','N','LBR','N','N','@LBR_NFeIndIntermed@ = ''1''','N','Y','f76c588a-d8ad-4b27-b954-620a14b787b2','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 8:06:56 AM PST
UPDATE AD_Column SET FKConstraintName='LBRBPIntermed_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2021-03-11 08:06:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801696
;

-- Mar 11, 2021, 8:06:56 AM PST
ALTER TABLE LBR_NotaFiscal ADD LBR_BP_Intermed_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 11, 2021, 8:06:56 AM PST
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRBPIntermed_LBRNotaFiscal FOREIGN KEY (LBR_BP_Intermed_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 11, 2021, 8:07:14 AM PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801533,'Intermediary BP',1000068,801696,'Y',220,500,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-11 08:07:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 08:07:14','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7f591cfc-b8c2-42d9-ad68-db8ffbe79825','Y',470,5)
;

-- Mar 11, 2021, 8:07:38 AM PST
UPDATE AD_Field SET SeqNo=256, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:07:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801533
;

-- Mar 11, 2021, 8:08:13 AM PST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801531
;

-- Mar 11, 2021, 8:08:13 AM PST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801533
;

-- Mar 11, 2021, 8:08:14 AM PST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001208
;

-- Mar 11, 2021, 8:08:14 AM PST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001209
;

-- Mar 11, 2021, 8:08:14 AM PST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001210
;

-- Mar 11, 2021, 8:08:15 AM PST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001211
;

-- Mar 11, 2021, 8:08:15 AM PST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001212
;

-- Mar 11, 2021, 8:08:15 AM PST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001213
;

-- Mar 11, 2021, 8:08:16 AM PST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800148
;

-- Mar 11, 2021, 8:08:16 AM PST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001629
;

-- Mar 11, 2021, 8:08:16 AM PST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- Mar 11, 2021, 8:08:16 AM PST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001630
;

-- Mar 11, 2021, 8:08:17 AM PST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001215
;

-- Mar 11, 2021, 8:08:17 AM PST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001397
;

-- Mar 11, 2021, 8:08:17 AM PST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001216
;

-- Mar 11, 2021, 8:08:18 AM PST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001217
;

-- Mar 11, 2021, 8:08:18 AM PST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001218
;

-- Mar 11, 2021, 8:08:18 AM PST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001462
;

-- Mar 11, 2021, 8:08:18 AM PST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001463
;

-- Mar 11, 2021, 8:08:19 AM PST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001224
;

-- Mar 11, 2021, 8:08:19 AM PST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001219
;

-- Mar 11, 2021, 8:08:19 AM PST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001193
;

-- Mar 11, 2021, 8:08:20 AM PST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001192
;

-- Mar 11, 2021, 8:08:20 AM PST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001507
;

-- Mar 11, 2021, 8:08:21 AM PST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800059
;

-- Mar 11, 2021, 8:08:21 AM PST
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:08:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800060
;

-- Mar 11, 2021, 8:11:19 AM PST
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-11 08:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801532
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- Mar 11, 2021, 8:40:36 AM PST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800468,0,0,'Y',TO_DATE('2021-03-11 08:40:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 08:40:35','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IdCadIntTran','Intermediary Username','Intermediary Username','LBR','f8d5a972-d396-42f8-a697-621542f1f18f')
;

-- Mar 11, 2021, 8:41:13 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801698,0,'Intermediary Username',217,'LBR_IdCadIntTran',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-03-11 08:41:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 08:41:13','YYYY-MM-DD HH24:MI:SS'),0,800468,'Y','N','LBR','N','N','N','Y','83ec6b8c-b65d-40c4-91e3-65a784da29cd','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 8:41:16 AM PST
ALTER TABLE C_DocType ADD LBR_IdCadIntTran VARCHAR2(60) DEFAULT NULL 
;

-- Mar 11, 2021, 8:42:33 AM PST
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeIndIntermed@ = ''1''',Updated=TO_DATE('2021-03-11 08:42:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801698
;

-- Mar 11, 2021, 8:43:10 AM PST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801699,0,'Intermediary Username',1000033,'LBR_IdCadIntTran',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-03-11 08:43:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-11 08:43:09','YYYY-MM-DD HH24:MI:SS'),0,800468,'Y','N','LBR','N','N','@LBR_NFeIndIntermed@ = ''1''','N','Y','99cd5182-9107-4b33-823f-54e19bf98855','Y',0,'N','N','N','N')
;

-- Mar 11, 2021, 8:43:11 AM PST
ALTER TABLE LBR_NotaFiscal ADD LBR_IdCadIntTran VARCHAR2(60) DEFAULT NULL 
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 12 de mar de 2021 04:16:21 PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801536,'Intermediary Username',167,801698,'Y',60,550,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-12 04:16:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-12 04:16:21','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','03ff892c-d18e-4368-b503-e66980350130','Y',540,5)
;

-- 12 de mar de 2021 04:17:27 PST
UPDATE AD_Field SET SeqNo=345, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801536
;

-- 12 de mar de 2021 04:18:10 PST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801536
;

-- 12 de mar de 2021 04:18:10 PST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- 12 de mar de 2021 04:18:11 PST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- 12 de mar de 2021 04:18:11 PST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- 12 de mar de 2021 04:18:11 PST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- 12 de mar de 2021 04:18:11 PST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- 12 de mar de 2021 04:18:12 PST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=807
;

-- 12 de mar de 2021 04:18:12 PST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=808
;

-- 12 de mar de 2021 04:18:12 PST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54233
;

-- 12 de mar de 2021 04:18:13 PST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54230
;

-- 12 de mar de 2021 04:18:13 PST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=54232
;

-- 12 de mar de 2021 04:18:13 PST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200004
;

-- 12 de mar de 2021 04:18:14 PST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3075
;

-- 12 de mar de 2021 04:18:14 PST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3072
;

-- 12 de mar de 2021 04:18:14 PST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10481
;

-- 12 de mar de 2021 04:18:14 PST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10480
;

-- 12 de mar de 2021 04:18:15 PST
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58859
;

-- 12 de mar de 2021 04:18:15 PST
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10528
;

-- 12 de mar de 2021 04:18:15 PST
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10340
;

-- 12 de mar de 2021 04:18:16 PST
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6567
;

-- 12 de mar de 2021 04:18:16 PST
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3125
;

-- 12 de mar de 2021 04:18:52 PST
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:18:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801536
;

-- 12 de mar de 2021 04:19:08 PST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801537,'Intermediary Username',1000068,801699,'Y',60,520,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-12 04:19:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2021-03-12 04:19:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4346f597-4582-4241-b036-a8dcd0a4ac17','Y',480,5)
;

-- 12 de mar de 2021 04:19:47 PST
UPDATE AD_Field SET SeqNo=295, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:19:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801537
;

-- 12 de mar de 2021 04:20:20 PST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801537
;

-- 12 de mar de 2021 04:20:20 PST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001208
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001209
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001210
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001211
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001212
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001213
;

-- 12 de mar de 2021 04:20:21 PST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800148
;

-- 12 de mar de 2021 04:20:22 PST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- 12 de mar de 2021 04:20:22 PST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001629
;

-- 12 de mar de 2021 04:20:22 PST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001630
;

-- 12 de mar de 2021 04:20:22 PST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001215
;

-- 12 de mar de 2021 04:20:22 PST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001397
;

-- 12 de mar de 2021 04:20:23 PST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001216
;

-- 12 de mar de 2021 04:20:23 PST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001217
;

-- 12 de mar de 2021 04:20:23 PST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001218
;

-- 12 de mar de 2021 04:20:23 PST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001462
;

-- 12 de mar de 2021 04:20:23 PST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001463
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001224
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001219
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001193
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001192
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001507
;

-- 12 de mar de 2021 04:20:24 PST
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800059
;

-- 12 de mar de 2021 04:20:25 PST
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-12 04:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800060
;


SELECT lbr_register_migration_script('202103111400_Intermed.sql') FROM dual;



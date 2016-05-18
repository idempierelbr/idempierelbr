SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16/05/2016 11h29min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800269,0,0,'Y',TO_DATE('2016-05-16 11:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:29:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_TaxRateFCPUFDest','DIFAL Tax Rate of "Fundo de Combate a Pobreza"','DIFAL Tax Rate of "Fundo de Combate a Pobreza"','U','2d9dc2e6-7b48-4d29-8db4-2a24031217ed')
;

-- 16/05/2016 11h30min40s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800270,0,0,'Y',TO_DATE('2016-05-16 11:30:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:30:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_TaxRateICMSUFDest','DIFAL Internal Tax Rate in Receiver UF','DIFAL Internal Tax Rate in Receiver UF','U','1a215b1c-f70a-4a43-9a0d-f8e748dd8869')
;

-- 16/05/2016 11h32min4s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800271,0,0,'Y',TO_DATE('2016-05-16 11:32:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:32:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_RateICMSInterPart','DIFAL Share Rate','DIFAL Share Rate','U','ba18d971-f04d-468e-9aac-4122cef1d3a3')
;

-- 16/05/2016 11h33min51s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800272,0,0,'Y',TO_DATE('2016-05-16 11:33:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:33:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_TaxAmtFCPUFDest','DIFAL Tax Amt of "Fundo de Combate a Pobreza"','DIFAL Tax Amt of "Fundo de Combate a Pobreza"','U','c3ed5e54-c48b-4893-a31e-f31baaa27fd8')
;

-- 16/05/2016 11h35min30s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800273,0,0,'Y',TO_DATE('2016-05-16 11:35:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:35:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_TaxAmtICMSUFDest','DIFAL Tax Amt in Receiver UF','DIFAL Tax Amt in Receiver UF','U','7d693b17-c872-4b33-97b2-03f2ce81c29b')
;

-- 16/05/2016 11h37min16s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800274,0,0,'Y',TO_DATE('2016-05-16 11:37:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:37:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DIFAL_TaxAmtICMSUFRemet','DIFAL Tax Amt in Sender UF','DIFAL Tax Amt in Sender UF','U','c5a728ca-6444-4e47-acc2-c2436f972a9e')
;

-- 16/05/2016 11h46min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801009,0,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',1000027,'LBR_DIFAL_TaxRateFCPUFDest',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:46:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:46:33','YYYY-MM-DD HH24:MI:SS'),0,800269,'Y','N','U','N','N','N','Y','eb466df1-bde7-47a4-98cb-ac9bce51b040','Y',0,'N','N')
;

-- 16/05/2016 11h46min36s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_TaxRateFCPUFDest NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h46min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801010,0,'DIFAL Internal Tax Rate in Receiver UF',1000027,'LBR_DIFAL_TaxRateICMSUFDest',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:46:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:46:51','YYYY-MM-DD HH24:MI:SS'),0,800270,'Y','N','U','N','N','N','Y','f762984f-0a36-4e3b-8e79-56309fabacc4','Y',0,'N','N')
;

-- 16/05/2016 11h46min53s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_TaxRateICMSUFDest NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h47min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801011,0,'DIFAL Share Rate',1000027,'LBR_DIFAL_RateICMSInterPart',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:47:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:47:03','YYYY-MM-DD HH24:MI:SS'),0,800271,'Y','N','U','N','N','N','Y','bc9fe719-0710-452a-ad8f-7992130f7cab','Y',0,'N','N')
;

-- 16/05/2016 11h47min4s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_RateICMSInterPart NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h47min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801012,0,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',1000027,'LBR_DIFAL_TaxAmtFCPUFDest',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:47:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:47:17','YYYY-MM-DD HH24:MI:SS'),0,800272,'Y','N','U','N','N','N','Y','8a790b9a-3c92-4468-8f7a-98e673959890','Y',0,'N','N')
;

-- 16/05/2016 11h47min18s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_TaxAmtFCPUFDest NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h47min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801013,0,'DIFAL Tax Amt in Receiver UF',1000027,'LBR_DIFAL_TaxAmtICMSUFDest',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:47:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:47:29','YYYY-MM-DD HH24:MI:SS'),0,800273,'Y','N','U','N','N','N','Y','6d4384fe-f4e0-4fd9-bd82-0a848a5976cf','Y',0,'N','N')
;

-- 16/05/2016 11h47min31s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_TaxAmtICMSUFDest NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h47min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801014,0,'DIFAL Tax Amt in Sender UF',1000027,'LBR_DIFAL_TaxAmtICMSUFRemet',21,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2016-05-16 11:47:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:47:46','YYYY-MM-DD HH24:MI:SS'),0,800274,'Y','N','U','N','N','N','Y','b645aa47-b356-4547-8010-b5be0110824c','Y',0,'N','N')
;

-- 16/05/2016 11h47min48s BRT
ALTER TABLE LBR_DocLine_ICMS ADD LBR_DIFAL_TaxAmtICMSUFRemet NUMBER DEFAULT NULL 
;

-- 16/05/2016 11h47min54s BRT
UPDATE AD_Column SET FieldLength=21,Updated=TO_DATE('2016-05-16 11:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801009
;

-- 16/05/2016 11h47min57s BRT
UPDATE AD_Column SET FieldLength=21,Updated=TO_DATE('2016-05-16 11:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801010
;

-- 16/05/2016 11h48min5s BRT
UPDATE AD_Column SET FieldLength=21,Updated=TO_DATE('2016-05-16 11:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801013
;

-- 16/05/2016 11h48min9s BRT
UPDATE AD_Column SET FieldLength=21,Updated=TO_DATE('2016-05-16 11:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801012
;

-- 16/05/2016 11h48min14s BRT
UPDATE AD_Column SET FieldLength=21,Updated=TO_DATE('2016-05-16 11:48:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801011
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_Element SET Name='DIFAL Share Rate (%)', PrintName='DIFAL Share Rate (%)',Updated=TO_DATE('2016-05-16 11:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800271
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_Column SET ColumnName='LBR_DIFAL_RateICMSInterPart', Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL WHERE AD_Element_ID=800271
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_DIFAL_RateICMSInterPart', Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, AD_Element_ID=800271 WHERE UPPER(ColumnName)='LBR_DIFAL_RATEICMSINTERPART' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_DIFAL_RateICMSInterPart', Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL WHERE AD_Element_ID=800271 AND IsCentrallyMaintained='Y'
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_DIFAL_RateICMSInterPart', Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL WHERE AD_Element_ID=800271 AND IsCentrallyMaintained='Y'
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800271) AND IsCentrallyMaintained='Y'
;

-- 16/05/2016 11h48min54s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFAL Share Rate (%)', Name='DIFAL Share Rate (%)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800271)
;

-- 16/05/2016 11h51min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800490,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',1000027,801009,'Y',21,340,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','c3004c78-f8dc-40b6-9e00-a6fc04317b21','Y',320,2)
;

-- 16/05/2016 11h51min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800491,'DIFAL Internal Tax Rate in Receiver UF',1000027,801010,'Y',21,350,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','e9cbf485-7a08-4f83-a93c-40b03a3063e6','Y',330,2)
;

-- 16/05/2016 11h51min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800492,'DIFAL Share Rate (%)',1000027,801011,'Y',21,360,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','d9a11433-ebc5-4a23-8990-55b0a5687036','Y',340,2)
;

-- 16/05/2016 11h51min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800493,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',1000027,801012,'Y',21,370,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','a4ef59ce-72a4-4376-b743-d56a7a735992','Y',350,2)
;

-- 16/05/2016 11h51min3s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800494,'DIFAL Tax Amt in Receiver UF',1000027,801013,'Y',21,380,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','0bacbc6d-282b-4ffa-976c-97e44a6161f2','Y',360,2)
;

-- 16/05/2016 11h51min4s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800495,'DIFAL Tax Amt in Sender UF',1000027,801014,'Y',21,390,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:51:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:51:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','faafc9b0-18ee-40b7-8a97-a100c2dcc43b','Y',370,2)
;

-- 16/05/2016 11h52min7s BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800004,0,0,'Y',TO_DATE('2016-05-16 11:52:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:52:06','YYYY-MM-DD HH24:MI:SS'),0,'DIFAL - Diferencial de Alíquota em Operações Interestaduais','U','C','N','ca2fbc12-82fd-4edf-8e6f-e7b1b8170569')
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET SeqNo=340, AD_FieldGroup_ID=800004,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800490
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800493
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800491
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800492
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800495
;

-- 16/05/2016 11h53min3s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800494
;

-- 16/05/2016 11h53min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800496,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',1000034,801009,'Y',21,340,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','a9960065-a803-4ef3-927f-1b377b163b7b','Y',320,2)
;

-- 16/05/2016 11h53min31s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800497,'DIFAL Internal Tax Rate in Receiver UF',1000034,801010,'Y',21,350,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','973a3427-a08f-466d-a498-85694ffb415a','Y',330,2)
;

-- 16/05/2016 11h53min31s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800498,'DIFAL Share Rate (%)',1000034,801011,'Y',21,360,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','b93a20e0-3f6a-4f35-8954-564a57511eb6','Y',340,2)
;

-- 16/05/2016 11h53min32s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800499,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',1000034,801012,'Y',21,370,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','0a970e7d-119e-45f5-8a19-a042925b0cb0','Y',350,2)
;

-- 16/05/2016 11h53min33s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800500,'DIFAL Tax Amt in Receiver UF',1000034,801013,'Y',21,380,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','d09c4a62-51ba-499a-95a2-0096a66ad1c8','Y',360,2)
;

-- 16/05/2016 11h53min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800501,'DIFAL Tax Amt in Sender UF',1000034,801014,'Y',21,390,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:53:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:53:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','d6193000-6851-4716-8004-aedcacc7f522','Y',370,2)
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET SeqNo=340, AD_FieldGroup_ID=800004,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800496
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800499
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET SeqNo=360,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800497
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800498
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET SeqNo=380,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800501
;

-- 16/05/2016 11h53min54s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390, XPosition=4,Updated=TO_DATE('2016-05-16 11:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800500
;

-- 16/05/2016 11h54min35s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800502,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',1000072,801009,'Y',21,350,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','81987b92-c94f-4920-b944-1f378eaf5689','Y',330,2)
;

-- 16/05/2016 11h54min35s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800503,'DIFAL Internal Tax Rate in Receiver UF',1000072,801010,'Y',21,360,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:35','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','fc87c4b5-1c3a-46ba-bda1-f4d11f61b75a','Y',340,2)
;

-- 16/05/2016 11h54min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800504,'DIFAL Share Rate (%)',1000072,801011,'Y',21,370,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:35','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','85bcda57-5738-40ad-ae9e-4a542f5a95ef','Y',350,2)
;

-- 16/05/2016 11h54min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800505,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',1000072,801012,'Y',21,380,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','8e9d3389-6d65-478e-80b2-fa691b955c68','Y',360,2)
;

-- 16/05/2016 11h54min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800506,'DIFAL Tax Amt in Receiver UF',1000072,801013,'Y',21,390,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','18915a14-df05-44bc-b12c-c4a1aa6fbede','Y',370,2)
;

-- 16/05/2016 11h54min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (800507,'DIFAL Tax Amt in Sender UF',1000072,801014,'Y',21,400,'N','N','N','N',0,0,'Y',TO_DATE('2016-05-16 11:54:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2016-05-16 11:54:37','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','38026b98-a0f1-4d1f-b37a-dce033bd7c8d','Y',380,2)
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET SeqNo=350, AD_FieldGroup_ID=800004,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800502
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, XPosition=4,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800505
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET SeqNo=370,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800503
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380, XPosition=4,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800504
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET SeqNo=390,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800507
;

-- 16/05/2016 11h55min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400, XPosition=4,Updated=TO_DATE('2016-05-16 11:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800506
;

SELECT lbr_register_migration_script('201605161211-DIFAL-Detail_ICMS_Fields.sql') FROM dual;
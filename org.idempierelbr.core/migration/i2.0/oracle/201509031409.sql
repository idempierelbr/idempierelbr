SET SQLBLANKLINES ON
SET DEFINE OFF

-- Sep 3, 2015 1:57:28 PM BRT
-- Issue #54 - Data de entrega na importação da NF-e
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_OwnDateDelivered',800135,'Declarant Date Delivered','Date Delivered from the point of view of the declarant','Declarant Date Delivered','f802e99f-1ff7-4527-a65f-39a969b1e0d2',TO_DATE('2015-09-03 13:57:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-09-03 13:57:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 3, 2015 2:02:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800602,'N','N','N',0,'N',7,'N','N','N','Y','ddb966f6-2ace-4a3e-b213-bee37b32afac','Y','LBR_OwnDateDelivered','Date Delivered from the point of view of the declarant','Declarant Date Delivered','Y',TO_DATE('2015-09-03 14:02:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-09-03 14:02:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800135,15,1000033,0,0,'LBR')
;

-- Sep 3, 2015 2:02:10 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_OwnDateDelivered DATE DEFAULT NULL 
;

-- Sep 3, 2015 2:02:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000068,7,'N','N',470,'Y',800155,'N','LBR','Date Delivered from the point of view of the declarant','Declarant Date Delivered','41f1b5c3-4e96-433d-bed2-ccff5fe9afe4','Y','N',0,0,TO_DATE('2015-09-03 14:02:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',440,0,2,800602,0,TO_DATE('2015-09-03 14:02:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 3, 2015 2:03:17 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=800155
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001203
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001204
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001205
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001206
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001207
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001220
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001221
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001208
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001209
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001210
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001211
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001212
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001213
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001629
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001630
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001397
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001462
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001463
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1001507
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=800059
;

-- Sep 3, 2015 2:03:18 PM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=800060
;

-- Sep 3, 2015 2:05:33 PM BRT
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType,Created,Updated) VALUES (800006,'C','N','Permite impedir a alteração da data de entrada da mercadoria na janela Gerar Nota Fiscal a partir do XML','8a971895-7a7d-4285-a0be-daf34fbc58cf',0,0,'Y',0,'LBR_READONLYDELIVERYDATE_WHEN_GEN_NF_FROM_XML',0,'LBR',TO_DATE('2015-09-03 14:05:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-09-03 14:05:32','YYYY-MM-DD HH24:MI:SS'))
;

-- 03/09/2015 14h34min46s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsDocIssuedByOrg@=N',Updated=TO_DATE('2015-09-03 14:34:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800155
;

SELECT lbr_register_migration_script('201509031409.sql') FROM dual
;

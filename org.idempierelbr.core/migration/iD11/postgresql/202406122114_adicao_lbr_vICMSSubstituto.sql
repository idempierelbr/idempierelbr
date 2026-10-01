-- 
SELECT register_migration_script('202406122114_adicao_lbr_vICMSSubstituto.sql') FROM dual;

-- 12 de jun. de 2024 21:14:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800482,0,0,'Y',TO_TIMESTAMP('2024-06-12 21:14:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:14:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_vICMSSubstituto','ICMS Substituto','Valor do ICMS proprio do Substituto','ICMS Substituto','LBR','d82387b2-4c86-4755-9611-292296abfca1')
;

-- 12 de jun. de 2024 21:15:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801715,0,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Table','1b1f7f5a-ec45-4622-ad7c-0ef023f023f9'),'LBR_vICMSSubstituto',21,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2024-06-12 21:15:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:15:40','YYYY-MM-DD HH24:MI:SS'),10,800482,'Y','N','LBR','N','N','N','Y','fb9c9c72-784b-4c2d-b05e-92d62031cda9','Y',0,'N','N','N','N')
;

-- 12 de jun. de 2024 21:15:45 BRT
ALTER TABLE LBR_DocLine_ICMS ADD COLUMN LBR_vICMSSubstituto NUMERIC DEFAULT NULL 
;

-- 12 de jun. de 2024 21:16:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801644,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant',toRecordId('AD_Tab','81410fdd-0c0b-4aa6-b855-05c73dd3ad9d'),800563,'Y',5,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:16:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:16:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7fac1b17-8c54-4b8d-baa5-8288d26549c4','Y',380,2)
;

-- 12 de jun. de 2024 21:16:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801645,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','81410fdd-0c0b-4aa6-b855-05c73dd3ad9d'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:16:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:16:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','293c99b4-0b18-48f0-b30c-2c5e785698e2','Y',390,2)
;

-- 12 de jun. de 2024 21:16:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801646,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','81410fdd-0c0b-4aa6-b855-05c73dd3ad9d'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:16:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:16:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8acaaf4a-c3a3-4267-91a7-b85b306cf0a4','Y',400,2,2)
;

-- 12 de jun. de 2024 21:16:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801647,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','81410fdd-0c0b-4aa6-b855-05c73dd3ad9d'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:16:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:16:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5e0eb17b-2e5d-42f9-a526-1e08e7e6698a','Y',410,2,2)
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=340, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801645
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=350, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800490
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800493
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800491
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800492
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800495
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800494
;

-- 12 de jun. de 2024 21:18:05 BRT
UPDATE AD_Field SET Name='Declarant ICMS Tax Status', Description='ICMS tax status from the point of view of the declarant', Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801644
;

-- 12 de jun. de 2024 21:19:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801648,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),800563,'Y',5,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','526ea723-7c01-4b51-9d7f-f09e18e3170d','Y',320,2)
;

-- 12 de jun. de 2024 21:19:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801649,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801009,'Y',21,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8288963c-788b-4961-b11e-c7e4879b2cc1','Y',330,2)
;

-- 12 de jun. de 2024 21:19:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801650,'DIFAL Internal Tax Rate in Receiver UF',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801010,'Y',21,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a6d78c04-4be8-4ec6-bda1-edb82faa90da','Y',340,2)
;

-- 12 de jun. de 2024 21:19:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801651,'DIFAL Share Rate (%)',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801011,'Y',21,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d6c894c0-2d96-4f6c-b3f1-4372c1df5bb1','Y',350,2)
;

-- 12 de jun. de 2024 21:19:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801652,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801012,'Y',21,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b251736e-b078-4b72-a26c-5f1a2ef0fd0b','Y',360,2)
;

-- 12 de jun. de 2024 21:19:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801653,'DIFAL Tax Amt in Receiver UF',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801013,'Y',21,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4aa6cf47-1fdb-4364-ab4b-f1b38bb31b38','Y',370,2)
;

-- 12 de jun. de 2024 21:19:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801654,'DIFAL Tax Amt in Sender UF',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801014,'Y',21,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','09632192-3fe9-4857-908d-26c68bf964e2','Y',380,2)
;

-- 12 de jun. de 2024 21:19:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801655,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','effc2547-01e3-4b2d-a66b-29fa63e1b187','Y',390,2)
;

-- 12 de jun. de 2024 21:19:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801656,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9394c93d-4a05-412d-98c3-245dec457185','Y',400,2,2)
;

-- 12 de jun. de 2024 21:19:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801657,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','7b8ae10c-2f0a-4496-a236-bb882ece4a96'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:19:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:19:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d107582e-b16b-4c36-9611-cdbcc2ce9eb3','Y',410,2,2)
;

-- 12 de jun. de 2024 21:20:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801658,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant',toRecordId('AD_Tab','f6271fb2-a832-42f7-a9e8-0378bac86a84'),800563,'Y',5,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:20:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:20:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','da0ddf35-7b45-477d-be4d-7a419b0d948b','Y',380,2)
;

-- 12 de jun. de 2024 21:20:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801659,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','f6271fb2-a832-42f7-a9e8-0378bac86a84'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2ed67544-ce05-4841-8ade-25bce21b91a9','Y',390,2)
;

-- 12 de jun. de 2024 21:20:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801660,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','f6271fb2-a832-42f7-a9e8-0378bac86a84'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7f463763-bb4a-4b31-9043-795c124df8d2','Y',400,2,2)
;

-- 12 de jun. de 2024 21:20:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801661,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','f6271fb2-a832-42f7-a9e8-0378bac86a84'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:20:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8d780c45-73a0-40ea-b7c3-8aa0f5d98d17','Y',410,2,2)
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=340, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801659
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=350, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800496
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800499
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800497
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800498
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800501
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800500
;

-- 12 de jun. de 2024 21:21:36 BRT
UPDATE AD_Field SET Name='Declarant ICMS Tax Status', Description='ICMS tax status from the point of view of the declarant', Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801658
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=350, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801655
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801649
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801650
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801651
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801652
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801653
;

-- 12 de jun. de 2024 21:22:45 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801654
;

-- 12 de jun. de 2024 21:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801662,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),800563,'Y',5,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a976a3dd-3ef2-487c-bb7d-ed145394ee41','Y',320,2)
;

-- 12 de jun. de 2024 21:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801663,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801009,'Y',21,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ec98e568-706c-46dc-9fa7-868f933b7587','Y',330,2)
;

-- 12 de jun. de 2024 21:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801664,'DIFAL Internal Tax Rate in Receiver UF',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801010,'Y',21,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f779a6c4-c443-4b5a-9094-43ce135bcb16','Y',340,2)
;

-- 12 de jun. de 2024 21:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801665,'DIFAL Share Rate (%)',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801011,'Y',21,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f93bea17-02b6-4303-bc54-3522488cf9bc','Y',350,2)
;

-- 12 de jun. de 2024 21:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801666,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801012,'Y',21,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9b310201-84cb-485a-ad15-0d04d76957d9','Y',360,2)
;

-- 12 de jun. de 2024 21:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801667,'DIFAL Tax Amt in Receiver UF',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801013,'Y',21,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cfc9e966-6bbb-4569-b8ed-2884d8cff064','Y',370,2)
;

-- 12 de jun. de 2024 21:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801668,'DIFAL Tax Amt in Sender UF',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801014,'Y',21,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0ac60478-4b91-41bb-aeda-05864ee35838','Y',380,2)
;

-- 12 de jun. de 2024 21:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801669,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','62871556-7b9d-4633-a0ce-17c3cb3c282e','Y',390,2)
;

-- 12 de jun. de 2024 21:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801670,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','41556555-31f8-4120-ab7d-a44127e00357','Y',400,2,2)
;

-- 12 de jun. de 2024 21:23:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801671,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','ac964f04-8ef0-4418-a7df-a71a847bf232'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:23:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','aed801c7-3028-4330-b072-3416ec8e2619','Y',410,2,2)
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=350, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801669
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801663
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801664
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801665
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801666
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801667
;

-- 12 de jun. de 2024 21:23:52 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801668
;

-- 12 de jun. de 2024 21:24:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801672,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','3a741215-468f-40e5-8372-590bb139d1bc'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','fb5f6fb7-334c-4462-ada2-c24bc8f91b7c','Y',390,2)
;

-- 12 de jun. de 2024 21:24:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801673,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','3a741215-468f-40e5-8372-590bb139d1bc'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','27e96bc5-a562-4bc9-b0fa-a2def0622671','Y',400,2,2)
;

-- 12 de jun. de 2024 21:24:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801674,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','3a741215-468f-40e5-8372-590bb139d1bc'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:24:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ce7c0a6f-0fe6-4e3f-bb9f-43bcfe83da69','Y',410,2,2)
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='ICMS-ST Withheld Amount', Description='Identifies the ICMS-ST Withheld Amount', Help=NULL, IsDisplayed='Y', SeqNo=320, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b49c599d-2801-4e17-bb16-b5db6a77c411'
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='ICMS-ST Amount in Receiver UF', Description='Identifies the ICMS-ST Amount in Receiver UF', Help=NULL, IsDisplayed='Y', SeqNo=330, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='effd2bce-86fb-4779-aab7-7ed8825b69b4'
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=340, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801672
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='ICMS-ST Withheld Base Amount', Description='Identifies the ICMS-ST Withheld Base Amount', Help=NULL, SeqNo=350, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='9439d9f0-10c3-4902-a800-7fa8ae05780c'
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800502
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800505
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800503
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800504
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800507
;

-- 12 de jun. de 2024 21:25:46 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800506
;

-- 12 de jun. de 2024 21:26:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801675,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),800563,'Y',5,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b9f2fd0d-9540-47d2-86c6-7b968b2873ca','Y',320,2)
;

-- 12 de jun. de 2024 21:26:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801676,'DIFAL Tax Rate of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801009,'Y',21,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ee288d31-b421-48d0-abe2-42fa495d24e4','Y',330,2)
;

-- 12 de jun. de 2024 21:26:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801677,'DIFAL Internal Tax Rate in Receiver UF',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801010,'Y',21,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','13750e2c-9b9e-4078-9c6e-ae808c01435a','Y',340,2)
;

-- 12 de jun. de 2024 21:26:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801678,'DIFAL Share Rate (%)',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801011,'Y',21,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4ae5566d-6132-4bb6-a2f7-ba800c7956db','Y',350,2)
;

-- 12 de jun. de 2024 21:26:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801679,'DIFAL Tax Amt of "Fundo de Combate a Pobreza"',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801012,'Y',21,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dd184176-cd13-484f-9e33-3a3b234aafa7','Y',360,2)
;

-- 12 de jun. de 2024 21:26:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801680,'DIFAL Tax Amt in Receiver UF',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801013,'Y',21,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b72da3ee-6291-4da9-b54b-5c8fa549ecce','Y',370,2)
;

-- 12 de jun. de 2024 21:26:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801681,'DIFAL Tax Amt in Sender UF',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801014,'Y',21,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2ad79df0-5fdc-42ca-b9a3-65202aecddea','Y',380,2)
;

-- 12 de jun. de 2024 21:26:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801682,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),801715,'Y',21,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a2a841d5-ca74-4c6b-81e5-0b936694f63c','Y',390,2)
;

-- 12 de jun. de 2024 21:26:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801683,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),toRecordId('AD_Column','50881ab5-0ae6-4ab3-8d86-9aabaa69ea63'),'Y',1,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','78d9ce6e-7346-46b2-86d1-071806048abf','Y',400,2,2)
;

-- 12 de jun. de 2024 21:26:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801684,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',toRecordId('AD_Tab','36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'),toRecordId('AD_Column','8f79a7e2-5a52-40f4-886e-1a05cab341a2'),'Y',1,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:26:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:26:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','47e09a53-2345-46ff-a908-0138f897de17','Y',410,2,2)
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='ICMS Substituto', Description='Valor do ICMS proprio do Substituto', Help=NULL, IsDisplayed='Y', SeqNo=350, XPosition=4, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801682
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Tax Rate of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801676
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Internal Tax Rate in Receiver UF', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801677
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Share Rate (%)', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801678
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt of "Fundo de Combate a Pobreza"', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801679
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Receiver UF', Description=NULL, Help=NULL, SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801680
;

-- 12 de jun. de 2024 21:27:16 BRT
UPDATE AD_Field SET Name='DIFAL Tax Amt in Sender UF', Description=NULL, Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2024-06-12 21:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801681
;

-- 12 de jun. de 2024 21:28:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801685,'ICMS Substituto','Valor do ICMS proprio do Substituto',toRecordId('AD_Tab','be00ae65-0d8d-43e9-9ca8-a06d6655a4e0'),801715,'Y',21,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 21:28:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-12 21:28:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2271d227-dd69-4885-8b50-35f5e782be42','Y',320,2)
;


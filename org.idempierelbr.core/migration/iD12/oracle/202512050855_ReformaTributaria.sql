-- 
SELECT register_migration_script('202512050855_ReformaTributaria.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 5 de dez. de 2025 08:55:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801858,0,'CST IBS / CBS',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_CST_IBSCBS_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-12-05 08:55:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 08:55:03','YYYY-MM-DD HH24:MI:SS'),10,800486,'Y','N','LBR','N','N','N','Y','8e0abde8-f2b6-4a5d-846a-296b099b4336','Y',0,'N','N','N','N','N')
;

-- 5 de dez. de 2025 08:55:05 BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTIBSCBS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-12-05 08:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801858
;

-- 5 de dez. de 2025 08:55:05 BRT
ALTER TABLE LBR_TaxLine ADD LBR_CST_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- 5 de dez. de 2025 08:55:05 BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRCSTIBSCBS_LBRTaxLine FOREIGN KEY (LBR_CST_IBSCBS_ID) REFERENCES lbr_cst_ibscbs(lbr_cst_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- 5 de dez. de 2025 08:55:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801859,0,'ClassTrib IBS / CBS',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_ClassTrib_IBSCBS_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-12-05 08:55:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 08:55:34','YYYY-MM-DD HH24:MI:SS'),10,800503,'Y','N','LBR','N','N','N','Y','d1600ab2-b6f2-41bd-894f-1ce094d45da8','Y',0,'N','N','N','N','N')
;

-- 5 de dez. de 2025 08:55:37 BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribIBSCBS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-12-05 08:55:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801859
;

-- 5 de dez. de 2025 08:55:37 BRT
ALTER TABLE LBR_TaxLine ADD LBR_ClassTrib_IBSCBS_ID NUMBER(10) DEFAULT NULL 
;

-- 5 de dez. de 2025 08:55:37 BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRClassTribIBSCBS_LBRTaxLine FOREIGN KEY (LBR_ClassTrib_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- 5 de dez. de 2025 09:04:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801860,0,'Tax Deferral Rate (%)','Identifies the Tax Deferral Rate (%)',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_TaxDeferralRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:04:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:04:43','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','56599cf2-6d2d-4b7a-aa5e-b9760e51db70'),'Y','N','LBR','N','N','N','Y','1f0e8a24-e1e7-48ea-a167-6765e3427d76','Y',0,'N','N','N','N','N')
;

-- 5 de dez. de 2025 09:04:45 BRT
ALTER TABLE LBR_TaxLine ADD LBR_TaxDeferralRate NUMBER DEFAULT NULL 
;

-- 5 de dez. de 2025 09:06:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800545,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:06:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:06:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TaxRedRate','Tax Red. Rate','Indicates the Tax Red. Rate','Tax Red. Rate','LBR','520e02b2-faa1-40fa-abb6-52b7d79e027a')
;

-- 5 de dez. de 2025 09:06:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801861,0,'Tax Red. Rate','Indicates the Tax Red. Rate',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_TaxRedRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:06:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:06:40','YYYY-MM-DD HH24:MI:SS'),10,800545,'Y','N','LBR','N','N','N','Y','389e5c66-883b-41df-8296-b7bb823b70bc','Y',0,'N','N','N','N')
;

-- 5 de dez. de 2025 09:06:42 BRT
ALTER TABLE LBR_TaxLine ADD LBR_TaxRedRate NUMBER DEFAULT NULL 
;

-- 5 de dez. de 2025 09:07:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800546,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:07:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:07:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TaxRedEfetRate','Tax Red. Efet. Rate','Indicates the Tax Red. Efet. Rate','Tax Red. Efet. Rate','LBR','a1361e6f-be1d-4099-9be9-1608d37f0a10')
;

-- 5 de dez. de 2025 09:07:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801862,0,'Tax Red. Efet. Rate','Indicates the Tax Red. Efet. Rate',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_TaxRedEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:07:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:07:53','YYYY-MM-DD HH24:MI:SS'),10,800546,'Y','N','LBR','N','N','N','Y','0c98e612-1112-4c1e-a5b1-0d592a1b7146','Y',0,'N','N','N','N')
;

-- 5 de dez. de 2025 09:07:54 BRT
ALTER TABLE LBR_TaxLine ADD LBR_TaxRedEfetRate NUMBER DEFAULT NULL 
;

-- 5 de dez. de 2025 09:08:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801863,0,'CST IS',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_CST_IS_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:08:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:08:12','YYYY-MM-DD HH24:MI:SS'),10,800536,'Y','N','LBR','N','N','N','Y','3ebed091-4710-48ae-8ad9-05c0ba1e1ac9','Y',0,'N','N','N','N','N')
;

-- 5 de dez. de 2025 09:08:14 BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTIS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-12-05 09:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801863
;

-- 5 de dez. de 2025 09:08:14 BRT
ALTER TABLE LBR_TaxLine ADD LBR_CST_IS_ID NUMBER(10) DEFAULT NULL 
;

-- 5 de dez. de 2025 09:08:14 BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRCSTIS_LBRTaxLine FOREIGN KEY (LBR_CST_IS_ID) REFERENCES lbr_cst_is(lbr_cst_is_id) DEFERRABLE INITIALLY DEFERRED
;

-- 5 de dez. de 2025 09:08:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801864,0,'ClassTrib IS',toRecordId('AD_Table','b2855b7d-025e-4a0f-a8f4-14f70a64c11d'),'LBR_ClassTrib_IS_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-12-05 09:08:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 09:08:29','YYYY-MM-DD HH24:MI:SS'),10,800538,'Y','N','LBR','N','N','N','Y','8fc29959-5307-4d5a-9e42-55bee385875c','Y',0,'N','N','N','N','N')
;

-- 5 de dez. de 2025 09:08:31 BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribIS_LBRTaxLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-12-05 09:08:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801864
;

-- 5 de dez. de 2025 09:08:31 BRT
ALTER TABLE LBR_TaxLine ADD LBR_ClassTrib_IS_ID NUMBER(10) DEFAULT NULL 
;

-- 5 de dez. de 2025 09:08:31 BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRClassTribIS_LBRTaxLine FOREIGN KEY (LBR_ClassTrib_IS_ID) REFERENCES lbr_classtrib_is(lbr_classtrib_is_id) DEFERRABLE INITIALLY DEFERRED
;

-- 5 de dez. de 2025 10:29:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802068,'CST IBS / CBS',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801858,'Y',22,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d0639eb5-b4e0-48b9-937d-701852eb9b0e','Y',80,2)
;

-- 5 de dez. de 2025 10:29:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802069,'ClassTrib IBS / CBS',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801859,'Y',22,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','17429cad-4c59-4302-be55-220cab7ae1e5','Y',90,2)
;

-- 5 de dez. de 2025 10:29:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802070,'Tax Deferral Rate (%)','Identifies the Tax Deferral Rate (%)',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801860,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2c0ade54-f0b4-4c37-8e5e-56980b27664d','Y',100,2)
;

-- 5 de dez. de 2025 10:29:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802071,'Tax Red. Rate','Indicates the Tax Red. Rate',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801861,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ef1e1fb9-4036-4d30-84ce-ef7061b91097','Y',110,2)
;

-- 5 de dez. de 2025 10:29:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802072,'Tax Red. Efet. Rate','Indicates the Tax Red. Efet. Rate',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801862,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6fb959fa-3113-48a0-8a7c-2ebad2a1e863','Y',120,2)
;

-- 5 de dez. de 2025 10:29:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802073,'CST IS',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801863,'Y',22,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f5c3f996-9cd9-49af-b814-184cf3ef00d3','Y',130,2)
;

-- 5 de dez. de 2025 10:29:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802074,'ClassTrib IS',toRecordId('AD_Tab','ac17de59-790f-4e46-9df9-b84de9b6b3c9'),801864,'Y',22,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-12-05 10:29:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-12-05 10:29:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c5620897-c917-4cdd-86e0-0b504f68d28f','Y',140,2)
;

-- 5 de dez. de 2025 10:30:08 BRT
UPDATE AD_Field SET Name='ClassTrib IBS / CBS', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=170, XPosition=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-12-05 10:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802069
;

-- 5 de dez. de 2025 10:30:08 BRT
UPDATE AD_Field SET Name='Tax Red. Rate', Description='Indicates the Tax Red. Rate', Help=NULL, IsDisplayed='Y', SeqNo=190, XPosition=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-12-05 10:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802071
;

-- 5 de dez. de 2025 10:30:08 BRT
UPDATE AD_Field SET Name='ClassTrib IS', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=220, XPosition=5, Placeholder=NULL,Updated=TO_TIMESTAMP('2025-12-05 10:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802074
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802068
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802069
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=40,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802073
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=50,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802074
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=60,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='0b901f0d-8936-49d7-b93d-10b20e7976cb'
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=70,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='cccf440a-395c-47db-a912-d7dbfa7888a0'
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=80,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b459cb9b-199c-4671-8a3e-9711e751a22f'
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=90,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802070
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=100,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802071
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=110,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802072
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=120,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='ec2b8b91-76a0-4de6-b7c4-1eb0fdd3a4fc'
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=130,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='92f86a77-4665-4be7-a1eb-e5ec82fa17f4'
;

-- 5 de dez. de 2025 10:32:30 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=140,Updated=TO_TIMESTAMP('2025-12-05 10:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='4f8577de-ee1d-4153-9d71-69c30ebfa664'
;

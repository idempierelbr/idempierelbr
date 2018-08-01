-- ANP Product Description
-- 01/08/2018 13h54min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800452,0,0,'Y',TO_TIMESTAMP('2018-08-01 13:54:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-08-01 13:54:50','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DescANP','Descrição do Produto na ANP','Descrição do Produto na ANP','LBR','fc9e5335-438d-4cf2-a3f4-d052361cc3d9')
;

-- 01/08/2018 13h55min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801672,0,'Descrição do Produto na ANP',800008,'LBR_DescANP',95,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-08-01 13:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-08-01 13:55:37','YYYY-MM-DD HH24:MI:SS'),0,800452,'Y','N','LBR','N','N','N','Y','80d82af7-65f1-4cce-ae93-934761489ea0','Y',0,'N','N')
;

-- 01/08/2018 13h55min42s BRT
ALTER TABLE LBR_NotaFiscalLineComb ADD COLUMN LBR_DescANP VARCHAR(95) DEFAULT NULL 
;

-- 01/08/2018 13h56min21s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801514,'Descrição do Produto na ANP',800006,801672,'Y',95,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-08-01 13:56:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-08-01 13:56:21','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0ba0112b-5da0-4ffc-ae1f-182553258a7a','Y',100,5)
;

-- 01/08/2018 13h57min12s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-08-01 13:57:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801514
;

-- 01/08/2018 13h57min13s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-08-01 13:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800100
;

-- 01/08/2018 13h57min13s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-08-01 13:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800101
;

-- 01/08/2018 13h57min13s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-08-01 13:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800099
;

-- 01/08/2018 13h58min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801673,0,'Descrição do Produto na ANP',208,'LBR_DescANP',95,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-08-01 13:58:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-08-01 13:58:05','YYYY-MM-DD HH24:MI:SS'),0,800452,'Y','N','LBR','N','N','N','Y','af71d1c2-5de0-4262-b509-cf863af7a284','Y',0,'N','N','N')
;

-- 01/08/2018 13h58min10s BRT
ALTER TABLE M_Product ADD COLUMN LBR_DescANP VARCHAR(95) DEFAULT NULL 
;

-- 01/08/2018 13h58min44s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801515,'Descrição do Produto na ANP',180,801673,'Y',95,630,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-08-01 13:58:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-08-01 13:58:44','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8d2fd646-94f9-471b-81eb-7a9a45235906','Y',740,5)
;

SELECT lbr_register_migration_script('201808011401.sql') FROM dual;

-- 
SELECT register_migration_script('202607251903_ColunaNFe.sql') FROM dual;

-- 25 de jul. de 2026 19:03:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802106,0,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '5673b520-b8d0-4380-a24d-c35133ec7abe'),'LBR_NotaFiscal_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-07-25 19:03:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 19:03:43','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '9dcbc482-1130-41e7-ad99-152bb67e2db4'),'Y','N','LBR','N','N','N','Y','019f9b4e-3ed6-784d-a6a6-bee61dfcdb7d','Y',0,'N','N','C','N','N')
;

-- 25 de jul. de 2026 19:03:45 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRBoletoMovement', FKConstraintType='C',Updated=TO_TIMESTAMP('2026-07-25 19:03:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802106
;

-- 25 de jul. de 2026 19:03:45 BRT
ALTER TABLE LBR_BoletoMovement ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 25 de jul. de 2026 19:03:45 BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRNotaFiscal_LBRBoletoMovement FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 25 de jul. de 2026 19:04:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802228,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = '695a9aa3-a33a-4bce-97e2-5dc5a8c9f16a'),802106,'Y',22,570,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-25 19:04:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 19:04:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019f9b4e-ac93-7395-babf-ad1d53e5e7a9','Y',570,2)
;

-- 25 de jul. de 2026 19:04:26 BRT
UPDATE AD_Field SET Name='Boleto Movement', Description=NULL, Help=NULL, SeqNo=0, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-25 19:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='170dd0b1-7b00-4c00-be79-ed92b4980a4d'
;


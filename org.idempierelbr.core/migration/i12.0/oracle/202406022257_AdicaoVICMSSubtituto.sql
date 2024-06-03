-- 
SELECT register_migration_script('202406022257_AdicaoVICMSSubtituto.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 2 de jun. de 2024 22:57:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800479,0,0,'Y',TO_TIMESTAMP('2024-06-02 22:57:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-02 22:57:36','YYYY-MM-DD HH24:MI:SS'),10,'lbr_vICMSSubstituto','Substitute''s own ICMS value','Substitute''s own ICMS value','LBR','8ed52683-f17a-4a6a-920f-484e89cf0cf1')
;

-- 2 de jun. de 2024 22:59:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801708,0,'Substitute''s own ICMS value',toRecordId('AD_Table','1b1f7f5a-ec45-4622-ad7c-0ef023f023f9'),'lbr_vICMSSubstituto',21,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2024-06-02 22:59:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2024-06-02 22:59:16','YYYY-MM-DD HH24:MI:SS'),10,800479,'Y','N','LBR','N','N','N','Y','c38b941a-7315-4104-a194-b6944e6d4f4a','Y',0,'N','N','N','N')
;

-- 2 de jun. de 2024 22:59:24 BRT
ALTER TABLE LBR_DocLine_ICMS ADD lbr_vICMSSubstituto NUMBER DEFAULT NULL 
;


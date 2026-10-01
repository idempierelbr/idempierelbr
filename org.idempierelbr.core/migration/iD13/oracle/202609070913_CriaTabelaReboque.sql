-- Cria a tabela LBR_MDFeReboque
SELECT register_migration_script('202609070913_CriaTabelaReboque.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de set. de 2026 09:13:00 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800096,'LBR_MDFeReboque','LBR_MDFeReboque',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:13:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:13:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8db-7a01-b916-27726cc64b31','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 09:13:13 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeReboque',1000000,'N','N','Table LBR_MDFeReboque','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 09:13:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:13:13','YYYY-MM-DD HH24:MI:SS'),10,800709,'Y',1000000,1,200000,'01a079ef-a8db-72d6-8ea4-cbb0329d1031')
;

-- 7 de set. de 2026 09:13:26 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802417,0,'Tenant',800096,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:13:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:13:26','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7af6-8185-63da3ee70bc6','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:13:39 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802418,0,'Organization',800096,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:13:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:13:39','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7d8a-bdc6-50cde62b91e7','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:13:52 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802419,0,'Created',800096,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:13:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:13:52','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7f08-8037-546ddb63aadd','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:14:05 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802420,0,'Created By',800096,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:14:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:14:05','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7a65-a4c2-2e4082bf3f14','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:14:18 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802421,0,'Updated',800096,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:14:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:14:18','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7913-9dc5-7d013547cf38','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:14:31 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802422,0,'Updated By',800096,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:14:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:14:31','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7650-8a28-15460c42ebf6','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:14:44 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802423,0,'Active',800096,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:14:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:14:44','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7234-bb76-46c5b7c65e77','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:14:57 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800890,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:14:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:14:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeReboque_ID','LBR_MDFeReboque','LBR_MDFeReboque','LBR','01a079ef-a8db-7655-a05d-c0c193a06fe6')
;

-- 7 de set. de 2026 09:15:10 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802424,0,'LBR_MDFeReboque',800096,'LBR_MDFeReboque_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:15:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:15:10','YYYY-MM-DD HH24:MI:SS'),10,800890,'N','N','LBR','N','N','N','Y','01a079ef-a8db-760b-a09b-b7dc5b63c522','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:15:23 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800891,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:15:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:15:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeReboque_UU','LBR_MDFeReboque_UU','LBR_MDFeReboque_UU','LBR','01a079ef-a8db-7b04-ad89-0d2ccbf761e1')
;

-- 7 de set. de 2026 09:15:36 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802425,0,'LBR_MDFeReboque_UU',800096,'LBR_MDFeReboque_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:15:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:15:36','YYYY-MM-DD HH24:MI:SS'),10,800891,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-747a-b9cd-946529240540','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:15:49 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800183,'01a079ef-a8db-7971-962c-a2f987ab3bfa',TO_TIMESTAMP('2026-09-07 09:15:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeReboque_UU_idx',TO_TIMESTAMP('2026-09-07 09:15:49','YYYY-MM-DD HH24:MI:SS'),10,800096,'Y','Y','N','N')
;

-- 7 de set. de 2026 09:16:02 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800216,'01a079ef-a8db-753c-a9e4-6fa2175a59c9',TO_TIMESTAMP('2026-09-07 09:16:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 09:16:02','YYYY-MM-DD HH24:MI:SS'),10,802425,800183,10)
;

-- 7 de set. de 2026 09:16:15 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802426,0,'Manifesto Eletrônico',800096,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:16:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:16:15','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7845-b903-578c72080bcc','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:16:28 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802427,0,'Line No',800096,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:16:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:16:28','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-791b-ad0f-5149f00fdee4','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:16:41 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802428,0,'LBR_Placa',800096,'LBR_Placa',7,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:16:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:16:41','YYYY-MM-DD HH24:MI:SS'),10,800834,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7b1e-8c56-0b67cf41e0da','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:16:54 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802429,0,'LBR_Renavam',800096,'LBR_Renavam',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:16:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:16:54','YYYY-MM-DD HH24:MI:SS'),10,800835,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7610-a298-ed1bee583546','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:17:07 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802430,0,'LBR_cInt',800096,'LBR_cInt',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:17:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:17:07','YYYY-MM-DD HH24:MI:SS'),10,800836,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7a88-a97f-be21ebe6d50d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:17:20 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802431,0,'LBR_Tara',800096,'LBR_Tara',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:17:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:17:20','YYYY-MM-DD HH24:MI:SS'),10,800837,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7fa4-b705-4a7d66db85ab','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:17:33 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802432,0,'LBR_CapKG',800096,'LBR_CapKG',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:17:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:17:33','YYYY-MM-DD HH24:MI:SS'),10,800838,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-73ea-9e3f-8691e964b7a5','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:17:46 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802433,0,'LBR_CapM3',800096,'LBR_CapM3',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:17:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:17:46','YYYY-MM-DD HH24:MI:SS'),10,800839,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-76e9-901f-8b9233518073','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:17:59 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802434,0,'LBR_tpCar',800096,'LBR_tpCar',2,'N','N','N','N','N',0,'N',17,800106,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:17:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:17:59','YYYY-MM-DD HH24:MI:SS'),10,800841,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7e32-92d6-925bb5054dab','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:18:12 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802435,0,'LBR_VeicUF_ID',800096,'LBR_VeicUF_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:18:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:18:12','YYYY-MM-DD HH24:MI:SS'),10,800842,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7e52-adaa-83577f94be6f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:18:25 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802436,0,'LBR_IsOwnerNotEmitter',800096,'LBR_IsOwnerNotEmitter',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:18:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:18:25','YYYY-MM-DD HH24:MI:SS'),10,800843,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7b26-892e-9fbe4e0564ee','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:18:38 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802437,0,'LBR_PropCNPJ',800096,'LBR_PropCNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:18:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:18:38','YYYY-MM-DD HH24:MI:SS'),10,800844,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7111-8b9d-40bd64fc0dc4','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:18:51 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802438,0,'LBR_PropCPF',800096,'LBR_PropCPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:18:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:18:51','YYYY-MM-DD HH24:MI:SS'),10,800845,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-77af-a15a-a2d1ad0279e5','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:19:04 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802439,0,'LBR_PropRNTRC',800096,'LBR_PropRNTRC',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:19:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:19:04','YYYY-MM-DD HH24:MI:SS'),10,800846,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7e4d-8b46-192da4eb6ede','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:19:17 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802440,0,'LBR_PropName',800096,'LBR_PropName',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:19:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:19:17','YYYY-MM-DD HH24:MI:SS'),10,800847,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-777e-a1e5-e852ce07def0','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:19:30 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802441,0,'LBR_PropIE',800096,'LBR_PropIE',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:19:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:19:30','YYYY-MM-DD HH24:MI:SS'),10,800848,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7eee-a336-f8278f2e3b5c','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:19:43 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802442,0,'LBR_PropUF_ID',800096,'LBR_PropUF_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:19:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:19:43','YYYY-MM-DD HH24:MI:SS'),10,800849,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7487-89b4-1c192f189da8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:19:56 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802443,0,'LBR_tpProp',800096,'LBR_tpProp',1,'N','N','N','N','N',0,'N',17,800107,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:19:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:19:56','YYYY-MM-DD HH24:MI:SS'),10,800850,'Y','N','LBR','N','N','N','Y','01a079ef-a8dc-7acf-8466-e73de647d918','Y',0,'N','N','N','N')
;

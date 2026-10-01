-- Cria a tabela LBR_MDFeCondutor
SELECT register_migration_script('202609070912_CriaTabelaCondutor.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de set. de 2026 09:08:53 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800095,'LBR_MDFeCondutor','LBR_MDFeCondutor',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:08:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:08:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8da-754e-8df4-05aa2d692c80','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 09:09:06 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeCondutor',1000000,'N','N','Table LBR_MDFeCondutor','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 09:09:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:09:06','YYYY-MM-DD HH24:MI:SS'),10,800708,'Y',1000000,1,200000,'01a079ef-a8da-7e8c-9bd7-8c2c0f4b85b8')
;

-- 7 de set. de 2026 09:09:19 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802404,0,'Tenant',800095,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:09:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:09:19','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8da-75f7-a094-55365789d0a8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:09:32 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802405,0,'Organization',800095,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:09:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:09:32','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7a84-b922-6d096102655d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:09:45 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802406,0,'Created',800095,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:09:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:09:45','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8da-79f0-b785-7cf42305142f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:09:58 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802407,0,'Created By',800095,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:09:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:09:58','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7ae2-bd12-3aa509981abc','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:10:11 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802408,0,'Updated',800095,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:10:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:10:11','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7a41-a5c5-79598f484030','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:10:24 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802409,0,'Updated By',800095,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:10:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:10:24','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8da-785c-8843-bb2f17975b3e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:10:37 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802410,0,'Active',800095,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:10:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:10:37','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-7fcf-a573-f373b8b92139','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:10:50 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800888,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:10:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:10:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeCondutor_ID','LBR_MDFeCondutor','LBR_MDFeCondutor','LBR','01a079ef-a8da-7c6a-b2f2-5d94bcc5b850')
;

-- 7 de set. de 2026 09:11:03 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802411,0,'LBR_MDFeCondutor',800095,'LBR_MDFeCondutor_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:11:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:11:03','YYYY-MM-DD HH24:MI:SS'),10,800888,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7899-a893-bb5c7f5bce85','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:11:16 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800889,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:11:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:11:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeCondutor_UU','LBR_MDFeCondutor_UU','LBR_MDFeCondutor_UU','LBR','01a079ef-a8da-7387-8060-ef5879fc3333')
;

-- 7 de set. de 2026 09:11:29 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802412,0,'LBR_MDFeCondutor_UU',800095,'LBR_MDFeCondutor_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:11:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:11:29','YYYY-MM-DD HH24:MI:SS'),10,800889,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-78f5-a021-e3d00731a347','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:11:42 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800182,'01a079ef-a8da-74d0-8205-317ec8b57952',TO_TIMESTAMP('2026-09-07 09:11:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeCondutor_UU_idx',TO_TIMESTAMP('2026-09-07 09:11:42','YYYY-MM-DD HH24:MI:SS'),10,800095,'Y','Y','N','N')
;

-- 7 de set. de 2026 09:11:55 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800215,'01a079ef-a8da-7491-ac95-cd333c156de7',TO_TIMESTAMP('2026-09-07 09:11:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 09:11:55','YYYY-MM-DD HH24:MI:SS'),10,802412,800182,10)
;

-- 7 de set. de 2026 09:12:08 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802413,0,'Manifesto Eletrônico',800095,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:12:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:12:08','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8db-7188-af92-4945b443bdcf','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:12:21 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802414,0,'Line No',800095,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:12:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:12:21','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7f39-b02d-18e72c0af117','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:12:34 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802415,0,'Name',800095,'Name',60,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:12:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:12:34','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7bf2-be0d-38d159754902','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:12:47 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802416,0,'CPF',800095,'LBR_CPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:12:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:12:47','YYYY-MM-DD HH24:MI:SS'),10,1000005,'Y','N','LBR','N','N','N','Y','01a079ef-a8db-7a25-bed5-663076acf089','Y',0,'N','N','N','N')
;

-- Cria a tabela LBR_MDFePercurso
SELECT register_migration_script('202609070911_CriaTabelaPercurso.sql') FROM dual;

-- 7 de set. de 2026 09:04:59 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800094,'LBR_MDFePercurso','LBR_MDFePercurso',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:04:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:04:59','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8da-7a7d-b2f8-73f0182c9248','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 09:05:12 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFePercurso',1000000,'N','N','Table LBR_MDFePercurso','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 09:05:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:05:12','YYYY-MM-DD HH24:MI:SS'),10,800707,'Y',1000000,1,200000,'01a079ef-a8da-7c16-afc2-4b8436968a69')
;

-- 7 de set. de 2026 09:05:25 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802392,0,'Tenant',800094,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:05:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:05:25','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7336-b261-6358b3e33a50','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:05:38 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802393,0,'Organization',800094,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:05:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:05:38','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7d7d-8b51-6ce3cccdc2ca','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:05:51 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802394,0,'Created',800094,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:05:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:05:51','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8da-77d8-9338-fab66df5509d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:06:04 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802395,0,'Created By',800094,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:06:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:06:04','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8da-70db-8ee7-3a0d53c7eebd','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:06:17 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802396,0,'Updated',800094,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:06:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:06:17','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8da-71fe-8e34-2c412a6116e2','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:06:30 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802397,0,'Updated By',800094,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:06:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:06:30','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7691-b671-30f279001a6b','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:06:43 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802398,0,'Active',800094,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:06:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:06:43','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-7399-a66e-759389106f31','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:06:56 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800886,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:06:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:06:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFePercurso_ID','LBR_MDFePercurso','LBR_MDFePercurso','LBR','01a079ef-a8da-711a-9290-deefd2ecb57a')
;

-- 7 de set. de 2026 09:07:09 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802399,0,'LBR_MDFePercurso',800094,'LBR_MDFePercurso_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:07:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:07:09','YYYY-MM-DD HH24:MI:SS'),10,800886,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7937-8487-21f32c0f4afd','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:07:22 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800887,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:07:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:07:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFePercurso_UU','LBR_MDFePercurso_UU','LBR_MDFePercurso_UU','LBR','01a079ef-a8da-7aaa-af9e-500b84d2a108')
;

-- 7 de set. de 2026 09:07:35 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802400,0,'LBR_MDFePercurso_UU',800094,'LBR_MDFePercurso_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:07:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:07:35','YYYY-MM-DD HH24:MI:SS'),10,800887,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-71f9-a4a2-8b4a8b5c0d85','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:07:48 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800181,'01a079ef-a8da-7e07-923b-e740f6cc2545',TO_TIMESTAMP('2026-09-07 09:07:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFePercurso_UU_idx',TO_TIMESTAMP('2026-09-07 09:07:48','YYYY-MM-DD HH24:MI:SS'),10,800094,'Y','Y','N','N')
;

-- 7 de set. de 2026 09:08:01 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800214,'01a079ef-a8da-70fd-8d2c-8f831d793250',TO_TIMESTAMP('2026-09-07 09:08:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 09:08:01','YYYY-MM-DD HH24:MI:SS'),10,802400,800181,10)
;

-- 7 de set. de 2026 09:08:14 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802401,0,'Manifesto Eletrônico',800094,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:08:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:08:14','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8da-7832-aae2-60f29fa6e829','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:08:27 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802402,0,'Line No',800094,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:08:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:08:27','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-749d-aa4a-880ce8980dff','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:08:40 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802403,0,'Region',800094,'C_Region_ID',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:08:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:08:40','YYYY-MM-DD HH24:MI:SS'),10,209,'Y','N','LBR','N','N','N','Y','01a079ef-a8da-70cc-b68f-de42b310d240','Y',0,'N','N','N','N')
;

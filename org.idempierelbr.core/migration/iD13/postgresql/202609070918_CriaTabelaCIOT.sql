-- Cria a tabela LBR_MDFeCIOT
SELECT register_migration_script('202609070918_CriaTabelaCIOT.sql') FROM dual;

-- 7 de set. de 2026 09:41:36 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800101,'LBR_MDFeCIOT','LBR_MDFeCIOT',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:41:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:41:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8de-7f9f-b4d9-b7646954e8a1','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 09:41:49 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeCIOT',1000000,'N','N','Table LBR_MDFeCIOT','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 09:41:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:41:49','YYYY-MM-DD HH24:MI:SS'),10,800714,'Y',1000000,1,200000,'01a079ef-a8de-7fd1-99d6-a7893b9399f7')
;

-- 7 de set. de 2026 09:42:02 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802506,0,'Tenant',800101,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:42:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:42:02','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8de-7ae1-9d05-82c7d27636a6','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:42:15 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802507,0,'Organization',800101,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:42:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:42:15','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8de-7ec5-9697-8652f5c50834','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:42:28 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802508,0,'Created',800101,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:42:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:42:28','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8de-7221-bb44-9f334d509ddb','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:42:41 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802509,0,'Created By',800101,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:42:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:42:41','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8de-76b9-a377-447c996b46d3','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:42:54 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802510,0,'Updated',800101,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:42:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:42:54','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8de-7289-8fe0-396fda228132','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:43:07 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802511,0,'Updated By',800101,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:43:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:43:07','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8df-7ed1-85f1-87c96fe7bce8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:43:20 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802512,0,'Active',800101,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:43:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:43:20','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-71cb-9797-da730db2844e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:43:33 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800913,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:43:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:43:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeCIOT_ID','LBR_MDFeCIOT','LBR_MDFeCIOT','LBR','01a079ef-a8df-78dc-89d6-a2f5927e2b4b')
;

-- 7 de set. de 2026 09:43:46 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802513,0,'LBR_MDFeCIOT',800101,'LBR_MDFeCIOT_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:43:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:43:46','YYYY-MM-DD HH24:MI:SS'),10,800913,'N','N','LBR','N','N','N','Y','01a079ef-a8df-74a7-9d40-09444caad98c','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:43:59 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800914,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:43:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:43:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeCIOT_UU','LBR_MDFeCIOT_UU','LBR_MDFeCIOT_UU','LBR','01a079ef-a8df-70e9-b57e-e5fc31c24a14')
;

-- 7 de set. de 2026 09:44:12 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802514,0,'LBR_MDFeCIOT_UU',800101,'LBR_MDFeCIOT_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:44:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:44:12','YYYY-MM-DD HH24:MI:SS'),10,800914,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-7e46-a32e-a0f62d7c7192','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:44:25 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800188,'01a079ef-a8df-7f1d-9a26-d272cf62579b',TO_TIMESTAMP('2026-09-07 09:44:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeCIOT_UU_idx',TO_TIMESTAMP('2026-09-07 09:44:25','YYYY-MM-DD HH24:MI:SS'),10,800101,'Y','Y','N','N')
;

-- 7 de set. de 2026 09:44:38 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800221,'01a079ef-a8df-781a-a24d-9acc929c77f5',TO_TIMESTAMP('2026-09-07 09:44:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 09:44:38','YYYY-MM-DD HH24:MI:SS'),10,802514,800188,10)
;

-- 7 de set. de 2026 09:44:51 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802515,0,'Manifesto Eletrônico',800101,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:44:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:44:51','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8df-7c57-8a34-03c66426a21d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:45:04 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802516,0,'Line No',800101,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:45:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:45:04','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-7664-ab2f-73ecc1da205e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:45:17 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800915,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:45:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:45:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CIOT','CIOT','CIOT','LBR','01a079ef-a8df-7ba9-b305-ed449a5e3992')
;

-- 7 de set. de 2026 09:45:30 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802517,0,'LBR_CIOT',800101,'LBR_CIOT',12,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:45:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:45:30','YYYY-MM-DD HH24:MI:SS'),10,800915,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-7841-a96b-450d5069a19d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:45:43 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802518,0,'CNPJ',800101,'LBR_CNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:45:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:45:43','YYYY-MM-DD HH24:MI:SS'),10,1000004,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-7c12-8324-0a5e75883b7b','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:45:56 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802519,0,'CPF',800101,'LBR_CPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:45:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:45:56','YYYY-MM-DD HH24:MI:SS'),10,1000005,'Y','N','LBR','N','N','N','Y','01a079ef-a8df-7de8-b3e1-b2d172172fee','Y',0,'N','N','N','N')
;

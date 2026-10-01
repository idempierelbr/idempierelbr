-- Cria a tabela LBR_MDFeMunCarrega
SELECT register_migration_script('202609070910_CriaTabelaMunCarrega.sql') FROM dual;

-- 7 de set. de 2026 09:00:13 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800093,'LBR_MDFeMunCarrega','LBR_MDFeMunCarrega',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:00:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:00:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8d9-7a79-9620-d6151ce4367e','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 09:00:26 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeMunCarrega',1000000,'N','N','Table LBR_MDFeMunCarrega','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 09:00:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:00:26','YYYY-MM-DD HH24:MI:SS'),10,800706,'Y',1000000,1,200000,'01a079ef-a8d9-7c37-ab17-d28ce2e99fb2')
;

-- 7 de set. de 2026 09:00:39 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802378,0,'Tenant',800093,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:00:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:00:39','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-7e64-b674-72d33533fe94','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:00:52 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802379,0,'Organization',800093,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:00:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:00:52','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-7507-9351-a89f10d3b1ef','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:01:05 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802380,0,'Created',800093,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:01:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:01:05','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-780b-b854-65c5bc02a99a','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:01:18 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802381,0,'Created By',800093,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:01:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:01:18','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-7ca7-b0d2-74987fbcd2fe','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:01:31 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802382,0,'Updated',800093,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:01:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:01:31','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-7de6-a7d4-382e6a279880','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:01:44 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802383,0,'Updated By',800093,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:01:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:01:44','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-714e-b66d-e530499fc9d8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:01:57 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802384,0,'Active',800093,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 09:01:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:01:57','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-78d2-8b40-167a92fd253d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:02:10 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800882,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:02:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:02:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeMunCarrega_ID','LBR_MDFeMunCarrega','LBR_MDFeMunCarrega','LBR','01a079ef-a8d9-7946-b87d-c7d9feed7f46')
;

-- 7 de set. de 2026 09:02:23 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802385,0,'LBR_MDFeMunCarrega',800093,'LBR_MDFeMunCarrega_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:02:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:02:23','YYYY-MM-DD HH24:MI:SS'),10,800882,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-713a-9f99-7a8abc45aaff','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:02:36 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800883,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:02:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:02:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeMunCarrega_UU','LBR_MDFeMunCarrega_UU','LBR_MDFeMunCarrega_UU','LBR','01a079ef-a8d9-7564-8837-0f8b49b9d4c8')
;

-- 7 de set. de 2026 09:02:49 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802386,0,'LBR_MDFeMunCarrega_UU',800093,'LBR_MDFeMunCarrega_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:02:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:02:49','YYYY-MM-DD HH24:MI:SS'),10,800883,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-7707-9340-81cb61fbb45d','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:03:02 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800180,'01a079ef-a8d9-7ad8-8997-1d9799becc74',TO_TIMESTAMP('2026-09-07 09:03:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeMunCarrega_UU_idx',TO_TIMESTAMP('2026-09-07 09:03:02','YYYY-MM-DD HH24:MI:SS'),10,800093,'Y','Y','N','N')
;

-- 7 de set. de 2026 09:03:15 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800213,'01a079ef-a8d9-71bf-a4bc-8acb0ed7bd8f',TO_TIMESTAMP('2026-09-07 09:03:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 09:03:15','YYYY-MM-DD HH24:MI:SS'),10,802386,800180,10)
;

-- 7 de set. de 2026 09:03:28 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802387,0,'Manifesto Eletrônico',800093,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:03:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:03:28','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8d9-78ba-9314-fae26f96fe6f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:03:41 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802388,0,'Line No',800093,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:03:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:03:41','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-7013-981a-c7893c162562','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:03:54 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802389,0,'City',800093,'C_City_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:03:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:03:54','YYYY-MM-DD HH24:MI:SS'),10,1830,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-7c19-842e-1fed984b389e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:04:07 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800884,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:04:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:04:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cMun','Código IBGE do Município','Código IBGE do Município','LBR','01a079ef-a8d9-775d-8392-3e7a9b214b2b')
;

-- 7 de set. de 2026 09:04:20 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802390,0,'LBR_cMun',800093,'LBR_cMun',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:04:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:04:20','YYYY-MM-DD HH24:MI:SS'),10,800884,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-7b7b-8e61-9974c1af8dcb','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 09:04:33 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800885,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:04:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:04:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_xMun','Município','Município','LBR','01a079ef-a8d9-7766-94a4-da5f67c491b3')
;

-- 7 de set. de 2026 09:04:46 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802391,0,'LBR_xMun',800093,'LBR_xMun',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 09:04:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 09:04:46','YYYY-MM-DD HH24:MI:SS'),10,800885,'Y','N','LBR','N','N','N','Y','01a079ef-a8d9-7ff9-b9aa-13ed681124c2','Y',0,'N','N','N','N')
;

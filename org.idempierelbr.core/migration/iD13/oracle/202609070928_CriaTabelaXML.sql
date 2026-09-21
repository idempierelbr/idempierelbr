-- Cria a tabela LBR_MDFeXML
SELECT register_migration_script('202609070928_CriaTabelaXML.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de set. de 2026 10:39:14 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800111,'LBR_MDFeXML','LBR_MDFeXML',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:39:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:39:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8e6-7c05-ac0f-bc85bd0bcd80','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 10:39:27 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeXML',1000000,'N','N','Table LBR_MDFeXML','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 10:39:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:39:27','YYYY-MM-DD HH24:MI:SS'),10,800724,'Y',1000000,1,200000,'01a079ef-a8e6-7bec-92bc-3791ecf5780a')
;

-- 7 de set. de 2026 10:39:40 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802676,0,'Tenant',800111,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:39:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:39:40','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-7c7b-8f52-e45326d4fdd3','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:39:53 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802677,0,'Organization',800111,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:39:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:39:53','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-70a3-b9d1-e5ba1d624a51','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:40:06 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802678,0,'Created',800111,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:06','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-75ae-a1b8-d1ecfe61e3d0','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:40:19 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802679,0,'Created By',800111,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:19','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-7b39-80a7-a62f8fe560fe','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:40:32 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802680,0,'Updated',800111,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:32','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-7e19-8461-48dead2ef4a9','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:40:45 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802681,0,'Updated By',800111,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:45','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-72ad-a7cc-ef78656702dd','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:40:58 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802682,0,'Active',800111,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:58','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-74a8-bb9e-411ef4738231','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:41:11 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800969,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:41:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:41:11','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeXML_ID','LBR_MDFeXML','LBR_MDFeXML','LBR','01a079ef-a8e6-7c76-a270-b5ac86023d3f')
;

-- 7 de set. de 2026 10:41:24 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802683,0,'LBR_MDFeXML',800111,'LBR_MDFeXML_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:41:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:41:24','YYYY-MM-DD HH24:MI:SS'),10,800969,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-7e59-bcc4-e5711f95c1e6','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:41:37 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800970,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:41:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:41:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeXML_UU','LBR_MDFeXML_UU','LBR_MDFeXML_UU','LBR','01a079ef-a8e6-737e-bef7-0e51226e8ff4')
;

-- 7 de set. de 2026 10:41:50 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802684,0,'LBR_MDFeXML_UU',800111,'LBR_MDFeXML_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:41:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:41:50','YYYY-MM-DD HH24:MI:SS'),10,800970,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-775f-b02c-2716e6f6bc33','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:42:03 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800198,'01a079ef-a8e6-71e3-bad7-3f623cf272f4',TO_TIMESTAMP('2026-09-07 10:42:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeXML_UU_idx',TO_TIMESTAMP('2026-09-07 10:42:03','YYYY-MM-DD HH24:MI:SS'),10,800111,'Y','Y','N','N')
;

-- 7 de set. de 2026 10:42:16 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800231,'01a079ef-a8e6-7205-8389-e3a5d47d0c56',TO_TIMESTAMP('2026-09-07 10:42:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 10:42:16','YYYY-MM-DD HH24:MI:SS'),10,802684,800198,10)
;

-- 7 de set. de 2026 10:42:29 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802685,0,'Manifesto Eletrônico',800111,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:42:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:42:29','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8e6-78f6-b240-12ace6491de0','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:42:42 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802686,0,'LBR_MDFeEvento',800111,'LBR_MDFeEvento_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:42:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:42:42','YYYY-MM-DD HH24:MI:SS'),10,800963,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-71d7-9de0-10e4b414e6b1','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:42:55 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802687,0,'Line No',800111,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:42:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:42:55','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-7130-8347-cb9968d4226e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:43:08 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800971,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:43:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:43:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR_XMLType','Tipo do XML','Tipo do XML','LBR','01a079ef-a8e6-7aa4-816d-6bedf2e0e927')
;

-- 7 de set. de 2026 10:43:21 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802688,0,'LBR_XMLType',800111,'LBR_XMLType',10,'N','N','Y','N','N',0,'N',17,800112,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:43:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:43:21','YYYY-MM-DD HH24:MI:SS'),10,800971,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-7623-bf18-34c6a8af1196','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:43:34 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800972,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:43:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:43:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR_XMLContent','Conteúdo do XML','Conteúdo do XML','LBR','01a079ef-a8e6-7db5-962d-3532912c3d7c')
;

-- 7 de set. de 2026 10:43:47 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802689,0,'LBR_XMLContent',800111,'LBR_XMLContent',0,'N','N','N','N','N',0,'N',36,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:43:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:43:47','YYYY-MM-DD HH24:MI:SS'),10,800972,'Y','N','LBR','N','N','N','Y','01a079ef-a8e6-70bb-9008-919e86cad9fe','Y',0,'N','N','N','N')
;

-- Cria a tabela LBR_MDFeAutXML
SELECT register_migration_script('202609070926_CriaTabelaAutXML.sql') FROM dual;

-- 7 de set. de 2026 10:27:19 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800109,'LBR_MDFeAutXML','LBR_MDFeAutXML',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:27:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:27:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8e4-7cf1-81cf-4b2bcca4b24c','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 10:27:32 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeAutXML',1000000,'N','N','Table LBR_MDFeAutXML','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 10:27:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:27:32','YYYY-MM-DD HH24:MI:SS'),10,800722,'Y',1000000,1,200000,'01a079ef-a8e4-7a77-bbb8-24a087a7ccef')
;

-- 7 de set. de 2026 10:27:45 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802637,0,'Tenant',800109,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:27:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:27:45','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-7386-a254-76e55dce32a7','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:27:58 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802638,0,'Organization',800109,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:27:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:27:58','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-71dd-aa8f-6f1d58f9b933','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:28:11 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802639,0,'Created',800109,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:28:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:28:11','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-708b-96ed-f6293b2f6a0c','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:28:24 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802640,0,'Created By',800109,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:28:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:28:24','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-759c-a881-d594a9432579','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:28:37 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802641,0,'Updated',800109,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:28:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:28:37','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-7d8a-a283-417a639f7cca','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:28:50 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802642,0,'Updated By',800109,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:28:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:28:50','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-7077-83b2-58ead7e87cb6','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:29:03 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802643,0,'Active',800109,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:29:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:29:03','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8e4-74f7-a83b-38fbd80478ee','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:29:16 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800961,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:29:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:29:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeAutXML_ID','LBR_MDFeAutXML','LBR_MDFeAutXML','LBR','01a079ef-a8e4-75c7-a71c-3d3ddad9050f')
;

-- 7 de set. de 2026 10:29:29 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802644,0,'LBR_MDFeAutXML',800109,'LBR_MDFeAutXML_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:29:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:29:29','YYYY-MM-DD HH24:MI:SS'),10,800961,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-7e8d-8065-d4c84d6088fa','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:29:42 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800962,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:29:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:29:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeAutXML_UU','LBR_MDFeAutXML_UU','LBR_MDFeAutXML_UU','LBR','01a079ef-a8e4-753f-8de2-c66c206d300d')
;

-- 7 de set. de 2026 10:29:55 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802645,0,'LBR_MDFeAutXML_UU',800109,'LBR_MDFeAutXML_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:29:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:29:55','YYYY-MM-DD HH24:MI:SS'),10,800962,'Y','N','LBR','N','N','N','Y','01a079ef-a8e4-7a40-b9a3-78971ac0ff32','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:30:08 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800196,'01a079ef-a8e4-7854-94c9-8145e1776e97',TO_TIMESTAMP('2026-09-07 10:30:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeAutXML_UU_idx',TO_TIMESTAMP('2026-09-07 10:30:08','YYYY-MM-DD HH24:MI:SS'),10,800109,'Y','Y','N','N')
;

-- 7 de set. de 2026 10:30:21 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800229,'01a079ef-a8e4-7231-85ce-b931b5f4e0f2',TO_TIMESTAMP('2026-09-07 10:30:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 10:30:21','YYYY-MM-DD HH24:MI:SS'),10,802645,800196,10)
;

-- 7 de set. de 2026 10:30:34 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802646,0,'Manifesto Eletrônico',800109,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:30:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:30:34','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8e4-7bd6-9e37-eb4d3c202654','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:30:47 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802647,0,'Line No',800109,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:30:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:30:47','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8e4-78cf-9266-af1193c3ed3c','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:31:00 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802648,0,'CNPJ',800109,'LBR_CNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:31:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:31:00','YYYY-MM-DD HH24:MI:SS'),10,1000004,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7689-bf8b-7584cbf93363','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:31:13 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802649,0,'CPF',800109,'LBR_CPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:31:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:31:13','YYYY-MM-DD HH24:MI:SS'),10,1000005,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7fc8-99e6-045af5a567db','Y',0,'N','N','N','N')
;

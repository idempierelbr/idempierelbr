-- Cria a tabela LBR_MDFeEvento
SELECT register_migration_script('202609070927_CriaTabelaEvento.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de set. de 2026 10:31:26 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800110,'LBR_MDFeEvento','LBR_MDFeEvento',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:31:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:31:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8e5-79a5-8d3d-0472ff04550f','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 10:31:39 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFeEvento',1000000,'N','N','Table LBR_MDFeEvento','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 10:31:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:31:39','YYYY-MM-DD HH24:MI:SS'),10,800723,'Y',1000000,1,200000,'01a079ef-a8e5-7fe5-8d07-d00f59dafadb')
;

-- 7 de set. de 2026 10:31:52 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802650,0,'Tenant',800110,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:31:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:31:52','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-78f0-9003-2d9b7a21cb15','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:32:05 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802651,0,'Organization',800110,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:32:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:32:05','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-7bc7-8adc-2700575e76cd','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:32:18 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802652,0,'Created',800110,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:32:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:32:18','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-78e5-adaa-5047a9907694','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:32:31 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802653,0,'Created By',800110,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:32:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:32:31','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-7d6e-8348-36d8fe957408','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:32:44 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802654,0,'Updated',800110,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:32:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:32:44','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-7fc8-96e6-5d32931c8633','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:32:57 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802655,0,'Updated By',800110,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:32:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:32:57','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-7a12-9ee8-9c45e057cbeb','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:33:10 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802656,0,'Active',800110,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:33:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:33:10','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7377-8765-4fec2a1516b8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:33:23 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800963,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:33:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:33:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeEvento_ID','LBR_MDFeEvento','LBR_MDFeEvento','LBR','01a079ef-a8e5-70ef-a599-65821b304016')
;

-- 7 de set. de 2026 10:33:36 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802657,0,'LBR_MDFeEvento',800110,'LBR_MDFeEvento_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:33:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:33:36','YYYY-MM-DD HH24:MI:SS'),10,800963,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-76ea-a610-42142e8843c8','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:33:49 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800964,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:33:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:33:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeEvento_UU','LBR_MDFeEvento_UU','LBR_MDFeEvento_UU','LBR','01a079ef-a8e5-7016-8765-7dcd71307c0b')
;

-- 7 de set. de 2026 10:34:02 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802658,0,'LBR_MDFeEvento_UU',800110,'LBR_MDFeEvento_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:34:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:34:02','YYYY-MM-DD HH24:MI:SS'),10,800964,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7aed-91ea-512afd5283e0','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:34:15 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800197,'01a079ef-a8e5-7090-821d-d62b84132dc7',TO_TIMESTAMP('2026-09-07 10:34:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFeEvento_UU_idx',TO_TIMESTAMP('2026-09-07 10:34:15','YYYY-MM-DD HH24:MI:SS'),10,800110,'Y','Y','N','N')
;

-- 7 de set. de 2026 10:34:28 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800230,'01a079ef-a8e5-76f3-825e-ea0540d618c2',TO_TIMESTAMP('2026-09-07 10:34:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 10:34:28','YYYY-MM-DD HH24:MI:SS'),10,802658,800197,10)
;

-- 7 de set. de 2026 10:34:41 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802659,0,'Description',800110,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:34:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:34:41','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-777f-b575-26d0b16194f8','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:34:54 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802660,0,'Manifesto Eletrônico',800110,'LBR_MDFe_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:34:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:34:54','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','N','N','Y','01a079ef-a8e5-7dc1-81f5-4ff8af66539f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:35:07 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802661,0,'Line No',800110,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:07','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7b3d-84ee-a893ee8348c0','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:35:20 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800965,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EventType','Tipo de Evento','Tipo de Evento','LBR','01a079ef-a8e5-7752-8051-d3c82c63b078')
;

-- 7 de set. de 2026 10:35:33 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802662,0,'LBR_EventType',800110,'LBR_EventType',6,'N','N','Y','N','N',0,'N',17,800111,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:33','YYYY-MM-DD HH24:MI:SS'),10,800965,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7f27-9404-69ac7e732610','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:35:46 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800966,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NSeqEvento','Sequência do Evento','Sequência do Evento','LBR','01a079ef-a8e5-7c28-9675-7553378d5690')
;

-- 7 de set. de 2026 10:35:59 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802663,0,'LBR_NSeqEvento',800110,'LBR_NSeqEvento',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:59','YYYY-MM-DD HH24:MI:SS'),10,800966,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7a2e-aaa9-847d1814bedb','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:36:12 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800967,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:36:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:36:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateEvent','Data e Hora do Evento','Data e Hora do Evento','LBR','01a079ef-a8e5-7046-9792-fb53c70e5382')
;

-- 7 de set. de 2026 10:36:25 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802664,0,'LBR_DateEvent',800110,'LBR_DateEvent',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:36:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:36:25','YYYY-MM-DD HH24:MI:SS'),10,800967,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-780d-9395-079644930198','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:36:38 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802665,0,'Justification',800110,'LBR_Justification',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:36:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:36:38','YYYY-MM-DD HH24:MI:SS'),10,1000280,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7c68-9051-80fab6905da3','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:36:51 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802666,0,'City',800110,'C_City_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:36:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:36:51','YYYY-MM-DD HH24:MI:SS'),10,1830,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7a52-848c-747d2e02fea7','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:37:04 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802667,0,'Region',800110,'C_Region_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:37:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:37:04','YYYY-MM-DD HH24:MI:SS'),10,209,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7f81-a948-7ec6948a921f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:37:17 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800968,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:37:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:37:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateEncerra','Data do Encerramento','Data do Encerramento','LBR','01a079ef-a8e5-7262-996c-3c05c21e7a15')
;

-- 7 de set. de 2026 10:37:30 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802668,0,'LBR_DateEncerra',800110,'LBR_DateEncerra',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:37:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:37:30','YYYY-MM-DD HH24:MI:SS'),10,800968,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7a23-a125-58a0dfaff134','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:37:43 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802669,0,'LBR_cStat',800110,'LBR_cStat',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:37:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:37:43','YYYY-MM-DD HH24:MI:SS'),10,800854,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-70fe-9cad-ae20b8616dfb','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:37:56 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802670,0,'LBR_xMotivo',800110,'LBR_xMotivo',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:37:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:37:56','YYYY-MM-DD HH24:MI:SS'),10,800855,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-708b-8b9e-ab0edb4b7566','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:38:09 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802671,0,'LBR_Protocol',800110,'LBR_Protocol',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:38:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:38:09','YYYY-MM-DD HH24:MI:SS'),10,800856,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-70ce-b187-df66aeef0a53','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:38:22 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802672,0,'LBR_DateProtocol',800110,'LBR_DateProtocol',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:38:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:38:22','YYYY-MM-DD HH24:MI:SS'),10,800857,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7140-8cba-d86d9a6a1b6d','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:38:35 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802673,0,'Processed',800110,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:38:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:38:35','YYYY-MM-DD HH24:MI:SS'),10,1047,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7bf6-a9a6-c3f94f765adc','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:38:48 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802674,0,'Name',800110,'Name',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:38:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:38:48','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7271-a124-015fac3ff74f','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:39:01 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802675,0,'CPF',800110,'LBR_CPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:39:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:39:01','YYYY-MM-DD HH24:MI:SS'),10,1000005,'Y','N','LBR','N','N','N','Y','01a079ef-a8e5-7b42-99de-61b8851ab9f8','Y',0,'N','N','N','N')
;

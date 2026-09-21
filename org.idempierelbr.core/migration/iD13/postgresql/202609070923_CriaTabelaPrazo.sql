-- Cria a tabela LBR_MDFePrazo
SELECT register_migration_script('202609070923_CriaTabelaPrazo.sql') FROM dual;

-- 7 de set. de 2026 10:11:56 BRT

INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800106,'LBR_MDFePrazo','LBR_MDFePrazo',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:11:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:11:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a079ef-a8e2-70a6-b609-0b5ea0e7e70e','N','N','N','N','N','N','N')
;

-- 7 de set. de 2026 10:12:09 BRT

INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFePrazo',1000000,'N','N','Table LBR_MDFePrazo','Y','Y',0,0,TO_TIMESTAMP('2026-09-07 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:12:09','YYYY-MM-DD HH24:MI:SS'),10,800719,'Y',1000000,1,200000,'01a079ef-a8e2-798d-9c58-5c3c0fdf760f')
;

-- 7 de set. de 2026 10:12:22 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802594,0,'Tenant',800106,'AD_Client_ID',10,'N','N','Y','N','N',0,'N',30,'@#AD_Client_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:12:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:12:22','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-74e2-91b5-238d9c403273','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:12:35 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802595,0,'Organization',800106,'AD_Org_ID',10,'N','N','Y','N','N',0,'N',19,'@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:12:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:12:35','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-706c-8ce7-6c275a004033','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:12:48 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802596,0,'Created',800106,'Created',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:12:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:12:48','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7eb6-a93a-0f957cf1b7d2','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:13:01 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802597,0,'Created By',800106,'CreatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:01','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7afd-a485-19e7baae1144','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:13:14 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802598,0,'Updated',800106,'Updated',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:14','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7b87-bb65-fb2fcbc0720e','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:13:27 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802599,0,'Updated By',800106,'UpdatedBy',10,'N','N','Y','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:27','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7baa-9a17-16b1da3de9db','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:13:40 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,DefaultValue,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802600,0,'Active',800106,'IsActive',1,'N','N','Y','N','N',0,'N',20,'Y',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:40','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','01a079ef-a8e2-7e5d-aea3-4584a67f1f76','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:13:53 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800945,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:53','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFePrazo_ID','LBR_MDFePrazo','LBR_MDFePrazo','LBR','01a079ef-a8e2-76e8-909c-7887df263f5f')
;

-- 7 de set. de 2026 10:14:06 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802601,0,'LBR_MDFePrazo',800106,'LBR_MDFePrazo_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:14:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:14:06','YYYY-MM-DD HH24:MI:SS'),10,800945,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7502-b9ca-ee896af7c566','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:14:19 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800946,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:14:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:14:19','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFePrazo_UU','LBR_MDFePrazo_UU','LBR_MDFePrazo_UU','LBR','01a079ef-a8e2-70dc-9c76-30acb8d040b1')
;

-- 7 de set. de 2026 10:14:32 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802602,0,'LBR_MDFePrazo_UU',800106,'LBR_MDFePrazo_UU',36,'N','N','Y','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:14:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:14:32','YYYY-MM-DD HH24:MI:SS'),10,800946,'Y','N','LBR','N','N','N','Y','01a079ef-a8e2-7cd1-a0cc-cd10287767c5','N',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:14:45 BRT

INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800193,'01a079ef-a8e2-78b8-9384-ce065a4ab19b',TO_TIMESTAMP('2026-09-07 10:14:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFePrazo_UU_idx',TO_TIMESTAMP('2026-09-07 10:14:45','YYYY-MM-DD HH24:MI:SS'),10,800106,'Y','Y','N','N')
;

-- 7 de set. de 2026 10:14:58 BRT

INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800226,'01a079ef-a8e2-7fc4-8233-debfbe6ad9ee',TO_TIMESTAMP('2026-09-07 10:14:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-07 10:14:58','YYYY-MM-DD HH24:MI:SS'),10,802602,800193,10)
;

-- 7 de set. de 2026 10:15:11 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802603,0,'LBR_MDFeInfPag',800106,'LBR_MDFeInfPag_ID',10,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:15:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:15:11','YYYY-MM-DD HH24:MI:SS'),10,800929,'N','N','LBR','N','N','N','Y','01a079ef-a8e2-7c7c-9716-e7bb0db4a3b2','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:15:24 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802604,0,'Line No',800106,'Line',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:15:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:15:24','YYYY-MM-DD HH24:MI:SS'),10,439,'Y','N','LBR','N','N','N','Y','01a079ef-a8e2-73b9-b068-cf80d0fb9290','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:15:37 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800947,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:15:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:15:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NParcela','Número da Parcela','Número da Parcela','LBR','01a079ef-a8e2-7d61-b842-dbc74e92eba4')
;

-- 7 de set. de 2026 10:15:50 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802605,0,'LBR_NParcela',800106,'LBR_NParcela',3,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:15:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:15:50','YYYY-MM-DD HH24:MI:SS'),10,800947,'Y','N','LBR','N','N','N','Y','01a079ef-a8e2-7b0e-84ff-f82ffe884e73','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:16:03 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800948,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:16:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:16:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateDue','Vencimento da Parcela','Vencimento da Parcela','LBR','01a079ef-a8e3-727e-8940-287feea7b3da')
;

-- 7 de set. de 2026 10:16:16 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802606,0,'LBR_DateDue',800106,'LBR_DateDue',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:16:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:16:16','YYYY-MM-DD HH24:MI:SS'),10,800948,'Y','N','LBR','N','N','N','Y','01a079ef-a8e3-79d6-92d0-147e4d1af0ee','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:16:29 BRT

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800949,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:16:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:16:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ValueParcela','Valor da Parcela (R$)','Valor da Parcela (R$)','LBR','01a079ef-a8e3-70bb-b8fb-ed8c094c7efe')
;

-- 7 de set. de 2026 10:16:42 BRT

INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802607,0,'LBR_ValueParcela',800106,'LBR_ValueParcela',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:16:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:16:42','YYYY-MM-DD HH24:MI:SS'),10,800949,'Y','N','LBR','N','N','N','Y','01a079ef-a8e3-7862-b3f5-0167c044826d','Y',0,'N','N','N','N')
;

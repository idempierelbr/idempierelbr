-- Cria a tabela LBR_MDFe
SELECT register_migration_script('202609041525_CriaTabelaMDFe.sql') FROM dual;

-- 4 de set. de 2026 15:25:49 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800092,'Manifesto Eletrônico','LBR_MDFe',0,'3',0,0,'Y',TO_TIMESTAMP('2026-09-04 15:25:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:25:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','N','LBR','N','Y','L','N','Y','01a06dab-785c-7586-b04e-37682eda1721','N','N','N','N','N','N','N')
;

-- 4 de set. de 2026 15:25:49 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MDFe',1000000,'N','N','Table LBR_MDFe','Y','Y',0,0,TO_TIMESTAMP('2026-09-04 15:25:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:25:49','YYYY-MM-DD HH24:MI:SS'),10,800692,'Y',1000000,1,200000,'01a06dab-797f-7e83-993c-aa01b04f6327')
;

-- 4 de set. de 2026 15:26:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802293,0.0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800092,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:13','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','1=1','LBR','N','01a06dab-d9b1-77fe-9647-c831610afc05','N')
;

-- 4 de set. de 2026 15:26:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802294,0.0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800092,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','01a06dab-dae5-78e6-b582-0ee2726b6442','N')
;

-- 4 de set. de 2026 15:26:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802295,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800092,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','01a06dab-dc2d-76be-b83b-88d7f0871ad8','N')
;

-- 4 de set. de 2026 15:26:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802296,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800092,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:14','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','01a06dab-dd56-7d63-925f-e92d81122e9f','N')
;

-- 4 de set. de 2026 15:26:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802297,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800092,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','01a06dab-de87-73b9-a852-fbd03c461f21','N')
;

-- 4 de set. de 2026 15:26:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802298,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800092,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','01a06dab-dfa7-7a60-8118-74581712d5dd','N')
;

-- 4 de set. de 2026 15:26:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802299,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800092,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','01a06dab-e0e7-7e18-b742-829960d9eb6d','N')
;

-- 4 de set. de 2026 15:26:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800805,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFe_ID','Manifesto Eletrônico','Manifesto Eletrônico','LBR','01a06dab-e216-73ef-8778-696460900682')
;

-- 4 de set. de 2026 15:26:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802300,0.0,'Manifesto Eletrônico',800092,'LBR_MDFe_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,800805,'N','N','LBR','N','01a06dab-e347-7ae7-bfc5-0adcf26f00d6','N')
;

-- 4 de set. de 2026 15:26:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800806,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFe_UU','LBR_MDFe_UU','LBR_MDFe_UU','LBR','01a06dab-e4a3-7c43-a417-06527dace823')
;

-- 4 de set. de 2026 15:26:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802301,0.0,'LBR_MDFe_UU',800092,'LBR_MDFe_UU',36,'N','N','N','N','N','N',200231,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:16','YYYY-MM-DD HH24:MI:SS'),10,800806,'Y','N','LBR','N','01a06dab-e5cf-70c2-bfe0-694cfeb5447e','N')
;

-- 4 de set. de 2026 15:26:17 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,IsKey) VALUES (0,0,800179,'01a06dab-e713-7030-a439-9af4190f51b9',TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y','LBR_MDFe_UU_idx',TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,800092,'Y','Y','N','N')
;

-- 4 de set. de 2026 15:26:17 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800212,'01a06dab-e835-7d01-8b90-7b78e0aa9153',TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR','Y',TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,802301,800179,10)
;

-- 4 de set. de 2026 15:26:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802302,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',800092,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:17','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','N','LBR','N','01a06dab-e953-7ef2-b256-4e07776a5c02','N')
;

-- 4 de set. de 2026 15:26:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802303,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',800092,'C_DocType_ID',22,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,196,'Y','N','LBR','N','01a06dab-ea97-716b-8c33-8a5456f02f5e','N')
;

-- 4 de set. de 2026 15:26:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (802304,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800092,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,290,'Y','Y','LBR','N','01a06dab-ebdb-7740-a724-2e21ffd56966',10,'N')
;

-- 4 de set. de 2026 15:26:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802305,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',800092,'DocAction','CO',2,'N','N','Y','N','N','N',28,135,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:18','YYYY-MM-DD HH24:MI:SS'),10,287,'Y','N','LBR','N','01a06dab-ed34-72de-af0c-7a92bcd87af0','N')
;

-- 4 de set. de 2026 15:26:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802306,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',800092,'DocStatus','DR',2,'N','N','Y','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,289,'Y','N','LBR','N','01a06dab-ee5f-76fc-bf0f-d9df4314f1b3','N')
;

-- 4 de set. de 2026 15:26:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802307,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800092,'Processed','N',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,1047,'Y','N','LBR','N','01a06dab-ef93-70a2-911d-77506d20689d','N')
;

-- 4 de set. de 2026 15:26:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802308,0.0,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',800092,'ProcessedOn',20,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,54128,'Y','N','LBR','N','01a06dab-f0cd-75e1-a245-a16717e23cf4','N')
;

-- 4 de set. de 2026 15:26:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (802309,0.0,'Process Now',800092,'Processing','N',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:26:19','YYYY-MM-DD HH24:MI:SS'),10,524,'Y','N','LBR','N','01a06dab-f223-763e-8a7a-2682b837c16d','N')
;

-- 4 de set. de 2026 15:27:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800807,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:27:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:27:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Serie','Série','Série','LBR','01a06dac-fba9-7bd2-ba75-c2791c607eac')
;

-- 4 de set. de 2026 15:27:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802310,0,'LBR_Serie',800092,'LBR_Serie',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:27:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:27:48','YYYY-MM-DD HH24:MI:SS'),10,800807,'Y','N','LBR','N','N','N','Y','01a06dad-4ae8-72a1-beb9-42fecf6c2d21','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:28:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800808,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:28:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:28:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeChave','Chave de Acesso','Chave de Acesso','LBR','01a06dad-7a13-7e1e-b962-0a08659ee9e9')
;

-- 4 de set. de 2026 15:28:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802311,0,'LBR_MDFeChave',800092,'LBR_MDFeChave',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:28:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:28:17','YYYY-MM-DD HH24:MI:SS'),10,800808,'Y','N','LBR','N','N','N','Y','01a06dad-bca3-7720-a496-e5bf50cf8ffd','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:28:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800809,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:28:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:28:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cMDF','Código Numérico da Chave','Código Numérico da Chave','LBR','01a06dad-f4fa-7c1b-9fd0-83835f692a37')
;

-- 4 de set. de 2026 15:28:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802312,0,'LBR_cMDF',800092,'LBR_cMDF',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:28:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:28:44','YYYY-MM-DD HH24:MI:SS'),10,800809,'Y','N','LBR','N','N','N','Y','01a06dae-25d6-7fed-8fd7-a1b5da416951','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:28:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800810,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:28:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:28:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cDV','Dígito Verificador da Chave','Dígito Verificador da Chave','LBR','01a06dae-55ae-7edd-9bda-ae771f765aec')
;

-- 4 de set. de 2026 15:29:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802313,0,'LBR_cDV',800092,'LBR_cDV',1,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:29:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:29:12','YYYY-MM-DD HH24:MI:SS'),10,800810,'Y','N','LBR','N','N','N','Y','01a06dae-92dc-7a9c-9dd9-365e4a8ce47f','N',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:29:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800811,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:29:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:29:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpAmb','Ambiente','Ambiente','LBR','01a06dae-c86a-7e22-9d35-dcdc5c0d463e')
;

-- 4 de set. de 2026 15:29:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802314,0,'LBR_tpAmb',800092,'LBR_tpAmb',1,'N','N','N','N','N',0,'N',17,800097,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:29:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:29:59','YYYY-MM-DD HH24:MI:SS'),10,800811,'Y','N','LBR','N','N','N','Y','01a06daf-4ab6-74ea-bf09-6dec599f10b9','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:30:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800812,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:30:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:30:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpEmit','Tipo de Emitente','Tipo de Emitente','LBR','01a06daf-88bc-7a35-9a1d-33d760ef59db')
;

-- 4 de set. de 2026 15:30:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802315,0,'LBR_tpEmit',800092,'LBR_tpEmit',1,'N','N','N','N','N',0,'N',17,800098,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:30:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:30:32','YYYY-MM-DD HH24:MI:SS'),10,800812,'Y','N','LBR','N','N','N','Y','01a06daf-ce49-73be-9398-2dae03ba3ba0','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:30:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800813,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:30:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:30:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpTransp','Tipo de Transportador','Tipo de Transportador','LBR','01a06db0-0632-7aa1-b26b-f34740c7883b')
;

-- 4 de set. de 2026 15:31:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802316,0,'LBR_tpTransp',800092,'LBR_tpTransp',1,'N','N','N','N','N',0,'N',17,800099,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:31:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:31:12','YYYY-MM-DD HH24:MI:SS'),10,800813,'Y','N','LBR','N','N','N','Y','01a06db0-66c7-7f4b-b975-9b5f216e3827','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:31:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800814,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:31:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:31:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Modal','Modal','Modal','LBR','01a06db0-956e-7643-8058-b6db69bd9eb9')
;

-- 4 de set. de 2026 15:32:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802317,0,'LBR_Modal',800092,'LBR_Modal','1',1,'N','N','N','N','N',0,'N',17,800100,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:32:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:32:43','YYYY-MM-DD HH24:MI:SS'),10,800814,'Y','N','LBR','N','N','N','Y','01a06db1-ce0c-743d-8511-951c154a0eca','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:33:02 BRT
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2026-09-04 15:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802310
;

-- 4 de set. de 2026 15:33:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800815,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:33:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:33:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpEmis','Forma de Emissão','Forma de Emissão','LBR','01a06db2-6fd4-73af-852c-206115c6e8cc')
;

-- 4 de set. de 2026 15:33:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802318,0,'LBR_tpEmis',800092,'LBR_tpEmis','1',1,'N','N','N','N','N',0,'N',17,800101,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:33:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:33:47','YYYY-MM-DD HH24:MI:SS'),10,800815,'Y','N','LBR','N','N','N','Y','01a06db2-c5b1-7156-b93a-288c9355164c','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:34:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800816,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:34:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:34:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_procEmi','Processo de Emissão','Processo de Emissão','LBR','01a06db3-0641-7fcf-98d2-63dcd78fee87')
;

-- 4 de set. de 2026 15:34:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802319,0,'LBR_procEmi',800092,'LBR_procEmi','0',1,'N','N','N','N','N',0,'N',17,800102,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:34:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:34:43','YYYY-MM-DD HH24:MI:SS'),10,800816,'Y','N','LBR','N','N','N','Y','01a06db3-a078-7406-a7fa-3b46eaa73e84','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:34:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800817,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:34:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:34:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_verProc','Versão do Aplicativo Emissor','Versão do Aplicativo Emissor','LBR','01a06db3-d205-7cac-bcc9-228dc8da3eef')
;

-- 4 de set. de 2026 15:35:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802320,0,'LBR_verProc',800092,'LBR_verProc',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:35:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:35:42','YYYY-MM-DD HH24:MI:SS'),10,800817,'Y','N','LBR','N','N','N','Y','01a06db4-85df-7b62-aae9-0439933c177f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:36:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802321,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800092,'DateDoc','@#Date@',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:36:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:36:01','YYYY-MM-DD HH24:MI:SS'),10,265,'Y','N','LBR','N','N','N','Y','01a06db4-d04b-7f92-8faf-bf921e2668e4','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:36:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800818,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:36:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:36:12','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateIniViagem','Início Previsto da Viagem','Início Previsto da Viagem','LBR','01a06db4-fe15-7679-82aa-d432e9d84d32')
;

-- 4 de set. de 2026 15:36:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802322,0,'LBR_DateIniViagem',800092,'LBR_DateIniViagem',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:36:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:36:37','YYYY-MM-DD HH24:MI:SS'),10,800818,'Y','N','LBR','N','N','N','Y','01a06db5-5fe8-79d9-a710-2dd3c593e48e','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:36:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800819,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:36:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:36:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_UFIni_ID','UF de Carregamento','UF de Carregamento','LBR','01a06db5-a98d-70f5-8c90-7d173ed3e714')
;

-- 4 de set. de 2026 15:37:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802323,0,'LBR_UFIni_ID',800092,'LBR_UFIni_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:37:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:37:17','YYYY-MM-DD HH24:MI:SS'),10,800819,'Y','N','LBR','N','N','N','Y','01a06db5-f90a-727b-bc63-fe52d6127720','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:37:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800820,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:37:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:37:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR_UFFim_ID','UF de Descarregamento','UF de Descarregamento','LBR','01a06db6-2661-75fe-abcb-12c92085dbce')
;

-- 4 de set. de 2026 15:38:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802324,0,'LBR_UFFim_ID',800092,'LBR_UFFim_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:38:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:38:05','YYYY-MM-DD HH24:MI:SS'),10,800820,'Y','N','LBR','N','N','N','Y','01a06db6-b74e-7162-8577-9e5be43f0077','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:38:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800821,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:38:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:38:19','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndCanalVerde','Participa do Canal Verde','Participa do Canal Verde','LBR','01a06db6-ecf4-7d94-81f4-03c112aecf62')
;

-- 4 de set. de 2026 15:38:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802325,0,'LBR_IndCanalVerde',800092,'LBR_IndCanalVerde','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:38:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:38:36','YYYY-MM-DD HH24:MI:SS'),10,800821,'Y','N','LBR','N','N','N','Y','01a06db7-2f70-7ab4-bd43-4e0cf016093c','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:38:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800822,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:38:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:38:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndCargaPosterior','Permite Carregamento Posterior','Permite Carregamento Posterior','LBR','01a06db7-634b-7f0a-a219-07929bda1417')
;

-- 4 de set. de 2026 15:39:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802326,0,'LBR_IndCargaPosterior',800092,'LBR_IndCargaPosterior','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:39:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:39:03','YYYY-MM-DD HH24:MI:SS'),10,800822,'Y','N','LBR','N','N','N','Y','01a06db7-9a1b-7682-87c0-5bd604aa3747','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:39:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800823,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:39:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:39:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpCarga','Tipo de Carga','Tipo de Carga','LBR','01a06db7-c548-76bb-bca8-022eaa8af604')
;

-- 4 de set. de 2026 15:39:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802327,0,'LBR_tpCarga',800092,'LBR_tpCarga',2,'N','N','N','N','N',0,'N',17,800103,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:39:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:39:34','YYYY-MM-DD HH24:MI:SS'),10,800823,'Y','N','LBR','N','N','N','Y','01a06db8-10e5-78a2-951e-4d73c812443f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:39:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800824,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:39:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:39:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ProdPred','Produto Predominante','Produto Predominante','LBR','01a06db8-41ed-7eae-9310-a45a120f70f3')
;

-- 4 de set. de 2026 15:40:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802328,0,'LBR_ProdPred',800092,'LBR_ProdPred',120,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:40:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:40:09','YYYY-MM-DD HH24:MI:SS'),10,800824,'Y','N','LBR','N','N','N','Y','01a06db8-9b02-7888-a72e-0283f836f676','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:40:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800825,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:40:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:40:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR_EAN','GTIN (Código de Barras)','GTIN (Código de Barras)','LBR','01a06db8-ca48-79ce-95bf-c8d23ed83b76')
;

-- 4 de set. de 2026 15:40:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802329,0,'LBR_EAN',800092,'LBR_EAN',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:40:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:40:36','YYYY-MM-DD HH24:MI:SS'),10,800825,'Y','N','LBR','N','N','N','Y','01a06db9-04e2-7e06-a185-35ce1b0b5f3d','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:40:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800826,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:40:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:40:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NCM','NCM','NCM','LBR','01a06db9-36b2-752c-a508-d90fab1cf763')
;

-- 4 de set. de 2026 15:41:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802330,0,'LBR_NCM',800092,'LBR_NCM',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:41:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:41:13','YYYY-MM-DD HH24:MI:SS'),10,800826,'Y','N','LBR','N','N','N','Y','01a06db9-95e5-7a17-aef2-3e6f182cce9d','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:41:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800827,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:41:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:41:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QtyCTe','Quantidade de CT-e','Quantidade de CT-e','LBR','01a06db9-cd36-758b-bd0d-b4925f4c1ec6')
;

-- 4 de set. de 2026 15:41:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802331,0,'LBR_QtyCTe',800092,'LBR_QtyCTe',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:41:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:41:41','YYYY-MM-DD HH24:MI:SS'),10,800827,'Y','N','LBR','N','N','N','Y','01a06dba-0359-78ea-baf5-29249427e68f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:41:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800828,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:41:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:41:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QtyNFe','Quantidade de NF-e','Quantidade de NF-e','LBR','01a06dba-2bd8-7d7c-b364-9101e13553c3')
;

-- 4 de set. de 2026 15:42:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802332,0,'LBR_QtyNFe',800092,'LBR_QtyNFe',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:42:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:42:14','YYYY-MM-DD HH24:MI:SS'),10,800828,'Y','N','LBR','N','N','N','Y','01a06dba-81fe-71ec-80b5-91cf64fbccec','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:42:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800829,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:42:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:42:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QtyMDFe','Quantidade de MDF-e','Quantidade de MDF-e','LBR','01a06dba-ab52-76f9-bb9d-c9c96e292315')
;

-- 4 de set. de 2026 15:42:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802333,0,'LBR_QtyMDFe',800092,'LBR_QtyMDFe',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:42:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:42:50','YYYY-MM-DD HH24:MI:SS'),10,800829,'Y','N','LBR','N','N','N','Y','01a06dbb-0d50-7ac2-a6c3-e83f2da5b179','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:43:03 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800830,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:43:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:43:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ValueCargo','Valor da Carga (R$)','Valor da Carga (R$)','LBR','01a06dbb-40cd-7a64-b8ac-dd739d7b6eba')
;

-- 4 de set. de 2026 15:43:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802334,0,'LBR_ValueCargo',800092,'LBR_ValueCargo',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:43:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:43:20','YYYY-MM-DD HH24:MI:SS'),10,800830,'Y','N','LBR','N','N','N','Y','01a06dbb-843d-7ecf-8fb2-675cf7771d97','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:43:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800831,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:43:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:43:36','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cUnid','Unidade do Peso','Unidade do Peso','LBR','01a06dbb-c3fb-72cd-a7ee-67d066588eb5')
;

-- 4 de set. de 2026 15:44:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802335,0,'LBR_cUnid',800092,'LBR_cUnid','01',2,'N','N','N','N','N',0,'N',17,800104,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:44:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:44:03','YYYY-MM-DD HH24:MI:SS'),10,800831,'Y','N','LBR','N','N','N','Y','01a06dbc-2cf9-7afe-8ad6-d980c35ebac2','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:44:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800832,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:44:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:44:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QtyCargo','Peso Bruto da Carga','Peso Bruto da Carga','LBR','01a06dbc-577f-7ed3-987e-9f3327b336f2')
;

-- 4 de set. de 2026 15:44:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802336,0,'LBR_QtyCargo',800092,'LBR_QtyCargo',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:44:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:44:37','YYYY-MM-DD HH24:MI:SS'),10,800832,'Y','N','LBR','N','N','N','Y','01a06dbc-b17e-7061-bd87-57364a85c7c7','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:45:03 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800833,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:45:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:45:02','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RNTRC','RNTRC','RNTRC','LBR','01a06dbd-13af-7f1d-86ce-541407783daf')
;

-- 4 de set. de 2026 15:45:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802337,0,'LBR_RNTRC',800092,'LBR_RNTRC',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:45:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:45:16','YYYY-MM-DD HH24:MI:SS'),10,800833,'Y','N','LBR','N','N','N','Y','01a06dbd-4a84-7ee3-8674-82224b1787a3','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:45:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800834,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:45:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:45:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Placa','Placa','Placa','LBR','01a06dbd-7cb4-7687-8cc6-f92b9fbbbdfb')
;

-- 4 de set. de 2026 15:45:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802338,0,'LBR_Placa',800092,'LBR_Placa',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:45:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:45:47','YYYY-MM-DD HH24:MI:SS'),10,800834,'Y','N','LBR','N','N','N','Y','01a06dbd-c345-7b98-a434-cdd01e9fde29','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:45:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800835,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:45:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:45:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Renavam','RENAVAM','RENAVAM','LBR','01a06dbd-f0ae-73fc-af18-2448bdebf8ea')
;

-- 4 de set. de 2026 15:46:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802339,0,'LBR_Renavam',800092,'LBR_Renavam',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:46:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:46:15','YYYY-MM-DD HH24:MI:SS'),10,800835,'Y','N','LBR','N','N','N','Y','01a06dbe-310f-7f86-9d49-ed538ca3083f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:46:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800836,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:46:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:46:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cInt','Código Interno do Veículo','Código Interno do Veículo','LBR','01a06dbe-61e7-7227-8c79-c7616b128409')
;

-- 4 de set. de 2026 15:46:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802340,0,'LBR_cInt',800092,'LBR_cInt',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:46:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:46:40','YYYY-MM-DD HH24:MI:SS'),10,800836,'Y','N','LBR','N','N','N','Y','01a06dbe-9349-7fe0-a24b-1f331e6afe3e','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:47:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800837,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:47:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:47:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Tara','Tara (kg)','Tara (kg)','LBR','01a06dbf-1c04-7d0a-8d3b-d982abb48a0d')
;

-- 4 de set. de 2026 15:47:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802341,0,'LBR_Tara',800092,'LBR_Tara',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:47:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:47:35','YYYY-MM-DD HH24:MI:SS'),10,800837,'Y','N','LBR','N','N','N','Y','01a06dbf-695c-7d3a-a08b-515d9597669e','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:47:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800838,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:47:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:47:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CapKG','Capacidade (kg)','Capacidade (kg)','LBR','01a06dbf-95c8-7a3b-8c29-97c12d6d08f0')
;

-- 4 de set. de 2026 15:48:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802342,0,'LBR_CapKG',800092,'LBR_CapKG',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:48:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:48:04','YYYY-MM-DD HH24:MI:SS'),10,800838,'Y','N','LBR','N','N','N','Y','01a06dbf-d99b-7ce8-a78b-8bf7c556c6e8','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:48:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800839,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:48:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:48:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CapM3','Capacidade (m³)','Capacidade (m³)','LBR','01a06dc0-05a2-720f-afe8-0d7be992d326')
;

-- 4 de set. de 2026 15:48:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802343,0,'LBR_CapM3',800092,'LBR_CapM3',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:48:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:48:36','YYYY-MM-DD HH24:MI:SS'),10,800839,'Y','N','LBR','N','N','N','Y','01a06dc0-553c-7ac2-99eb-546d9e799e8c','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:48:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800840,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:48:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:48:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpRod','Tipo de Rodado','Tipo de Rodado','LBR','01a06dc0-818d-7c78-b37a-4a90f863467b')
;

-- 4 de set. de 2026 15:49:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802344,0,'LBR_tpRod',800092,'LBR_tpRod',2,'N','N','N','N','N',0,'N',17,800105,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:49:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:49:07','YYYY-MM-DD HH24:MI:SS'),10,800840,'Y','N','LBR','N','N','N','Y','01a06dc0-cfd4-7781-bc23-5c3fc6387ae4','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:49:30 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800841,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:49:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:49:30','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpCar','Tipo de Carroceria','Tipo de Carroceria','LBR','01a06dc1-28d8-71d9-8e4b-deef46fb1626')
;

-- 4 de set. de 2026 15:50:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802345,0,'LBR_tpCar',800092,'LBR_tpCar',2,'N','N','N','N','N',0,'N',17,800106,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:50:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:50:00','YYYY-MM-DD HH24:MI:SS'),10,800841,'Y','N','LBR','N','N','N','Y','01a06dc1-9ea8-7fb8-97e0-3824527c6ad7','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:50:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800842,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:50:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:50:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_VeicUF_ID','UF do Veículo','UF do Veículo','LBR','01a06dc1-dd21-7d45-ad7d-e0d0943146d7')
;

-- 4 de set. de 2026 15:50:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802346,0,'LBR_VeicUF_ID',800092,'LBR_VeicUF_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:50:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:50:38','YYYY-MM-DD HH24:MI:SS'),10,800842,'Y','N','LBR','N','N','N','Y','01a06dc2-32cc-74a2-b9eb-6a44747aa8e2','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:50:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800843,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:50:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:50:50','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IsOwnerNotEmitter','Veículo de Terceiro','Veículo de Terceiro','LBR','01a06dc2-6183-7454-9a97-ca8c2642e9f9')
;

-- 4 de set. de 2026 15:51:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802347,0,'LBR_IsOwnerNotEmitter',800092,'LBR_IsOwnerNotEmitter','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:51:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:51:04','YYYY-MM-DD HH24:MI:SS'),10,800843,'Y','N','LBR','N','N','N','Y','01a06dc2-9abb-7314-8207-144f4d6c2966','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:51:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800844,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:51:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:51:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropCNPJ','Proprietário (CNPJ)','Proprietário (CNPJ)','LBR','01a06dc2-c6ad-7a42-9655-bfe2fd35e414')
;

-- 4 de set. de 2026 15:51:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802348,0,'LBR_PropCNPJ',800092,'LBR_PropCNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:51:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:51:30','YYYY-MM-DD HH24:MI:SS'),10,800844,'Y','N','LBR','N','N','N','Y','01a06dc3-000d-7312-accd-a00f42093058','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:51:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800845,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:51:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:51:42','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropCPF','Proprietário (CPF)','Proprietário (CPF)','LBR','01a06dc3-2bc0-7f8a-8364-26cc68dca1f6')
;

-- 4 de set. de 2026 15:53:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802349,0,'LBR_PropCPF',800092,'LBR_PropCPF',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:53:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:53:13','YYYY-MM-DD HH24:MI:SS'),10,800845,'Y','N','LBR','N','N','N','Y','01a06dc4-9090-78da-bcb1-a8e10042f224','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:53:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800846,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:53:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:53:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropRNTRC','Proprietário (RNTRC)','Proprietário (RNTRC)','LBR','01a06dc4-bb67-79e7-99dd-c985550938df')
;

-- 4 de set. de 2026 15:53:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802350,0,'LBR_PropRNTRC',800092,'LBR_PropRNTRC',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:53:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:53:37','YYYY-MM-DD HH24:MI:SS'),10,800846,'Y','N','LBR','N','N','N','Y','01a06dc4-ee6b-79be-b2c0-f802a5aa196f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:53:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800847,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:53:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:53:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropName','Proprietário (Nome)','Proprietário (Nome)','LBR','01a06dc5-17a4-7802-b104-6152a4653056')
;

-- 4 de set. de 2026 15:54:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802351,0,'LBR_PropName',800092,'LBR_PropName',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:54:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:54:02','YYYY-MM-DD HH24:MI:SS'),10,800847,'Y','Y','LBR','N','N','N','Y','01a06dc5-516e-77bd-ab48-954748eadadb','Y',20,'N','N','N','N')
;

-- 4 de set. de 2026 15:54:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800848,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:54:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:54:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropIE','Proprietário (Inscrição Estadual)','Proprietário (Inscrição Estadual)','LBR','01a06dc5-8168-7994-9613-2cd296208169')
;

-- 4 de set. de 2026 15:54:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802352,0,'LBR_PropIE',800092,'LBR_PropIE',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:54:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:54:32','YYYY-MM-DD HH24:MI:SS'),10,800848,'Y','N','LBR','N','N','N','Y','01a06dc5-c44a-7e72-a716-f234e49a639c','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:54:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800849,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:54:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:54:45','YYYY-MM-DD HH24:MI:SS'),10,'LBR_PropUF_ID','Proprietário (UF)','Proprietário (UF)','LBR','01a06dc5-f6c3-79c5-9be7-cbd33a7cff09')
;

-- 4 de set. de 2026 15:55:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802353,0,'LBR_PropUF_ID',800092,'LBR_PropUF_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:55:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:55:14','YYYY-MM-DD HH24:MI:SS'),10,800849,'Y','N','LBR','N','N','N','Y','01a06dc6-6939-7381-b96a-738e20528b16','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:55:27 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800850,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:55:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:55:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpProp','Tipo de Proprietário','Tipo de Proprietário','LBR','01a06dc6-997d-7f75-b880-780b5527394f')
;

-- 4 de set. de 2026 15:55:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802354,0,'LBR_tpProp',800092,'LBR_tpProp',1,'N','N','N','N','N',0,'N',17,800107,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:55:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:55:47','YYYY-MM-DD HH24:MI:SS'),10,800850,'Y','N','LBR','N','N','N','Y','01a06dc6-e9c3-704d-81b6-f8e3477f31d8','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:56:01 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800851,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:56:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:56:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR_InfAdFisco','Informações de Interesse do Fisco','Informações de Interesse do Fisco','LBR','01a06dc7-1e7d-7129-a589-85e9ec0cdf9c')
;

-- 4 de set. de 2026 15:56:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802355,0,'LBR_InfAdFisco',800092,'LBR_InfAdFisco',2000,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:56:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:56:15','YYYY-MM-DD HH24:MI:SS'),10,800851,'Y','N','LBR','N','N','N','Y','01a06dc7-5614-7449-9ea9-5e2f49370a2a','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:56:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800852,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:56:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:56:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR_InfCpl','Informações Complementares','Informações Complementares','LBR','01a06dc7-7f5c-72eb-9968-b312c6466c8d')
;

-- 4 de set. de 2026 15:56:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802356,0,'LBR_InfCpl',800092,'LBR_InfCpl',5000,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:56:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:56:39','YYYY-MM-DD HH24:MI:SS'),10,800852,'Y','N','LBR','N','N','N','Y','01a06dc7-b472-7496-8544-a8995498a6de','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:56:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800853,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:56:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:56:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR_MDFeStatus','Situação do MDF-e','Situação do MDF-e','LBR','01a06dc7-f1a0-7a92-ae40-7c8f49dafdc2')
;

-- 4 de set. de 2026 15:57:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802357,0,'LBR_MDFeStatus',800092,'LBR_MDFeStatus','DR',2,'N','N','N','N','N',0,'N',17,800110,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:57:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:57:36','YYYY-MM-DD HH24:MI:SS'),10,800853,'Y','N','LBR','N','N','N','Y','01a06dc8-92e5-7eea-ae63-46a3d612044e','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:58:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800854,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:57:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:57:59','YYYY-MM-DD HH24:MI:SS'),10,'LBR_cStat','Código do Status (SEFAZ)','Código do Status (SEFAZ)','LBR','01a06dc8-eed1-715b-9857-4dfcc49088d4')
;

-- 4 de set. de 2026 15:58:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802358,0,'LBR_cStat',800092,'LBR_cStat',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:58:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:58:13','YYYY-MM-DD HH24:MI:SS'),10,800854,'Y','N','LBR','N','N','N','Y','01a06dc9-2533-7123-8461-706268f925f9','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:58:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800855,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:58:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:58:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR_xMotivo','Motivo do Status (SEFAZ)','Motivo do Status (SEFAZ)','LBR','01a06dc9-5349-7d77-a0ba-4778d88fec63')
;

-- 4 de set. de 2026 15:58:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802359,0,'LBR_xMotivo',800092,'LBR_xMotivo',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:58:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:58:39','YYYY-MM-DD HH24:MI:SS'),10,800855,'Y','N','LBR','N','N','N','Y','01a06dc9-8b8e-747b-bf06-09a81da3ef71','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:58:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800856,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:58:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:58:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Protocol','Protocolo de Autorização','Protocolo de Autorização','LBR','01a06dc9-bcd0-7549-8891-ad20a5043fe5')
;

-- 4 de set. de 2026 15:59:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802360,0,'LBR_Protocol',800092,'LBR_Protocol',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:59:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:59:04','YYYY-MM-DD HH24:MI:SS'),10,800856,'Y','N','LBR','N','N','N','Y','01a06dc9-ed8a-7159-9df5-2bca400da8ac','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 15:59:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800857,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:59:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:59:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DateProtocol','Data do Protocolo','Data do Protocolo','LBR','01a06dca-13a3-7c78-a819-1c68ac883dce')
;

-- 4 de set. de 2026 15:59:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802361,0,'LBR_DateProtocol',800092,'LBR_DateProtocol',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2026-09-04 15:59:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 15:59:32','YYYY-MM-DD HH24:MI:SS'),10,800857,'Y','N','LBR','N','N','N','Y','01a06dca-5764-7030-a9a2-3ea56ce10db3','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:00:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802362,0,'DigestValue','Identifies a DigestValue',800092,'LBR_DigestValue',64,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:00:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:00:05','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = '7f70d38f-1a82-4c29-8922-c5f1c6ceb798'),'Y','N','LBR','N','N','N','Y','01a06dca-db82-7b8b-b500-11adb817754a','Y',0,'N','N','N','N','N')
;

-- 4 de set. de 2026 16:00:18 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800858,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:00:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:00:18','YYYY-MM-DD HH24:MI:SS'),10,'LBR_Recibo','Número do Recibo','Número do Recibo','LBR','01a06dcb-0bbd-7ec6-b6ae-d43c0405ed95')
;

-- 4 de set. de 2026 16:00:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802363,0,'LBR_Recibo',800092,'LBR_Recibo',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:00:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:00:29','YYYY-MM-DD HH24:MI:SS'),10,800858,'Y','N','LBR','N','N','N','Y','01a06dcb-3966-7593-aa70-ac07003c0583','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:00:40 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800859,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:00:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:00:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR_QrCodMDFe','QR Code','QR Code','LBR','01a06dcb-6303-70d9-994e-86d5043f6b46')
;

-- 4 de set. de 2026 16:00:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802364,0,'LBR_QrCodMDFe',800092,'LBR_QrCodMDFe',1000,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:00:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:00:54','YYYY-MM-DD HH24:MI:SS'),10,800859,'Y','N','LBR','N','N','N','Y','01a06dcb-9a33-7644-bb3d-2e20f988c5bb','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:01:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800860,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:01:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:01:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ProcTransmitir','Transmitir MDF-e','Transmitir MDF-e','LBR','01a06dcb-e9d8-78cf-a030-027ff5adcc7a')
;

-- 4 de set. de 2026 16:01:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802365,0,'LBR_ProcTransmitir',800092,'LBR_ProcTransmitir',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:01:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:01:32','YYYY-MM-DD HH24:MI:SS'),10,800860,'Y','N','LBR','N','N','N','Y','01a06dcc-2e11-7279-b188-4cd101e7482f','Y',0,'Y','N','N','N')
;

-- 4 de set. de 2026 16:01:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800861,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:01:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:01:43','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CarregaCEP','CEP do Carregamento','CEP do Carregamento','LBR','01a06dcc-5ac3-737e-937b-1081ec1437f4')
;

-- 4 de set. de 2026 16:01:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802366,0,'LBR_CarregaCEP',800092,'LBR_CarregaCEP',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:01:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:01:55','YYYY-MM-DD HH24:MI:SS'),10,800861,'Y','N','LBR','N','N','N','Y','01a06dcc-881d-71f7-a129-1f710dc15c98','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:02:07 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800862,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:02:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:02:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CarregaLatitude','Latitude do Carregamento','Latitude do Carregamento','LBR','01a06dcc-b634-7517-b188-b1dc2ecc84c0')
;

-- 4 de set. de 2026 16:02:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802367,0,'LBR_CarregaLatitude',800092,'LBR_CarregaLatitude',14,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:02:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:02:21','YYYY-MM-DD HH24:MI:SS'),10,800862,'Y','N','LBR','N','N','N','Y','01a06dcc-ecca-72bb-b8c1-bc89a19dbfe1','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:02:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800863,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:02:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:02:32','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CarregaLongitude','Longitude do Carregamento','Longitude do Carregamento','LBR','01a06dcd-1743-776b-833d-d2369b2e76ad')
;

-- 4 de set. de 2026 16:02:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802368,0,'LBR_CarregaLongitude',800092,'LBR_CarregaLongitude',14,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:02:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:02:45','YYYY-MM-DD HH24:MI:SS'),10,800863,'Y','N','LBR','N','N','N','Y','01a06dcd-49ab-714a-9a93-0b8515b7dc75','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:02:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800864,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:02:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:02:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DescarregaCEP','CEP do Descarregamento','CEP do Descarregamento','LBR','01a06dcd-780a-752a-9ca1-891005dec2cc')
;

-- 4 de set. de 2026 16:03:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802369,0,'LBR_DescarregaCEP',800092,'LBR_DescarregaCEP',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:03:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:03:07','YYYY-MM-DD HH24:MI:SS'),10,800864,'Y','N','LBR','N','N','N','Y','01a06dcd-9f23-7029-b51c-08554781414f','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:03:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800865,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:03:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:03:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DescarregaLatitude','Latitude do Descarregamento','Latitude do Descarregamento','LBR','01a06dcd-c74d-78a4-9782-52789f9a587e')
;

-- 4 de set. de 2026 16:03:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802370,0,'LBR_DescarregaLatitude',800092,'LBR_DescarregaLatitude',14,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:03:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:03:30','YYYY-MM-DD HH24:MI:SS'),10,800865,'Y','N','LBR','N','N','N','Y','01a06dcd-fa5b-786e-a89f-f3300d11bd25','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:03:40 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800866,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:03:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:03:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DescarregaLongitude','Longitude do Descarregamento','Longitude do Descarregamento','LBR','01a06dce-20e1-7dd8-a309-42f033a31ae5')
;

-- 4 de set. de 2026 16:03:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802371,0,'LBR_DescarregaLongitude',800092,'LBR_DescarregaLongitude',14,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:03:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:03:52','YYYY-MM-DD HH24:MI:SS'),10,800866,'Y','N','LBR','N','N','N','Y','01a06dce-5141-791e-bc4d-2069ab8b9e91','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:04:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800867,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:04:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:04:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RespTecCNPJ','Responsável Técnico (CNPJ)','Responsável Técnico (CNPJ)','LBR','01a06dce-806f-74a4-96c8-bde966cf86db')
;

-- 4 de set. de 2026 16:04:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802372,0,'LBR_RespTecCNPJ',800092,'LBR_RespTecCNPJ',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:04:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:04:22','YYYY-MM-DD HH24:MI:SS'),10,800867,'Y','N','LBR','N','N','N','Y','01a06dce-c590-7c78-95fc-02ac09e73ec9','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:04:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800868,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:04:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:04:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RespTecContact','Responsável Técnico (Contato)','Responsável Técnico (Contato)','LBR','01a06dce-f64c-74a6-8c33-197592e85659')
;

-- 4 de set. de 2026 16:04:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802373,0,'LBR_RespTecContact',800092,'LBR_RespTecContact',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:04:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:04:48','YYYY-MM-DD HH24:MI:SS'),10,800868,'Y','N','LBR','N','N','N','Y','01a06dcf-2bd4-73de-9590-5549c798679d','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:04:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800869,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:04:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:04:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RespTecEMail','Responsável Técnico (E-mail)','Responsável Técnico (E-mail)','LBR','01a06dcf-5157-7719-ae1c-167a2b7459d7')
;

-- 4 de set. de 2026 16:05:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802374,0,'LBR_RespTecEMail',800092,'LBR_RespTecEMail',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:05:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:05:11','YYYY-MM-DD HH24:MI:SS'),10,800869,'Y','N','LBR','N','N','N','Y','01a06dcf-84ed-78e0-b51b-f7ab5ac9eb9b','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:05:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800870,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:05:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:05:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR_RespTecPhone','Responsável Técnico (Telefone)','Responsável Técnico (Telefone)','LBR','01a06dcf-c037-753d-b216-ac501f6a7c18')
;

-- 4 de set. de 2026 16:05:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802375,0,'LBR_RespTecPhone',800092,'LBR_RespTecPhone',12,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:05:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:05:39','YYYY-MM-DD HH24:MI:SS'),10,800870,'Y','N','LBR','N','N','N','Y','01a06dcf-f2b1-77de-bb44-862bb0190adc','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:06:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800871,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:06:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:06:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CategCombVeic','Categoria de Combinação Veicular','Categoria de Combinação Veicular','LBR','01a06dd0-fe0a-7ce2-86ad-952ce8d7de28')
;

-- 4 de set. de 2026 16:07:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802376,0,'LBR_CategCombVeic',800092,'LBR_CategCombVeic',2,'N','N','N','N','N',0,'N',17,800115,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:07:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:07:03','YYYY-MM-DD HH24:MI:SS'),10,800871,'Y','N','LBR','N','N','N','Y','01a06dd1-3beb-7517-a566-0eed544e0ec2','Y',0,'N','N','N','N')
;

-- 4 de set. de 2026 16:07:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800872,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:07:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:07:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CodAgPorto','Código de Agendamento no Porto','Código de Agendamento no Porto','LBR','01a06dd1-63b9-7fc3-bf0e-2fa90847d792')
;

-- 4 de set. de 2026 16:07:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802377,0,'LBR_CodAgPorto',800092,'LBR_CodAgPorto',16,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-09-04 16:07:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-04 16:07:28','YYYY-MM-DD HH24:MI:SS'),10,800872,'Y','N','LBR','N','N','N','Y','01a06dd1-9cb6-7690-8adf-abec57e62942','Y',0,'N','N','N','N')
;


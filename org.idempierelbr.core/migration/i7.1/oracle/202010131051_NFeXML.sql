SET SQLBLANKLINES ON
SET DEFINE OFF

-- NF-e XML
-- 12 de out de 2020 07:38:41 PDT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800100,0,0,'Y',TO_DATE('2020-10-12 07:35:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:35:30','YYYY-MM-DD HH24:MI:SS'),0,'Download NF-e XML','Download NF-e XML From Sefaz','This process allows you to download NF-e XML from Sefaz web-services.','N','LBR_Download_NFe_XML','N','org.idempierelbr.nfe.process.DownloadNFeXML','3','LBR',0,0,'N','N','Y','N','da9e57e8-d233-4d94-b368-9657f9028d9b','P')
;

-- 12 de out de 2020 07:41:13 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800136,0,0,'Y',TO_DATE('2020-10-12 07:41:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:41:12','YYYY-MM-DD HH24:MI:SS'),0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800100,10,18,130,'N',0,'Y','-1','AD_Org_ID','Y','LBR',113,'205a59be-9f5d-431f-b2d9-73aa14630858','N')
;

-- 12 de out de 2020 07:43:26 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800453,0,0,'Y',TO_DATE('2020-10-12 07:43:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:43:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NSU','NSU','NSU','LBR','e40d4139-ae20-4053-8c11-ed07e2e53903')
;

-- 12 de out de 2020 07:43:45 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800454,0,0,'Y',TO_DATE('2020-10-12 07:43:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:43:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR_LastNSU','Last NSU','Last NSU','LBR','64e140d3-4291-4a7b-8040-0dfc4c74d6b9')
;

-- 12 de out de 2020 07:48:18 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800137,0,0,'Y',TO_DATE('2020-10-12 07:48:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:48:18','YYYY-MM-DD HH24:MI:SS'),0,'Last NSU',800100,20,10,'N',15,'N','LBR_LastNSU','Y','LBR',800454,'82312c0d-ae7c-4d4c-ab4d-b4af909d1423','N')
;

-- 12 de out de 2020 07:48:48 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted) VALUES (800138,0,0,'Y',TO_DATE('2020-10-12 07:48:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:48:48','YYYY-MM-DD HH24:MI:SS'),0,'NSU',800100,30,10,'N',15,'N','LBR_NSU','N','LBR','932ad885-ef26-48ec-964a-8269b9c57a1d','N')
;

-- 12 de out de 2020 07:50:32 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800139,0,0,'Y',TO_DATE('2020-10-12 07:50:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:50:32','YYYY-MM-DD HH24:MI:SS'),0,'NFe ID',800100,40,10,'N',44,'N','LBR_NFeID','Y','LBR',1000172,'422f81a4-550c-4d9b-abb3-20d89c879bd9','N')
;

-- 12 de out de 2020 07:52:02 PDT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800051,'Download NF-e XML','Download NF-e XML','P',0,0,'Y',TO_DATE('2020-10-12 07:52:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-12 07:52:02','YYYY-MM-DD HH24:MI:SS'),0,'N',800100,'N','N','LBR','Y','95f058c8-31fd-4439-8f5a-c024bc51230d')
;

-- 12 de out de 2020 07:52:02 PDT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800051, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800051)
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- 12 de out de 2020 07:52:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800051
;

-- 13 de out de 2020 05:22:06 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800455,0,0,'Y',TO_DATE('2020-10-13 05:22:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:22:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFeXML_ID','NFe XML','NFe XML','LBR','e859b487-2c06-483c-8b19-fcc2afdf71e3')
;

-- 13 de out de 2020 05:22:16 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800456,0,0,'Y',TO_DATE('2020-10-13 05:22:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:22:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFeXML_UU','NFe XML','NFe XML','U','fcdeadaf-d714-4368-b0a9-c1f691b90840')
;

-- 13 de out de 2020 05:22:40 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800457,0,0,'Y',TO_DATE('2020-10-13 05:22:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:22:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR_SchemaName','Schema Name','Schema Name','LBR','5e7814a5-0aa3-470b-b6be-7e381ec58914')
;

-- 13 de out de 2020 05:23:31 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800458,0,0,'Y',TO_DATE('2020-10-13 05:23:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:23:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR_UltimaManifestacao','Ultima Manifestacao','Ultima Manifestacao','LBR','4abbaa45-06d5-4b5d-9735-7aaa0f612f51')
;

-- 13 de out de 2020 05:24:16 PDT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800064,'NFe XML','LBR_NFeXML',0,'3',0,0,'Y',TO_DATE('2020-10-13 05:24:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:24:15','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','LBR','N','Y','L','N','Y','9601a4ab-6890-430e-87b6-bc89b7c8ea06','N','N','N')
;

-- 13 de out de 2020 05:24:16 PDT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFeXML',1000000,'N','N','Table LBR_NFeXML','Y','Y',0,0,TO_DATE('2020-10-13 05:24:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:24:16','YYYY-MM-DD HH24:MI:SS'),0,800492,'Y',1000000,1,200000,'ae265bd4-dcab-4c80-b4fb-fe5b1f51a3b9')
;

-- 13 de out de 2020 05:24:37 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801674,0,'NFe XML',800064,'LBR_NFeXML_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_DATE('2020-10-13 05:24:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:24:37','YYYY-MM-DD HH24:MI:SS'),0,800455,'N','N','LBR','N','N','N','Y','57e1ba98-6f49-4687-a9dc-9521594df675','N',0,'N','N','N','N')
;

-- 13 de out de 2020 05:24:40 PDT
CREATE TABLE LBR_NFeXML (LBR_NFeXML_ID NUMBER(10) DEFAULT NULL , CONSTRAINT LBR_NFeXML_Key PRIMARY KEY (LBR_NFeXML_ID))
;

-- 13 de out de 2020 05:24:56 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801675,0,'NFe XML',800064,'LBR_NFeXML_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-10-13 05:24:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:24:56','YYYY-MM-DD HH24:MI:SS'),0,800456,'N','N','LBR','N','N','N','Y','2e00f2bc-db44-4a91-9c9e-ecaaafc89c0a','N',0,'N','N','N','N')
;

-- 13 de out de 2020 05:24:58 PDT
ALTER TABLE LBR_NFeXML ADD LBR_NFeXML_UU VARCHAR2(36) DEFAULT NULL 
;

-- 13 de out de 2020 05:24:58 PDT
ALTER TABLE LBR_NFeXML ADD CONSTRAINT LBR_NFeXML_UU_idx UNIQUE (LBR_NFeXML_UU)
;

-- 13 de out de 2020 05:25:15 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801676,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800064,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-10-13 05:25:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:25:14','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','06591f74-d712-4ae1-96cb-837378c0aead','N',0,'N','N','D','N')
;

-- 13 de out de 2020 05:25:16 PDT
ALTER TABLE LBR_NFeXML ADD AD_Client_ID NUMBER(10) DEFAULT NULL 
;

-- 13 de out de 2020 05:25:29 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801677,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800064,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-10-13 05:25:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:25:28','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','e258e0bd-8fb8-4a06-a3d4-f5ce0469889c','N',0,'N','N','D','N')
;

-- 13 de out de 2020 05:25:33 PDT
ALTER TABLE LBR_NFeXML ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- 13 de out de 2020 05:25:47 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (801678,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800064,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2020-10-13 05:25:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:25:46','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','35420586-3b1e-422b-9d84-2f7f2601a5ae','N',0,'N','N','N')
;

-- 13 de out de 2020 05:25:48 PDT
ALTER TABLE LBR_NFeXML ADD Created DATE DEFAULT SYSDATE
;

-- 13 de out de 2020 05:26:00 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801679,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800064,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2020-10-13 05:26:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:26:00','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','4675fd94-2d5d-47c0-b5fd-359689ff4933','N',0,'N','N','D','N')
;

-- 13 de out de 2020 05:26:01 PDT
ALTER TABLE LBR_NFeXML ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- 13 de out de 2020 05:26:13 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (801680,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800064,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2020-10-13 05:26:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:26:13','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','9603e3e2-3caa-4213-b1a4-a0fcd8070766','N',0,'N','N','N')
;

-- 13 de out de 2020 05:26:15 PDT
ALTER TABLE LBR_NFeXML ADD Updated DATE DEFAULT SYSDATE
;

-- 13 de out de 2020 05:26:27 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801681,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800064,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2020-10-13 05:26:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:26:27','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','b09adafa-9702-4e6f-9563-424ec51be06b','N',0,'N','N','D','N')
;

-- 13 de out de 2020 05:26:29 PDT
ALTER TABLE LBR_NFeXML ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- 13 de out de 2020 05:26:44 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (801682,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800064,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_DATE('2020-10-13 05:26:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:26:44','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','35cbc326-8605-411d-8dc9-0fe5ae8d7c00','N',0,'N','N','N')
;

-- 13 de out de 2020 05:26:46 PDT
ALTER TABLE LBR_NFeXML ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 13 de out de 2020 05:26:58 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (801683,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800064,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-10-13 05:26:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:26:58','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','N','N','N','Y','9543e3b8-7176-491c-81ae-11fe669939a6','Y',10,'N','N','N')
;

-- 13 de out de 2020 05:27:00 PDT
ALTER TABLE LBR_NFeXML ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 13 de out de 2020 05:27:38 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801684,0,'NSU',800064,'LBR_NSU',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-10-13 05:27:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:27:38','YYYY-MM-DD HH24:MI:SS'),0,800453,'Y','N','LBR','N','N','N','Y','a7b80c4f-dca8-44a7-88a2-a0628a55a38e','Y',0,'N','N','N','N')
;

-- 13 de out de 2020 05:27:40 PDT
ALTER TABLE LBR_NFeXML ADD LBR_NSU VARCHAR2(15) DEFAULT NULL 
;

-- 13 de out de 2020 05:28:00 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801685,0,'NFe ID',800064,'LBR_NFeID',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-10-13 05:27:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:27:59','YYYY-MM-DD HH24:MI:SS'),0,1000172,'Y','N','LBR','N','N','N','Y','13479b0b-f9c9-48b5-ad41-a987145943b4','Y',0,'N','N','N','N')
;

-- 13 de out de 2020 05:28:01 PDT
ALTER TABLE LBR_NFeXML ADD LBR_NFeID VARCHAR2(255) DEFAULT NULL 
;

-- 13 de out de 2020 05:28:28 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801686,0,'Schema Name',800064,'LBR_SchemaName',250,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-10-13 05:28:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:28:27','YYYY-MM-DD HH24:MI:SS'),0,800457,'Y','Y','LBR','N','N','N','Y','a48445a0-1ecb-4284-918b-dd52b42d0f67','Y',20,'N','N','N','N')
;

-- 13 de out de 2020 05:28:39 PDT
ALTER TABLE LBR_NFeXML ADD LBR_SchemaName VARCHAR2(250) DEFAULT NULL 
;

-- 13 de out de 2020 05:29:59 PDT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800054,'LBR_UltimaManifestacaoType','L',0,0,'Y',TO_DATE('2020-10-13 05:29:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:29:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','bd34cfac-0c07-4d23-a0d7-de9e2b433afb')
;

-- 13 de out de 2020 05:31:12 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800211,'210200 - Confirmacao da Operacao ',800054,'210200',0,0,'Y',TO_DATE('2020-10-13 05:31:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:31:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','3e45570b-3471-482e-a710-aa2f7db8f9e5')
;

-- 13 de out de 2020 05:31:46 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800212,'210210 - Ciencia da Operacao',800054,'210210',0,0,'Y',TO_DATE('2020-10-13 05:31:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:31:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','315c14f0-9f91-4ca0-b252-70323d78bb86')
;

-- 13 de out de 2020 05:32:12 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800213,'210220 - Desconhecimento da Operacao',800054,'210220',0,0,'Y',TO_DATE('2020-10-13 05:32:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:32:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','90b06cf2-de1f-4723-a59b-9a43ea5cad97')
;

-- 13 de out de 2020 05:32:43 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800214,'210240 - Operacao nao Realizada',800054,'210240',0,0,'Y',TO_DATE('2020-10-13 05:32:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:32:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','0165255b-ebba-4995-8a8f-f761f9e2c26f')
;

-- 13 de out de 2020 05:34:24 PDT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (801687,0,'Ultima Manifestacao',800064,'LBR_UltimaManifestacao',6,'N','N','N','N','N',0,'N',17,800054,0,0,'Y',TO_DATE('2020-10-13 05:34:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:34:23','YYYY-MM-DD HH24:MI:SS'),0,800458,'Y','N','LBR','N','N','N','Y','1f6b2ebe-9dc9-482e-992d-44f10e78f833','Y',0,'N','N','N','N')
;

-- 13 de out de 2020 05:34:25 PDT
ALTER TABLE LBR_NFeXML ADD LBR_UltimaManifestacao VARCHAR2(6) DEFAULT NULL 
;

-- 13 de out de 2020 05:35:42 PDT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800021,'NFe XML',0,0,'Y',TO_DATE('2020-10-13 05:35:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:35:42','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','N','N',0,0,'N','4100d1c3-62c8-4e03-8982-deb416e7cd2e')
;

-- 13 de out de 2020 05:36:24 PDT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,MaxQueryRecords) VALUES (800061,'XML',800021,10,'Y',800064,0,0,'Y',TO_DATE('2020-10-13 05:36:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','Y','N','N',0,'N','LBR','N','N','7e09ffbd-15ae-4251-b075-d995cf96dc29','B',0)
;

-- 13 de out de 2020 05:36:33 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801516,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800061,801676,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','bc5fa541-ef75-4a3e-b3db-7cb93420ae81','N',2)
;

-- 13 de out de 2020 05:36:33 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801517,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800061,801677,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','62fedb6e-c746-47c2-8733-fd33cfd7bba8','Y','Y',10,4,2)
;

-- 13 de out de 2020 05:36:34 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801518,'Description','Optional short description of the record','A description is limited to 255 characters.',800061,801683,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5ec53c3f-c1ea-417a-b5af-54c605b825b1','Y',20,5)
;

-- 13 de out de 2020 05:36:34 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801519,'NFe XML',800061,801674,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e56f7355-5b1a-4f66-9d26-89b65ab6b8bc','N',2)
;

-- 13 de out de 2020 05:36:34 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801520,'NFe XML',800061,801675,'Y',36,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','de62f938-7d9c-4e7f-b171-20326a83599c','Y',30,2)
;

-- 13 de out de 2020 05:36:35 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801521,'NSU',800061,801684,'Y',15,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e5e107d2-91bf-488d-9750-a2ebb915fd7a','Y',40,2)
;

-- 13 de out de 2020 05:36:35 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801522,'NFe ID',800061,801685,'Y',255,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:35','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','88c42366-973a-40fc-900b-94b1d40ad5da','Y',50,5)
;

-- 13 de out de 2020 05:36:36 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801523,'Schema Name',800061,801686,'Y',250,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:35','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','37eceab8-4c8b-422b-8d38-3e477b82cc6e','Y',60,5)
;

-- 13 de out de 2020 05:36:36 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801524,'Ultima Manifestacao',800061,801687,'Y',6,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a302691d-dd02-4a26-b7e4-168880735243','Y',70,2)
;

-- 13 de out de 2020 05:36:36 PDT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801525,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800061,801682,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-10-13 05:36:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:36:36','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cba16c0a-4625-4d39-8829-22ef7d6b052d','Y',80,2,2)
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801518
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801525
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801520
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801521
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801522
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801523
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801524
;

-- 13 de out de 2020 05:38:36 PDT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-13 05:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801519
;

-- 13 de out de 2020 05:40:06 PDT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800052,'NF-e XML','W',800021,0,0,'Y',TO_DATE('2020-10-13 05:40:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-13 05:40:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','LBR','Y','83e3b808-7bb3-41b7-8c81-177d1d5768bd')
;

-- 13 de out de 2020 05:40:06 PDT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800052, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800052)
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 13 de out de 2020 05:40:26 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800051
;

-- 13 de out de 2020 05:40:27 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800052
;

SELECT lbr_register_migration_script('202010131051_NFeXML.sql') FROM dual;



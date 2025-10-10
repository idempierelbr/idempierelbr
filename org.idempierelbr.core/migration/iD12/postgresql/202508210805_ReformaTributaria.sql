-- 
SELECT register_migration_script('202508210805_ReformaTributaria.sql') FROM dual;

-- 21 de ago. de 2025 08:05:34 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800065,'Doc Line IBS / CBS','LBR_DocLine_IBSCBS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-08-21 08:05:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:05:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','57680d01-757a-40a3-8744-f33bce748a0a','N','N','N','N','Y','N','N')
;

-- 21 de ago. de 2025 08:05:35 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DocLine_IBSCBS',1000000,'N','N','Table LBR_DocLine_IBSCBS','Y','Y',0,0,TO_TIMESTAMP('2025-08-21 08:05:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:05:34','YYYY-MM-DD HH24:MI:SS'),10,800548,'Y',1000000,1,200000,'ee2ea455-227f-4702-9021-2f4471c5ac7a')
;

-- 21 de ago. de 2025 08:06:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800484,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:06:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:06:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DocLine_IBSCBS_ID','Doc Line IBS / CBS','Doc Line IBS / CBS','LBR','e694b9a7-5f4e-42a4-badf-f2e0fbd93e92')
;

-- 21 de ago. de 2025 08:07:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800485,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:07:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:07:08','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DocLine_IBSCBS_UU','Doc Line IBS / CBS','Doc Line IBS / CBS','LBR','1190cf3f-a850-4a74-829b-6267b68d8e56')
;

-- 21 de ago. de 2025 08:07:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801718,0,'Doc Line IBS / CBS',800065,'LBR_DocLine_IBSCBS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:07:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:07:35','YYYY-MM-DD HH24:MI:SS'),10,800484,'N','N','LBR','N','N','N','Y','b93437f4-d542-4655-9116-d21099d82e59','N',0,'N','N','N','N')
;

-- 21 de ago. de 2025 08:07:37 BRT
CREATE TABLE LBR_DocLine_IBSCBS (LBR_DocLine_IBSCBS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_DocLine_IBSCBS_Key PRIMARY KEY (LBR_DocLine_IBSCBS_ID))
;

-- 21 de ago. de 2025 08:07:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801719,0,'Doc Line IBS / CBS',800065,'LBR_DocLine_IBSCBS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:07:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:07:48','YYYY-MM-DD HH24:MI:SS'),10,800485,'N','N','LBR','N','N','N','Y','b7636a57-9371-4115-826e-1cf107c6790a','N',0,'N','N','N','N')
;

-- 21 de ago. de 2025 08:07:49 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_DocLine_IBSCBS_UU VARCHAR(36) DEFAULT NULL 
;

-- 21 de ago. de 2025 08:07:49 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBR_DocLine_IBSCBS_UU_idx UNIQUE (LBR_DocLine_IBSCBS_UU)
;

-- 21 de ago. de 2025 08:08:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801720,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800065,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:08:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:08:02','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','451a2a6e-4e02-4d9c-b74d-490e677c914e','N',0,'N','N','D','N','N')
;

-- 21 de ago. de 2025 08:08:03 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- 21 de ago. de 2025 08:08:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801721,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800065,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:08:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:08:15','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','491b2648-2237-41e4-872e-6fdcbbecdd72','N',0,'N','N','D','N','N')
;

-- 21 de ago. de 2025 08:08:16 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 21 de ago. de 2025 08:08:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801722,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800065,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:08:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:08:29','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','8dca199c-fc3e-4f7d-b6ea-e13cbfc69425','N',0,'N','N','N','N')
;

-- 21 de ago. de 2025 08:08:30 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- 21 de ago. de 2025 08:08:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801723,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800065,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:08:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:08:49','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','4b490b09-b34d-49e6-8799-8e9f03c93813','N',0,'N','N','D','N','N')
;

-- 21 de ago. de 2025 08:08:50 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 21 de ago. de 2025 08:09:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801724,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800065,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:09:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:09:02','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','926ac786-23cd-4f63-8e50-39db258a47f9','N',0,'N','N','N','N')
;

-- 21 de ago. de 2025 08:09:04 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- 21 de ago. de 2025 08:09:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801725,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800065,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:09:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:09:15','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','f1a41710-2932-4c27-bad0-ac9b8b8406ed','N',0,'N','N','D','N','N')
;

-- 21 de ago. de 2025 08:09:17 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 21 de ago. de 2025 08:09:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801726,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800065,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:09:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:09:30','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','b5d77b0d-17a0-4f10-b5fc-677d441ff134','N',0,'N','N','N','N')
;

-- 21 de ago. de 2025 08:09:32 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 21 de ago. de 2025 08:11:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801727,0,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800065,'LBR_DocLine_Details_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-21 08:11:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-21 08:11:39','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','bc2d4dcb-50d3-44c0-8f6c-e6b421d8ea21'),'N','N','LBR','N','N','N','Y','fa334fff-1a75-4524-bbac-5235cc2bea5c','Y',0,'N','N','C','N','N')
;

-- 21 de ago. de 2025 08:11:49 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRDocLineDetails_LBRDocLineIBSCBS', FKConstraintType='C',Updated=TO_TIMESTAMP('2025-08-21 08:11:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801727
;

-- 21 de ago. de 2025 08:11:49 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_DocLine_Details_ID NUMERIC(10) NOT NULL
;

-- 21 de ago. de 2025 08:11:49 BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBRDocLineDetails_LBRDocLineIBSCBS FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 30, 2025, 10:33:28 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800066,'ClassTrib IBS / CBS','LBR_ClassTrib_IBSCBS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-08-30 10:33:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:33:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','3a309496-0411-4657-87dc-f24f69e9dfd9','N','N','N','N','N','N','N')
;

-- Aug 30, 2025, 10:33:28 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ClassTrib_IBSCBS',1000000,'N','N','Table LBR_ClassTrib_IBSCBS','Y','Y',0,0,TO_TIMESTAMP('2025-08-30 10:33:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:33:28','YYYY-MM-DD HH24:MI:SS'),10,800549,'Y',1000000,1,200000,'d1a80fb8-482d-4b15-8dc2-78ddc787701c')
;

-- Aug 30, 2025, 10:35:09 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800067,'CST IBS / CBS','LBR_CST_IBSCBS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-08-30 10:35:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:35:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','1e3a6e25-ff70-49de-9eaf-47d80f48e554','N','N','N','N','N','N','N')
;

-- Aug 30, 2025, 10:35:09 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CST_IBSCBS',1000000,'N','N','Table LBR_CST_IBSCBS','Y','Y',0,0,TO_TIMESTAMP('2025-08-30 10:35:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:35:09','YYYY-MM-DD HH24:MI:SS'),10,800550,'Y',1000000,1,200000,'2278a21d-3a8c-410d-b06a-f6f1f501a0f4')
;

-- Aug 30, 2025, 10:36:21 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800486,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:36:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:36:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CST_IBSCBS_ID','CST IBS / CBS','CST IBS / CBS','LBR','44c4d8d3-b8b9-442d-91a1-830716c5daca')
;

-- Aug 30, 2025, 10:36:38 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801729,0,'CST IBS / CBS',800067,'LBR_CST_IBSCBS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:36:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:36:38','YYYY-MM-DD HH24:MI:SS'),10,800486,'N','N','LBR','N','N','N','Y','14cec915-95b8-4384-ab75-05eb5809d298','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 10:36:40 AM BRT
CREATE TABLE LBR_CST_IBSCBS (LBR_CST_IBSCBS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_CST_IBSCBS_Key PRIMARY KEY (LBR_CST_IBSCBS_ID))
;

-- Aug 30, 2025, 10:36:58 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800487,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:36:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:36:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CST_IBSCBS_UU','CST IBS / CBS','CST IBS / CBS','LBR','ca3791a4-6497-4068-a2b8-6f155d67351f')
;

-- Aug 30, 2025, 10:37:11 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801730,0,'CST IBS / CBS',800067,'LBR_CST_IBSCBS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:37:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:37:11','YYYY-MM-DD HH24:MI:SS'),10,800487,'N','N','LBR','N','N','N','Y','a5d3dc3b-b979-468f-848c-a01d7cd0fdf1','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 10:37:12 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_CST_IBSCBS_UU VARCHAR(36) DEFAULT NULL 
;

-- Aug 30, 2025, 10:37:12 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD CONSTRAINT LBR_CST_IBSCBS_UU_idx UNIQUE (LBR_CST_IBSCBS_UU)
;

-- Aug 30, 2025, 10:37:54 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801731,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800067,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:37:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:37:54','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','d610f270-54fb-4147-81f1-0aed9dead023','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 10:37:55 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 10:38:07 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801732,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800067,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:38:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:38:06','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','627ad181-5a7b-408c-ad81-9c87a38c4e4f','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 10:38:08 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 10:38:20 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801733,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800067,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:38:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:38:19','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','0a76b435-9c1e-49d2-b5d3-e1e7ef321278','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 10:38:21 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Aug 30, 2025, 10:38:32 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801734,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800067,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:38:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:38:32','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','3524582b-b676-4f95-9d86-ada19032b8df','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 10:38:33 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 10:38:45 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801735,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800067,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:38:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:38:45','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','003e0d17-a963-407e-b6f1-e0ee22a854ce','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 10:38:46 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Aug 30, 2025, 10:39:00 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801736,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800067,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:39:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:39:00','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','2ea85c39-be0c-4a92-931d-f5b056e7a0f8','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 10:39:01 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 10:39:15 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801737,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800067,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:39:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:39:14','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','d046e789-01f3-42df-8042-26823ec153fa','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 10:39:16 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 30, 2025, 10:41:04 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801738,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800067,'Value',40,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:41:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:41:04','YYYY-MM-DD HH24:MI:SS'),10,620,'Y','Y','LBR','N','N','N','Y','f1f951ea-1c99-435f-a733-139d1551910d','Y',10,'N','N','N','N')
;

-- Aug 30, 2025, 10:41:07 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN Value VARCHAR(40) NOT NULL
;

-- Aug 30, 2025, 10:41:28 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801739,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800067,'Name',255,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:41:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:41:28','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','Y','LBR','N','N','N','Y','208f1ac0-6839-4a07-8bad-ed799c5b91f9','Y',20,'N','N','N','N')
;

-- Aug 30, 2025, 10:41:30 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN Name VARCHAR(255) NOT NULL
;

-- Aug 30, 2025, 10:41:58 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801740,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800067,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 10:41:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 10:41:58','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','Y','LBR','N','N','N','Y','38f70ca8-94d4-4a08-8744-644cbccc99cf','Y',30,'N','N','N','N')
;

-- Aug 30, 2025, 10:41:59 AM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Aug 30, 2025, 4:55:55 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800489,0,0,'Y',TO_TIMESTAMP('2025-08-30 16:55:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 16:55:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndgIBSCBS','IBS/CBS Group Indicator','IBS/CBS Group Indicator','LBR','180cae45-d7be-4ed7-b79f-0b786e10fc40')
;

-- Aug 30, 2025, 4:58:38 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800060,'LBR_CSTGroupIndicator','L',0,0,'Y',TO_TIMESTAMP('2025-08-30 16:58:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 16:58:37','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','7c6e927b-c2dc-4118-b526-f64aaff44a30','N')
;

-- Aug 30, 2025, 4:59:01 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800248,'0 - Not Allowed',800060,'0',0,0,'Y',TO_TIMESTAMP('2025-08-30 16:59:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 16:59:00','YYYY-MM-DD HH24:MI:SS'),10,'LBR','9e10dff9-7926-4eaf-9421-a96163df33b3')
;

-- Aug 30, 2025, 4:59:12 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800249,'1 - Required',800060,'1',0,0,'Y',TO_TIMESTAMP('2025-08-30 16:59:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 16:59:11','YYYY-MM-DD HH24:MI:SS'),10,'LBR','02106c53-0948-4e4a-beb5-4597e7ccea95')
;

-- Aug 30, 2025, 4:59:34 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801741,0,'IBS/CBS Group Indicator',800067,'LBR_IndgIBSCBS',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-08-30 16:59:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 16:59:33','YYYY-MM-DD HH24:MI:SS'),10,800489,'Y','N','LBR','N','N','N','Y','45065a60-4892-4afa-8edb-122ba0b1a1bc','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 4:59:35 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgIBSCBS CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:00:34 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800490,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:00:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:00:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndgIBSCBSMono','IBS/CBS Mono Group Indicator','IBS/CBS Mono Group Indicator','LBR','38c1cffa-2efb-411f-b21a-9eaba8ef0189')
;

-- Aug 30, 2025, 5:01:02 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801742,0,'IBS/CBS Mono Group Indicator',800067,'LBR_IndgIBSCBSMono',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:01:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:01:01','YYYY-MM-DD HH24:MI:SS'),10,800490,'Y','N','LBR','N','N','N','Y','c839c81a-3052-4891-a809-47d6774e7235','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:01:03 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgIBSCBSMono CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:01:32 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800491,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:01:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:01:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndgIBSCBSRed','IBS/CBS Red Group Indicator','IBS/CBS Red Group Indicator','LBR','8a76ab87-2df8-45a3-9759-3ec79bcf0eb0')
;

-- Aug 30, 2025, 5:01:56 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801743,0,'IBS/CBS Red Group Indicator',800067,'LBR_IndgIBSCBSRed',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:01:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:01:55','YYYY-MM-DD HH24:MI:SS'),10,800491,'Y','N','LBR','N','N','N','Y','4d36a900-76df-48d6-9e31-83dbcac3a7e5','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:01:57 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgIBSCBSRed CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:02:26 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800492,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:02:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:02:26','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndgIBSCBSDif','IBS/CBS Dif Group Indicator','IBS/CBS Dif Group Indicator','LBR','35a6fa39-14bb-45c2-9d9a-1660785fc967')
;

-- Aug 30, 2025, 5:02:50 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801744,0,'IBS/CBS Dif Group Indicator',800067,'LBR_IndgIBSCBSDif',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:02:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:02:50','YYYY-MM-DD HH24:MI:SS'),10,800492,'Y','N','LBR','N','N','N','Y','49962959-0afe-463c-91c0-ac0d4dd31789','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:02:52 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgIBSCBSDif CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:03:20 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800493,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:03:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:03:20','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IndgIBSCBSTransfCred','IBS/CBS TransfCred Group Indicator','IBS/CBS TransfCred Group Indicator','LBR','a14dd2a4-11bf-4de1-b224-68b0aad63aec')
;

-- Aug 30, 2025, 5:03:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801745,0,'IBS/CBS TransfCred Group Indicator',800067,'LBR_IndgIBSCBSTransfCred',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:03:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:03:42','YYYY-MM-DD HH24:MI:SS'),10,800493,'Y','N','LBR','N','N','N','Y','db05510d-f405-438e-9e90-1d07ea084bfe','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:03:44 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IndgIBSCBSTransfCred CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:07:52 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800494,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:07:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:07:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndNFe','IBS/CBS NFe Indicator','IBS/CBS NFe Indicator','LBR','22c7364d-4f26-48ff-912b-5f78c8c68527')
;

-- Aug 30, 2025, 5:08:36 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801746,0,'IBS/CBS NFe Indicator',800067,'LBR_IBSCBSIndNFe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:08:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:08:35','YYYY-MM-DD HH24:MI:SS'),10,800494,'Y','N','LBR','N','N','N','Y','efcf82c8-059e-429f-9dcb-e49def22d50b','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:08:37 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndNFe CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:09:08 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800495,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:09:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:09:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndNFCe','IBS/CBS NFCe Indicator','IBS/CBS NFCe Indicator','LBR','2ec256ce-948d-4a71-bdff-5d7ae9d54dc8')
;

-- Aug 30, 2025, 5:09:28 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801747,0,'IBS/CBS NFCe Indicator',800067,'LBR_IBSCBSIndNFCe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:09:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:09:28','YYYY-MM-DD HH24:MI:SS'),10,800495,'Y','N','LBR','N','N','N','Y','81316cd3-f037-4498-8a7c-7cd128e4de5b','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:09:30 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndNFCe CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:09:57 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800496,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:09:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:09:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndCTe','IBS/CBS CTe Indicator','IBS/CBS CTe Indicator','LBR','1a159687-9265-4ba0-84d7-97bdcba4c86a')
;

-- Aug 30, 2025, 5:10:20 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801748,0,'IBS/CBS CTe Indicator',800067,'LBR_IBSCBSIndCTe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:10:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:10:19','YYYY-MM-DD HH24:MI:SS'),10,800496,'Y','N','LBR','N','N','N','Y','2b9c20a6-24a2-41b7-b52f-c405efd48d65','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:10:21 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndCTe CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:11:12 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800497,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:11:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:11:11','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndCteOS','IBS/CBS CteOS Indicator','IBS/CBS CteOS Indicator','LBR','7afa8a5b-0ba3-4afc-9b8c-25109441d46b')
;

-- Aug 30, 2025, 5:11:30 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801749,0,'IBS/CBS CteOS Indicator',800067,'LBR_IBSCBSIndCteOS',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:11:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:11:29','YYYY-MM-DD HH24:MI:SS'),10,800497,'Y','N','LBR','N','N','N','Y','50bf50f2-6e3f-494f-aab3-a05f899f69e5','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:11:31 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndCteOS CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:12:14 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800498,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:12:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:12:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndBPe','IBS/CBS BPe Indicator','IBS/CBS BPe Indicator','LBR','62d68cba-4369-41ca-9087-14b27970bff9')
;

-- Aug 30, 2025, 5:12:36 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801750,0,'IBS/CBS BPe Indicator',800067,'LBR_IBSCBSIndBPe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:12:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:12:36','YYYY-MM-DD HH24:MI:SS'),10,800498,'Y','N','LBR','N','N','N','Y','51e4e688-ba67-4a84-b574-8ab8fdaa9ed0','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:12:38 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndBPe CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:13:15 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800499,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:13:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:13:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndBPeTM','IBS/CBS BPeTM Indicator','IBS/CBS BPeTM Indicator','LBR','f3ac7310-5bb1-4fdf-9676-5b5e1edb8baf')
;

-- Aug 30, 2025, 5:13:35 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801751,0,'IBS/CBS BPeTM Indicator',800067,'LBR_IBSCBSIndBPeTM',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:13:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:13:35','YYYY-MM-DD HH24:MI:SS'),10,800499,'Y','N','LBR','N','N','N','Y','9620864e-de0a-4a0b-b169-fbbf479f9f83','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:13:37 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndBPeTM CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:14:07 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800500,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:14:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:14:07','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndNF3e','IBS/CBS NF3e Indicator','IBS/CBS NF3e Indicator','LBR','4953f142-5dc9-4880-a655-796c5175aaa9')
;

-- Aug 30, 2025, 5:14:37 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801752,0,'IBS/CBS NF3e Indicator',800067,'LBR_IBSCBSIndNF3e',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:14:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:14:36','YYYY-MM-DD HH24:MI:SS'),10,800500,'Y','N','LBR','N','N','N','Y','93178405-b21c-4007-8288-cf4db6e8da9a','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:14:38 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndNF3e CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:15:15 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800501,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:15:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:15:14','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndNFCom','IBS/CBS NFCom Indicator','IBS/CBS NFCom Indicator','LBR','18fc5611-fb7f-4b6c-a072-879606b27e8a')
;

-- Aug 30, 2025, 5:15:34 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801753,0,'IBS/CBS NFCom Indicator',800067,'LBR_IBSCBSIndNFCom',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:15:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:15:33','YYYY-MM-DD HH24:MI:SS'),10,800501,'Y','N','LBR','N','N','N','Y','1e1166c7-9667-4dd6-8e09-35b325ca4c5a','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:15:35 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndNFCom CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:16:02 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800502,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:16:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:16:01','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBSCBSIndNFSe','IBS/CBS NFSe Indicator','IBS/CBS NFSe Indicator','LBR','b2215308-8853-4f6d-9ef5-1becb19ea6e1')
;

-- Aug 30, 2025, 5:16:22 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801754,0,'IBS/CBS NFSe Indicator',800067,'LBR_IBSCBSIndNFSe',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:16:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:16:22','YYYY-MM-DD HH24:MI:SS'),10,800502,'Y','N','LBR','N','N','N','Y','ce1a174d-fa65-45eb-92d8-470affa8ea23','Y',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:16:23 PM BRT
ALTER TABLE LBR_CST_IBSCBS ADD COLUMN LBR_IBSCBSIndNFSe CHAR(1) DEFAULT NULL 
;

-- Aug 30, 2025, 5:17:06 PM BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800022,'IBS/CBS CST',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:17:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:17:05','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','Y','N',0,0,'N','6e6c443b-0777-4631-8bca-be76d0d84f34')
;

-- Aug 30, 2025, 5:17:53 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800062,'CST',800022,10,'Y',800067,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:17:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:17:53','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',0,'N','LBR','Y','N','fd21fe19-2de5-4b98-b46e-959807da083a','B','N','Y',0)
;

-- Aug 30, 2025, 5:18:04 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801688,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800062,801731,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:03','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','74480afa-91a0-4425-aa26-31f5a02bd79c','N',2)
;

-- Aug 30, 2025, 5:18:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801689,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800062,801732,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:04','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2b717110-242b-4b45-80bc-52b8e51c0d52','Y','Y',10,4,2)
;

-- Aug 30, 2025, 5:18:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801690,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800062,801738,'Y',40,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','290390b9-0785-4484-af1f-0cf8e5e38161','Y',20,2)
;

-- Aug 30, 2025, 5:18:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801691,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800062,801739,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d5452ef6-6c84-4b46-8feb-de2e39d439fa','Y',30,5)
;

-- Aug 30, 2025, 5:18:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801692,'Description','Optional short description of the record','A description is limited to 255 characters.',800062,801740,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','935a4476-6c6e-499b-a8b4-e618d9f949f3','Y',40,5)
;

-- Aug 30, 2025, 5:18:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801693,'CST IBS / CBS',800062,801729,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2a664af8-e6f2-4cf3-8010-1f4425b5625f','N',2)
;

-- Aug 30, 2025, 5:18:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801694,'CST IBS / CBS',800062,801730,'Y',36,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8c913a97-b9c4-482b-ba25-f10d70f90989','Y',50,2)
;

-- Aug 30, 2025, 5:18:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801695,'IBS/CBS Group Indicator',800062,801741,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','71ae7078-aebd-4022-a743-c2c72706ddaa','Y',60,2)
;

-- Aug 30, 2025, 5:18:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801696,'IBS/CBS Mono Group Indicator',800062,801742,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c773481e-0f8c-4cae-b6bf-390c7678e5e8','Y',70,2)
;

-- Aug 30, 2025, 5:18:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801697,'IBS/CBS Red Group Indicator',800062,801743,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9f29cb93-2235-42c7-b29e-89021bb0c9eb','Y',80,2)
;

-- Aug 30, 2025, 5:18:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801698,'IBS/CBS Dif Group Indicator',800062,801744,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','43806af6-189f-49df-9b83-d46230cf9a6b','Y',90,2)
;

-- Aug 30, 2025, 5:18:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801699,'IBS/CBS TransfCred Group Indicator',800062,801745,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b3abe6e8-25be-4a7f-8f79-d6e9baf4f022','Y',100,2)
;

-- Aug 30, 2025, 5:18:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801700,'IBS/CBS NFe Indicator',800062,801746,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','43c131aa-d6d6-4f15-a56f-821a1a6b7918','Y',110,2)
;

-- Aug 30, 2025, 5:18:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801701,'IBS/CBS NFCe Indicator',800062,801747,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','52ba9a26-66ec-4a67-bb2d-b18be72a54fd','Y',120,2)
;

-- Aug 30, 2025, 5:18:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801702,'IBS/CBS CTe Indicator',800062,801748,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bc2492be-b862-4e84-a706-811ebf96bb63','Y',130,2)
;

-- Aug 30, 2025, 5:18:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801703,'IBS/CBS CteOS Indicator',800062,801749,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dcbf9895-10df-472f-a47f-5ea16c2531fb','Y',140,2)
;

-- Aug 30, 2025, 5:18:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801704,'IBS/CBS BPe Indicator',800062,801750,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','93e9c645-b73a-4113-ae0d-5a3c6fc9e7ea','Y',150,2)
;

-- Aug 30, 2025, 5:18:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801705,'IBS/CBS BPeTM Indicator',800062,801751,'Y',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7df024a5-a06d-48bd-99ff-acef24905a2e','Y',160,2)
;

-- Aug 30, 2025, 5:18:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801706,'IBS/CBS NF3e Indicator',800062,801752,'Y',1,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d138bae5-1f12-4f47-8aee-b43984f12155','Y',170,2)
;

-- Aug 30, 2025, 5:18:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801707,'IBS/CBS NFCom Indicator',800062,801753,'Y',1,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c8933142-4325-4e20-bbb5-1b9b731aca33','Y',180,2)
;

-- Aug 30, 2025, 5:18:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801708,'IBS/CBS NFSe Indicator',800062,801754,'Y',1,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5252d1a1-7580-4818-837e-f6c0e477fd88','Y',190,2)
;

-- Aug 30, 2025, 5:18:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801709,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800062,801737,'Y',1,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:18:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','388033b7-6eb0-442b-a590-a40b68859ee1','Y',200,2,2)
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET SeqNo=50, NumLines=3,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801692
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, XPosition=2, ColumnSpan=3,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801709
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET SeqNo=70, AD_FieldGroup_ID=50006,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801695
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801696
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801698
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET SeqNo=120, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801700
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801701
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801703
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801705
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=4,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801707
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801694
;

-- Aug 30, 2025, 5:25:04 PM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-08-30 17:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801693
;

-- Aug 30, 2025, 5:28:22 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800503,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:28:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:28:22','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClassTrib_IBSCBS_ID','ClassTrib IBS / CBS','ClassTrib IBS / CBS','LBR','8c44ec48-a921-4f20-93ec-17d16a9778f6')
;

-- Aug 30, 2025, 5:28:38 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800504,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:28:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:28:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClassTrib_IBSCBS_UU','ClassTrib IBS / CBS','ClassTrib IBS / CBS','LBR','726e7465-7e02-4972-88c7-10d8d796ff43')
;

-- Aug 30, 2025, 5:29:00 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801755,0,'ClassTrib IBS / CBS',800066,'LBR_ClassTrib_IBSCBS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:28:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:28:59','YYYY-MM-DD HH24:MI:SS'),10,800503,'N','N','LBR','N','N','N','Y','bc7d29cb-b970-4117-8709-121eff45f29b','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:29:01 PM BRT
CREATE TABLE LBR_ClassTrib_IBSCBS (LBR_ClassTrib_IBSCBS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_ClassTrib_IBSCBS_Key PRIMARY KEY (LBR_ClassTrib_IBSCBS_ID))
;

-- Aug 30, 2025, 5:29:16 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801756,0,'ClassTrib IBS / CBS',800066,'LBR_ClassTrib_IBSCBS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:29:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:29:15','YYYY-MM-DD HH24:MI:SS'),10,800504,'N','N','LBR','N','N','N','Y','fbd45ac9-32e0-4623-95de-62382168a810','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:29:17 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_ClassTrib_IBSCBS_UU VARCHAR(36) DEFAULT NULL 
;

-- Aug 30, 2025, 5:29:17 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD CONSTRAINT LBR_ClassTrib_IBSCBS_UU_idx UNIQUE (LBR_ClassTrib_IBSCBS_UU)
;

-- Aug 30, 2025, 5:29:31 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801757,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800066,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:29:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:29:31','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','ebaab6c3-3328-4007-8db9-9615f9eedf95','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 5:29:33 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 5:29:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801758,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800066,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:29:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:29:44','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','e5bbc9cb-294a-4e0c-b321-433a8e3dfbf2','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 5:29:46 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 5:29:59 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801759,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800066,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:29:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:29:58','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','6cbb8903-80c7-452b-8e15-a07a72ae63bc','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:30:00 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Aug 30, 2025, 5:30:11 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801760,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800066,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:30:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:30:11','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','c950ef34-d53d-496b-83d6-6734350bba22','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 5:30:13 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 5:30:25 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801761,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800066,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:30:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:30:24','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','3345b7ff-b6cd-4ca7-96e0-2fb02572c65c','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:30:26 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Aug 30, 2025, 5:30:36 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801762,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800066,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:30:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:30:35','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','65f318e1-61cd-4b04-876c-e397c76c2964','N',0,'N','N','D','N','N')
;

-- Aug 30, 2025, 5:30:37 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Aug 30, 2025, 5:30:50 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801763,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800066,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:30:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:30:50','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','57d0b0eb-935c-4e2e-9740-153c236f52dc','N',0,'N','N','N','N')
;

-- Aug 30, 2025, 5:30:52 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 30, 2025, 5:31:27 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801764,0,'CST IBS / CBS',800066,'LBR_CST_IBSCBS_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:31:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:31:27','YYYY-MM-DD HH24:MI:SS'),10,800486,'N','N','LBR','N','N','N','Y','de2beefc-3274-42ae-9831-854ab9d8cd7c','Y',0,'N','N','C','N','N')
;

-- Aug 30, 2025, 5:31:29 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRCSTIBSCBS_LBRClassTribIBSCBS', FKConstraintType='C',Updated=TO_TIMESTAMP('2025-08-30 17:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801764
;

-- Aug 30, 2025, 5:31:29 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_CST_IBSCBS_ID NUMERIC(10) NOT NULL
;

-- Aug 30, 2025, 5:31:29 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD CONSTRAINT LBRCSTIBSCBS_LBRClassTribIBSCBS FOREIGN KEY (LBR_CST_IBSCBS_ID) REFERENCES lbr_cst_ibscbs(lbr_cst_ibscbs_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 30, 2025, 5:33:03 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801765,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800066,'Value',40,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:33:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:33:03','YYYY-MM-DD HH24:MI:SS'),10,620,'Y','Y','LBR','N','N','N','Y','9d64ab25-0e98-4b40-a22c-4123c80eb595','Y',10,'N','N','N','N')
;

-- Aug 30, 2025, 5:33:04 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN Value VARCHAR(40) NOT NULL
;

-- Aug 30, 2025, 5:33:22 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801766,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800066,'Name',255,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:33:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:33:22','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','Y','LBR','N','N','N','Y','bf2d2c85-3bb1-4cf4-a2c2-a780ff635e85','Y',20,'N','N','N','N')
;

-- Aug 30, 2025, 5:33:24 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN Name VARCHAR(255) NOT NULL
;

-- Aug 30, 2025, 5:33:37 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801767,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800066,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:33:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:33:36','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','Y','LBR','N','N','N','Y','dfd784e1-2976-44d9-9cea-5390983ac9c7','Y',30,'N','N','N','N')
;

-- Aug 30, 2025, 5:33:38 PM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Aug 30, 2025, 5:34:36 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800063,'ClassTrib',800022,20,'Y',800066,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:35','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N',801764,'N','N',1,'N','LBR','Y','N',801729,'d9332437-7d95-4896-a9ea-18d04973ddbd','B','N','Y',0)
;

-- Aug 30, 2025, 5:34:38 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801710,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800063,801757,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e7efceae-cd13-41b2-bb07-5937a38bcace','N',2)
;

-- Aug 30, 2025, 5:34:38 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801711,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800063,801758,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a91728bf-646e-43b2-b8b7-2ff287f19fda','Y','Y',10,4,2)
;

-- Aug 30, 2025, 5:34:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801712,'CST IBS / CBS',800063,801764,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','361818a2-beaf-46b4-93e8-d8e7c7d1a8e5','Y',20,2)
;

-- Aug 30, 2025, 5:34:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801713,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800063,801765,'Y',40,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4cf774b1-34ad-4e56-8247-bffae2d3279f','Y',30,2)
;

-- Aug 30, 2025, 5:34:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801714,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800063,801766,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','49cc463a-7003-491c-8850-387fb1f1ba20','Y',40,5)
;

-- Aug 30, 2025, 5:34:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801715,'Description','Optional short description of the record','A description is limited to 255 characters.',800063,801767,'Y',255,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','eacb7ea5-4947-4024-a305-f81b329fe9e8','Y',50,5)
;

-- Aug 30, 2025, 5:34:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801716,'ClassTrib IBS / CBS',800063,801755,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a2030b48-b691-4e93-b035-4308f01bd9fe','N',2)
;

-- Aug 30, 2025, 5:34:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801717,'ClassTrib IBS / CBS',800063,801756,'Y',36,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0b345f8b-4b64-4649-ba39-4f931580dc46','Y',60,2)
;

-- Aug 30, 2025, 5:34:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801718,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800063,801763,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-08-30 17:34:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:34:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a2cde72d-9659-4e56-b410-f7767af635d1','Y',70,2,2)
;

-- Aug 30, 2025, 5:35:38 PM BRT
UPDATE AD_Field SET SeqNo=30, ColumnSpan=5,Updated=TO_TIMESTAMP('2025-08-30 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801712
;

-- Aug 30, 2025, 5:35:38 PM BRT
UPDATE AD_Field SET SeqNo=60, NumLines=3,Updated=TO_TIMESTAMP('2025-08-30 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801715
;

-- Aug 30, 2025, 5:35:38 PM BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2025-08-30 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801718
;

-- Aug 30, 2025, 5:35:38 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-08-30 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801717
;

-- Aug 30, 2025, 5:35:38 PM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-08-30 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801716
;

-- Aug 30, 2025, 5:36:36 PM BRT
UPDATE AD_Column SET SeqNo=20,Updated=TO_TIMESTAMP('2025-08-30 17:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801739
;

-- Aug 30, 2025, 5:37:05 PM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=10,Updated=TO_TIMESTAMP('2025-08-30 17:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801738
;

-- Aug 30, 2025, 5:37:34 PM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=10,Updated=TO_TIMESTAMP('2025-08-30 17:37:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801765
;

-- Aug 30, 2025, 5:37:45 PM BRT
UPDATE AD_Column SET SeqNo=20,Updated=TO_TIMESTAMP('2025-08-30 17:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801766
;

-- Aug 30, 2025, 5:38:26 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800054,'IBS/CBS CST','W',800022,0,0,'Y',TO_TIMESTAMP('2025-08-30 17:38:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-08-30 17:38:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','LBR','Y','e091559a-6cbe-4454-b579-a72efee99cdc')
;

-- Aug 30, 2025, 5:38:26 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800054, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800054)
;

-- Aug 30, 2025, 5:38:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15,Updated=TO_TIMESTAMP('2025-08-30 17:38:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Aug 30, 2025, 5:38:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=9,Updated=TO_TIMESTAMP('2025-08-30 17:38:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800054
;

-- Sep 2, 2025, 7:23:46 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800505,0,0,'Y',TO_TIMESTAMP('2025-09-02 07:23:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 07:23:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PRedIBS','Red. IBS (%)','Red. IBS (%)','LBR','ae07939b-d582-4f83-b1da-c93d8f8a8a12')
;

-- Sep 2, 2025, 7:24:21 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800506,0,0,'Y',TO_TIMESTAMP('2025-09-02 07:24:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 07:24:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PRedCBS','Red. CBS (%)','Red. CBS (%)','LBR','335b5ed4-6927-47cd-bd9c-5d09555ad498')
;

-- Sep 2, 2025, 7:25:55 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801768,0,'Red. IBS (%)',800066,'LBR_PRedIBS',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-09-02 07:25:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 07:25:55','YYYY-MM-DD HH24:MI:SS'),100,800505,'Y','N','LBR','N','N','N','Y','21626504-c05b-4d6c-9de1-e9cea1a23632','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 7:26:30 AM BRT
INSERT INTO t_alter_column values('lbr_classtrib_ibscbs','Value','VARCHAR(40)',null,null)
;

-- Sep 2, 2025, 7:26:30 AM BRT
INSERT INTO t_alter_column values('lbr_classtrib_ibscbs','Name','VARCHAR(255)',null,null)
;

-- Sep 2, 2025, 7:26:30 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_PRedIBS NUMERIC DEFAULT NULL 
;

-- Sep 2, 2025, 7:27:05 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801769,0,'Red. CBS (%)',800066,'LBR_PRedCBS',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-09-02 07:27:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 07:27:04','YYYY-MM-DD HH24:MI:SS'),100,800506,'Y','N','LBR','N','N','N','Y','6c118ca5-bd85-4e98-a180-f0c89b692f38','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 7:27:06 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_PRedCBS NUMERIC DEFAULT NULL 
;

-- Sep 2, 2025, 7:56:34 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800507,0,0,'Y',TO_TIMESTAMP('2025-09-02 07:56:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 07:56:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSRedBC','IBS/CBS Red BC Group Indicator','IBS/CBS Red BC Group Indicator','LBR','ebb9a842-ff09-42d8-834d-c4f94aa14e89')
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_Element SET ColumnName='LBR_IndIBSCBSRedBC', Name='IBS/CBS Red BC Indicator', PrintName='IBS/CBS Red BC Indicator',Updated=TO_TIMESTAMP('2025-09-02 08:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=800507
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_Column SET ColumnName='LBR_IndIBSCBSRedBC', Name='IBS/CBS Red BC Indicator', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800507
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IndIBSCBSRedBC', Name='IBS/CBS Red BC Indicator', Description=NULL, Help=NULL, AD_Element_ID=800507 WHERE UPPER(ColumnName)='LBR_INDIBSCBSREDBC' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IndIBSCBSRedBC', Name='IBS/CBS Red BC Indicator', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800507 AND IsCentrallyMaintained='Y'
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IndIBSCBSRedBC', Name='IBS/CBS Red BC Indicator', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800507 AND IsCentrallyMaintained='Y'
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_Field SET Name='IBS/CBS Red BC Indicator', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800507) AND IsCentrallyMaintained='Y'
;

-- Sep 2, 2025, 8:00:07 AM BRT
UPDATE AD_PrintFormatItem SET PrintName='IBS/CBS Red BC Indicator', Name='IBS/CBS Red BC Indicator' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800507)
;

-- Sep 2, 2025, 8:00:51 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801770,0,'IBS/CBS Red BC Indicator',800066,'LBR_IndIBSCBSRedBC',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:00:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:00:50','YYYY-MM-DD HH24:MI:SS'),100,800507,'Y','N','LBR','N','N','N','Y','51e38bab-dd61-49f9-aedf-c09b19c249aa','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:00:52 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndIBSCBSRedBC CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:02:36 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800508,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:02:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSTribRegular','IBS/CBS TribRegular Group Indicator','IBS/CBS TribRegular Group Indicator','LBR','7eeafca6-9aa4-4b56-8af4-75e73e8436bd')
;

-- Sep 2, 2025, 8:03:06 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801771,0,'IBS/CBS TribRegular Group Indicator',800066,'LBR_IndgIBSCBSTribRegular',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:03:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:03:05','YYYY-MM-DD HH24:MI:SS'),100,800508,'Y','N','LBR','N','N','N','Y','024a44ec-7bed-49cc-80b0-7aff66b2ac1b','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:03:07 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSTribRegular CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:03:48 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800509,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:03:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSCredPres','IBS/CBS CredPres Group Indicator','IBS/CBS CredPres Group Indicator','LBR','23ce2796-ea44-4c80-b106-fc52da479f0e')
;

-- Sep 2, 2025, 8:04:10 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801772,0,'IBS/CBS CredPres Group Indicator',800066,'LBR_IndgIBSCBSCredPres',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:04:09','YYYY-MM-DD HH24:MI:SS'),100,800509,'Y','N','LBR','N','N','N','Y','7ceade18-1310-4c0d-9d61-1cd164a6b59a','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:04:11 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSCredPres CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:05:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801773,0,'IBS/CBS Mono Group Indicator',800066,'LBR_IndgIBSCBSMono',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:05:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:05:39','YYYY-MM-DD HH24:MI:SS'),100,800490,'Y','N','LBR','N','N','N','Y','1735dd02-77fc-402e-9523-519a78caf1e8','Y',0,'N','N','N','N','N')
;

-- Sep 2, 2025, 8:05:40 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSMono CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:06:38 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800510,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:06:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSMonoReten','IBS/CBS MonoReten Group Indicator','IBS/CBS MonoReten Group Indicator','LBR','65e08f60-7756-4ff2-8965-cd2d91499958')
;

-- Sep 2, 2025, 8:07:04 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801774,0,'IBS/CBS MonoReten Group Indicator',800066,'LBR_IndgIBSCBSMonoReten',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:07:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:07:04','YYYY-MM-DD HH24:MI:SS'),100,800510,'Y','N','LBR','N','N','N','Y','3b47c7c7-1974-4dbc-93ac-ff3d983db51e','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:07:05 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSMonoReten CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:07:34 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800511,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:07:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:07:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSMonoRet','IBS/CBS MonoRet Group Indicator','IBS/CBS MonoRet Group Indicator','LBR','ac8b2f02-f861-422d-9266-2275734b8942')
;

-- Sep 2, 2025, 8:07:59 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801775,0,'IBS/CBS MonoRet Group Indicator',800066,'LBR_IndgIBSCBSMonoRet',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:07:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:07:58','YYYY-MM-DD HH24:MI:SS'),100,800511,'Y','N','LBR','N','N','N','Y','1015a6b7-aa2b-4e03-b483-fa79d9484dcb','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:08:00 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSMonoRet CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:08:31 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800512,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:08:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:08:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndgIBSCBSMonoDif','IBS/CBS MonoDif Group Indicator','IBS/CBS MonoDif Group Indicator','LBR','7a02dd61-a414-49b1-8522-c3d78ab3ec0f')
;

-- Sep 2, 2025, 8:09:01 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801776,0,'IBS/CBS MonoDif Group Indicator',800066,'LBR_IndgIBSCBSMonoDif',1,'N','N','N','N','N',0,'N',17,800060,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:09:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:09:01','YYYY-MM-DD HH24:MI:SS'),100,800512,'Y','N','LBR','N','N','N','Y','ff1371fd-6eb1-4e6f-a354-83a35a86f299','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:09:02 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN LBR_IndgIBSCBSMonoDif CHAR(1) DEFAULT NULL 
;

-- Sep 2, 2025, 8:09:39 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801777,0,'Date From','Starting date for a range','The Date From indicates the starting date of a range.',800066,'DateFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:09:38','YYYY-MM-DD HH24:MI:SS'),100,1581,'Y','N','U','N','N','N','Y','9f5058ef-18ec-4463-bd9b-5436c3d0cf82','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:09:40 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN DateFrom TIMESTAMP DEFAULT NULL 
;

-- Sep 2, 2025, 8:09:52 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801778,0,'Date To','End date of a date range','The Date To indicates the end date of a range (inclusive)',800066,'DateTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:09:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:09:51','YYYY-MM-DD HH24:MI:SS'),100,1582,'Y','N','LBR','N','N','N','Y','22cc8944-b138-4254-9a8a-c82ffd6ea9ba','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:09:53 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN DateTo TIMESTAMP DEFAULT NULL 
;

-- Sep 2, 2025, 8:11:05 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801779,0,'Updated Date',800066,'UpdatedDate',25,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-09-02 08:11:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:11:05','YYYY-MM-DD HH24:MI:SS'),100,50004,'Y','N','LBR','N','N','N','Y','a02719f9-2207-4735-919f-6f4a3b2f1807','Y',0,'N','N','N','N')
;

-- Sep 2, 2025, 8:11:07 AM BRT
ALTER TABLE LBR_ClassTrib_IBSCBS ADD COLUMN UpdatedDate TIMESTAMP DEFAULT NULL 
;

-- Sep 2, 2025, 8:11:30 AM BRT
UPDATE AD_Table SET AD_Window_ID=800022,Updated=TO_TIMESTAMP('2025-09-02 08:11:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800066
;

-- Sep 2, 2025, 8:11:40 AM BRT
UPDATE AD_Table SET AD_Window_ID=800022,Updated=TO_TIMESTAMP('2025-09-02 08:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=800067
;

-- Sep 2, 2025, 8:12:28 AM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2025-09-02 08:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=801777
;

-- Sep 2, 2025, 8:12:42 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801719,'Red. IBS (%)',800063,801768,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','58da30a9-150b-49df-873c-a98174e4d6cf','Y',80,2)
;

-- Sep 2, 2025, 8:12:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801720,'Red. CBS (%)',800063,801769,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f5e0a8e8-d097-4737-abb2-5b5b063a3905','Y',90,2)
;

-- Sep 2, 2025, 8:12:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801721,'IBS/CBS Red BC Indicator',800063,801770,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','fb94be09-2b3c-437a-9e5f-01dfd168a7f0','Y',100,2)
;

-- Sep 2, 2025, 8:12:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801722,'IBS/CBS TribRegular Group Indicator',800063,801771,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','f0b88461-76b3-4b14-8151-67827ab0fbbf','Y',110,2)
;

-- Sep 2, 2025, 8:12:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801723,'IBS/CBS CredPres Group Indicator',800063,801772,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','aa4d3d76-870e-4cbb-b687-38a0350c68b4','Y',120,2)
;

-- Sep 2, 2025, 8:12:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801724,'IBS/CBS Mono Group Indicator',800063,801773,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','49dbd691-1a07-479d-ae58-1a157b591145','Y',130,2)
;

-- Sep 2, 2025, 8:12:45 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801725,'IBS/CBS MonoReten Group Indicator',800063,801774,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','e8dabb85-9325-499d-9fe5-f21955512842','Y',140,2)
;

-- Sep 2, 2025, 8:12:45 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801726,'IBS/CBS MonoRet Group Indicator',800063,801775,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','b5a8d281-209c-4a59-886a-978a8178b39e','Y',150,2)
;

-- Sep 2, 2025, 8:12:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801727,'IBS/CBS MonoDif Group Indicator',800063,801776,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','253ba7dd-e30d-4047-b056-887824d66003','Y',160,2)
;

-- Sep 2, 2025, 8:12:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801728,'Date From','Starting date for a range','The Date From indicates the starting date of a range.',800063,801777,'Y',7,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','c2e93768-fa16-4ba9-adb4-5c1ca138ab01','Y',170,2)
;

-- Sep 2, 2025, 8:12:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801729,'Date To','End date of a date range','The Date To indicates the end date of a range (inclusive)',800063,801778,'Y',7,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-09-02 08:12:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-09-02 08:12:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBR','edd6fd74-52d3-41de-9cf3-16b3cfaafc12','Y',180,2)
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=1,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801728
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=4,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801729
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET SeqNo=100, AD_FieldGroup_ID=50006,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801719
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, XPosition=4,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801720
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET SeqNo=120, AD_FieldGroup_ID=50006,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801721
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801722
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, XPosition=4,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801723
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801724
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, XPosition=4,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801725
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801726
;

-- Sep 2, 2025, 8:17:13 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, XPosition=4,Updated=TO_TIMESTAMP('2025-09-02 08:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=801727
;

-- Oct 8, 2025, 7:48:56 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801780,0,'CST IBS / CBS',800065,'LBR_CST_IBSCBS_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-08 07:48:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 07:48:55','YYYY-MM-DD HH24:MI:SS'),10,800486,'Y','N','LBR','N','N','N','Y','60fbbe01-3dff-4645-869e-87ef34cb9513','Y',0,'N','N','N','N','N')
;

-- Oct 8, 2025, 7:48:58 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTIBSCBS_LBRDocLineIBSCBS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-08 07:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801780
;

-- Oct 8, 2025, 7:48:58 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CST_IBSCBS_ID NUMERIC(10) NOT NULL
;

-- Oct 8, 2025, 7:48:58 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBRCSTIBSCBS_LBRDocLineIBSCBS FOREIGN KEY (LBR_CST_IBSCBS_ID) REFERENCES lbr_cst_ibscbs(lbr_cst_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 8, 2025, 7:49:46 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801781,0,'ClassTrib IBS / CBS',800065,'LBR_ClassTrib_IBSCBS_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-08 07:49:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 07:49:46','YYYY-MM-DD HH24:MI:SS'),10,800503,'Y','N','LBR','N','N','N','Y','23830677-2a50-4619-a14c-a8f3eedb1450','Y',0,'N','N','N','N','N')
;

-- Oct 8, 2025, 7:49:48 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribIBSCBS_LBRDocLineIBSCBS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-08 07:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801781
;

-- Oct 8, 2025, 7:49:48 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_ClassTrib_IBSCBS_ID NUMERIC(10) NOT NULL
;

-- Oct 8, 2025, 7:49:48 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD CONSTRAINT LBRClassTribIBSCBS_LBRDocLineIBSCBS FOREIGN KEY (LBR_ClassTrib_IBSCBS_ID) REFERENCES lbr_classtrib_ibscbs(lbr_classtrib_ibscbs_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 8, 2025, 7:54:15 AM BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800015,'LBR_ClassTrib_IBSCBS of CST','S','LBR_ClassTrib_IBSCBS.LBR_CST_IBSCBS_ID=@LBR_CST_IBSCBS_ID@ AND LBR_ClassTrib_IBSCBS.IsActive=''Y''',0,0,'Y',TO_TIMESTAMP('2025-10-08 07:54:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 07:54:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR','d6c36730-4199-401a-9700-d93d225f2db3')
;

-- Oct 8, 2025, 7:54:34 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=800015,Updated=TO_TIMESTAMP('2025-10-08 07:54:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801781
;

-- Oct 8, 2025, 8:01:42 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801782,0,'Tax Base Amount','Defines the Tax Base Amount',800065,'LBR_TaxBaseAmt',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 08:01:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 08:01:41','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','09b2d97b-f6ac-4335-be17-c4539fcbad05'),'Y','N','LBR','N','N','N','Y','27f8b950-ae89-4441-800a-b1d588989589','Y',0,'N','N','N','N','N')
;

-- Oct 8, 2025, 8:01:43 AM BRT
INSERT INTO t_alter_column values('lbr_docline_ibscbs','LBR_ClassTrib_IBSCBS_ID','NUMERIC(10)',null,null)
;

-- Oct 8, 2025, 8:01:43 AM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_TaxBaseAmt NUMERIC NOT NULL
;

-- Oct 8, 2025, 8:08:58 AM BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2025-10-08 08:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801782
;

-- Oct 8, 2025, 8:08:59 AM BRT
INSERT INTO t_alter_column values('lbr_docline_ibscbs','LBR_TaxBaseAmt','NUMERIC',null,'NULL')
;

-- Oct 8, 2025, 8:08:59 AM BRT
INSERT INTO t_alter_column values('lbr_docline_ibscbs','LBR_TaxBaseAmt',null,'NULL',null)
;

-- Oct 8, 2025, 2:06:49 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800513,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:06:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:06:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxRate','IBS UF Tax Rate','Indicates the IBS UF Tax Rate','IBS UF Tax Rate','LBR','6d03dade-38db-407e-920f-51115f3d1b64')
;

-- Oct 8, 2025, 2:07:54 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800514,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:07:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:07:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxRate','IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate','IBS Mun. Tax Rate','LBR','04380e7a-78f8-4125-8d77-b43d5343dce2')
;

-- Oct 8, 2025, 2:08:58 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800515,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:08:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:08:57','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxDeferralRate','IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate','IBS Mun. Tax Deferral Rate','LBR','524d7045-4d8f-4c51-a08d-881a78f87003')
;

-- Oct 8, 2025, 2:09:24 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800516,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:09:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:09:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxDeferralRate','IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate','IBS Mun. Tax Deferral Rate','U','8a91880d-6009-4842-b8bd-5044f8cbe4ea')
;

-- Oct 8, 2025, 2:09:35 PM BRT
UPDATE AD_Element SET PrintName='IBS UF. Tax Deferral Rate',Updated=TO_TIMESTAMP('2025-10-08 14:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Element_ID=800515
;

-- Oct 8, 2025, 2:09:35 PM BRT
UPDATE AD_PrintFormatItem SET PrintName='IBS UF. Tax Deferral Rate', Name='IBS UF Tax Deferral Rate' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800515)
;

-- Oct 8, 2025, 2:10:47 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800517,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:10:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:10:47','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxDeferralAmt','IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt','IBS UF Tax Deferral Amt','LBR','1e232420-0cb5-435a-b305-55e13560f19d')
;

-- Oct 8, 2025, 2:11:28 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800518,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:11:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:11:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxDeferralAmt','IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt','IBS Mun. Tax Deferral Amt','LBR','f10dbb75-9849-4f47-9655-2f7a8ebd20cb')
;

-- Oct 8, 2025, 2:12:16 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800519,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:12:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:12:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxDevAmt','IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt','IBS UF Tax Dev. Amt','LBR','2d7a4350-aa25-47af-8150-659059634b76')
;

-- Oct 8, 2025, 2:12:39 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800520,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:12:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:12:39','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxDevAmt','IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt','IBS Mun. Tax Dev. Amt','LBR','79e02543-a829-40f4-9e52-682788cef625')
;

-- Oct 8, 2025, 2:13:25 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800521,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:13:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:13:24','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxRedRate','IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate','IBS UF Tax Red. Rate','LBR','ed18e356-3875-48a9-a939-382c7765bd93')
;

-- Oct 8, 2025, 2:13:51 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800522,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:13:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:13:51','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxRedRate','IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate','IBS Mun. Tax Red. Rate','LBR','0466b29d-1a4a-47f5-9b94-06f81b8f9085')
;

-- Oct 8, 2025, 2:15:35 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800523,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:15:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:15:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxRedEfetRate','IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate','IBS UF Tax Red. Efet. Rate','LBR','95282ca5-c893-4156-892c-b6aef1ab51a6')
;

-- Oct 8, 2025, 2:16:05 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800524,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:16:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:16:04','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxRedEfetRate','IBS UF Tax Mun. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate','IBS UF Tax Mun. Efet. Rate','LBR','24659137-e446-4070-a09c-0dc9f353cf3e')
;

-- Oct 8, 2025, 2:16:39 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800525,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:16:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:16:38','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_UF_TaxAmt','IBS UF Tax Amt','Indicates the IBS UF Tax Amt','IBS UF Tax Amt','LBR','0666030a-8b5c-4c00-bad8-bccf95a8cd17')
;

-- Oct 8, 2025, 2:17:04 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800526,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:17:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:17:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_IBS_Mun_TaxAmt','IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt','IBS Mun. Tax Amt','LBR','4ab8e9cb-bf85-4fc5-81df-adf70068fccd')
;

-- Oct 8, 2025, 2:17:49 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800527,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:17:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:17:48','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxRate','CBS Tax Rate','Indicates the CBS Tax Rate','CBS Tax Rate','LBR','023276a6-26a8-4be0-b9d7-77edb518c987')
;

-- Oct 8, 2025, 2:18:21 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800528,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:18:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:18:21','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxDeferralRate','CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate','CBS Tax DeferralRate','LBR','b59d95c1-8a8c-4ce2-adc4-36f1c281b20e')
;

-- Oct 8, 2025, 2:18:47 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800529,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:18:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:18:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxDeferralAmt','CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt','CBS Tax Deferral Amt','LBR','a8bb8be1-807e-41cc-beb9-df5f61556d5e')
;

-- Oct 8, 2025, 2:18:51 PM BRT
UPDATE AD_Element SET PrintName='CBS Tax Deferral Rate',Updated=TO_TIMESTAMP('2025-10-08 14:18:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Element_ID=800528
;

-- Oct 8, 2025, 2:18:51 PM BRT
UPDATE AD_PrintFormatItem SET PrintName='CBS Tax Deferral Rate', Name='CBS Tax Deferral Rate' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800528)
;

-- Oct 8, 2025, 2:19:29 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800530,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:19:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:19:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxDevAmt','CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt','CBS Tax Dev. Amt','LBR','7c32c41e-a021-4e86-9d11-6017538ab4b8')
;

-- Oct 8, 2025, 2:20:03 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800531,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:20:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:20:03','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxRedRate','CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate','CBS Tax Red. Rate','LBR','6adee34e-0eb6-4270-a8a6-f0771baa8a3d')
;

-- Oct 8, 2025, 2:20:31 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800532,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:20:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:20:31','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxRedEfetRate','CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate','CBS Tax Red. Efet. Rate','LBR','99e799fa-258f-44c4-8abd-279704edd389')
;

-- Oct 8, 2025, 2:20:56 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800533,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:20:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:20:56','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBS_TaxAmt','CBS Tax Amt','Indicates the CBS Tax Amt','CBS Tax Amt','LBR','723e5a4d-90d1-487c-bc9f-d5de8a015406')
;

-- Oct 8, 2025, 2:22:53 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801783,0,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800065,'LBR_IBS_UF_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:22:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:22:52','YYYY-MM-DD HH24:MI:SS'),10,800513,'Y','N','LBR','N','N','N','Y','381a74f6-82c7-4da2-aad8-00a8a88edbd6','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:22:54 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:23:14 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801784,0,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800065,'LBR_IBS_UF_TaxDeferralRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:23:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:23:13','YYYY-MM-DD HH24:MI:SS'),10,800515,'Y','N','LBR','N','N','N','Y','477655e3-451b-4f1e-9b4d-c09a23978681','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:23:15 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxDeferralRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:23:28 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801785,0,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800065,'LBR_IBS_UF_TaxDeferralAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:23:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:23:28','YYYY-MM-DD HH24:MI:SS'),10,800517,'Y','N','LBR','N','N','N','Y','7064a548-04d1-46a0-8ca3-7c1d62d64821','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:23:29 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxDeferralAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:23:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801786,0,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800065,'LBR_IBS_UF_TaxDevAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:23:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:23:44','YYYY-MM-DD HH24:MI:SS'),10,800519,'Y','N','LBR','N','N','N','Y','0b8017c4-f6db-4ccc-83db-2a38c2b65491','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:23:46 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxDevAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:23:59 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801787,0,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800065,'LBR_IBS_UF_TaxRedRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:23:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:23:59','YYYY-MM-DD HH24:MI:SS'),10,800521,'Y','N','LBR','N','N','N','Y','92f340de-eb1f-44b0-847d-a65bb6491021','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:24:00 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxRedRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:24:14 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801788,0,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800065,'LBR_IBS_UF_TaxRedEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:24:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:24:14','YYYY-MM-DD HH24:MI:SS'),10,800523,'Y','N','LBR','N','N','N','Y','86c19992-0792-495e-aa47-ca9e62dfeca3','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:24:15 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxRedEfetRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:24:30 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801789,0,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800065,'LBR_IBS_UF_TaxAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:24:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:24:30','YYYY-MM-DD HH24:MI:SS'),10,800525,'Y','N','LBR','N','N','N','Y','0e1cedd8-eef8-44ab-8733-f6d370597bbb','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:24:31 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_UF_TaxAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:24:44 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801790,0,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800065,'LBR_IBS_Mun_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:24:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:24:43','YYYY-MM-DD HH24:MI:SS'),10,800514,'Y','N','LBR','N','N','N','Y','4d59a924-2d5c-42a6-aeb6-9974174fbd3e','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:24:45 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:24:59 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801791,0,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800065,'LBR_IBS_Mun_TaxDeferralRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:24:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:24:59','YYYY-MM-DD HH24:MI:SS'),10,800516,'Y','N','LBR','N','N','N','Y','d7c8e939-20bc-48d8-b37f-f9034c9687b2','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:25:00 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxDeferralRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:25:15 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801792,0,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800065,'LBR_IBS_Mun_TaxDeferralAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:25:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:25:15','YYYY-MM-DD HH24:MI:SS'),10,800518,'Y','N','LBR','N','N','N','Y','2f3cc2ae-5233-4017-b099-5f3a01bb5bdf','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:25:16 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxDeferralAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:25:31 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801793,0,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800065,'LBR_IBS_Mun_TaxDevAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:25:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:25:31','YYYY-MM-DD HH24:MI:SS'),10,800520,'Y','N','LBR','N','N','N','Y','90ca91a4-2e35-420c-bcc9-2c577083eb23','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:25:32 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxDevAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:25:53 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801794,0,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800065,'LBR_IBS_Mun_TaxRedRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:25:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:25:52','YYYY-MM-DD HH24:MI:SS'),10,800522,'Y','N','LBR','N','N','N','Y','060f0f98-fa47-4b76-bc2f-d25c1b5fad25','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:25:54 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxRedRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:26:06 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801795,0,'IBS UF Tax Mun. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800065,'LBR_IBS_Mun_TaxRedEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:26:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:26:06','YYYY-MM-DD HH24:MI:SS'),10,800524,'Y','N','LBR','N','N','N','Y','d7eb0636-008d-4981-af8d-f66464f8832d','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:26:07 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxRedEfetRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:26:20 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801796,0,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800065,'LBR_IBS_Mun_TaxAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:26:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:26:19','YYYY-MM-DD HH24:MI:SS'),10,800526,'Y','N','LBR','N','N','N','Y','91937275-bf6d-404f-96ec-bbe1f85bce3f','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:26:21 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_IBS_Mun_TaxAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:26:36 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801797,0,'CBS Tax Rate','Indicates the CBS Tax Rate',800065,'LBR_CBS_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:26:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:26:35','YYYY-MM-DD HH24:MI:SS'),10,800527,'Y','N','LBR','N','N','N','Y','0acdeca1-5c64-4b98-891f-97e4e731192c','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:26:37 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:26:51 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801798,0,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800065,'LBR_CBS_TaxDeferralRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:26:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:26:50','YYYY-MM-DD HH24:MI:SS'),10,800528,'Y','N','LBR','N','N','N','Y','2492d88f-d7e4-4b01-b67e-3cf01e5bf2a4','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:26:52 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxDeferralRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:27:11 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801799,0,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800065,'LBR_CBS_TaxDeferralAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:27:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:27:10','YYYY-MM-DD HH24:MI:SS'),10,800529,'Y','N','LBR','N','N','N','Y','ee23b7dd-fca3-47dc-a346-cb38ad8a92f7','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:27:12 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxDeferralAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:27:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801800,0,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800065,'LBR_CBS_TaxDevAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:27:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:27:42','YYYY-MM-DD HH24:MI:SS'),10,800530,'Y','N','LBR','N','N','N','Y','742aa06b-a446-4efa-addb-f0c371cd3a07','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:27:44 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxDevAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:27:58 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801801,0,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800065,'LBR_CBS_TaxRedRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:27:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:27:58','YYYY-MM-DD HH24:MI:SS'),10,800531,'Y','N','LBR','N','N','N','Y','8ff9ffd4-9345-4e5e-854d-c74c05f2af2c','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:27:59 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxRedRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:28:13 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801802,0,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800065,'LBR_CBS_TaxRedEfetRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:28:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:28:12','YYYY-MM-DD HH24:MI:SS'),10,800532,'Y','N','LBR','N','N','N','Y','031975fb-cac9-46c6-960d-b597f651e036','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:28:14 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxRedEfetRate NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:28:28 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801803,0,'CBS Tax Amt','Indicates the CBS Tax Amt',800065,'LBR_CBS_TaxAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:28:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:28:27','YYYY-MM-DD HH24:MI:SS'),10,800533,'Y','N','LBR','N','N','N','Y','68f0f34e-079b-48e7-a890-db40a212c59f','Y',0,'N','N','N','N')
;

-- Oct 8, 2025, 2:28:29 PM BRT
ALTER TABLE LBR_DocLine_IBSCBS ADD COLUMN LBR_CBS_TaxAmt NUMERIC DEFAULT NULL 
;

-- Oct 8, 2025, 2:52:06 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 14:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='4b28be47-4341-496a-9571-33b4108c7e85'
;

-- Oct 8, 2025, 2:52:11 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 14:52:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='f24fad00-dc80-43cf-a41f-3c1016abeb7d'
;

-- Oct 8, 2025, 2:52:15 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 14:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='5ca341ed-4de6-4306-81d1-0e2457c94df1'
;

-- Oct 8, 2025, 2:52:20 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 14:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='2c70914f-6e2e-4591-89d0-891e1759d677'
;

-- Oct 8, 2025, 2:52:23 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 14:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='1d0d6248-5a91-4f89-ad38-f8ceef703305'
;

-- Oct 8, 2025, 2:52:27 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 14:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='81410fdd-0c0b-4aa6-b855-05c73dd3ad9d'
;

-- Oct 8, 2025, 2:54:25 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800064,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',143,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 14:54:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:54:24','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','e684affd-084c-4b22-b6f8-8910818bf7d0','B','N','Y',0)
;

-- Oct 8, 2025, 2:55:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801730,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800064,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','60cce669-46a3-4f24-82ae-0d790e6624ba','N',2)
;

-- Oct 8, 2025, 2:55:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801731,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800064,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','570bc21b-c032-49b5-97b3-c3c8c8c83ecb','Y','Y',10,4,2)
;

-- Oct 8, 2025, 2:55:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801732,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800064,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3e047ae2-2418-4289-aa84-4b7cabdd7b8e','Y',20,2)
;

-- Oct 8, 2025, 2:55:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801733,'Doc Line IBS / CBS',800064,801718,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ba3b5b4c-0d64-43ce-a825-b2ae84c8dd52','N',2)
;

-- Oct 8, 2025, 2:55:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801734,'Doc Line IBS / CBS',800064,801719,'Y',36,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','923ed0c0-9b92-4153-8216-2edd2ab1540c','Y',30,2)
;

-- Oct 8, 2025, 2:55:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801735,'CST IBS / CBS',800064,801780,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7d3d103c-9d76-42b8-84ed-8d583ecf8e4e','Y',40,2)
;

-- Oct 8, 2025, 2:55:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801736,'ClassTrib IBS / CBS',800064,801781,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1ecbbef3-51b5-4704-9443-bee6196fb033','Y',50,2)
;

-- Oct 8, 2025, 2:55:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801737,'Tax Base Amount','Defines the Tax Base Amount',800064,801782,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b5539494-9417-4741-bd4d-611c516be06c','Y',60,2)
;

-- Oct 8, 2025, 2:55:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801738,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800064,801783,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','38934964-bef4-42f1-926f-42f3823db524','Y',70,2)
;

-- Oct 8, 2025, 2:55:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801739,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800064,801784,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4340f7bf-84f0-4544-9b2c-ce7d89ef8a1f','Y',80,2)
;

-- Oct 8, 2025, 2:55:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801740,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800064,801785,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e8696531-3cb2-4ec7-b5b9-d2e016a7500a','Y',90,2)
;

-- Oct 8, 2025, 2:55:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801741,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800064,801786,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6321b53d-107a-45a4-9333-f9e8aea06607','Y',100,2)
;

-- Oct 8, 2025, 2:55:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801742,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800064,801787,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','459487ab-b8cf-4131-948a-37fb8bdaae92','Y',110,2)
;

-- Oct 8, 2025, 2:55:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801743,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800064,801788,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','034f43e4-ae08-42dd-897f-050afcdbe527','Y',120,2)
;

-- Oct 8, 2025, 2:55:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801744,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800064,801789,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','92ce25f1-9678-4664-9c9e-d0fa7614e537','Y',130,2)
;

-- Oct 8, 2025, 2:55:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801745,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800064,801790,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6e092b6f-e788-4002-b9d8-2bee8f67c234','Y',140,2)
;

-- Oct 8, 2025, 2:55:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801746,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800064,801791,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','156b371d-4b2b-4c4b-9efc-b88d6ceab74b','Y',150,2)
;

-- Oct 8, 2025, 2:55:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801747,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800064,801792,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cfa53742-4a09-42b7-b67a-d530bae81317','Y',160,2)
;

-- Oct 8, 2025, 2:55:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801748,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800064,801793,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1af50713-8284-4a23-8b45-77ec0348b202','Y',170,2)
;

-- Oct 8, 2025, 2:55:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801749,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800064,801794,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','162c8e20-cdca-4ec6-8570-f97c4404e639','Y',180,2)
;

-- Oct 8, 2025, 2:55:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801750,'IBS UF Tax Mun. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800064,801795,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c04ffb51-1aa1-4401-a671-6abd7fcc0144','Y',190,2)
;

-- Oct 8, 2025, 2:55:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801751,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800064,801796,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3cd6aed1-c741-4a55-846f-faca051179cd','Y',200,2)
;

-- Oct 8, 2025, 2:55:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801752,'CBS Tax Rate','Indicates the CBS Tax Rate',800064,801797,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ccde974d-7d67-477b-b30d-9c9ea899473b','Y',210,2)
;

-- Oct 8, 2025, 2:55:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801753,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800064,801798,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8d8567b8-455d-4912-b165-db0be51d0dda','Y',220,2)
;

-- Oct 8, 2025, 2:55:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801754,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800064,801799,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dcf36b5d-8068-4e80-83e4-73002df6187e','Y',230,2)
;

-- Oct 8, 2025, 2:55:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801755,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800064,801800,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bb54fb6e-59c5-4a47-87a8-0be08f4a55d0','Y',240,2)
;

-- Oct 8, 2025, 2:55:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801756,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800064,801801,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5ff8ba35-5e3e-434d-9f73-a7aab00c1970','Y',250,2)
;

-- Oct 8, 2025, 2:55:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801757,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800064,801802,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c574b3ba-8f89-43f6-b3d6-6256989935d9','Y',260,2)
;

-- Oct 8, 2025, 2:55:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801758,'CBS Tax Amt','Indicates the CBS Tax Amt',800064,801803,'Y',10,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2d82f7be-b012-41e5-b4d1-fcc5373a4c9b','Y',270,2)
;

-- Oct 8, 2025, 2:55:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801759,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800064,801726,'Y',1,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','268325b8-7b92-4fd4-9370-095d78e8cdae','Y',280,2,2)
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=40,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801735
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801736
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801737
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801738
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=80,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801739
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801740
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801741
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801742
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801743
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=130,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801744
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=140,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801745
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=150,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801746
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801747
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801748
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801749
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801750
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801751
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801752
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801753
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801754
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801755
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801756
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, XPosition=4,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801757
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801758
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801759
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801734
;

-- Oct 8, 2025, 3:00:05 PM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-10-08 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801733
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_Element SET Name='IBS Mun. Tax Red. Efet. Rate', PrintName='IBS Mun. Tax Red. Efet. Rate',Updated=TO_TIMESTAMP('2025-10-08 15:00:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Element_ID=800524
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_Column SET ColumnName='LBR_IBS_Mun_TaxRedEfetRate', Name='IBS Mun. Tax Red. Efet. Rate', Description='Indicates the IBS Mun. Tax Red. Efet. Rate', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800524
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IBS_Mun_TaxRedEfetRate', Name='IBS Mun. Tax Red. Efet. Rate', Description='Indicates the IBS Mun. Tax Red. Efet. Rate', Help=NULL, AD_Element_ID=800524 WHERE UPPER(ColumnName)='LBR_IBS_MUN_TAXREDEFETRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IBS_Mun_TaxRedEfetRate', Name='IBS Mun. Tax Red. Efet. Rate', Description='Indicates the IBS Mun. Tax Red. Efet. Rate', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800524 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IBS_Mun_TaxRedEfetRate', Name='IBS Mun. Tax Red. Efet. Rate', Description='Indicates the IBS Mun. Tax Red. Efet. Rate', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=800524 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_Field SET Name='IBS Mun. Tax Red. Efet. Rate', Description='Indicates the IBS Mun. Tax Red. Efet. Rate', Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800524) AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2025, 3:00:46 PM BRT
UPDATE AD_PrintFormatItem SET PrintName='IBS Mun. Tax Red. Efet. Rate', Name='IBS Mun. Tax Red. Efet. Rate' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800524)
;

-- Oct 8, 2025, 3:07:31 PM BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800022,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:07:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:07:31','YYYY-MM-DD HH24:MI:SS'),10,'IBS (UF)','LBR','C','N','30745f28-0fbf-4dbf-b005-83d5b6b8d3c6')
;

-- Oct 8, 2025, 3:07:47 PM BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800023,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:07:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:07:47','YYYY-MM-DD HH24:MI:SS'),10,'IBS (City)','LBR','C','N','38996bd2-8d92-46f1-b4be-2dfe29e889c2')
;

-- Oct 8, 2025, 3:08:18 PM BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800024,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:08:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:08:18','YYYY-MM-DD HH24:MI:SS'),10,'CBS','LBR','C','N','1e3abdd7-ac22-4eb9-9474-41f4de9dc499')
;

-- Oct 8, 2025, 3:09:35 PM BRT
UPDATE AD_Field SET SeqNo=70, AD_FieldGroup_ID=800022,Updated=TO_TIMESTAMP('2025-10-08 15:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801738
;

-- Oct 8, 2025, 3:09:35 PM BRT
UPDATE AD_Field SET SeqNo=140, AD_FieldGroup_ID=800023,Updated=TO_TIMESTAMP('2025-10-08 15:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801745
;

-- Oct 8, 2025, 3:09:35 PM BRT
UPDATE AD_Field SET SeqNo=210, AD_FieldGroup_ID=800024,Updated=TO_TIMESTAMP('2025-10-08 15:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801752
;

-- Oct 8, 2025, 3:10:49 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='b77bee94-c1b0-476b-b5d4-9f97f3301b48'
;

-- Oct 8, 2025, 3:10:53 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='d8c1ea78-fd1d-4bc4-a9fb-ea8e60e43996'
;

-- Oct 8, 2025, 3:10:56 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:10:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='5d460e56-255d-4176-844e-c18c7758c8ea'
;

-- Oct 8, 2025, 3:11:00 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='aea11c05-74fb-4b2c-951a-6d758d8665d6'
;

-- Oct 8, 2025, 3:11:04 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:11:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='65ca5b43-f308-4c26-a771-4343c7ef46a1'
;

-- Oct 8, 2025, 3:11:10 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:11:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='f6271fb2-a832-42f7-a9e8-0378bac86a84'
;

-- Oct 8, 2025, 3:11:50 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800065,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',167,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:11:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:11:50','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','4ac27938-2dd6-4129-909c-0bb2f0cb08b2','B','N','Y',0)
;

-- Oct 8, 2025, 3:12:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801760,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800065,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ab0f48da-4c77-41be-975d-9b9a543c3e5b','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801761,'Doc Line IBS / CBS',800065,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a7ff96d9-a877-409c-952a-1e6bd1f2b182','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801762,'Doc Line IBS / CBS',800065,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ea514e27-872f-41ea-adb8-2d6e8a54bd61','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801763,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800065,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c825db46-8fb5-4c14-a4a4-0652c106d82c','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:23 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801764,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800065,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','471333de-5341-4e78-9ed1-87f2e4611058','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:23 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801765,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800065,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dc04c29d-624d-47f3-9961-c9332d1e1485','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:24 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801766,'CST IBS / CBS',800065,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6d216260-0a95-40ae-952f-9ee89d1d06cc','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:24 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801767,'ClassTrib IBS / CBS',800065,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bee3ce7e-b3c4-4939-aaaf-9e430c60315a','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:25 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801768,'Tax Base Amount','Defines the Tax Base Amount',800065,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','697a11d7-3b4d-4539-8904-69e7ddaad8d3','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:25 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801769,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800065,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','93948fc4-74ac-47c0-98f3-870cc4078bde','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:26 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801770,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800065,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1a9c24b9-9fbb-41d1-9c40-2abf5ede0529','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:26 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801771,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800065,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','983c0141-a19c-4a86-ab6f-e9a17aaf33e0','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:26 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801772,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800065,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d68d363a-2c29-4cf3-aed1-622b142ed115','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:27 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801773,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800065,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ab39f18d-a15d-463c-a515-fdb399ee01b1','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:27 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801774,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800065,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','46edc229-f743-4296-a2f3-88b5318782f7','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:28 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801775,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800065,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','07086795-78d9-4f09-a8cc-64cb233b4905','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:28 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801776,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800065,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','0a7fd082-e100-43cc-b7f7-4fd4689dbdae','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:29 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801777,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800065,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9684d383-4823-461a-92c5-7b1854feeebc','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:29 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801778,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800065,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','32fcf331-c461-4ac6-8d85-6b75b3fa6e02','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:30 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801779,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800065,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f89c2945-1009-4f1b-b5ff-11c60e11d48d','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:30 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801780,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800065,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1eb7d3ce-5234-4b4f-9cd6-4b9154fe6879','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:30 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801781,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800065,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','74aa64f6-2f06-45e3-9eb3-22f2148fee6f','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:31 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801782,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800065,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bd80ddee-176a-4371-a2be-feca9f777879','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:31 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801783,'CBS Tax Rate','Indicates the CBS Tax Rate',800065,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','6949b745-d3e7-4047-ac5c-1823c797a167','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:32 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801784,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800065,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e859ef87-b676-42d6-898a-443e715a0679','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:32 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801785,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800065,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','41788c58-87bd-4f8a-bf59-fa076d4a4076','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:32 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801786,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800065,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2cea52c6-a8e5-4c7b-bc93-a3f3cd7caed2','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:33 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801787,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800065,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:32','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1feffe65-2138-4584-ab00-e959a586c51a','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:33 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801788,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800065,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4408e4e8-fb9d-4614-86f6-64bef9add8e6','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:12:34 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801789,'CBS Tax Amt','Indicates the CBS Tax Amt',800065,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:12:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:12:33','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b46d59ae-71f3-40e5-a0b7-402ccbe8bfb1','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:13:26 PM BRT
UPDATE AD_Field SET SeqNo=30, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-08 15:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801765
;

-- Oct 8, 2025, 3:13:39 PM BRT
UPDATE AD_Field SET SeqNo=30, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-08 15:13:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801732
;

-- Oct 8, 2025, 3:21:05 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='b90374e0-9f42-4975-96e5-77f438b751a4'
;

-- Oct 8, 2025, 3:21:08 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='c90e7ae9-35d5-48b7-acc1-6d56f1e0119c'
;

-- Oct 8, 2025, 3:21:11 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='edb7a425-e04d-402a-ab47-47e651454911'
;

-- Oct 8, 2025, 3:21:14 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='26a5713a-86f8-4a41-bfcb-cbc7eb908b4c'
;

-- Oct 8, 2025, 3:21:18 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:21:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='ed9a01e2-6b4a-4d49-b979-894a51622770'
;

-- Oct 8, 2025, 3:21:20 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:21:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='7b8ae10c-2f0a-4496-a236-bb882ece4a96'
;

-- Oct 8, 2025, 3:21:58 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800066,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',181,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:21:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:21:58','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','1f7daa47-baa0-4a5d-9908-736c28876868','B','N','Y',0)
;

-- Oct 8, 2025, 3:22:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801790,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800066,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','836d7dde-0445-406a-a2e1-88117224b238','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801791,'Doc Line IBS / CBS',800066,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2b9fe16f-62d6-4e25-a215-e177b305eabe','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801792,'Doc Line IBS / CBS',800066,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','547d807d-2b8b-4c7a-b0d0-535c8feb5fba','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801793,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800066,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f9cef90b-c27e-4f3b-94a1-c5992a0cd58d','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801794,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800066,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7c2d607e-7301-4cc2-bb22-fef9416207a3','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801795,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800066,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:09','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','9bcde7c0-f55e-4826-b21d-29093430ba40','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801796,'CST IBS / CBS',800066,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b53e6471-a4e8-43e4-8be0-49374606983d','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801797,'ClassTrib IBS / CBS',800066,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c0e2a5a5-b9c1-4953-b641-9ae0435a6699','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801798,'Tax Base Amount','Defines the Tax Base Amount',800066,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','66ef388d-86fe-4069-ba63-6fc95fd946e4','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801799,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800066,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','157d46f1-d814-49a4-8a20-59cae0dcc389','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801800,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800066,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dcf154cc-736b-4129-a6cb-bfb1ee277db6','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801801,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800066,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','77a59d2a-e6b2-4cea-a2a7-5f3bc8997aaa','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801802,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800066,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bd11f081-90e1-4fce-96b2-0e79386b64fc','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801803,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800066,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f9dc1ea4-96a5-4b6f-8967-600e0800ff6e','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801804,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800066,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','48b70abc-cd2b-4dc8-b7df-a0d606d3d7cf','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801805,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800066,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bfc3cf3e-6027-460d-b207-b8ee66155e3a','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801806,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800066,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','1bd66640-4766-45a5-a62a-68123d9dfc37','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801807,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800066,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','786bb5d5-0c5d-4830-8ad2-900da7f1b482','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801808,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800066,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','21de65da-7a43-43da-8266-deadcffdd227','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801809,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800066,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','072d8925-f64a-4e21-8724-a87ff4207885','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801810,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800066,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e5aafd96-bc30-4bfd-bfe9-c19323a05983','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801811,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800066,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2dc16146-e0f9-4f3d-9d2c-8d44c78909d5','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801812,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800066,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0c60c49f-231b-4d86-b8ee-eba34955591e','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801813,'CBS Tax Rate','Indicates the CBS Tax Rate',800066,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','a0aba667-99c4-4705-9deb-d0bda7cc7740','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801814,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800066,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','139efe83-f28b-4b63-bc14-d7fbcb59e631','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801815,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800066,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8520d95a-f7c8-4c4c-abf6-6e1faf21d6cb','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801816,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800066,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6071222e-1371-4179-a262-5cf701534f0c','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801817,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800066,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b2d572e1-113d-4512-81a2-11a393011ead','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801818,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800066,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d49e70e4-05d8-488c-8628-afb5936fc947','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801819,'CBS Tax Amt','Indicates the CBS Tax Amt',800066,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:22:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:22:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2705b04d-badf-4156-a73d-aaf8e66b2062','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:22:45 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='448551a2-9faa-4001-b5c4-a789db9ac489'
;

-- Oct 8, 2025, 3:22:48 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='977ede7b-5f67-41b0-a379-8ac883014721'
;

-- Oct 8, 2025, 3:22:51 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='8de69c6b-6f4f-4350-8a72-67f824f8ddce'
;

-- Oct 8, 2025, 3:22:54 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:22:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='7ae1e532-9ccb-4270-a660-d1235752d210'
;

-- Oct 8, 2025, 3:22:57 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:22:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='f0dd8b0f-1eb1-4289-8e54-79657a7f61fb'
;

-- Oct 8, 2025, 3:23:02 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='ac964f04-8ef0-4418-a7df-a71a847bf232'
;

-- Oct 8, 2025, 3:23:31 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800067,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',183,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:30','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','4145d08e-2238-41fe-8098-8c9133f69472','B','N','Y',0)
;

-- Oct 8, 2025, 3:23:38 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801820,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800067,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d7918392-0e8e-4080-acb9-1482ca2fc6da','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801821,'Doc Line IBS / CBS',800067,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cdbe71c8-d7fe-4bd7-b31d-258057aa3855','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801822,'Doc Line IBS / CBS',800067,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dd0d79d0-8005-40fb-ba0b-ff9db2d4064b','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801823,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800067,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cd351e7f-789e-415c-96cb-7c177bd63d52','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801824,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800067,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c9fbf38f-4951-4faa-bf5c-87c135af92c4','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801825,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800067,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:40','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','d18b96c1-3712-4c36-bc7e-5a3cfcd9fe80','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801826,'CST IBS / CBS',800067,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3f047bac-2217-44bb-b84b-f811b4cbdd93','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801827,'ClassTrib IBS / CBS',800067,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','aa94fd2a-25ff-483a-b2ae-19f3a6b3dc9e','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801828,'Tax Base Amount','Defines the Tax Base Amount',800067,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4b41789e-1611-4bc9-8a11-7def229b7db9','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801829,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800067,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','440dba1b-c966-4fbf-ac8e-05151860aed1','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801830,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800067,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9e27cae7-9c9d-4fd1-bd58-753c0d92f1ee','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801831,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800067,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b11983de-d0b3-4220-9fb1-278de91b4fc7','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801832,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800067,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2a8395bb-718c-4552-bd83-fe3672dc2a22','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801833,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800067,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','37e474d1-78cb-4fe1-80b5-3054fc5be957','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801834,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800067,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','adb16f9b-4cab-4f8d-aa9c-cbe83cff0fc4','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801835,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800067,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','eff4adfc-f763-4778-b849-439433020c3a','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801836,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800067,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','9309335c-f305-4a12-9226-e9e289f0b845','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801837,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800067,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7d453ddc-b58a-4db2-a307-a917317f89b5','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801838,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800067,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6c8ccd01-a244-4b45-83b3-3a4748e13e99','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801839,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800067,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8899d882-0249-4e80-9cfb-6409846ba92b','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801840,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800067,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3eddd7d0-3fa3-45f3-a180-6ced89ae48cb','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801841,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800067,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c5c5e9b6-8529-4c3b-8d89-867111ccc671','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:48 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801842,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800067,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','30cc6112-01c9-4f6e-9e8f-375f7f48fb4a','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:48 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801843,'CBS Tax Rate','Indicates the CBS Tax Rate',800067,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','4ce27102-8f4e-40d6-aeab-854a2610e9fb','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801844,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800067,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b1e0b398-e995-48c3-bc0d-91286c4c7bf0','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801845,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800067,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','73479e7a-ca70-4473-a605-e9497f32249a','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801846,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800067,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1b1d3d65-545f-497b-afae-bdf0e5264983','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:50 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801847,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800067,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:49','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','197ce46e-7cc7-468f-9edd-1e60bad234af','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:50 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801848,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800067,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:50','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9450e03d-fd39-40db-91b6-5ed4060cdbc0','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:23:51 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801849,'CBS Tax Amt','Indicates the CBS Tax Amt',800067,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:23:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:23:50','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','96cd3ad6-3c2d-4357-9718-e4479f29d5c5','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:24:15 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:24:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='4a7640fc-bd45-43a9-a034-4d416420b305'
;

-- Oct 8, 2025, 3:24:17 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:24:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='5cac5739-dc65-4e13-9299-19e4f47acf71'
;

-- Oct 8, 2025, 3:24:21 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='a47c3f79-2866-487b-b8d4-5164ef168294'
;

-- Oct 8, 2025, 3:24:23 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:24:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='2dd7d122-e9ff-4ee8-b94a-1477a0f2f71c'
;

-- Oct 8, 2025, 3:24:26 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:24:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='bf816e82-53ff-4679-b325-bdf4e27cd19c'
;

-- Oct 8, 2025, 3:24:29 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:24:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='be00ae65-0d8d-43e9-9ca8-a06d6655a4e0'
;

-- Oct 8, 2025, 3:25:00 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800068,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',320,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:24:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:24:59','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','1935abe1-7f72-4c73-8de5-8deaced352d4','B','N','Y',0)
;

-- Oct 8, 2025, 3:25:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801850,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800068,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a338e196-761e-4bc8-85d9-74e2a71b4ce5','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801851,'Doc Line IBS / CBS',800068,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5c53332b-b837-4631-8610-8850b68120ff','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801852,'Doc Line IBS / CBS',800068,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0174bf1f-9448-4dfa-97ec-c33b8dc71b8a','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801853,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800068,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ffabea49-d0bb-4188-acbd-14b2bf357ca7','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801854,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800068,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','57abcbfa-8df9-4a61-9c6c-00c2fd6e004b','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801855,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800068,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:11','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','214d194e-5dfb-40a1-a6e8-f3c42c000d2e','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:12 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801856,'CST IBS / CBS',800068,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f4b84b60-c2f4-4181-bfa4-68d5073a2caa','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801857,'ClassTrib IBS / CBS',800068,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c0dc09b4-8fc2-45a8-b5ef-d973569241ba','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:13 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801858,'Tax Base Amount','Defines the Tax Base Amount',800068,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1884e812-e1a1-4338-a1d0-fc0e0a0938bf','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801859,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800068,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','28cf5972-5aea-4dbd-a515-22da8ffa8f0f','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801860,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800068,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b8477660-f244-4b02-a843-fecef16ead07','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:14 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801861,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800068,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6c9fb417-0cae-4849-a22f-7b5b68e7cc27','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801862,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800068,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cbb88ef0-b923-4827-a3f3-086cc37815ca','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:15 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801863,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800068,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','eef99154-6443-4341-9b9e-2928565f7854','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801864,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800068,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:15','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0a9ad9cb-bb50-402f-9f04-016079851726','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:16 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801865,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800068,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d1c01e78-cf15-4bbd-9d99-c70d862df5f5','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801866,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800068,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','c589f0d3-90b9-413a-90e4-45088ead68ae','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:17 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801867,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800068,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','22031f7c-0b46-4a8c-8bbd-af221aae5676','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801868,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800068,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:17','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','98809fb6-3aff-4abf-953b-8f20cb4d4e2d','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801869,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800068,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d1ee1662-98c3-424e-a79c-8265ed3b9f73','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:18 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801870,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800068,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f8f4d4df-8c27-4239-bcc8-a9f604cb27b5','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801871,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800068,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:18','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ce832aba-d3fa-4fc0-a6c7-987c321955b0','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801872,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800068,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bda76dc2-6c3c-43e1-a5cd-4b95de741a75','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801873,'CBS Tax Rate','Indicates the CBS Tax Rate',800068,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','3fe7d1c5-9d1d-4e40-a682-d40854baf057','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801874,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800068,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7220153e-5c0e-4f49-9edf-87a476fe683c','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801875,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800068,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','261b102c-915c-43b3-b461-34c227c2cb6c','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801876,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800068,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8572e41e-2419-4ef1-af42-5ba4564f96b2','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801877,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800068,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','77de6afd-cab7-4857-9362-94c3df2e2aff','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801878,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800068,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1be21616-7090-44a1-a178-2efd18effda4','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801879,'CBS Tax Amt','Indicates the CBS Tax Amt',800068,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:25:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:25:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d49b6bee-9a34-4ea4-b688-b025194c141b','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:25:48 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:25:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='bbe09404-2c32-440d-9965-22a8ed7710b0'
;

-- Oct 8, 2025, 3:25:50 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:25:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='385c5a35-e097-4554-9e90-faeb4bf02e6c'
;

-- Oct 8, 2025, 3:25:53 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='8b106e14-8701-45bd-b45a-7ef07da67fe6'
;

-- Oct 8, 2025, 3:25:56 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='97fca692-6a6e-4919-95b9-12c11cb53d66'
;

-- Oct 8, 2025, 3:25:58 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:25:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='c4030ad3-5699-4951-a8a7-7846fa4f153f'
;

-- Oct 8, 2025, 3:26:01 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='36fc0c2a-6d2a-4409-86c5-b8bac1ed5027'
;

-- Oct 8, 2025, 3:26:27 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800069,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',53099,22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','a2f43a9e-a79e-46ef-8495-a587d4cf7cef','B','N','Y',0)
;

-- Oct 8, 2025, 3:26:35 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801880,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800069,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ed9019dd-78d8-49ce-8e3a-422848023393','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:36 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801881,'Doc Line IBS / CBS',800069,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4e6e333f-9024-4f11-a202-25fd71558f9f','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:36 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801882,'Doc Line IBS / CBS',800069,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b6c56840-92ec-4a52-9bd9-72b798f3bcd0','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:36 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801883,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800069,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f717ccb3-ca4f-46c0-997a-1e57271b3cd0','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:37 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801884,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800069,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','eafc26ba-7e72-4d3d-b90a-4d60c7cb42ea','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:37 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801885,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800069,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','130f0d46-d086-4cc5-822b-fe9d1e2e57ff','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:38 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801886,'CST IBS / CBS',800069,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8dfa14a8-b758-47d1-b9b8-8eba275a7549','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:38 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801887,'ClassTrib IBS / CBS',800069,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9c8889fa-6d70-41d2-a3ed-a9eaeedcae48','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801888,'Tax Base Amount','Defines the Tax Base Amount',800069,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','25183bd2-26ec-4808-81c1-c7a0959d530d','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:39 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801889,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800069,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','1701e094-dc04-4536-bfe0-b43bb036b289','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801890,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800069,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6a099df4-6417-446c-b96d-415483c33948','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801891,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800069,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6d1b85a5-6cc4-487a-b737-4803234214e4','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:40 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801892,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800069,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','36714d07-5950-41ac-8b94-d64e332f66f9','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801893,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800069,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dc1e9e68-9427-499c-b35c-1b1e0cc462f5','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:41 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801894,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800069,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3f6ff379-4bbb-419c-ab73-0bfb25103d1a','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801895,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800069,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1b88d2c3-872e-4857-afdb-f53a69f8ceca','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801896,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800069,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','36b895c3-af1f-427b-8c9b-e79bdcd4bf56','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801897,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800069,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f81c551e-4bc7-42f0-b735-29e78e9152ff','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801898,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800069,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f6909696-5090-46ec-b44d-5c76c738add4','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801899,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800069,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f453ac23-89da-4a10-8ae4-35c128b6e6fc','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801900,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800069,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f37aae6d-7c64-4321-b30a-978b3d76a7be','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801901,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800069,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e4fe1e0d-46d4-4f56-a173-4358bc73aa57','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801902,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800069,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c2b68fd6-30ce-43fd-96e7-785eb9e9f869','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801903,'CBS Tax Rate','Indicates the CBS Tax Rate',800069,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','91d12b62-a3a7-4131-9dae-d32cb49991bb','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801904,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800069,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9a3985f2-8629-40fd-a369-aec19d8c8e95','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801905,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800069,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','975d82a8-b6a7-47f8-a85e-188bec790d3b','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801906,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800069,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b40d93df-624c-4fd4-889d-73dcd33210bb','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801907,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800069,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4951e229-5b11-4a95-a715-d70799192e49','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801908,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800069,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','439babc7-3a8a-4fcb-88a8-2eac1190af67','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:26:48 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801909,'CBS Tax Amt','Indicates the CBS Tax Amt',800069,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0e7dc768-9c33-4260-b896-4d21031fa581','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:27:53 PM BRT
UPDATE AD_Tab SET SeqNo=35,Updated=TO_TIMESTAMP('2025-10-08 15:27:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='dfb203a7-6e57-40c8-b0b8-3338bf917503'
;

-- Oct 8, 2025, 3:27:58 PM BRT
UPDATE AD_Tab SET SeqNo=34,Updated=TO_TIMESTAMP('2025-10-08 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800003
;

-- Oct 8, 2025, 3:28:02 PM BRT
UPDATE AD_Tab SET SeqNo=33,Updated=TO_TIMESTAMP('2025-10-08 15:28:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800006
;

-- Oct 8, 2025, 3:28:10 PM BRT
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2025-10-08 15:28:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='abb6e68f-adde-45ce-8e17-0de019c6d4dc'
;

-- Oct 8, 2025, 3:28:13 PM BRT
UPDATE AD_Tab SET SeqNo=28,Updated=TO_TIMESTAMP('2025-10-08 15:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='f187eb6a-ddad-4b28-9427-54affe5a82fd'
;

-- Oct 8, 2025, 3:28:16 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_TIMESTAMP('2025-10-08 15:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='9f93229f-f22d-4067-91b0-c078ec6f71c8'
;

-- Oct 8, 2025, 3:28:19 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_TIMESTAMP('2025-10-08 15:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='8fe2bb9b-b863-43c2-ba26-b8b587bb6da1'
;

-- Oct 8, 2025, 3:28:22 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_TIMESTAMP('2025-10-08 15:28:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='45a77643-ef2f-448d-8152-63c9f35a75b0'
;

-- Oct 8, 2025, 3:28:26 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_TIMESTAMP('2025-10-08 15:28:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_UU='3a741215-468f-40e5-8372-590bb139d1bc'
;

-- Oct 8, 2025, 3:28:51 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800070,'IBS/CBS','IBS/CBS','The IBS/CBS Tab defines amounts for IBS/CBS Tax',toRecordId('AD_Window','df8ad221-e4c0-4415-80cb-4be3f5af2af3'),22,'Y',800065,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:51','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','N','N','c74bf93c-fbf3-414f-ad1f-3b673a2ae7d5','B','N','Y',0)
;

-- Oct 8, 2025, 3:28:58 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801910,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800070,801726,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d41b240d-abd3-40e2-b953-36834f9433fc','Y',280,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:28:58 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801911,'Doc Line IBS / CBS',800070,801719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6005fd2e-7ec3-49d1-85d6-84d83b93274b','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:28:58 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801912,'Doc Line IBS / CBS',800070,801718,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b159be95-d49e-4f5e-a68d-a5e8a4f4a9db','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:28:59 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801913,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800070,801720,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6254c80a-2099-4419-b7ef-7e59325ce7ab','N',1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:28:59 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801914,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800070,801721,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:59','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7535fb15-bbb8-4267-9629-86875dbf53fe','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:00 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801915,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800070,801727,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:28:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:28:59','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','44e25dfe-9b16-4752-918c-f040810ba517','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:00 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801916,'CST IBS / CBS',800070,801780,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4d592799-6957-4589-a21e-a0b9f700125b','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:01 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801917,'ClassTrib IBS / CBS',800070,801781,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5edfae22-8d9e-408d-a245-fc3fc41b0953','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:01 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801918,'Tax Base Amount','Defines the Tax Base Amount',800070,801782,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','949d0063-9b95-442c-8875-d38acc9db4bb','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:02 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801919,'IBS UF Tax Rate','Indicates the IBS UF Tax Rate',800070,801783,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800022,'LBR','ecd964e7-4514-4009-832e-0311f5287e98','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:02 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801920,'IBS UF Tax Deferral Rate','Indicates the IBS UF Tax Deferral Rate',800070,801784,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5bd249ec-f676-43bf-afa8-c3eba4dd6e71','Y',80,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:02 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801921,'IBS UF Tax Deferral Amt','Indicates the IBS UF Tax Deferral Amt',800070,801785,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','083c51d4-d3a8-4a92-992a-f440364b6f36','Y',90,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:03 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801922,'IBS UF Tax Dev. Amt','Indicates the IBS UF Tax Dev. Amt',800070,801786,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:02','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c1e7ab41-f223-4d94-9d2a-38e81c099537','Y',100,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:03 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801923,'IBS UF Tax Red. Rate','Indicates the IBS UF Tax Red. Rate',800070,801787,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:03','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e0e15883-e5e4-4bfe-80fa-790ac799dacc','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:04 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801924,'IBS UF Tax Red. Efet. Rate','Indicates the IBS UF Tax Red. Efet. Rate',800070,801788,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:03','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4effbd0c-3bfe-41fc-8322-d80d18fad4b8','Y',120,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:04 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801925,'IBS UF Tax Amt','Indicates the IBS UF Tax Amt',800070,801789,'Y',10,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:04','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','801d9132-774c-4b3f-abc4-58f2c5bc6cac','Y',130,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801926,'IBS Mun. Tax Rate','Indicates the IBS Mun. Tax Rate',800070,801790,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:04','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800023,'LBR','29f5787b-d916-4d34-82b0-886ba2712b36','Y',140,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:05 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801927,'IBS Mun. Tax Deferral Rate','Indicates the IBS Mun. Tax Deferral Rate',800070,801791,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b98913e9-7e52-448c-b9e4-0197c54fefa6','Y',150,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801928,'IBS Mun. Tax Deferral Amt','Indicates the IBS Mun. Tax Deferral Amt',800070,801792,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','350a015a-2ab3-4dc6-a908-49817248f575','Y',160,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801929,'IBS Mun. Tax Dev. Amt','Indicates the IBS Mun. Tax Dev. Amt',800070,801793,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','355b7144-560a-4b27-90bb-3ce74f06df6b','Y',170,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:06 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801930,'IBS Mun. Tax Red. Rate','Indicates the IBS Mun. Tax Red. Rate',800070,801794,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','69c864e7-1dcf-41e6-8d46-5779fadf1c82','Y',180,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801931,'IBS Mun. Tax Red. Efet. Rate','Indicates the IBS Mun. Tax Red. Efet. Rate',800070,801795,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','416b7eea-b301-446c-9ea8-0675cd841570','Y',190,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:07 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801932,'IBS Mun. Tax Amt','Indicates the IBS Mun. Tax Amt',800070,801796,'Y',10,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','85b077b7-5600-41a2-8f85-6684ddffe4e4','Y',200,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801933,'CBS Tax Rate','Indicates the CBS Tax Rate',800070,801797,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:07','YYYY-MM-DD HH24:MI:SS'),10,'N','Y',800024,'LBR','45fc5f01-a49a-469a-85a6-b3c60429b438','Y',210,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:08 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801934,'CBS Tax Deferral Rate','Indicates the CBS Tax Deferral Rate',800070,801798,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a96e820a-7c4c-4f5a-8c52-6d6926f466eb','Y',220,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801935,'CBS Tax Deferral Amt','Indicates the CBS Tax Deferral Amt',800070,801799,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:08','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e7958e70-1093-4d87-9d00-49b076c1dacd','Y',230,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:09 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801936,'CBS Tax Dev. Amt','Indicates the CBS Tax Dev. Amt',800070,801800,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f5ef4b5d-c801-48b5-a2ba-349790ab4917','Y',240,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801937,'CBS Tax Red. Rate','Indicates the CBS Tax Red. Rate',800070,801801,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','53766c22-d3ac-43ea-bd22-1e89af7b7374','Y',250,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801938,'CBS Tax Red. Efet. Rate','Indicates the CBS Tax Red. Efet. Rate',800070,801802,'Y',10,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4b445c96-c822-42c6-873a-22ddb7d266cc','Y',260,4,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:29:10 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801939,'CBS Tax Amt','Indicates the CBS Tax Amt',800070,801803,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:29:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:29:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','79d03b4b-de95-4c73-a540-a7cfd153db85','Y',270,1,2,1,'N','N','N','N')
;

-- Oct 8, 2025, 3:31:52 PM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800068,'Doc Line IS','LBR_DocLine_IS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-10-08 15:31:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:31:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','df546ea8-f99b-4b36-b390-85765ce02df6','N','N','N','N','Y','N','N')
;

-- Oct 8, 2025, 3:31:53 PM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DocLine_IS',1000000,'N','N','Table LBR_DocLine_IS','Y','Y',0,0,TO_TIMESTAMP('2025-10-08 15:31:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:31:52','YYYY-MM-DD HH24:MI:SS'),10,800551,'Y',1000000,1,200000,'33853d28-3988-4a72-8af7-ac3d9a000977')
;

-- Oct 8, 2025, 3:32:50 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800534,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:32:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:32:49','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DocLine_IS_ID','Doc Line IS','Doc Line IS','LBR','400bc9c4-5d7b-4727-812f-c8c2c9387b8f')
;

-- Oct 8, 2025, 3:32:58 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800535,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:32:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:32:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR_DocLine_IS_UU','Doc Line IS','Doc Line IS','LBR','2fa212a2-7625-4891-9319-e1d8c061421f')
;

-- Oct 8, 2025, 3:33:11 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801804,0,'Doc Line IS',800068,'LBR_DocLine_IS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:33:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:33:10','YYYY-MM-DD HH24:MI:SS'),10,800534,'N','N','LBR','N','N','N','Y','b3bf9976-0c30-4a82-bc43-6de4c9a16adc','N',0,'N','N','N','N')
;

-- Oct 8, 2025, 3:33:12 PM BRT
CREATE TABLE LBR_DocLine_IS (LBR_DocLine_IS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_DocLine_IS_Key PRIMARY KEY (LBR_DocLine_IS_ID))
;

-- Oct 8, 2025, 3:33:26 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801805,0,'Doc Line IS',800068,'LBR_DocLine_IS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:33:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:33:25','YYYY-MM-DD HH24:MI:SS'),10,800535,'N','N','LBR','N','N','N','Y','f3f98fea-18bf-4330-95c2-ab3642d3fe55','N',0,'N','N','N','N')
;

-- Oct 8, 2025, 3:33:27 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_DocLine_IS_UU VARCHAR(36) DEFAULT NULL 
;

-- Oct 8, 2025, 3:33:27 PM BRT
ALTER TABLE LBR_DocLine_IS ADD CONSTRAINT LBR_DocLine_IS_UU_idx UNIQUE (LBR_DocLine_IS_UU)
;

-- Oct 8, 2025, 3:33:40 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801806,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800068,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:33:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:33:39','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','011f1ef5-d0de-465c-9375-cc01d4cf7970','N',0,'N','N','D','N','N')
;

-- Oct 8, 2025, 3:33:41 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 8, 2025, 3:33:55 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801807,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800068,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:33:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:33:54','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','797440e8-41a0-40cd-978b-132615e9a524','N',0,'N','N','D','N','N')
;

-- Oct 8, 2025, 3:33:55 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 8, 2025, 3:34:07 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801808,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800068,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:34:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:34:07','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','b6bf402e-af06-4060-91a3-6a6576e25327','N',0,'N','N','N','N')
;

-- Oct 8, 2025, 3:34:08 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 8, 2025, 3:34:18 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801809,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800068,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:34:18','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:34:18','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','6e632b9d-375e-47fa-ad21-e129024cf860','N',0,'N','N','D','N','N')
;

-- Oct 8, 2025, 3:34:19 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 8, 2025, 3:34:30 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801810,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800068,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:34:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:34:30','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','eba0b864-db99-4edf-85c8-59bc0bd284d4','N',0,'N','N','N','N')
;

-- Oct 8, 2025, 3:34:31 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 8, 2025, 3:34:41 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801811,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800068,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:34:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:34:41','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','aba18259-962e-4c0d-9669-409d960e8ba7','N',0,'N','N','D','N','N')
;

-- Oct 8, 2025, 3:34:42 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 8, 2025, 3:34:54 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801812,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800068,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:34:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:34:53','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','83d1c9e0-0e01-4f86-87cc-7be4061f9ff6','N',0,'N','N','N','N')
;

-- Oct 8, 2025, 3:34:55 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Oct 8, 2025, 3:36:16 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801813,0,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800068,'LBR_DocLine_Details_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-08 15:36:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-08 15:36:16','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','bc2d4dcb-50d3-44c0-8f6c-e6b421d8ea21'),'N','N','LBR','N','N','N','Y','c572fc5f-98a6-46af-9753-83ccf444d977','Y',0,'N','N','C','N','N')
;

-- Oct 8, 2025, 3:36:17 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRDocLineDetails_LBRDocLineIS1', FKConstraintType='C',Updated=TO_TIMESTAMP('2025-10-08 15:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801813
;

-- Oct 8, 2025, 3:36:17 PM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_DocLine_Details_ID NUMERIC(10) NOT NULL
;

-- Oct 8, 2025, 3:36:17 PM BRT
ALTER TABLE LBR_DocLine_IS ADD CONSTRAINT LBRDocLineDetails_LBRDocLineIS1 FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Oct 9, 2025, 9:33:18 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800536,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:33:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:33:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CST_IS_ID','CST IS','CST IS','LBR','33defdc7-0462-40f5-ae1e-c5bd7736a58e')
;

-- Oct 9, 2025, 9:33:33 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800537,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:33:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:33:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CST_IS_UU','CST IS','CST IS','LBR','47e89cb6-6ea6-4f7b-aad7-1a39e330ccf3')
;

-- Oct 9, 2025, 9:34:12 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800069,'CST IS','LBR_CST_IS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-10-09 09:34:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:34:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','29887971-37fa-402b-b607-4aac54078837','N','N','N','N','N','N','N')
;

-- Oct 9, 2025, 9:34:12 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CST_IS',1000000,'N','N','Table LBR_CST_IS','Y','Y',0,0,TO_TIMESTAMP('2025-10-09 09:34:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:34:12','YYYY-MM-DD HH24:MI:SS'),10,800552,'Y',1000000,1,200000,'86bd0836-1f71-462b-8a3a-5085d12a7b37')
;

-- Oct 9, 2025, 9:34:25 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801814,0,'CST IS',800069,'LBR_CST_IS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:34:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:34:24','YYYY-MM-DD HH24:MI:SS'),10,800536,'N','N','LBR','N','N','N','Y','1f0ebc22-5a2e-4adc-bffc-3053eeed2473','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:34:26 AM BRT
CREATE TABLE LBR_CST_IS (LBR_CST_IS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_CST_IS_Key PRIMARY KEY (LBR_CST_IS_ID))
;

-- Oct 9, 2025, 9:34:43 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801815,0,'CST IS',800069,'LBR_CST_IS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:34:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:34:43','YYYY-MM-DD HH24:MI:SS'),10,800537,'N','N','LBR','N','N','N','Y','7a76d25c-6390-4257-800f-22511c6a680c','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:34:44 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN LBR_CST_IS_UU VARCHAR(36) DEFAULT NULL 
;

-- Oct 9, 2025, 9:34:44 AM BRT
ALTER TABLE LBR_CST_IS ADD CONSTRAINT LBR_CST_IS_UU_idx UNIQUE (LBR_CST_IS_UU)
;

-- Oct 9, 2025, 9:35:09 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801816,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800069,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:35:08','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:35:08','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','4f79fb42-fc04-4f96-aecb-7442d73c4a34','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:35:10 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:35:21 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801817,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800069,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:35:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:35:21','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','faab7e66-52dc-4e3b-b344-52f0964055a6','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:35:22 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:35:34 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801818,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800069,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:35:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:35:34','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','8be90606-0d3e-4908-af76-0d310fd69d2e','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:35:35 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 9, 2025, 9:35:45 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801819,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800069,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:35:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:35:44','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','aec59b9c-1c69-4a5a-b98d-5dfa2887f3fb','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:35:46 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:35:57 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801820,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800069,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:35:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:35:56','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','a35b1745-d140-46cd-abe6-52323e2273fd','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:35:58 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 9, 2025, 9:36:08 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801821,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800069,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:36:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:36:07','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','99d7dc34-d466-487e-b7c0-2c4acb0a2974','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:36:09 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:36:18 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801822,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800069,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:36:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:36:17','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','440d1d2b-3267-46a3-a38d-945d7c6318e7','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:36:19 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Oct 9, 2025, 9:36:50 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801823,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800069,'Value',40,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:36:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:36:50','YYYY-MM-DD HH24:MI:SS'),10,620,'Y','Y','LBR','N','N','N','Y','3c7d5dcf-4276-48fa-a7b7-79c563f16386','Y',10,'N','N','N','N')
;

-- Oct 9, 2025, 9:36:51 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN Value VARCHAR(40) NOT NULL
;

-- Oct 9, 2025, 9:37:24 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801824,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800069,'Name',255,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:37:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:37:24','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','Y','LBR','N','N','N','Y','60775287-6098-4b67-8291-3e632a86eec2','Y',20,'N','N','N','N')
;

-- Oct 9, 2025, 9:37:25 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN Name VARCHAR(255) NOT NULL
;

-- Oct 9, 2025, 9:37:51 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801825,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800069,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:37:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:37:50','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','Y','LBR','N','N','N','Y','570f3cd5-eef8-4bea-bd71-c294ddbc1cb5','Y',30,'N','N','N','N')
;

-- Oct 9, 2025, 9:37:52 AM BRT
ALTER TABLE LBR_CST_IS ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Oct 9, 2025, 9:40:13 AM BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800023,'IS CST',0,0,'Y',TO_TIMESTAMP('2025-10-09 09:40:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:40:13','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','Y','N',0,0,'N','6c5de1e1-1033-40f3-a023-fbf7d4aff1b8')
;

-- Oct 9, 2025, 9:40:28 AM BRT
UPDATE AD_Table SET AD_Window_ID=800023,Updated=TO_TIMESTAMP('2025-10-09 09:40:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Table_ID=800069
;

-- Oct 9, 2025, 9:41:11 AM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable,IsShowInDrillOptions,IsPartition,CreatePartition) VALUES (800070,'ClassTrib IS',800023,'LBR_ClassTrib_IS',0,'3',0,0,'Y',TO_TIMESTAMP('2025-10-09 09:41:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:41:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','Y','N','LBR','N','Y','L','N','Y','c15c7994-6c43-4b5e-9478-b6f97ab4094c','N','N','N','N','N','N','N')
;

-- Oct 9, 2025, 9:41:12 AM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ClassTrib_IS',1000000,'N','N','Table LBR_ClassTrib_IS','Y','Y',0,0,TO_TIMESTAMP('2025-10-09 09:41:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:41:11','YYYY-MM-DD HH24:MI:SS'),10,800553,'Y',1000000,1,200000,'e17f64f8-73c9-4165-8da4-953b82db8ac4')
;

-- Oct 9, 2025, 9:41:46 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800538,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:41:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:41:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClassTrib_IS_ID','ClassTrib IS','ClassTrib IS','LBR','573f0aaa-2ef0-40f5-af0b-5f8e33bca5b5')
;

-- Oct 9, 2025, 9:41:55 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800539,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:41:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:41:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ClassTrib_IS_UU','ClassTrib IS','ClassTrib IS','LBR','3d28c535-e0c7-47e3-93ac-700d9be9988b')
;

-- Oct 9, 2025, 9:42:17 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801826,0,'ClassTrib IS',800070,'LBR_ClassTrib_IS_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:42:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:42:17','YYYY-MM-DD HH24:MI:SS'),10,800538,'N','N','LBR','N','N','N','Y','e39ab8ac-f40e-44c0-8e13-7b1bdc24756a','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:42:18 AM BRT
CREATE TABLE LBR_ClassTrib_IS (LBR_ClassTrib_IS_ID NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_ClassTrib_IS_Key PRIMARY KEY (LBR_ClassTrib_IS_ID))
;

-- Oct 9, 2025, 9:42:28 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801827,0,'ClassTrib IS',800070,'LBR_ClassTrib_IS_UU',36,'N','N','N','N','N',0,'N',200231,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:42:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:42:28','YYYY-MM-DD HH24:MI:SS'),10,800539,'N','N','LBR','N','N','N','Y','7ce76f23-5f60-42e1-857c-5ad53e0f9c85','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:42:29 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN LBR_ClassTrib_IS_UU VARCHAR(36) DEFAULT NULL 
;

-- Oct 9, 2025, 9:42:29 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD CONSTRAINT LBR_ClassTrib_IS_UU_idx UNIQUE (LBR_ClassTrib_IS_UU)
;

-- Oct 9, 2025, 9:42:40 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801828,0,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800070,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:42:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:42:39','YYYY-MM-DD HH24:MI:SS'),10,102,'N','N','LBR','N','N','N','Y','24903b5b-5416-408e-a19c-cb09c047f563','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:42:41 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN AD_Client_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:42:50 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801829,0,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800070,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:42:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:42:50','YYYY-MM-DD HH24:MI:SS'),10,113,'N','N','LBR','N','N','N','Y','89bde0e1-976b-4281-ae72-bb4a9aa8af39','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:42:51 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:43:03 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801830,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800070,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:43:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:43:02','YYYY-MM-DD HH24:MI:SS'),10,245,'N','N','LBR','N','N','N','Y','356d0875-3cea-4db3-8d46-17947db8b1a3','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:43:04 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 9, 2025, 9:43:15 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801831,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800070,'CreatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:43:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:43:14','YYYY-MM-DD HH24:MI:SS'),10,246,'N','N','LBR','N','N','N','Y','3e6024ae-e3ad-4b2e-a6eb-feefb7c22aac','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:43:16 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:43:28 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801832,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800070,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:43:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:43:27','YYYY-MM-DD HH24:MI:SS'),10,607,'N','N','LBR','N','N','N','Y','20ebe922-b6ed-485a-9dc2-710c64912d89','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:43:29 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Oct 9, 2025, 9:43:38 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801833,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800070,'UpdatedBy',22,'N','N','N','N','N',0,'N',30,110,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:43:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:43:38','YYYY-MM-DD HH24:MI:SS'),10,608,'N','N','LBR','N','N','N','Y','233cccfb-d6bc-4c7e-a111-557abac995af','N',0,'N','N','D','N','N')
;

-- Oct 9, 2025, 9:43:39 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 9:43:48 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801834,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800070,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:43:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:43:48','YYYY-MM-DD HH24:MI:SS'),10,348,'Y','N','LBR','N','N','N','Y','3c421b2a-b9b3-4e0c-b4b2-df86a692ac6a','N',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:43:49 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Oct 9, 2025, 9:44:12 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801835,0,'CST IS',800070,'LBR_CST_IS_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:44:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:44:11','YYYY-MM-DD HH24:MI:SS'),10,800536,'N','N','LBR','N','N','N','Y','15479561-e4a1-491b-a0f6-42a80701694d','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 9:44:13 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRCSTIS_LBRClassTribIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-09 09:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801835
;

-- Oct 9, 2025, 9:44:13 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN LBR_CST_IS_ID NUMERIC(10) NOT NULL
;

-- Oct 9, 2025, 9:44:13 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD CONSTRAINT LBRCSTIS_LBRClassTribIS FOREIGN KEY (LBR_CST_IS_ID) REFERENCES lbr_cst_is(lbr_cst_is_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 9, 2025, 9:44:42 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801836,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800070,'Value',40,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:44:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:44:41','YYYY-MM-DD HH24:MI:SS'),10,620,'Y','Y','LBR','N','N','N','Y','fbbc8885-391e-4513-ab20-b57450e44665','Y',10,'N','N','N','N')
;

-- Oct 9, 2025, 9:44:43 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN Value VARCHAR(40) NOT NULL
;

-- Oct 9, 2025, 9:44:59 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801837,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800070,'Name',255,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:44:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:44:59','YYYY-MM-DD HH24:MI:SS'),10,469,'Y','Y','LBR','N','N','N','Y','779677ab-98c0-4524-a2c6-b63c5759558f','Y',20,'N','N','N','N')
;

-- Oct 9, 2025, 9:45:00 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN Name VARCHAR(255) NOT NULL
;

-- Oct 9, 2025, 9:45:12 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801838,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800070,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:45:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:45:12','YYYY-MM-DD HH24:MI:SS'),10,275,'Y','Y','LBR','N','N','N','Y','e95ae858-9b10-4955-8cb7-e23aacc4352c','Y',30,'N','N','N','N')
;

-- Oct 9, 2025, 9:45:13 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Oct 9, 2025, 9:45:37 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801839,0,'Date From','Starting date for a range','The Date From indicates the starting date of a range.',800070,'DateFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:45:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:45:36','YYYY-MM-DD HH24:MI:SS'),10,1581,'Y','N','LBR','N','N','N','Y','8f666e87-96d7-4542-8208-4144caf38150','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 9:45:38 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN DateFrom TIMESTAMP DEFAULT NULL 
;

-- Oct 9, 2025, 9:45:56 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801840,0,'Date To','End date of a date range','The Date To indicates the end date of a range (inclusive)',800070,'DateTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:45:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:45:55','YYYY-MM-DD HH24:MI:SS'),10,1582,'Y','N','LBR','N','N','N','Y','54f2a067-bbf1-45e0-b68c-643ac0f5eec9','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 9:45:57 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN DateTo TIMESTAMP DEFAULT NULL 
;

-- Oct 9, 2025, 9:46:21 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801841,0,'Updated Date',800070,'UpdatedDate',25,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-10-09 09:46:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 09:46:21','YYYY-MM-DD HH24:MI:SS'),10,50004,'Y','N','LBR','N','N','N','Y','7de8bc93-6d07-4515-be14-583c2b085e79','Y',0,'N','N','N','N')
;

-- Oct 9, 2025, 9:46:22 AM BRT
ALTER TABLE LBR_ClassTrib_IS ADD COLUMN UpdatedDate TIMESTAMP DEFAULT NULL 
;

-- Oct 9, 2025, 10:01:32 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800071,'CST',800023,10,'Y',800069,0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:32','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',0,'N','LBR','Y','N','ecf27723-6d6e-43e9-ab70-7703928efa1b','B','N','Y',0)
;

-- Oct 9, 2025, 10:01:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801940,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800071,801816,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8713da9c-8326-4c13-8c73-be7069a2d13d','N',2)
;

-- Oct 9, 2025, 10:01:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801941,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800071,801817,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','91ee966c-d7bf-42a7-81f5-c09e0457961d','Y','Y',10,4,2)
;

-- Oct 9, 2025, 10:01:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801942,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800071,801823,'Y',40,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b4cf37d3-c62f-4976-a51b-43253de3bfd2','Y',20,2)
;

-- Oct 9, 2025, 10:01:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801943,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800071,801824,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2ef49846-a40f-4f46-988a-fc611624592e','Y',30,5)
;

-- Oct 9, 2025, 10:01:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801944,'Description','Optional short description of the record','A description is limited to 255 characters.',800071,801825,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c3ba39be-8dfc-4d78-a584-a14258a52e3a','Y',40,5)
;

-- Oct 9, 2025, 10:01:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801945,'CST IS',800071,801814,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3bed1d7b-c8d9-43f6-9cdb-0d405868b1b6','N',2)
;

-- Oct 9, 2025, 10:01:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801946,'CST IS',800071,801815,'Y',36,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','fb99919e-0d26-4440-a90c-626479452325','Y',50,2)
;

-- Oct 9, 2025, 10:01:42 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801947,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800071,801822,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','106bdedc-257f-478f-b9ae-2066b52304db','Y',60,2,2)
;

-- Oct 9, 2025, 10:02:37 AM BRT
UPDATE AD_Field SET SeqNo=50, NumLines=3,Updated=TO_TIMESTAMP('2025-10-09 10:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801944
;

-- Oct 9, 2025, 10:02:37 AM BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2025-10-09 10:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801947
;

-- Oct 9, 2025, 10:02:37 AM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-09 10:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801946
;

-- Oct 9, 2025, 10:02:37 AM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-10-09 10:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801945
;

-- Oct 9, 2025, 10:02:47 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 10:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801940
;

-- Oct 9, 2025, 10:04:34 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800072,'ClassTrib',800023,20,'Y',800070,0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:34','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',1,'N','LBR','Y','N',801814,'c3c547b6-ee00-4c98-bc4c-9e155e4997b0','B','N','Y',0)
;

-- Oct 9, 2025, 10:04:36 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801948,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800072,801828,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','571a6d01-fed4-4e67-bfd7-dc6860d75100','N',2)
;

-- Oct 9, 2025, 10:04:37 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801949,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800072,801829,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f0bc095d-c625-42e2-91a8-1d08551c8bf5','Y','Y',10,4,2)
;

-- Oct 9, 2025, 10:04:37 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801950,'CST IS',800072,801835,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','148bb908-f19f-491d-a796-8cea779b8ab0','Y',20,2)
;

-- Oct 9, 2025, 10:04:37 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801951,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800072,801836,'Y',40,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4c900428-7537-4e87-97d4-0d01c8fb5147','Y',30,2)
;

-- Oct 9, 2025, 10:04:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801952,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800072,801837,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3efec67e-61df-4f80-a864-5c205fdd9726','Y',40,5)
;

-- Oct 9, 2025, 10:04:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801953,'Description','Optional short description of the record','A description is limited to 255 characters.',800072,801838,'Y',255,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a44d383c-7594-494c-acfa-32d49a3ad737','Y',50,5)
;

-- Oct 9, 2025, 10:04:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801954,'ClassTrib IS',800072,801826,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','59b93e18-c9d6-4f29-8053-4c265857193c','N',2)
;

-- Oct 9, 2025, 10:04:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801955,'ClassTrib IS',800072,801827,'Y',36,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','56776541-acf3-4dd6-a6da-8bed11549880','Y',60,2)
;

-- Oct 9, 2025, 10:04:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801956,'Date From','Starting date for a range','The Date From indicates the starting date of a range.',800072,801839,'Y',7,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','f44113a6-b5dc-4545-9c3e-90e0aa586c12','Y',70,2)
;

-- Oct 9, 2025, 10:04:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801957,'Date To','End date of a date range','The Date To indicates the end date of a range (inclusive)',800072,801840,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','aeaee4e3-2c16-48c0-b017-afc361dfdfec','Y',80,2)
;

-- Oct 9, 2025, 10:04:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801958,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800072,801834,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:04:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:04:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2247a0db-63a8-4e7b-86fb-ec7f4a12145a','Y',90,2,2)
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801948
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET SeqNo=30, IsReadOnly='Y', ColumnSpan=5,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801950
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET SeqNo=60, NumLines=3,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801953
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, XPosition=2,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801958
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, XPosition=4,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801957
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801955
;

-- Oct 9, 2025, 10:09:39 AM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-10-09 10:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801954
;

-- Oct 9, 2025, 10:11:17 AM BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800055,'IS CST','W',800023,0,0,'Y',TO_TIMESTAMP('2025-10-09 10:11:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:11:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','LBR','Y','a2c13118-d324-4431-9213-279c4267e5f7')
;

-- Oct 9, 2025, 10:11:17 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800055, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800055)
;

-- Oct 9, 2025, 10:11:24 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=10,Updated=TO_TIMESTAMP('2025-10-09 10:11:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800055
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, AD_TreeNodeMM_UU='1a0fe7e1-6932-487d-973f-cda80baa26fb',Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=16,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=17,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800051
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=18,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800053
;

-- Oct 9, 2025, 10:12:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=19,Updated=TO_TIMESTAMP('2025-10-09 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800052
;

-- Oct 9, 2025, 10:38:44 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801842,0,'CST IS',800068,'LBR_CST_IS_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 10:38:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:38:43','YYYY-MM-DD HH24:MI:SS'),10,800536,'Y','N','LBR','N','N','N','Y','e619021d-00f4-4df5-83da-fbae5faacc64','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 10:38:45 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCSTIS_LBRDocLineIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-09 10:38:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801842
;

-- Oct 9, 2025, 10:38:45 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_CST_IS_ID NUMERIC(10) NOT NULL
;

-- Oct 9, 2025, 10:38:45 AM BRT
ALTER TABLE LBR_DocLine_IS ADD CONSTRAINT LBRCSTIS_LBRDocLineIS FOREIGN KEY (LBR_CST_IS_ID) REFERENCES lbr_cst_is(lbr_cst_is_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 9, 2025, 10:40:01 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801843,0,'ClassTrib IS',800068,'LBR_ClassTrib_IS_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2025-10-09 10:40:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:40:00','YYYY-MM-DD HH24:MI:SS'),10,800538,'Y','N','LBR','N','N','N','Y','3869a63a-7b28-4b85-8fb8-b3c8d9be9423','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 10:40:02 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRClassTribIS_LBRDocLineIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-09 10:40:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801843
;

-- Oct 9, 2025, 10:40:02 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_ClassTrib_IS_ID NUMERIC(10) NOT NULL
;

-- Oct 9, 2025, 10:40:02 AM BRT
ALTER TABLE LBR_DocLine_IS ADD CONSTRAINT LBRClassTribIS_LBRDocLineIS FOREIGN KEY (LBR_ClassTrib_IS_ID) REFERENCES lbr_classtrib_is(lbr_classtrib_is_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 9, 2025, 10:40:53 AM BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800016,'LBR_ClassTrib_IS of CST','S','LBR_ClassTrib_IS.LBR_CST_IS_ID=@LBR_CST_IS_ID@ AND LBR_ClassTrib_IS.IsActive=''Y''',0,0,'Y',TO_TIMESTAMP('2025-10-09 10:40:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 10:40:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR','a861590f-c9a1-4df2-92df-6234b419797a')
;

-- Oct 9, 2025, 10:41:09 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=800016,Updated=TO_TIMESTAMP('2025-10-09 10:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801843
;

-- Oct 9, 2025, 11:00:33 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801844,0,'Tax Base Amount','Defines the Tax Base Amount',800068,'LBR_TaxBaseAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:00:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:00:33','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','09b2d97b-f6ac-4335-be17-c4539fcbad05'),'Y','N','LBR','N','N','N','Y','73eab7f5-8be7-4346-a9b6-d9b975a2e1b7','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 11:00:35 AM BRT
INSERT INTO t_alter_column values('lbr_docline_is','LBR_ClassTrib_IS_ID','NUMERIC(10)',null,null)
;

-- Oct 9, 2025, 11:00:35 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- Oct 9, 2025, 11:00:49 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801845,0,'Tax Rate','Indicates the Tax Rate',800068,'LBR_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','ab447a14-62a0-4946-8f68-5b8a73308ca5'),'Y','N','LBR','N','N','N','Y','63b9b0be-b186-4eca-9a94-718871520d2e','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 11:00:50 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_TaxRate NUMERIC DEFAULT NULL 
;

-- Oct 9, 2025, 11:01:16 AM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800540,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:01:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:01:15','YYYY-MM-DD HH24:MI:SS'),10,'LBR_TaxRateEspec','Tax Rate Espec.','Indicates the Tax Rate Espec.','Tax Rate Espec.','LBR','636d1f15-fdd8-4787-9ff5-a26a112a7493')
;

-- Oct 9, 2025, 11:01:36 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (801846,0,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800068,'LBR_TaxRateEspec',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:01:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:01:35','YYYY-MM-DD HH24:MI:SS'),10,800540,'Y','N','LBR','N','N','N','Y','7cf53d6a-2ce3-493d-83a2-5104410c2f46','Y',0,'N','N','N','N')
;

-- Oct 9, 2025, 11:01:37 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_TaxRateEspec NUMERIC DEFAULT NULL 
;

-- Oct 9, 2025, 11:01:50 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801847,0,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800068,'LBR_UOMTax_ID',22,'N','N','N','N','N',0,'N',18,114,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:01:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:01:49','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','aeae00e6-899c-415d-a674-03c922472be6'),'Y','N','LBR','N','N','N','Y','537ef9b0-1a40-43f6-9b96-dbbb0e0018fa','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 11:01:51 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRUOMTax_LBRDocLineIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-10-09 11:01:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=801847
;

-- Oct 9, 2025, 11:01:51 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_UOMTax_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 9, 2025, 11:01:51 AM BRT
ALTER TABLE LBR_DocLine_IS ADD CONSTRAINT LBRUOMTax_LBRDocLineIS FOREIGN KEY (LBR_UOMTax_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 9, 2025, 11:02:03 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801848,0,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800068,'LBR_QtyTax',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:02:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:02:02','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','6ac2cc1c-7e29-4d51-a51c-2110d9e1fee7'),'Y','N','LBR','N','N','N','Y','267e83d4-c386-4ba2-9e9d-6fc7a4a06d2e','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 11:02:22 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_QtyTax NUMERIC DEFAULT NULL 
;

-- Oct 9, 2025, 11:02:54 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (801849,0,'Tax Amount','Defines the Tax Amount',800068,'LBR_TaxAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:02:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:02:54','YYYY-MM-DD HH24:MI:SS'),10,toRecordId('AD_Element','c852b093-276c-478b-b5d3-ebd96f13bb8a'),'Y','N','LBR','N','N','N','Y','5814b155-9524-4ef1-924c-543e70ba378c','Y',0,'N','N','N','N','N')
;

-- Oct 9, 2025, 11:02:55 AM BRT
ALTER TABLE LBR_DocLine_IS ADD COLUMN LBR_TaxAmt NUMERIC DEFAULT NULL 
;

-- Oct 9, 2025, 11:08:49 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800073,'IS','IS','The IS Tab defines amounts for IS Tax',143,23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:08:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:08:49','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','ba43c390-4169-4126-adf0-9d994893638d','B','N','Y',0)
;

-- Oct 9, 2025, 11:08:55 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:08:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800064
;

-- Oct 9, 2025, 11:09:09 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801959,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800073,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9fb65933-1075-4306-b587-73af1555f868','N',2)
;

-- Oct 9, 2025, 11:09:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801960,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800073,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:09','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b203739d-395a-415d-bc20-a513633b570c','Y','Y',10,4,2)
;

-- Oct 9, 2025, 11:09:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801961,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800073,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5c5bb1fd-78fa-4663-900d-e0a5cc752562','Y',20,2)
;

-- Oct 9, 2025, 11:09:10 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801962,'Doc Line IS',800073,801804,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b0dcf462-1d51-4238-8509-c9f6fa670e70','N',2)
;

-- Oct 9, 2025, 11:09:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801963,'Doc Line IS',800073,801805,'Y',36,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:10','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8f0540b0-155f-4f9c-a52a-a3763125ec79','Y',30,2)
;

-- Oct 9, 2025, 11:09:11 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801964,'CST IS',800073,801842,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7611db34-c41d-484f-9bd5-392deb52cd77','Y',40,2)
;

-- Oct 9, 2025, 11:09:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801965,'ClassTrib IS',800073,801843,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:11','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:11','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0a823577-a96f-41b9-8f7f-e76494bd475b','Y',50,2)
;

-- Oct 9, 2025, 11:09:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801966,'Tax Base Amount','Defines the Tax Base Amount',800073,801844,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','67cf998e-0b13-4d7a-9ed0-aee9a377e6c9','Y',60,2)
;

-- Oct 9, 2025, 11:09:12 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801967,'Tax Rate','Indicates the Tax Rate',800073,801845,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b2e2a3ee-72d3-420f-a81e-8dc00a00340c','Y',70,2)
;

-- Oct 9, 2025, 11:09:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801968,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800073,801846,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:12','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','fac0c91b-c4fb-48c2-ae1c-cc88c26d0e8c','Y',80,2)
;

-- Oct 9, 2025, 11:09:13 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801969,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800073,801847,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4d1a7f37-afce-41ab-92e1-cc164bb04655','Y',90,2)
;

-- Oct 9, 2025, 11:09:14 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801970,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800073,801848,'Y',22,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:13','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1117d4f5-82e9-4c21-a11d-067ce677045a','Y',100,2)
;

-- Oct 9, 2025, 11:09:14 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801971,'Tax Amount','Defines the Tax Amount',800073,801849,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4ae1c4a7-ed7a-4831-bb00-07c124b56637','Y',110,2)
;

-- Oct 9, 2025, 11:09:15 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801972,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800073,801812,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:09:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:09:14','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','46b3bd3f-cafc-4ba8-a65f-92bd21e896e6','Y',120,2,2)
;

-- Oct 9, 2025, 11:10:11 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801730
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801959
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=30, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801961
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=40,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801964
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, XPosition=4,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801965
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801966
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=70,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801967
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, XPosition=4,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801968
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=90,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801969
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, XPosition=4,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801970
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801971
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801972
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, XPosition=1,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801963
;

-- Oct 9, 2025, 11:11:21 AM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_TIMESTAMP('2025-10-09 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801962
;

-- Oct 9, 2025, 11:13:32 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801763
;

-- Oct 9, 2025, 11:14:08 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800074,'IS','IS','The IS Tab defines amounts for IS Tax',167,60,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:14:07','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:14:07','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','4640044a-ce13-40b1-8ea2-a89e3b9bed50','B','N','Y',0)
;

-- Oct 9, 2025, 11:14:21 AM BRT
UPDATE AD_Tab SET SeqNo=23,Updated=TO_TIMESTAMP('2025-10-09 11:14:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800074
;

-- Oct 9, 2025, 11:14:33 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:14:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800065
;

-- Oct 9, 2025, 11:15:01 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801973,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800074,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d2e9cb8e-2813-4932-874a-c546765a337b','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:01 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801974,'Doc Line IS',800074,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2c72d79c-58a3-44d6-9720-69598ab03966','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:01 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801975,'Doc Line IS',800074,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','43d85fa4-e6a8-486f-9774-32fc7c2d682f','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:02 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801976,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800074,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:01','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','bdb84815-d618-433b-8436-f0e565217914','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:02 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801977,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800074,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:02','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5379a2e9-5451-4ad1-bd06-8c04de68f443','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:03 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801978,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800074,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:02','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','9ceb2a97-40ab-4d62-b4d6-bfad7fb63649','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:03 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801979,'CST IS',800074,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:03','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','1b738a15-f39a-4075-8247-4d9b28040d56','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:04 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801980,'ClassTrib IS',800074,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:03','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:03','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','66a5ec75-40bb-4b59-9ece-2fcd5383308e','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:04 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801981,'Tax Base Amount','Defines the Tax Base Amount',800074,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:04','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9f6ca50a-8d89-4dfd-af14-9df3516fdf4a','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:05 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801982,'Tax Rate','Indicates the Tax Rate',800074,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:04','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','adebf04c-f958-4f59-8d1c-703733102f48','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:05 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801983,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800074,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6dd2a9d2-452f-4a6a-849d-fcbf983574a8','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:05 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801984,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800074,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2e7b3629-4d95-4280-af77-9e88e1b4608a','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:06 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801985,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800074,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:05','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bab9acdf-09c1-40ce-911b-034c50d42445','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:06 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801986,'Tax Amount','Defines the Tax Amount',800074,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:15:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:15:06','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','93a4a5d0-abb5-472f-a749-9c48c34fd8a3','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:15:37 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801793
;

-- Oct 9, 2025, 11:15:41 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800066
;

-- Oct 9, 2025, 11:16:12 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800075,'IS','IS','The IS Tab defines amounts for IS Tax',181,23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:12','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','93f28040-f0e0-43d7-92a7-50c020ae7627','B','N','Y',0)
;

-- Oct 9, 2025, 11:16:20 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801987,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800075,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:19','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','59d2f658-7d23-4da2-84bb-590eb7209d3e','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:20 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801988,'Doc Line IS',800075,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ce3d6a39-4a7c-4c84-ad1e-9d05d7125b23','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801989,'Doc Line IS',800075,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:20','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:20','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','a404673c-1f74-4471-baed-6d9370c56820','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801990,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800075,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','fa2b93f0-94cb-4467-b727-7ea297dc0fe5','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:21 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801991,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800075,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6bd55774-81ad-4fe2-a989-22f3411dff5c','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801992,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800075,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:21','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','17ec8622-4df5-4bf1-a587-f4af50089769','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:22 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801993,'CST IS',800075,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','11d3eaad-6500-4e72-944c-83eb4f6e00b8','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801994,'ClassTrib IS',800075,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:22','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:22','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','aaf3546c-23d2-43dc-9190-6a9e73c17ac0','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801995,'Tax Base Amount','Defines the Tax Base Amount',800075,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b2c5895d-9d69-4ecb-86f9-b2d5d975f210','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:23 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801996,'Tax Rate','Indicates the Tax Rate',800075,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b389fbbc-7be2-441f-9f43-e25605178de5','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:24 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801997,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800075,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:23','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','82c0f2a1-04a8-458e-bede-3831abf29daa','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:24 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801998,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800075,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e2587a9b-d58f-4f92-8dd8-22220f74f593','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (801999,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800075,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:24','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:24','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c53d2658-e7db-47dc-ac4d-c2ab107d87b0','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802000,'Tax Amount','Defines the Tax Amount',800075,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:16:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:16:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e37b517d-1c67-4987-a39a-33a58227fb92','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:16:43 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:16:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801823
;

-- Oct 9, 2025, 11:16:47 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:16:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800067
;

-- Oct 9, 2025, 11:17:16 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800076,'IS','IS','The IS Tab defines amounts for IS Tax',183,23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:16','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','7aba4305-c2d1-463b-9e17-98dbf8881d25','B','N','Y',0)
;

-- Oct 9, 2025, 11:17:26 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802001,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800076,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:25','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','12599854-ca32-4013-bbd9-e8efc1c2dc96','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:26 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802002,'Doc Line IS',800076,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b5adfd32-4be9-4498-af8f-ca82bf23d700','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:27 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802003,'Doc Line IS',800076,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:26','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','42f41d0e-5e3c-49af-9001-3f66ea3757f1','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:27 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802004,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800076,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','b5353cdf-cf70-48d5-ba50-749290bbd219','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:27 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802005,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800076,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d250e304-2b28-4cef-b74a-ea9e91543310','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:28 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802006,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800076,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:27','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','63808000-1d10-435a-9ad3-001f94a89399','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:28 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802007,'CST IS',800076,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9ef95df7-def6-40ad-b9cf-a9d45cb26fdc','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:29 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802008,'ClassTrib IS',800076,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:28','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','474f54dd-8e22-4eb4-95c8-b4b8f5d4bb90','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:29 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802009,'Tax Base Amount','Defines the Tax Base Amount',800076,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','51b86279-2db6-4f8f-9dce-45e418031e33','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:30 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802010,'Tax Rate','Indicates the Tax Rate',800076,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:29','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','fdf1513a-ca3a-435d-9875-9edf86c2bec0','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:30 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802011,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800076,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','274fb9e2-c85b-4e52-a5c3-2e6fab8779eb','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:30 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802012,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800076,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','176c2520-7e13-4ded-8d3e-b7ce44f9ab24','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:31 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802013,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800076,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:30','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5e2425f0-e3cf-40e9-92dd-c2c7052b447e','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:31 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802014,'Tax Amount','Defines the Tax Amount',800076,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:17:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:17:31','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','cfc5de2f-232b-405c-84fb-13d8690f9512','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:17:51 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:17:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801853
;

-- Oct 9, 2025, 11:17:55 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800068
;

-- Oct 9, 2025, 11:18:32 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800077,'IS','IS','The IS Tab defines amounts for IS Tax',320,23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:32','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:32','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','7a7a89c5-bdd4-44c7-bf33-39677e9d075d','B','N','Y',0)
;

-- Oct 9, 2025, 11:18:38 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802015,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800077,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d50f08a1-a192-4a0b-bbb3-056f7da1810f','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802016,'Doc Line IS',800077,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','654bbd72-cdf7-4b17-bb91-7f11a4708f2b','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:39 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802017,'Doc Line IS',800077,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','8b3a945a-dd08-4a79-b193-4c57e97834f8','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802018,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800077,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:39','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','b1e3613f-8748-41ae-9dbe-53f9c40feda2','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:40 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802019,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800077,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','78511b8b-12cd-47b6-a385-7381bffcac5d','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802020,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800077,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:40','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','a8d2a167-f7d5-497a-a3ad-90d8c40a0328','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802021,'CST IS',800077,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','48b1b630-3ae0-47c0-be35-d72ab802ee80','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:41 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802022,'ClassTrib IS',800077,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9780a0f4-fc55-4a60-893b-7e3561ba7ab9','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:42 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802023,'Tax Base Amount','Defines the Tax Base Amount',800077,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6b01277d-8242-4b63-9055-a8adca7ce2a9','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:42 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802024,'Tax Rate','Indicates the Tax Rate',800077,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','22408d87-6e2a-49a3-bb94-69c6ba6643de','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802025,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800077,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3b7929bd-1955-489c-b11f-9d531b3f1814','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802026,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800077,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9afbdf02-dcd4-4e32-b6b4-aec0364290f0','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802027,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800077,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','0468e50d-ac2a-4eda-84bc-47d2436b8c04','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:18:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802028,'Tax Amount','Defines the Tax Amount',800077,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:18:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:18:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','9d874863-7e70-4a22-af2f-6da27b0f1537','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:00 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:19:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801883
;

-- Oct 9, 2025, 11:19:04 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800069
;

-- Oct 9, 2025, 11:19:33 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800078,'IS','IS','The IS Tab defines amounts for IS Tax',53099,23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:33','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','be49ec14-14af-46e9-bad0-2079f3dbff53','B','N','Y',0)
;

-- Oct 9, 2025, 11:19:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802029,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800078,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','bc2f8d4c-286a-4b93-b331-3cbd7e299590','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802030,'Doc Line IS',800078,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','d08428ba-cb20-40f2-a83b-2ab9a531f8de','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:43 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802031,'Doc Line IS',800078,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','88ee8c80-22cd-409e-ad4d-cd944a70a894','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802032,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800078,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:43','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','f9896bf6-2ea0-4174-9d18-a1a0754412ae','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:44 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802033,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800078,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','fb690b67-1468-48db-ba4b-5dd12339fe6c','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:45 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802034,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800078,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:44','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','2001a245-2a72-4691-8330-fa6ff060c032','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:45 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802035,'CST IS',800078,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','98028714-a8dc-4a3c-83f3-fa3016b77529','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802036,'ClassTrib IS',800078,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2d3e51a7-29cb-47d3-9e3f-16ba104f6989','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802037,'Tax Base Amount','Defines the Tax Base Amount',800078,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','baf445ea-3c7a-44f2-a6b8-de576212d580','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:46 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802038,'Tax Rate','Indicates the Tax Rate',800078,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','c496ad26-1de7-4028-8239-82096a686ee4','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:47 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802039,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800078,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:46','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5969289e-1018-42d2-a627-32f78c22059a','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:47 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802040,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800078,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','37a36a9f-bbc6-4b86-8fba-ef301c1339a5','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:48 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802041,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800078,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:47','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:47','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ffee293e-b3ab-47c3-b7f4-25379772da61','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:19:48 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802042,'Tax Amount','Defines the Tax Amount',800078,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:19:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:19:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','dc6bedb5-c985-43ec-b980-30a3fa0afe14','Y',110,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:06 AM BRT
UPDATE AD_Field SET SeqNo=10, IsReadOnly='Y',Updated=TO_TIMESTAMP('2025-10-09 11:20:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801913
;

-- Oct 9, 2025, 11:20:10 AM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2025-10-09 11:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800070
;

-- Oct 9, 2025, 11:20:42 AM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800079,'IS','IS','The IS Tab defines amounts for IS Tax',toRecordId('AD_Window','df8ad221-e4c0-4415-80cb-4be3f5af2af3'),23,'Y',800068,0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:42','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','N','N','N',3,'N','LBR','@Processed@=Y','Y','N','07e8bd19-b082-42c6-9de4-59ebbfd22de4','B','N','Y',0)
;

-- Oct 9, 2025, 11:20:51 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802043,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800079,801812,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','5e86015e-5893-468c-9840-0a0c70a2028a','Y',120,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:52 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802044,'Doc Line IS',800079,801804,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:51','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','3044126a-e0d6-44b8-9561-67ed4b17d577','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:52 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802045,'Doc Line IS',800079,801805,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','88c488ed-d790-4939-a160-ee35f2929b7b','Y',30,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:53 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802046,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800079,801806,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:52','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','924d646a-bd47-49a4-aec6-882550a18152','N',1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:53 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802047,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800079,801807,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','75ee7040-1944-4189-b5e4-d2c0cbcc4a90','Y','Y',10,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:54 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802048,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800079,801813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:53','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','ae7966af-e284-4886-b1ea-c7323aa7207b','Y',20,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:54 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802049,'CST IS',800079,801842,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','e3a8b6ac-0464-44d7-bc54-915fafb28b97','Y',40,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:54 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802050,'ClassTrib IS',800079,801843,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','56c840dc-088a-4547-b659-2842f6b9fd66','Y',50,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:55 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802051,'Tax Base Amount','Defines the Tax Base Amount',800079,801844,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','4f83c2e0-4480-4777-9e9b-1f47375b0f29','Y',60,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:55 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802052,'Tax Rate','Indicates the Tax Rate',800079,801845,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','ae85467b-df10-4bc3-b2d5-b690edd138be','Y',70,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:56 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802053,'Tax Rate Espec.','Indicates the Tax Rate Espec.',800079,801846,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','6e62e8ee-7f14-489e-af61-9ff0a08fe1e3','Y',80,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:56 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802054,'Taxable UOM','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure',800079,801847,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b873777e-e737-433b-9e63-7312be7f42c8','Y',90,1,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:57 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802055,'Taxable Quantity','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.',800079,801848,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2dc19cfe-c18a-47f0-aea7-eb2a55e469c2','Y',100,4,2,1,'N','N','N','N')
;

-- Oct 9, 2025, 11:20:57 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802056,'Tax Amount','Defines the Tax Amount',800079,801849,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-10-09 11:20:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2025-10-09 11:20:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','2d4865c2-777d-4358-9310-a8de1022cf86','Y',110,1,2,1,'N','N','N','N')
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jun 25, 2014 11:52:27 AM BRT
-- Table/Window/Process/Menu: Brazilian Fiscal Invoice (Nota Fiscal) Event 
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000048,'N','N','Y','LBR','L','1cb7d626-d533-474e-b6cf-65bac0d99e11','Y','Y','LBR_NotaFiscalEvent','Identifies a NF-e Event Lot','NF-e Event Lot','Y',0,0,TO_DATE('2014-06-25 11:52:27','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-06-25 11:52:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 11:52:28 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000063,'Table LBR_NotaFiscalEvent','LBR_NotaFiscalEvent',1,'5f875be9-d6eb-466f-b608-17421378b676',0,TO_DATE('2014-06-25 11:52:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-06-25 11:52:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 11:54:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000922,'Y','N','N',0,'N',22,'N','N','N','Y','1b6b3fd3-58e7-4121-bf0c-295e7fd27496','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-06-25 11:54:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:54:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000048,129,0,'LBR')
;

-- Jun 25, 2014 11:54:54 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalEvent', FKConstraintType='N',Updated=TO_DATE('2014-06-25 11:54:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000922
;

-- Jun 25, 2014 11:54:54 AM BRT
CREATE TABLE LBR_NotaFiscalEvent (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Jun 25, 2014 11:54:55 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT ADClient_LBRNotaFiscalEvent FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 11:56:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000923,'Y','N','N',0,'N',22,'N','N','N','Y','3150288f-3792-458b-8f25-13e57464ed0a','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-06-25 11:56:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:56:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000048,104,0,'LBR')
;

-- Jun 25, 2014 11:56:06 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalEvent', FKConstraintType='N',Updated=TO_DATE('2014-06-25 11:56:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000923
;

-- Jun 25, 2014 11:56:06 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Jun 25, 2014 11:56:06 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT ADOrg_LBRNotaFiscalEvent FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 11:56:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000924,'N','N','N',0,'N',7,'N','N','N','Y','4be1e636-e5a0-4549-9986-15cecd25b370','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-06-25 11:56:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:56:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000048,0,'LBR')
;

-- Jun 25, 2014 11:56:32 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD Created DATE DEFAULT SYSDATE
;

-- Jun 25, 2014 11:56:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000925,'N','N','N',0,'N',22,'N','N','N','Y','a2588979-67fe-4fc8-b15c-2b2e396c2354','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-06-25 11:56:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:56:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000048,0,'LBR')
;

-- Jun 25, 2014 11:56:45 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalEvent', FKConstraintType='N',Updated=TO_DATE('2014-06-25 11:56:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000925
;

-- Jun 25, 2014 11:56:45 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 11:56:45 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT CreatedBy_LBRNotaFiscalEvent FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 11:57:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000926,'N','N','N',0,'N',7,'N','N','N','Y','7b27385f-e65b-4f95-b4a6-fbd255abc0de','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-06-25 11:57:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:57:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000048,0,'LBR')
;

-- Jun 25, 2014 11:57:02 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD Updated DATE DEFAULT SYSDATE
;

-- Jun 25, 2014 11:57:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000927,'N','N','N',0,'N',22,'N','N','N','Y','bcbdc9b9-9929-4c32-8aee-890325641c2a','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-06-25 11:57:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:57:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000048,0,'LBR')
;

-- Jun 25, 2014 11:57:18 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalEvent', FKConstraintType='N',Updated=TO_DATE('2014-06-25 11:57:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000927
;

-- Jun 25, 2014 11:57:18 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 11:57:18 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT UpdatedBy_LBRNotaFiscalEvent FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 11:58:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000928,'Y','N','N',0,'N',1,'N','N','N','Y','3665a7ab-c28b-4225-b14f-e9cabdb70bec','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-06-25 11:58:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:58:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000048,0,'LBR')
;

-- Jun 25, 2014 11:58:13 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jun 25, 2014 11:58:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000929,'Y','N','N',0,'N',1,'N','N','N','Y','780d356d-850d-41a5-8a98-8e8d844a3c0a','Y','Processed','The document has been processed','N','The Processed checkbox indicates that a document has been processed.','Processed','Y',TO_DATE('2014-06-25 11:58:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 11:58:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000048,0,'LBR')
;

-- Jun 25, 2014 11:58:45 AM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- Jun 25, 2014 12:00:33 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalEvent_ID',1000274,'NF-e Event Lot','Identifies a NF-e Event Lot','NF-e Event Lot','408742b8-4584-4bc5-9981-f35cd501d6dd',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 12:00:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 12:00:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:00:40 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalEvent_UU',1000275,'NF-e Event Lot','Identifies a NF-e Event Lot','NF-e Event Lot','47a8dc3f-10d6-4e18-aeea-3a7c8039ed14',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 12:00:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 12:00:40','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:01:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000930,'N','N','Y',0,'N',22,'N','Y','N','Y','9647315e-4c5b-4a2d-b68b-0f5ef29522bd','N','LBR_NotaFiscalEvent_ID','Identifies a NF-e Event Lot','NF-e Event Lot','N',TO_DATE('2014-06-25 12:01:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:01:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000274,13,1000048,0,'LBR')
;

-- Jun 25, 2014 12:01:04 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_NotaFiscalEvent_ID NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 12:01:04 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT LBR_NotaFiscalEvent_Key PRIMARY KEY (LBR_NotaFiscalEvent_ID)
;

-- Jun 25, 2014 12:01:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000931,'N','N','N',0,'N',36,'N','N','N','Y','b778d899-819c-4c10-94a8-b0ce625c2610','N','LBR_NotaFiscalEvent_UU','Identifies a NF-e Event Lot','NF-e Event Lot','N',TO_DATE('2014-06-25 12:01:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:01:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000275,10,1000048,0,'LBR')
;

-- Jun 25, 2014 12:01:18 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_NotaFiscalEvent_UU VARCHAR2(36) DEFAULT NULL 
;

-- Jun 25, 2014 12:01:18 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD CONSTRAINT LBR_NotaFiscalEvent_UU_idx UNIQUE (LBR_NotaFiscalEvent_UU)
;

-- Jun 25, 2014 12:02:52 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000932,'Y','N','N',0,'N',30,'Y','N','N','Y','55234c73-f6e3-494d-80b3-9bb620ef18f2','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_DATE('2014-06-25 12:02:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:02:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000048,0,'LBR')
;

-- Jun 25, 2014 12:02:59 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD DocumentNo VARCHAR2(30) NOT NULL
;

-- Jun 25, 2014 12:04:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000933,'N','N','N',0,'N',255,'Y','N','N','Y','8365afbd-39f6-4935-904e-7bbdebaa262d','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-06-25 12:04:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:04:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000048,0,'LBR')
;

-- Jun 25, 2014 12:04:04 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Jun 25, 2014 12:06:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000934,'N','N','N',0,'N',1,'N','N','@LBR_LotSent@=Y','N','Y','f310209b-8b89-4e4f-b839-9ceba499a2f6','Y','LBR_ProcSendNFeLot','Process to send NF-e Lot to Sefaz','Send NF-e Lot','Y',TO_DATE('2014-06-25 12:06:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:06:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000263,28,1000048,0,'LBR')
;

-- Jun 25, 2014 12:06:32 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_ProcSendNFeLot CHAR(1) DEFAULT NULL 
;

-- Jun 25, 2014 12:07:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000935,'Y','N','N',0,'N',1,'N','N','N','Y','c8863312-2e33-4c18-b22d-55fda9601b30','Y','LBR_LotSent','Indicate if the NF-e Lot was sent correctly to Sefaz','N','NF-e Lot Sent','Y',TO_DATE('2014-06-25 12:07:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:07:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000265,20,1000048,0,'LBR')
;

-- Jun 25, 2014 12:07:14 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_LotSent CHAR(1) DEFAULT 'N' CHECK (LBR_LotSent IN ('Y','N')) NOT NULL
;

-- Jun 25, 2014 12:07:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000936,'N','N','N',0,'N',3,'N','N','N','Y','908f010d-590c-45fd-8338-89b467d5c248','Y','LBR_LotSendingStatus','Indicates the status of the sending process to Sefaz','NF-e Lot Sending Status','Y',TO_DATE('2014-06-25 12:07:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:07:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000267,17,1000039,1000048,0,'LBR')
;

-- Jun 25, 2014 12:07:59 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_LotSendingStatus VARCHAR2(3) DEFAULT NULL 
;

-- Jun 25, 2014 12:08:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000937,'N','N','N',0,'N',7,'N','N','N','Y','63456f49-2dc9-42a4-a14c-1a155163365d','Y','LBR_LotSentOn','The date+time (expressed in decimal format) when the NF-e Lot has been sent','NF-e Lot Sent On','Y',TO_DATE('2014-06-25 12:08:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 12:08:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000259,16,1000048,0,'LBR')
;

-- Jun 25, 2014 12:08:25 PM BRT
ALTER TABLE LBR_NotaFiscalEvent ADD LBR_LotSentOn DATE DEFAULT NULL 
;

-- Jun 25, 2014 12:09:41 PM BRT
INSERT INTO AD_Window (Processing,WindowType,Help,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','T','The Brazilian Fiscal Invoice Event Window allows you to display and enter events and send them to Sefaz.','Y','N','N',0,0,'LBR','Brazilian Fiscal Invoice Event','Customer & Vendor Brazilian Fiscal Invoice Event Entry',1000018,'172c8a9d-1b7e-4a0e-968c-87d4727265ae',TO_DATE('2014-06-25 12:09:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_DATE('2014-06-25 12:09:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:10:29 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000018,Updated=TO_DATE('2014-06-25 12:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000048
;

-- Jun 25, 2014 12:11:47 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000018,10,'N','N','N','N','N','Y','N',0,'3184b21b-72cb-4c2a-b190-7404097b095d','LBR','NF-e Event Lot','NF-e Event Lot Entries',1000090,0,0,TO_DATE('2014-06-25 12:11:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000048,'B',TO_DATE('2014-06-25 12:11:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,22,'N','N',10,'Y',1001675,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','53126689-c6a7-44bb-a4de-b37727950adf','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000922,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,22,'N','N',20,'Y',1001676,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','02ff3e08-3b7c-449d-aff4-6b45ce3f6671','N','Y','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1000923,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,255,'N','N',30,'Y',1001677,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','61efd4d0-dcc2-4e10-b467-c23e7371efb6','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1000933,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,1,'N','N',40,'Y',1001678,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','a879f077-1aa1-4477-a603-09dc4af3ae2a','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,2,0,2,1000929,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,22,'N','N','Y',1001679,'N','LBR','Identifies a NF-e Event Lot','NF-e Event Lot','f33267a6-3eb6-4978-9317-5fdeb300be07','N','N',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000930,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,36,'N','N',50,'Y',1001680,'N','LBR','Identifies a NF-e Event Lot','NF-e Event Lot','1b3ef9e6-37c7-45a6-b53a-26aa932b41f1','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1000931,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,30,'N','N',60,'Y',1001681,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','e517838a-bfe8-47c0-90da-c4df756fc5dd','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1000932,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,1,'N','N',70,'Y',1001682,'N','LBR','Process to send NF-e Lot to Sefaz','Send NF-e Lot','8038f5ae-4d52-421e-859c-98313eccc34f','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,2,0,2,1000934,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,1,'N','N',80,'Y',1001683,'N','LBR','Indicate if the NF-e Lot was sent correctly to Sefaz','NF-e Lot Sent','e48849d1-c9de-4d88-a457-692e02f57b1a','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,2,0,2,1000935,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,3,'N','N',90,'Y',1001684,'N','LBR','Indicates the status of the sending process to Sefaz','NF-e Lot Sending Status','87ed6862-8351-40b8-99b7-1414abcaa5b4','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1000936,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,7,'N','N',100,'Y',1001685,'N','LBR','The date+time (expressed in decimal format) when the NF-e Lot has been sent','NF-e Lot Sent On','b6680456-58e6-44ac-91b2-7ce7027a9b33','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000937,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:11:54 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000090,1,'N','N',110,'Y',1001686,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','227324a8-fc12-4b22-9e27-67874e78a036','N','Y',0,0,0,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,2,0,2,1000928,TO_DATE('2014-06-25 12:11:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001680
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001678
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001681
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001677
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001686
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001682
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001683
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001684
;

-- Jun 25, 2014 12:13:13 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001685
;

-- Jun 25, 2014 12:14:10 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-06-25 12:14:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001676
;

-- Jun 25, 2014 12:15:04 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-06-25 12:15:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001677
;

-- Jun 25, 2014 12:15:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000016,Updated=TO_DATE('2014-06-25 12:15:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001682
;

-- Jun 25, 2014 12:16:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=1000016,Updated=TO_DATE('2014-06-25 12:16:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001683
;

-- Jun 25, 2014 12:16:58 PM BRT
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=1000016,Updated=TO_DATE('2014-06-25 12:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001684
;

-- Jun 25, 2014 12:18:32 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000016,Updated=TO_DATE('2014-06-25 12:18:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001685
;

-- Jun 25, 2014 12:19:43 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000018,1000022,'N','Y','N','LBR','Y','Brazilian Fiscal Invoice Event','Customer & Vendor Brazilian Fiscal Invoice Event Entry','3bb9b49a-c57b-4565-a7cc-f89ec71de044','W','Y',0,TO_DATE('2014-06-25 12:19:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-06-25 12:19:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 12:19:44 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000022, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000022)
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Jun 25, 2014 12:19:50 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- Jun 25, 2014 12:26:37 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 12:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001683
;

-- Jun 25, 2014 12:26:43 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 12:26:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001684
;

-- Jun 25, 2014 12:26:56 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 12:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001685
;

-- Jun 25, 2014 2:55:52 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000018,1000049,'N','N','Y','LBR','L','701cd17f-d241-43c9-b1d8-268f426df723','Y','Y','LBR_NotaFiscalEventLine','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','Y',0,0,TO_DATE('2014-06-25 14:55:52','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-06-25 14:55:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 2:55:53 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000064,'Table LBR_NotaFiscalEventLine','LBR_NotaFiscalEventLine',1,'e6ded329-73da-49e6-88c1-55ee0b9a3771',0,TO_DATE('2014-06-25 14:55:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-06-25 14:55:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 2:56:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000938,'Y','N','N',0,'N',22,'N','N','N','Y','bcf51cea-5ecf-456f-9994-68364553fe61','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-06-25 14:56:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:56:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000049,129,0,'LBR')
;

-- Jun 25, 2014 2:56:36 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalEventLin', FKConstraintType='N',Updated=TO_DATE('2014-06-25 14:56:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000938
;

-- Jun 25, 2014 2:56:36 PM BRT
CREATE TABLE LBR_NotaFiscalEventLine (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Jun 25, 2014 2:56:36 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT ADClient_LBRNotaFiscalEventLin FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 2:56:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000939,'Y','N','N',0,'N',22,'N','N','N','Y','df279736-f654-4967-ac8d-51648e06daaa','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-06-25 14:56:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:56:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000049,104,0,'LBR')
;

-- Jun 25, 2014 2:56:58 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalEventLine', FKConstraintType='N',Updated=TO_DATE('2014-06-25 14:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000939
;

-- Jun 25, 2014 2:56:58 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Jun 25, 2014 2:56:58 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT ADOrg_LBRNotaFiscalEventLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 2:57:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000940,'N','N','N',0,'N',7,'N','N','N','Y','d99a755f-8d12-42c1-8124-4f101e7d9bbf','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-06-25 14:57:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:57:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000049,0,'LBR')
;

-- Jun 25, 2014 2:57:18 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD Created DATE DEFAULT SYSDATE
;

-- Jun 25, 2014 2:57:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000941,'N','N','N',0,'N',22,'N','N','N','Y','f332626a-4c75-4427-ab10-f0611576351d','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-06-25 14:57:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:57:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000049,0,'LBR')
;

-- Jun 25, 2014 2:57:33 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalEventLi', FKConstraintType='N',Updated=TO_DATE('2014-06-25 14:57:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000941
;

-- Jun 25, 2014 2:57:33 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 2:57:33 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT CreatedBy_LBRNotaFiscalEventLi FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 2:57:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000942,'N','N','N',0,'N',7,'N','N','N','Y','3e93885e-0d10-477f-a283-d7ed1282efeb','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-06-25 14:57:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:57:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000049,0,'LBR')
;

-- Jun 25, 2014 2:57:51 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD Updated DATE DEFAULT SYSDATE
;

-- Jun 25, 2014 2:58:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000943,'N','N','N',0,'N',22,'N','N','N','Y','e509ffce-8a20-42a3-871b-ad1a888792fc','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-06-25 14:58:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:58:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000049,0,'LBR')
;

-- Jun 25, 2014 2:58:05 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalEventLi', FKConstraintType='N',Updated=TO_DATE('2014-06-25 14:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000943
;

-- Jun 25, 2014 2:58:05 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 2:58:05 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT UpdatedBy_LBRNotaFiscalEventLi FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 2:58:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000944,'Y','N','N',0,'N',1,'N','N','N','Y','03630230-3fe6-486e-a8b0-f1e34ec60a4c','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-06-25 14:58:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:58:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000049,0,'LBR')
;

-- Jun 25, 2014 2:58:26 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jun 25, 2014 2:59:23 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalEventLine_ID',1000276,'NF-e Event Lot Line','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','60d7e0de-adaa-4391-b080-801db0c7145d',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 14:59:23','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 14:59:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 2:59:32 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalEventLine_UU',1000277,'NF-e Event Lot Line','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','fa4140a9-79d6-4e63-96e6-dbdd8acf6b2b',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 14:59:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 14:59:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 2:59:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000945,'N','N','N',0,'N',22,'N','Y','N','Y','5229f589-7b4f-4956-b1e9-537b0ef542a6','N','LBR_NotaFiscalEventLine_ID','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','N',TO_DATE('2014-06-25 14:59:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 14:59:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000276,13,1000049,0,'LBR')
;

-- Jun 25, 2014 2:59:55 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NotaFiscalEventLine_ID NUMBER(10) DEFAULT NULL 
;

-- Jun 25, 2014 2:59:55 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT LBR_NotaFiscalEventLine_Key PRIMARY KEY (LBR_NotaFiscalEventLine_ID)
;

-- Jun 25, 2014 3:00:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000946,'N','N','N',0,'N',36,'N','N','N','Y','8ab748fb-f807-4229-8a9e-cc334a4671ad','N','LBR_NotaFiscalEventLine_UU','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','N',TO_DATE('2014-06-25 15:00:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:00:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000277,10,1000049,0,'LBR')
;

-- Jun 25, 2014 3:00:10 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NotaFiscalEventLine_UU VARCHAR2(36) DEFAULT NULL 
;

-- Jun 25, 2014 3:00:10 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT LBR_NotaFiscalEventLine_UU_idx UNIQUE (LBR_NotaFiscalEventLine_UU)
;

-- Jun 25, 2014 3:00:47 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000947,'Y','N','Y',0,'Y',22,'N','N','N','Y','3f9087c2-5e11-44e8-9822-bd34a3bca27c','N','LBR_NotaFiscalEvent_ID','Identifies a NF-e Event Lot','NF-e Event Lot','Y',TO_DATE('2014-06-25 15:00:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:00:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000274,19,1000049,0,'LBR')
;

-- Jun 25, 2014 3:00:52 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNotaFiscalEvent_LBRNotaFisc', FKConstraintType='N',Updated=TO_DATE('2014-06-25 15:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000947
;

-- Jun 25, 2014 3:00:52 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NotaFiscalEvent_ID NUMBER(10) NOT NULL
;

-- Jun 25, 2014 3:00:52 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT LBRNotaFiscalEvent_LBRNotaFisc FOREIGN KEY (LBR_NotaFiscalEvent_ID) REFERENCES lbr_notafiscalevent(lbr_notafiscalevent_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 3:02:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000948,'Y','N','N',0,'N',22,'N','N','N','Y','07bd0f9a-b74c-481f-969d-18f6011f8a94','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_DATE('2014-06-25 15:02:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:02:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,30,1000058,1000049,0,'LBR')
;

-- Jun 25, 2014 3:02:36 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalEve', FKConstraintType='C',Updated=TO_DATE('2014-06-25 15:02:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000948
;

-- Jun 25, 2014 3:02:36 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NotaFiscal_ID NUMBER(10) NOT NULL
;

-- Jun 25, 2014 3:02:36 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalEve FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Jun 25, 2014 3:03:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000949,'N','N','N',0,'N',255,'Y','N','N','Y','9f64531a-5296-4abf-9a87-1f829ea3656d','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-06-25 15:03:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:03:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000049,0,'LBR')
;

-- Jun 25, 2014 3:03:16 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Jun 25, 2014 3:04:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000950,'N','N','N',0,'N',3,'N','N','N','Y','d6b2c8fc-3626-4ef2-9318-3994ef225e40','Y','LBR_NFeStatus','NFe Status','Y',TO_DATE('2014-06-25 15:04:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:04:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000171,17,1000039,1000049,0,'LBR')
;

-- Jun 25, 2014 3:04:07 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NFeStatus VARCHAR2(3) DEFAULT NULL 
;

-- Jun 25, 2014 3:04:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000951,'N','N','N',0,'N',255,'N','N','N','Y','5c43b852-62f8-4124-9903-ae6850b049c4','Y','LBR_NFeID','NFe ID','Y',TO_DATE('2014-06-25 15:04:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:04:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000172,10,1000049,0,'LBR')
;

-- Jun 25, 2014 3:04:36 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NFeID VARCHAR2(255) DEFAULT NULL 
;

-- Jun 25, 2014 3:05:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000952,'N','N','N',0,'N',255,'N','N','N','Y','e68786d2-95dc-4f84-a23f-f65ddd10d9b2','Y','LBR_LotSendingProt','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','Y',TO_DATE('2014-06-25 15:05:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:05:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000270,10,1000049,0,'LBR')
;

-- Jun 25, 2014 3:05:01 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_LotSendingProt VARCHAR2(255) DEFAULT NULL 
;

-- Jun 25, 2014 3:07:44 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000061,'LBR_NFeEventType','LBR','a88d3ec5-bc38-4933-a834-9e62b93455b9','N','L',0,0,TO_DATE('2014-06-25 15:07:44','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-06-25 15:07:44','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jun 25, 2014 3:08:59 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000654,1000061,'97965164-0016-4350-bdef-701852e3a482','CAN',TO_DATE('2014-06-25 15:08:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-06-25 15:08:59','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Cancellation')
;

-- Jun 25, 2014 3:09:48 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000655,1000061,'97470edc-2aa6-40b5-ac12-8afdf324d4e0','CCE',TO_DATE('2014-06-25 15:09:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-06-25 15:09:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Correction')
;

-- Jun 25, 2014 3:10:32 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NFeEventType',1000278,'NF-e Event Type','NF-e Event Type','c9934e46-b0ae-4857-8039-f0479cb7f7eb',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 15:10:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 15:10:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 3:11:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000953,'Y','N','N',0,'N',3,'N','N','N','Y','db1f79df-0356-4888-9f0d-922e3eaef02d','N','LBR_NFeEventType','NF-e Event Type','Y',TO_DATE('2014-06-25 15:11:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 15:11:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000278,17,1000061,1000049,0,'LBR')
;

-- Jun 25, 2014 3:11:21 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NFeEventType VARCHAR2(3) NOT NULL
;

-- Jun 25, 2014 4:15:48 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CorrectionReason',1000279,'Correction Reason','Correction Reason','2516feb8-9ec9-4c54-8feb-ac49c2992462',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 16:15:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 16:15:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:17:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000954,'N','N','N',0,'N',1000,'N','N','N','Y','b04405ab-9756-4608-9e53-ca45a56e12db','Y','LBR_CorrectionReason','Correction Reason','Y',TO_DATE('2014-06-25 16:17:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 16:17:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000279,14,1000049,0,'LBR')
;

-- Jun 25, 2014 4:17:09 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_CorrectionReason VARCHAR2(1000) DEFAULT NULL 
;

-- Jun 25, 2014 4:18:09 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Justification',1000280,'Justification','Justification','885f9627-2fa0-4250-8d13-7af9695d5c7b',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 16:18:09','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 16:18:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:18:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000955,'N','N','N',0,'N',255,'N','N','N','Y','531a05cc-2f65-4fb8-aca4-b62e2252f624','Y','LBR_Justification','Justification','Y',TO_DATE('2014-06-25 16:18:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 16:18:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000280,14,1000049,0,'LBR')
;

-- Jun 25, 2014 4:18:34 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_Justification VARCHAR2(255) DEFAULT NULL 
;

-- Jun 25, 2014 4:22:43 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000018,20,'N','N','N','N','N','Y','N',1,'f30a9e42-2ec6-4028-92da-75e0bd4152d3','LBR','NF-e Event Lot Line','NF-e Event Lot Line Entries',1000091,'@LBR_LotSent@=Y',0,0,TO_DATE('2014-06-25 16:22:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000947,1000049,'B',TO_DATE('2014-06-25 16:22:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,22,'N','N',10,'Y',1001687,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','c459cdd4-5f29-4a3d-a99f-002491c69d5c','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000938,TO_DATE('2014-06-25 16:23:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,22,'N','N',20,'Y',1001688,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','6d1b6f06-561e-4a1e-9def-55b0e6f6ec34','N','Y','Y',0,0,0,TO_DATE('2014-06-25 16:23:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1000939,TO_DATE('2014-06-25 16:23:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,255,'N','N',30,'Y',1001689,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','823ca2c9-46f3-4183-a1f3-c8b06d72fb01','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1000949,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,22,'N','N','Y',1001690,'N','LBR','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','2ff13f04-cbaf-4f73-9b68-3752460d3d32','N','N',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000945,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,36,'N','N',40,'Y',1001691,'N','LBR','Identifies a NF-e Event Lot Line','NF-e Event Lot Line','3071680c-1f64-4902-a2d1-099481813d5d','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1000946,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,22,'N','N',50,'Y',1001692,'N','LBR','Identifies a NF-e Event Lot','NF-e Event Lot','20403380-3321-4461-b315-e2f3782cb314','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1000947,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,22,'N','N',60,'Y',1001693,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','ba611012-1201-4c85-bb4e-f9c5a8060d43','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1000948,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,3,'N','N',70,'Y',1001694,'N','LBR','NFe Status','96e84378-c5d6-4201-abfb-d731cdca6ab7','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1000950,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,255,'N','N',80,'Y',1001695,'N','LBR','NFe ID','a8d1b681-fc5e-43b6-9cd3-c318a5d17f6c','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,5,1000951,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,255,'N','N',90,'Y',1001696,'N','LBR','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','8c12b4fb-aca7-444b-bf2a-400b32ca9b2d','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,5,1000952,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,3,'N','N',100,'Y',1001697,'N','LBR','NF-e Event Type','6dfa762a-d330-4182-8e2a-e2a1918c0873','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1000953,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,Created) VALUES ('N',1000091,1000,'N','N',110,'Y',1001698,'N','LBR','Correction Reason','124ebfe7-ede5-4d03-9d1b-e1c879c4a1f8','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,5,3,1000954,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,Created) VALUES ('N',1000091,255,'N','N',120,'Y',1001699,'N','LBR','Justification','76c6d70e-c2fd-4f64-bbf1-52bf3506a5ac','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,5,3,1000955,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:23:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,1,'N','N',130,'Y',1001700,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','ea24959e-30b2-4ad9-a513-80a927d09f50','N','Y',0,0,0,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,2,0,2,1000944,TO_DATE('2014-06-25 16:23:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001700
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001692
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001691
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001693
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001689
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001697
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001694
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001695
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001696
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001698
;

-- Jun 25, 2014 4:24:21 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001699
;

-- Jun 25, 2014 4:26:09 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001698
;

-- Jun 25, 2014 4:26:09 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001699
;

-- Jun 25, 2014 4:26:09 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001694
;

-- Jun 25, 2014 4:26:09 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001695
;

-- Jun 25, 2014 4:26:09 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001696
;

-- Jun 25, 2014 4:29:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NFeEventSeqNo',1000281,NULL,'NF-e Event Sequence Number',NULL,'NF-e Event Sequence No.','5b7cbf7c-03e6-401f-95ec-9006fbc52898',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-25 16:29:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-25 16:29:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:33:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000956,'Y','N','N',0,'N',10,'N','N','N','Y','ac49dc57-b3e3-4155-be3c-66d6d1d59756','Y','LBR_NFeEventSeqNo','NF-e Event Sequence Number','Y',TO_DATE('2014-06-25 16:33:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-25 16:33:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000281,11,1000049,0,'LBR')
;

-- Jun 25, 2014 4:33:03 PM BRT
ALTER TABLE LBR_NotaFiscalEventLine ADD LBR_NFeEventSeqNo NUMBER(10) NOT NULL
;

-- Jun 25, 2014 4:33:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000091,10,'N','N',110,'Y',1001701,'N','LBR','NF-e Event Sequence Number','76bcc9b3-91b8-4c96-85d3-24d74272ea6d','N','Y',0,0,0,TO_DATE('2014-06-25 16:33:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1000956,TO_DATE('2014-06-25 16:33:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001701
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001698
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001699
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001694
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001695
;

-- Jun 25, 2014 4:34:00 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001696
;

-- Jun 25, 2014 4:35:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-06-25 16:35:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001688
;

-- Jun 25, 2014 4:36:47 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-06-25 16:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001689
;

-- Jun 25, 2014 4:37:46 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_DATE('2014-06-25 16:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001697
;

-- Jun 25, 2014 4:38:00 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=114,Updated=TO_DATE('2014-06-25 16:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001701
;

-- Jun 25, 2014 4:38:27 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_DATE('2014-06-25 16:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001698
;

-- Jun 25, 2014 4:38:30 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_DATE('2014-06-25 16:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

-- Jun 25, 2014 4:39:07 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-06-25 16:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001694
;

-- Jun 25, 2014 4:39:30 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=101,Updated=TO_DATE('2014-06-25 16:39:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001695
;

-- Jun 25, 2014 4:39:44 PM BRT
UPDATE AD_Field SET ColumnSpan=2, AD_FieldGroup_ID=101,Updated=TO_DATE('2014-06-25 16:39:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001696
;

-- Jun 25, 2014 4:41:33 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 16:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001696
;

-- Jun 25, 2014 4:41:38 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001695
;

-- Jun 25, 2014 4:41:42 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-06-25 16:41:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001694
;

-- Jun 25, 2014 4:42:59 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''CAN''',Updated=TO_DATE('2014-06-25 16:42:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001699
;

-- Jun 25, 2014 4:43:11 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''CCE''',Updated=TO_DATE('2014-06-25 16:43:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001698
;

-- Jun 25, 2014 4:43:48 PM BRT
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeEventType@=''CCE''',Updated=TO_DATE('2014-06-25 16:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000954
;

-- Jun 25, 2014 4:43:56 PM BRT
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeEventType@=''CAN''',Updated=TO_DATE('2014-06-25 16:43:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000955
;

-- Jun 25, 2014 4:45:54 PM BRT
UPDATE AD_Column SET DefaultValue='1',Updated=TO_DATE('2014-06-25 16:45:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000956
;

-- Jun 25, 2014 4:47:13 PM BRT
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-06-25 16:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000939
;

-- Jun 25, 2014 4:52:15 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-06-25 16:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001696
;

-- Jun 26, 2014 4:50:34 PM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-06-26 16:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000933
;

-- Jun 26, 2014 4:50:48 PM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-06-26 16:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000949
;

-- Jun 26, 2014 4:51:52 PM BRT
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000004,'N','N','0a898e8b-76c4-4330-b07e-2a22c08f36c1','3','N','N',10,4,'N','LBR','Send NF-e Event Lot to Sefaz','Send NF-e Event Lot to Sefaz',0,0,'Y',0,'org.idempierelbr.nfe.process.SendNFeEvent','LBR_ProcSendNFeEvent',0,TO_DATE('2014-06-26 16:51:52','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-26 16:51:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 26, 2014 4:53:09 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000004,Updated=TO_DATE('2014-06-26 16:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000934
;

-- Jun 26, 2014 4:57:22 PM BRT
UPDATE LBR_NFeWebService SET VersionNo='1.00',Updated=TO_DATE('2014-06-26 16:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_NFeWebService_ID=1000011
;

-- Jun 26, 2014 4:57:34 PM BRT
UPDATE LBR_NFeWebService SET VersionNo='1.00',Updated=TO_DATE('2014-06-26 16:57:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_NFeWebService_ID=1000004
;

SELECT lbr_register_migration_script('201406250800.sql') FROM dual
;

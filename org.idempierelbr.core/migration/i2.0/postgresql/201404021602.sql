-- Apr 2, 2014 3:29:04 PM BRT
-- Table/Tab/Fields for LBR_DocLine_ISSQN (Order)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ServiceType',1000165,'Service Type','Service Type','7abe2913-e697-4e0a-a749-bf3a91392133',TO_TIMESTAMP('2014-04-02 15:29:04','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-02 15:29:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 3:30:13 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ISSQN_ID',1000166,'The Doc Line ISSQN is a unique identifier for a doc line details.','Doc Line ISSQN','Doc Line ISSQN','Doc Line ISSQN','51623fff-f246-4ac7-ac33-a40f1483f29f',TO_TIMESTAMP('2014-04-02 15:30:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-02 15:30:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 3:30:23 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ISSQN_UU',1000167,'The Doc Line ISSQN is a unique identifier for a doc line details.','Doc Line ISSQN','Doc Line ISSQN','Doc Line ISSQN','0662b1e1-a1b7-486b-ada7-5b4bc0151c59',TO_TIMESTAMP('2014-04-02 15:30:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-04-02 15:30:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 3:30:54 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000032,'N','N','Y','LBR','L','2cfd6b7e-385d-4db2-aee1-4843160266db','Y','Y','LBR_DocLine_ISSQN','Doc Line ISSQN','Y',0,0,TO_TIMESTAMP('2014-04-02 15:30:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:30:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Apr 2, 2014 3:30:54 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000036,'Table LBR_DocLine_ISSQN','LBR_DocLine_ISSQN',1,'40b02fde-f0cc-402c-83f7-245589cd8aee',TO_TIMESTAMP('2014-04-02 15:30:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:30:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Apr 2, 2014 3:31:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000574,'N','N','N',0,'N',22,'N','N','N','Y','35156b8b-5cd1-4a56-b542-71b5559c5f7e','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-04-02 15:31:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:31:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000032,129,0,'LBR')
;

-- Apr 2, 2014 3:31:17 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:31:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000574
;

-- Apr 2, 2014 3:31:17 PM BRT
CREATE TABLE LBR_DocLine_ISSQN (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- Apr 2, 2014 3:31:17 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT ADClient_LBRDocLineISSQN FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:31:33 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000575,'N','N','N',0,'N',22,'N','N','N','Y','c446e422-465a-4410-b717-ee2363f0112b','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-04-02 15:31:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:31:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000032,104,0,'LBR')
;

-- Apr 2, 2014 3:31:34 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:31:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000575
;

-- Apr 2, 2014 3:31:34 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:31:34 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT ADOrg_LBRDocLineISSQN FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:31:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000576,'N','N','N',0,'N',7,'N','N','N','Y','c823da2d-c8b3-4662-9a4a-5d6880f01430','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-04-02 15:31:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:31:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000032,0,'LBR')
;

-- Apr 2, 2014 3:31:54 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- Apr 2, 2014 3:32:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000577,'N','N','N',0,'N',22,'N','N','N','Y','30f0aa6b-271b-4e89-a5ff-6f06cd0edd33','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-04-02 15:32:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:32:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000032,0,'LBR')
;

-- Apr 2, 2014 3:32:09 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000577
;

-- Apr 2, 2014 3:32:09 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:32:09 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT CreatedBy_LBRDocLineISSQN FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:32:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000578,'N','N','N',0,'N',7,'N','N','N','Y','19f6f060-dfd0-466a-a4f2-2fa1475e5773','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-04-02 15:32:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:32:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000032,0,'LBR')
;

-- Apr 2, 2014 3:32:28 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- Apr 2, 2014 3:32:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000579,'N','N','N',0,'N',22,'N','N','N','Y','cb70d918-0d50-4fca-a168-607f135865d3','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-04-02 15:32:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:32:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000032,0,'LBR')
;

-- Apr 2, 2014 3:32:41 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:32:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000579
;

-- Apr 2, 2014 3:32:41 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:32:41 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT UpdatedBy_LBRDocLineISSQN FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:33:17 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000580,'N','N','N',0,'N',1,'N','N','N','Y','c1350575-32ed-468a-b2b6-e5b2cc3536ce','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-04-02 15:33:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:33:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000032,0,'LBR')
;

-- Apr 2, 2014 3:33:18 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Apr 2, 2014 3:33:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000581,'N','N','N',0,'N',22,'N','N','N','Y','b90a9111-f800-46c2-85b8-40b0c5edd3b2','Y','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Y',TO_TIMESTAMP('2014-04-02 15:33:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:33:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,19,1000032,0,'LBR')
;

-- Apr 2, 2014 3:33:38 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLineIS', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000581
;

-- Apr 2, 2014 3:33:38 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_DocLine_Details_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:33:38 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT LBRDocLineDetails_LBRDocLineIS FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:33:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000582,'N','N','N',0,'N',22,'N','Y','N','Y','556b0cc7-69be-478b-b988-c35d47145d5c','N','LBR_DocLine_ISSQN_ID','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.','Doc Line ISSQN','N',TO_TIMESTAMP('2014-04-02 15:33:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:33:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000166,13,1000032,0,'LBR')
;

-- Apr 2, 2014 3:33:56 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_DocLine_ISSQN_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:33:56 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT LBR_DocLine_ISSQN_Key PRIMARY KEY (LBR_DocLine_ISSQN_ID)
;

-- Apr 2, 2014 3:34:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000583,'N','N','N',0,'N',36,'N','N','N','Y','332db43e-5c14-470d-ba27-d36f7d2d57ba','N','LBR_DocLine_ISSQN_UU','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.','Doc Line ISSQN','N',TO_TIMESTAMP('2014-04-02 15:34:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:34:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000167,10,1000032,0,'LBR')
;

-- Apr 2, 2014 3:34:14 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_DocLine_ISSQN_UU VARCHAR(36) DEFAULT NULL 
;

-- Apr 2, 2014 3:34:14 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT LBR_DocLine_ISSQN_UU_idx UNIQUE (LBR_DocLine_ISSQN_UU)
;

-- Apr 2, 2014 3:34:41 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000584,'N','N','N',0,'N',10,'N','N','N','Y','05cd09e3-64cd-4e21-a794-5e010d7e77d7','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_TIMESTAMP('2014-04-02 15:34:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:34:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000032,0,'LBR')
;

-- Apr 2, 2014 3:34:42 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- Apr 2, 2014 3:35:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000585,'N','N','N',0,'N',10,'N','N','N','Y','6810987b-187f-4a6d-b377-de163fc859c7','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_TIMESTAMP('2014-04-02 15:35:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:35:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000032,0,'LBR')
;

-- Apr 2, 2014 3:35:13 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_TaxRate NUMERIC DEFAULT NULL 
;

-- Apr 2, 2014 3:36:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000586,'N','N','N',0,'N',5,'N','N','N','Y','53ca8ec9-3c57-4010-a821-d57abc0f9eef','Y','LBR_ServiceType','Service Type','Y',TO_TIMESTAMP('2014-04-02 15:36:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:36:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000165,14,1000032,0,'LBR')
;

-- Apr 2, 2014 3:36:14 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ServiceType VARCHAR(5) DEFAULT NULL 
;

-- Apr 2, 2014 3:37:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000587,'N','N','N',0,'N',10,'N','N','N','Y','d58a072e-32df-4e83-999a-d568ebe16baf','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_TIMESTAMP('2014-04-02 15:37:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:37:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000032,1000001,0,'LBR')
;

-- Apr 2, 2014 3:37:54 PM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000587
;

-- Apr 2, 2014 3:37:54 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:37:54 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT CRegion_LBRDocLineISSQN FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:38:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000588,'N','N','N',0,'N',10,'N','N','N','Y','5544c6f0-612c-4348-96a7-6b74bb653ace','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_TIMESTAMP('2014-04-02 15:38:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:38:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000032,0,'LBR')
;

-- Apr 2, 2014 3:38:25 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_TaxAmt NUMERIC DEFAULT NULL 
;

-- Apr 2, 2014 3:41:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000589,'N','N','N',0,'N',10,'N','N','N','Y','f2b2cf13-7e47-4644-b098-6ce6e874d6b3','Y','C_City_ID','City','City in a country','City','Y',TO_TIMESTAMP('2014-04-02 15:41:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-04-02 15:41:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1830,30,1000011,1000032,52045,0,'LBR')
;

-- Apr 2, 2014 3:41:37 PM BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRDocLineISSQN', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-04-02 15:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000589
;

-- Apr 2, 2014 3:41:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN C_City_ID NUMERIC(10) DEFAULT NULL 
;

-- Apr 2, 2014 3:41:37 PM BRT
ALTER TABLE LBR_DocLine_ISSQN ADD CONSTRAINT CCity_LBRDocLineISSQN FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 3:44:46 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',143,90,'The ISSQN Tab defines amounts for ISSQN Tax','N','N','N','N','N','N','N',3,'4b28be47-4341-496a-9571-33b4108c7e85','LBR','ISSQN','ISSQN',1000032,'@Processed@=Y',0,TO_TIMESTAMP('2014-04-02 15:44:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:44:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000581,1000032,'B')
;

-- Apr 2, 2014 3:45:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,22,'N','N',10,'Y',1000449,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','13b07ff6-4c38-4cba-9ad3-45210fbeb0a3','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:42','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000574)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,22,'N','N',20,'Y',1000450,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','27b56a5e-9236-4235-a2fc-7a8954321b00','N','Y','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:42','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000575)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,22,'N','N',30,'Y',1000451,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','b665487a-6169-49f4-99f7-ff0cb0c28092','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000581)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,22,'N','N',40,'Y',1000452,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','8c874871-ace9-42e3-ab43-391ee8ab94e6','N','N',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000582)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,36,'N','N',50,'Y',1000453,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','e52f5342-b458-4dee-96ab-018309357e9e','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000583)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,10,'N','N',60,'Y',1000454,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','cbf182d5-b684-4f89-abcb-9f1371be4caa','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000584)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,10,'N','N',70,'Y',1000455,'N','LBR','Indicates the Tax Rate','Tax Rate','55ec425a-4665-40f1-a221-1354377a352e','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000585)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000032,5,'N','N',80,'Y',1000456,'N','LBR','Service Type','567bccac-2e20-4e35-a640-edc0567ac700','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,3,1000586)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,10,'N','N',90,'Y',1000457,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','47794233-a24c-4395-a6f5-dfd759fb929c','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000587)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,10,'N','N',100,'Y',1000458,'N','LBR','Defines the Tax Amount','Tax Amount','24b8f9e0-b729-492c-8443-219a157fc2f6','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000588)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,10,'N','N',110,'Y',1000459,'N','City in a country','LBR','City','City','dfd54c54-a726-4fde-988e-0f9e9af7bfb3','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000589)
;

-- Apr 2, 2014 3:45:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000032,1,'N','N',120,'Y',1000460,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','e601b82c-4eae-4bc7-ad9d-623929d523a6','N','Y',0,0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-04-02 15:45:43','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000580)
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000460
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000453
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000451
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000452
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000454
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000455
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000456
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000457
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000459
;

-- Apr 2, 2014 3:46:11 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000458
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000453
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000451
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000460
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000458
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000454
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000455
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000456
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000457
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000459
;

-- Apr 2, 2014 3:46:45 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000450
;

-- Apr 2, 2014 3:47:28 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-04-02 15:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000450
;

-- Apr 2, 2014 3:47:38 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-04-02 15:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000455
;

-- Apr 2, 2014 3:48:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-04-02 15:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000459
;

-- Apr 2, 2014 3:50:18 PM BRT
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_TIMESTAMP('2014-04-02 15:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000586
;

-- Apr 2, 2014 3:50:22 PM BRT
INSERT INTO t_alter_column values('lbr_docline_issqn','LBR_ServiceType','VARCHAR(5)',null,'NULL')
;

-- Apr 2, 2014 3:52:42 PM BRT
UPDATE AD_Field SET NumLines=1,Updated=TO_TIMESTAMP('2014-04-02 15:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000456
;

-- Apr 2, 2014 4:19:10 PM BRT
UPDATE AD_Tab SET AD_Column_ID=1000569,Updated=TO_TIMESTAMP('2014-04-02 16:19:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000031
;

SELECT lbr_register_migration_script('201404021602.sql') FROM dual
;


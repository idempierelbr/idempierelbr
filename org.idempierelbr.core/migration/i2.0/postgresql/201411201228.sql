-- 19/11/2014 13h29min27s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,800000,'N','N','N','LBR','L','0a3b0984-442d-4f03-aa51-46310bd19f88','Y','Y','LBR_DI','Import Declaration (DI)','Y',0,0,TO_TIMESTAMP('2014-11-19 13:29:26','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-11-19 13:29:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 13h40min19s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800000,'N','N','N',0,'N',22,'N','N','N','Y','292cddad-136a-4cdd-86da-f9da9c14d267','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-11-19 13:40:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:40:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,800000,129,0,'LBR')
;

-- 19/11/2014 13h40min22s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 13:40:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800000
;

-- 19/11/2014 13h40min22s BRST
CREATE TABLE LBR_DI (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- 19/11/2014 13h40min23s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT ADClient_LBRDI FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 13h40min58s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800001,'N','N','N',0,'N',22,'N','N','N','Y','2182409d-3e5c-4511-bb49-60bc2cabc8b6','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-11-19 13:40:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:40:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,800000,104,0,'LBR')
;

-- 19/11/2014 13h41min2s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 13:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800001
;

-- 19/11/2014 13h41min2s BRST
ALTER TABLE LBR_DI ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 13h41min2s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT ADOrg_LBRDI FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 13h41min23s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800002,'N','N','N',0,'N',7,'N','N','N','Y','41c8e605-0609-4054-b7ae-f96303e43df8','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-11-19 13:41:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:41:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,800000,0,'LBR')
;

-- 19/11/2014 13h41min27s BRST
ALTER TABLE LBR_DI ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 13h41min38s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800003,'N','N','N',0,'N',22,'N','N','N','Y','7bcfead0-241b-4e8a-9028-fa71a217df1b','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-11-19 13:41:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:41:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,800000,0,'LBR')
;

-- 19/11/2014 13h41min42s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 13:41:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800003
;

-- 19/11/2014 13h41min42s BRST
ALTER TABLE LBR_DI ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 13h41min42s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT CreatedBy_LBRDI FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 13h41min56s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800004,'N','N','N',0,'N',7,'N','N','N','Y','9300959b-7574-4453-84e2-80c24933c191','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-11-19 13:41:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:41:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,800000,0,'LBR')
;

-- 19/11/2014 13h41min57s BRST
ALTER TABLE LBR_DI ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 13h42min11s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800005,'N','N','N',0,'N',22,'N','N','N','Y','bf47a5ef-bd2b-41ad-ba12-6c1b5bfe5f31','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-11-19 13:42:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:42:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,800000,0,'LBR')
;

-- 19/11/2014 13h42min12s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 13:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800005
;

-- 19/11/2014 13h42min12s BRST
ALTER TABLE LBR_DI ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 13h42min12s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT UpdatedBy_LBRDI FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 13h43min2s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800006,'N','N','N',0,'N',1,'N','N','N','Y','56712f85-d48a-4965-9291-35c00d461523','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-11-19 13:43:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:43:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,800000,0,'LBR')
;

-- 19/11/2014 13h43min3s BRST
ALTER TABLE LBR_DI ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 19/11/2014 13h45min54s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_ID',800000,'The DI is a document used in a product/service import.',NULL,NULL,'Import Declaration (DI)','Identifies an Import Declaration (DI)','DI',NULL,NULL,'e36aa74a-d8a5-4621-bc10-54a7b7dfa0b9',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 13:45:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 13:45:53','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 13h46min16s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_UU',800001,'The DI is a document used in a product/service import.','Import Declaration (DI)','Identifies an Import Declaration (DI)','DI','8cd96343-26cd-49f5-8e66-c4fe0a53fab4',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 13:46:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 13:46:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 13h47min9s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800007,'Y','N','N',0,'N',22,'N','Y','N','Y','5e74ad8b-e0ed-493a-8fd0-59c040951e93','N','LBR_DI_ID','Identifies an Import Declaration (DI)','The DI is a document used in a product/service import.','Import Declaration (DI)','N',TO_TIMESTAMP('2014-11-19 13:47:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:47:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800000,13,800000,0,'LBR')
;

-- 19/11/2014 13h47min24s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 13h47min24s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT LBR_DI_Key PRIMARY KEY (LBR_DI_ID)
;

-- 19/11/2014 13h47min55s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800008,'Y','N','N',0,'N',36,'N','N','N','Y','29d94517-896e-45ac-ae57-2c4f4d351317','N','LBR_DI_UU','Identifies an Import Declaration (DI)','The DI is a document used in a product/service import.','Import Declaration (DI)','N',TO_TIMESTAMP('2014-11-19 13:47:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:47:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800001,10,800000,0,'LBR')
;

-- 19/11/2014 13h47min59s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_UU VARCHAR(36) NOT NULL
;

-- 19/11/2014 13h47min59s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT LBR_DI_UU_idx UNIQUE (LBR_DI_UU)
;

-- 19/11/2014 13h48min38s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800009,'N','N','N',0,'N',255,'Y','N','N','Y','8f7ffa34-dc29-4fa9-aab8-5213b00e61c2','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-11-19 13:48:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:48:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,800000,0,'LBR')
;

-- 19/11/2014 13h48min39s BRST
ALTER TABLE LBR_DI ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 19/11/2014 13h50min25s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_No',800002,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Import Declaration (DI) No','Document sequence number of the document','DI No','653ef7f7-c600-4ae1-8474-48c75c9d8387',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 13:50:24','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 13:50:24','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 13h52min3s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800010,'Y','N','Y',0,'N',12,'N','N','N','Y','5d21fb8b-90e9-4782-9e3d-f62a7cb2c6dd','Y','LBR_DI_No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Import Declaration (DI) No','Y',TO_TIMESTAMP('2014-11-19 13:52:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:52:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800002,10,800000,0,'LBR')
;

-- 19/11/2014 13h52min5s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_No VARCHAR(12) NOT NULL
;

-- 19/11/2014 13h52min39s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800011,'Y','N','N',0,'N',7,'N','N','N','Y','99bd519d-4752-4d99-8ac0-9330eee1733c','Y','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date','Y',TO_TIMESTAMP('2014-11-19 13:52:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:52:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',265,15,800000,0,'LBR')
;

-- 19/11/2014 13h52min49s BRST
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-11-19 13:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800011
;

-- 19/11/2014 13h52min53s BRST
ALTER TABLE LBR_DI ADD COLUMN DateDoc TIMESTAMP NOT NULL
;

-- 19/11/2014 13h56min43s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Importer_ID',800003,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Importer)','Identifies a Business Partner','Business Partner (Importer)','0277dbde-0902-4f00-9727-2519a4d27fdd',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 13:56:42','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 13:56:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 13h58min39s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800012,'N','N','N',0,'N',22,'N','N','N','Y','7601c33e-9fc3-4559-b276-80d3217cee57','Y','LBR_BP_Importer_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Importer)','Y',TO_TIMESTAMP('2014-11-19 13:58:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 13:58:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800003,30,138,800000,0,'LBR')
;

-- 19/11/2014 13h58min41s BRST
UPDATE AD_Column SET FKConstraintName='LBRBPImporter_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 13:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800012
;

-- 19/11/2014 13h58min41s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_BP_Importer_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 13h58min41s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT LBRBPImporter_LBRDI FOREIGN KEY (LBR_BP_Importer_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 13h59min34s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Buyer_ID',800004,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Buyer)','Identifies a Business Partner','Business Partner (Buyer)','1adeed48-6b5b-4184-9c7e-6c5af6c977dc',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 13:59:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 13:59:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h0min27s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800013,'N','N','N',0,'N',22,'N','N','N','Y','0e20175c-ce46-41ec-95dc-0999588a01e3','Y','LBR_BP_Buyer_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Buyer)','Y',TO_TIMESTAMP('2014-11-19 14:00:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:00:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800004,30,138,800000,0,'LBR')
;

-- 19/11/2014 14h0min29s BRST
UPDATE AD_Column SET FKConstraintName='LBRBPBuyer_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800013
;

-- 19/11/2014 14h0min29s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_BP_Buyer_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h0min29s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT LBRBPBuyer_LBRDI FOREIGN KEY (LBR_BP_Buyer_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h2min3s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800014,'Y','N','N',0,'N',10,'N','N','N','Y','7fe74445-fc23-4031-a657-87302a72dff5','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_TIMESTAMP('2014-11-19 14:02:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:02:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,800000,1000001,0,'LBR')
;

-- 19/11/2014 14h2min7s BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:02:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800014
;

-- 19/11/2014 14h2min7s BRST
ALTER TABLE LBR_DI ADD COLUMN C_Region_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h2min7s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT CRegion_LBRDI FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h3min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800015,'Y','N','N',0,'N',10,'N','N','N','Y','eda3a58a-a2e7-4865-a758-113814b200c1','Y','C_City_ID','City','City in a country','City','Y',TO_TIMESTAMP('2014-11-19 14:03:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:03:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1830,30,1000011,800000,52045,0,'LBR')
;

-- 19/11/2014 14h3min17s BRST
UPDATE AD_Column SET FKConstraintName='CCity_LBRDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:03:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800015
;

-- 19/11/2014 14h3min17s BRST
ALTER TABLE LBR_DI ADD COLUMN C_City_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h3min17s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT CCity_LBRDI FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h5min41s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ClearanceDate',800005,'The Clearance Date for imported / exported goods','Clearance Date','Date of the clearance','Clearance Date','295db64a-60fc-4ff8-99f1-4abacfd193fb',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:05:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:05:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h7min10s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800016,'N','N','N',0,'N',7,'N','N','N','Y','84f6e238-6625-40c9-a220-7880e5e1bffc','Y','LBR_ClearanceDate','Date of the clearance','The Clearance Date for imported / exported goods','Clearance Date','Y',TO_TIMESTAMP('2014-11-19 14:07:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:07:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800005,15,800000,0,'LBR')
;

-- 19/11/2014 14h7min12s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_ClearanceDate TIMESTAMP DEFAULT NULL 
;

-- 19/11/2014 14h8min27s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_TranspType',800006,'Indicates the type of transportation used in an Import Declaration (DI)','Transportation Type','Type of transportation','Transportation Type','884ba6d3-4204-483e-b2be-c45765aef5e2',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:08:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:08:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h9min8s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800000,'LBR_DI_TranspType','LBR','7d333407-dfac-4ed3-91a6-fc60beef2614','N','L',0,0,TO_TIMESTAMP('2014-11-19 14:09:07','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-11-19 14:09:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 19/11/2014 14h9min46s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800000,800000,'374ec35a-9427-45f1-afd7-41c1ed7c0455','1',TO_TIMESTAMP('2014-11-19 14:09:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:09:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Maritima')
;

-- 19/11/2014 14h10min38s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800001,800000,'7a915818-ad66-4c88-ae11-1755de5e9977','2',TO_TIMESTAMP('2014-11-19 14:10:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:10:37','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Fluvial')
;

-- 19/11/2014 14h10min57s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800002,800000,'7a85935b-8db1-4a5e-9bd3-40fc1b32a59f','3',TO_TIMESTAMP('2014-11-19 14:10:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:10:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Aerea')
;

-- 19/11/2014 14h11min26s BRST
UPDATE AD_Ref_List SET Name='Lacustre',Updated=TO_TIMESTAMP('2014-11-19 14:11:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800002
;

-- 19/11/2014 14h11min48s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800003,800000,'7ef5870e-8a23-42a3-90a0-9b3ad5e197c6','4',TO_TIMESTAMP('2014-11-19 14:11:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:11:46','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Aerea')
;

-- 19/11/2014 14h12min44s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800004,800000,'4c16a962-3bc8-48a0-b0b1-7d27e4857dbd','5',TO_TIMESTAMP('2014-11-19 14:12:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:12:43','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Postal')
;

-- 19/11/2014 14h13min7s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800005,800000,'a1c4d9a5-5ce4-4b10-b61f-e49ae77e56fe','6',TO_TIMESTAMP('2014-11-19 14:13:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:13:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Ferroviaria')
;

-- 19/11/2014 14h13min26s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800006,800000,'34f1721e-c042-4f76-88e8-d5539f772406','7',TO_TIMESTAMP('2014-11-19 14:13:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:13:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Rodoviaria')
;

-- 19/11/2014 14h14min15s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800007,800000,'934c5636-c1e2-43ef-b722-746c7c1bfc78','8',TO_TIMESTAMP('2014-11-19 14:14:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:14:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Conduto / Rede de Transmissao')
;

-- 19/11/2014 14h14min39s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800008,800000,'fd86471e-a589-418a-bbf4-01c64ad0b390','9',TO_TIMESTAMP('2014-11-19 14:14:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:14:38','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Meios Proprios')
;

-- 19/11/2014 14h15min21s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800009,800000,'f119e4a9-eced-4136-a744-f1c4477a33b1','10',TO_TIMESTAMP('2014-11-19 14:15:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:15:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Entrada / Saida Ficta.')
;

-- 19/11/2014 14h15min44s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800017,'Y','N','N',0,'N',2,'N','N','N','Y','fb5533be-f1b1-4069-98b9-6dec50e72bed','Y','LBR_DI_TranspType','Type of transportation','Indicates the type of transportation used in an Import Declaration (DI)','Transportation Type','Y',TO_TIMESTAMP('2014-11-19 14:15:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:15:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800006,17,800000,800000,0,'LBR')
;

-- 19/11/2014 14h15min45s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_TranspType VARCHAR(2) NOT NULL
;

-- 19/11/2014 14h17min48s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_MediationImpType',800007,'Indicates the type of mediation used in an Import Declaration (DI)','Mediation Type','Type of mediation','Mediation Type','516d60fa-c43d-4054-90a6-e5e7dff5b805',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:17:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:17:47','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h19min40s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800001,'LBR_DI_MediationImpType','LBR','04898d6a-2ca5-42c1-a643-189407533467','N','L',0,0,TO_TIMESTAMP('2014-11-19 14:19:39','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-11-19 14:19:39','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 19/11/2014 14h20min13s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800010,800001,'f4e1aec1-6bf4-42b7-906f-02a074e86f8d','1',TO_TIMESTAMP('2014-11-19 14:20:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:20:12','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Importacao por Conta Propria')
;

-- 19/11/2014 14h20min39s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800011,800001,'234c785a-1a1b-44b5-b6ef-9a69662d4b0a','2',TO_TIMESTAMP('2014-11-19 14:20:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:20:38','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Importacao por Conta e Ordem')
;

-- 19/11/2014 14h21min0s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800012,800001,'1df1b8e7-b3db-4712-8d2a-a5e6302ef7b1','3',TO_TIMESTAMP('2014-11-19 14:20:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-11-19 14:20:59','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Importacao por Encomenda')
;

-- 19/11/2014 14h21min21s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800018,'Y','N','N',0,'N',1,'N','N','N','Y','d725193f-bdfc-413f-aed9-23927638639b','Y','LBR_DI_MediationImpType','Type of mediation','Indicates the type of mediation used in an Import Declaration (DI)','Mediation Type','Y',TO_TIMESTAMP('2014-11-19 14:21:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:21:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800007,17,800001,800000,0,'LBR')
;

-- 19/11/2014 14h21min22s BRST
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_MediationImpType CHAR(1) NOT NULL
;

-- 19/11/2014 14h24min31s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,800001,'N','N','N','LBR','L','f65a34ec-0545-446c-ab0f-9067ee278c15','Y','Y','LBR_DI_Addition','Import Declaration (DI) Addition','Y',0,0,TO_TIMESTAMP('2014-11-19 14:24:30','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-11-19 14:24:30','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h24min32s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800000,'Table LBR_DI_Addition','LBR_DI_Addition',1,'05b4e08b-d658-47d3-8c51-3028350fb700',0,TO_TIMESTAMP('2014-11-19 14:24:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-11-19 14:24:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h24min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800019,'N','N','N',0,'N',22,'N','N','N','Y','b95ff20e-f630-4813-9e86-d4fb202c4e3d','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-11-19 14:24:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:24:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,800001,129,0,'LBR')
;

-- 19/11/2014 14h24min47s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:24:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800019
;

-- 19/11/2014 14h24min47s BRST
CREATE TABLE LBR_DI_Addition (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- 19/11/2014 14h24min47s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT ADClient_LBRDIAddition FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h24min59s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800020,'N','N','N',0,'N',22,'N','N','N','Y','c79c96f4-5171-4a09-ab8e-db74f0c402d8','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-11-19 14:24:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:24:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,800001,104,0,'LBR')
;

-- 19/11/2014 14h25min0s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:25:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800020
;

-- 19/11/2014 14h25min0s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h25min0s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT ADOrg_LBRDIAddition FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h25min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800021,'N','N','N',0,'N',7,'N','N','N','Y','4838e477-d069-47d1-82d6-a8ec566168a3','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-11-19 14:25:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:25:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,800001,0,'LBR')
;

-- 19/11/2014 14h25min17s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 14h25min29s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800022,'N','N','N',0,'N',22,'N','N','N','Y','c55c41fa-bcee-4f55-abc3-45d87bb695f1','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-11-19 14:25:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:25:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,800001,0,'LBR')
;

-- 19/11/2014 14h25min30s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:25:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800022
;

-- 19/11/2014 14h25min30s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h25min30s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT CreatedBy_LBRDIAddition FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h25min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800023,'N','N','N',0,'N',7,'N','N','N','Y','c2cd2f7c-c8cc-4a8e-aa34-3a4dcda17d75','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-11-19 14:25:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:25:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,800001,0,'LBR')
;

-- 19/11/2014 14h25min46s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 14h25min59s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800024,'N','N','N',0,'N',22,'N','N','N','Y','64149f30-8957-48fb-bbb9-4c1d4eed7ba3','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-11-19 14:25:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:25:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,800001,0,'LBR')
;

-- 19/11/2014 14h26min1s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800024
;

-- 19/11/2014 14h26min1s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h26min1s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT UpdatedBy_LBRDIAddition FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h27min56s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800025,'N','N','N',0,'N',1,'N','N','N','Y','5993fe17-32eb-45bc-8635-e73a67abf2df','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-11-19 14:27:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:27:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,800001,0,'LBR')
;

-- 19/11/2014 14h27min57s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 19/11/2014 14h30min36s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_Addition_ID',800008,NULL,'Import Declaration (DI) Addition','Identifies an Import Declaration (DI) Addiction','DI Addiction','f3f8eb14-d6b7-46fd-8233-80c488d4ffa6',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:30:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:30:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h30min45s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_Addition_UU',800009,'Import Declaration (DI) Addition','Identifies an Import Declaration (DI) Addiction','DI Addiction','47bc74c7-4e92-40e8-8667-3632d6f69f70',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:30:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:30:44','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h32min1s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800026,'Y','N','N',0,'N',22,'N','Y','N','Y','8f954abb-84f2-4250-a1f2-bbde98ba973c','N','LBR_DI_Addition_ID','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','N',TO_TIMESTAMP('2014-11-19 14:32:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:32:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800008,13,800001,0,'LBR')
;

-- 19/11/2014 14h32min3s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN LBR_DI_Addition_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h32min3s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT LBR_DI_Addition_Key PRIMARY KEY (LBR_DI_Addition_ID)
;

-- 19/11/2014 14h32min17s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800027,'N','N','N',0,'N',36,'N','N','N','Y','7cb01504-8e36-4277-8255-aaadc91c151c','N','LBR_DI_Addition_UU','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','N',TO_TIMESTAMP('2014-11-19 14:32:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:32:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800009,10,800001,0,'LBR')
;

-- 19/11/2014 14h32min19s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN LBR_DI_Addition_UU VARCHAR(36) DEFAULT NULL 
;

-- 19/11/2014 14h32min19s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT LBR_DI_Addition_UU_idx UNIQUE (LBR_DI_Addition_UU)
;

-- 19/11/2014 14h34min13s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800028,'Y','N','Y',0,'N',22,'N','N','N','Y','f39ba6b6-3c06-4e26-a428-23192e3aa93e','N','LBR_DI_ID','Identifies an Import Declaration (DI)','The DI is a document used in a product/service import.','Import Declaration (DI)','Y',TO_TIMESTAMP('2014-11-19 14:34:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:34:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800000,19,800001,0,'LBR')
;

-- 19/11/2014 14h34min16s BRST
UPDATE AD_Column SET FKConstraintName='LBRDI_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:34:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800028
;

-- 19/11/2014 14h34min16s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN LBR_DI_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h34min16s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT LBRDI_LBRDIAddition FOREIGN KEY (LBR_DI_ID) REFERENCES lbr_di(lbr_di_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h34min38s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800029,'N','N','N',0,'N',255,'Y','N','N','Y','30e99878-2ed1-4148-bc74-55fc7f6232eb','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-11-19 14:34:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:34:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,800001,0,'LBR')
;

-- 19/11/2014 14h34min40s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 19/11/2014 14h38min4s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800030,'Y','N','Y',1,'N',22,'N','N','N','Y','0009f88e-efdd-4b81-a85a-15039db55763','Y','SeqNo','Method of ordering records; lowest number comes first','@SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addiction WHERE LBR_DI_ID=@LBR_DI_ID@','The Sequence indicates the order of records','Sequence','Y',TO_TIMESTAMP('2014-11-19 14:38:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:38:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',566,11,800001,0,'LBR')
;

-- 19/11/2014 14h38min9s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN SeqNo NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h39min20s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Exporter_ID',800010,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Exporter)','Identifies a Business Partner','Business Partner (Exporter)','102f2a8e-b54a-4f21-a3e2-08da12db6132',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:39:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:39:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h40min28s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800031,'Y','N','N',0,'N',22,'N','N','N','Y','b3881d5f-8ef4-48c5-9604-904417914b43','Y','LBR_BP_Exporter_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Exporter)','Y',TO_TIMESTAMP('2014-11-19 14:40:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:40:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800010,30,138,800001,0,'LBR')
;

-- 19/11/2014 14h40min30s BRST
UPDATE AD_Column SET FKConstraintName='LBRBPExporter_LBRDIAddition', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:40:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800031
;

-- 19/11/2014 14h40min30s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN LBR_BP_Exporter_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h40min30s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT LBRBPExporter_LBRDIAddition FOREIGN KEY (LBR_BP_Exporter_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h41min11s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_Manufacturer_ID',800011,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Manufacturer)','Identifies a Business Partner','Business Partner (Manufacturer)','c6cb9abe-c2a1-4974-b432-fb75aa694c91',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:41:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:41:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h41min37s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800032,'N','N','N',0,'N',22,'N','N','N','Y','3c579fd7-f4ca-44da-8553-8be15c6d4c6d','Y','LBR_BP_Manufacturer_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner (Manufacturer)','Y',TO_TIMESTAMP('2014-11-19 14:41:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:41:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800011,30,138,800001,0,'LBR')
;

-- 19/11/2014 14h41min39s BRST
UPDATE AD_Column SET FKConstraintName='LBRBPManufacturer_LBRDIAdditio', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800032
;

-- 19/11/2014 14h41min39s BRST
ALTER TABLE LBR_DI_Addition ADD COLUMN LBR_BP_Manufacturer_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h41min39s BRST
ALTER TABLE LBR_DI_Addition ADD CONSTRAINT LBRBPManufacturer_LBRDIAdditio FOREIGN KEY (LBR_BP_Manufacturer_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h42min32s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,800002,'N','N','N','LBR','L','60fc79c4-1fe3-40a0-84ff-00b7c58f9b75','Y','Y','LBR_DI_AdditionProd','Import Declaration (DI) Addition Product','Y',0,0,TO_TIMESTAMP('2014-11-19 14:42:31','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-11-19 14:42:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h42min33s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800001,'Table LBR_DI_AdditionProd','LBR_DI_AdditionProd',1,'a6217a7f-5213-4947-a180-012744029ff0',0,TO_TIMESTAMP('2014-11-19 14:42:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-11-19 14:42:32','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h43min2s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800033,'N','N','N',0,'N',22,'N','N','N','Y','de6b501a-5200-4dd1-bad8-e8a2081cac1c','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-11-19 14:43:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:43:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,800002,129,0,'LBR')
;

-- 19/11/2014 14h43min3s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800033
;

-- 19/11/2014 14h43min3s BRST
CREATE TABLE LBR_DI_AdditionProd (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- 19/11/2014 14h43min3s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT ADClient_LBRDIAdditionProd FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h43min15s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800034,'N','N','N',0,'N',22,'N','N','N','Y','f490a838-b4a4-4c52-badd-5c63470840aa','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-11-19 14:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:43:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,800002,104,0,'LBR')
;

-- 19/11/2014 14h43min16s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800034
;

-- 19/11/2014 14h43min16s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h43min16s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT ADOrg_LBRDIAdditionProd FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h43min33s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800035,'N','N','N',0,'N',7,'N','N','N','Y','7e13ece3-d921-4720-a136-6bcb8ba34616','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-11-19 14:43:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:43:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,800002,0,'LBR')
;

-- 19/11/2014 14h43min34s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 14h43min47s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800036,'N','N','N',0,'N',22,'N','N','N','Y','60f7a4f0-67dc-4d43-9390-32818b969aa2','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-11-19 14:43:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:43:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,800002,0,'LBR')
;

-- 19/11/2014 14h43min49s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800036
;

-- 19/11/2014 14h43min49s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h43min49s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT CreatedBy_LBRDIAdditionProd FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h44min1s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800037,'N','N','N',0,'N',7,'N','N','N','Y','e42e793c-266f-46af-a38d-44b8dbc2bd7f','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-11-19 14:44:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:44:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,800002,0,'LBR')
;

-- 19/11/2014 14h44min3s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 14h44min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800038,'N','N','N',0,'N',22,'N','N','N','Y','6a2d944c-d361-4b3c-bbe6-1dd747c4ac03','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-11-19 14:44:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:44:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,800002,0,'LBR')
;

-- 19/11/2014 14h44min17s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800038
;

-- 19/11/2014 14h44min17s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h44min17s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT UpdatedBy_LBRDIAdditionProd FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h44min33s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800039,'N','N','N',0,'N',1,'N','N','N','Y','351d9107-d848-433e-95df-115b0b51c9f6','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-11-19 14:44:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:44:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,800002,0,'LBR')
;

-- 19/11/2014 14h44min34s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 19/11/2014 14h45min42s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_AdditionProd_ID',800012,'DI Addition Product','Identifies an Import Declaration (DI) Addiction Product','DI Addiction Product','50da0663-d251-4f19-b438-5cf45215eaeb',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:45:41','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:45:41','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h45min54s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DI_AdditionProd_UU',800013,'DI Addition Product','Identifies an Import Declaration (DI) Addiction Product','DI Addiction Product','348a3e7a-4286-4de8-b209-ecab04b9f0c5',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:45:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:45:53','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h46min31s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800040,'Y','N','N',0,'N',22,'N','Y','N','Y','b181dec9-4dd0-4f70-a1a2-eca5e736c6de','N','LBR_DI_AdditionProd_ID','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','N',TO_TIMESTAMP('2014-11-19 14:46:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:46:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800012,13,800002,0,'LBR')
;

-- 19/11/2014 14h46min33s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN LBR_DI_AdditionProd_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h46min33s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT LBR_DI_AdditionProd_Key PRIMARY KEY (LBR_DI_AdditionProd_ID)
;

-- 19/11/2014 14h46min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800041,'N','N','N',0,'N',36,'N','N','N','Y','b1579d52-8e7f-49ca-9c30-85dd211e9c9a','N','LBR_DI_AdditionProd_UU','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','N',TO_TIMESTAMP('2014-11-19 14:46:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:46:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800013,10,800002,0,'LBR')
;

-- 19/11/2014 14h46min47s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN LBR_DI_AdditionProd_UU VARCHAR(36) DEFAULT NULL 
;

-- 19/11/2014 14h46min47s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT LBR_DI_AdditionProd_UU_idx UNIQUE (LBR_DI_AdditionProd_UU)
;

-- 19/11/2014 14h47min23s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800042,'Y','N','N',0,'N',22,'N','N','N','Y','a0a00a4d-2bf4-4248-b437-49d56f4b42fd','N','LBR_DI_Addition_ID','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','Y',TO_TIMESTAMP('2014-11-19 14:47:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:47:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800008,19,800002,0,'LBR')
;

-- 19/11/2014 14h47min25s BRST
UPDATE AD_Column SET FKConstraintName='LBRDIAddition_LBRDIAdditionPro', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800042
;

-- 19/11/2014 14h47min25s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN LBR_DI_Addition_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h47min25s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT LBRDIAddition_LBRDIAdditionPro FOREIGN KEY (LBR_DI_Addition_ID) REFERENCES lbr_di_addition(lbr_di_addition_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h48min46s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800043,'N','N','N',0,'N',255,'Y','N','N','Y','0a9ea1f6-8abd-4153-8afb-bf23d4e13dc4','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-11-19 14:48:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:48:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,800002,0,'LBR')
;

-- 19/11/2014 14h48min48s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 19/11/2014 14h50min48s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800044,'N','N','N',0,'N',22,'N','N','N','Y','87c49106-0901-4b96-a752-db0627c2bba5','Y','SeqNo','Method of ordering records; lowest number comes first','@SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_AdditionProd WHERE LBR_DI_Addition_ID=@LBR_DI_Addition_ID@','The Sequence indicates the order of records','Sequence','Y',TO_TIMESTAMP('2014-11-19 14:50:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:50:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',566,11,800002,0,'LBR')
;

-- 19/11/2014 14h51min17s BRST
UPDATE AD_Column SET IsMandatory='Y', IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-11-19 14:51:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800044
;

-- 19/11/2014 14h51min19s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN SeqNo NUMERIC(10) NOT NULL
;

-- 19/11/2014 14h51min56s BRST
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addition WHERE LBR_DI_ID=@LBR_DI_ID@',Updated=TO_TIMESTAMP('2014-11-19 14:51:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800030
;

-- 19/11/2014 14h52min48s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800045,'N','N','N',0,'N',22,'N','N','N','Y','4bc9d04c-bf9a-4a22-8cb2-723a538daf70','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_TIMESTAMP('2014-11-19 14:52:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:52:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,30,800002,231,0,'LBR')
;

-- 19/11/2014 14h52min50s BRST
UPDATE AD_Column SET FKConstraintName='MProduct_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800045
;

-- 19/11/2014 14h52min50s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN M_Product_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h52min50s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT MProduct_LBRDIAdditionProd FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h53min30s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Specification',800014,'A description is limited to 255 characters.','Specification','Optional short description of the record','Specification','78492178-a4ae-4376-8c78-f90fa73c39b6',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 14:53:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 14:53:29','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 14h53min56s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800046,'N','N','N',0,'N',255,'N','N','N','Y','f6eb6d3e-88b5-4096-9617-d529fded34c0','Y','LBR_Specification','Optional short description of the record','A description is limited to 255 characters.','Specification','Y',TO_TIMESTAMP('2014-11-19 14:53:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:53:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800014,10,800002,0,'LBR')
;

-- 19/11/2014 14h53min57s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN LBR_Specification VARCHAR(255) DEFAULT NULL 
;

-- 19/11/2014 14h54min19s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800047,'N','N','N',0,'N',22,'N','N','N','Y','3df51aba-aa6e-411f-8f2b-9ae49edb322d','Y','Qty','Quantity','The Quantity indicates the number of a specific product or item for this document.','Quantity','Y',TO_TIMESTAMP('2014-11-19 14:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:54:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',526,29,800002,0,'LBR')
;

-- 19/11/2014 14h54min20s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN Qty NUMERIC DEFAULT NULL 
;

-- 19/11/2014 14h56min6s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800048,'N','N','N',0,'N',22,'N','N','N','Y','eb57aa9c-51f0-457b-8397-bad5265b4b6f','Y','C_UOM_ID','Unit of Measure','The UOM defines a unique non monetary Unit of Measure','UOM','Y',TO_TIMESTAMP('2014-11-19 14:56:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:56:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',215,19,800002,0,'LBR')
;

-- 19/11/2014 14h56min8s BRST
UPDATE AD_Column SET FKConstraintName='CUOM_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:56:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800048
;

-- 19/11/2014 14h56min8s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN C_UOM_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h56min8s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT CUOM_LBRDIAdditionProd FOREIGN KEY (C_UOM_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h56min34s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800049,'N','N','N',0,'N',22,'N','N','N','Y','b6e93991-ede8-40c8-a8db-e2fad192e5c0','Y','PriceActual','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.','Unit Price','Y',TO_TIMESTAMP('2014-11-19 14:56:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:56:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',519,37,800002,0,'LBR')
;

-- 19/11/2014 14h56min36s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN PriceActual NUMERIC DEFAULT NULL 
;

-- 19/11/2014 14h57min7s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800050,'N','N','N',0,'N',22,'N','N','N','Y','3efe6798-9c32-4ce7-832b-d1f7d3e11a13','Y','C_Currency_ID','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record','Currency','Y',TO_TIMESTAMP('2014-11-19 14:57:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 14:57:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',193,19,800002,0,'LBR')
;

-- 19/11/2014 14h57min12s BRST
UPDATE AD_Column SET FKConstraintName='CCurrency_LBRDIAdditionProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 14:57:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800050
;

-- 19/11/2014 14h57min12s BRST
ALTER TABLE LBR_DI_AdditionProd ADD COLUMN C_Currency_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 14h57min12s BRST
ALTER TABLE LBR_DI_AdditionProd ADD CONSTRAINT CCurrency_LBRDIAdditionProd FOREIGN KEY (C_Currency_ID) REFERENCES c_currency(c_currency_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 14h58min43s BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','N','N','N',0,0,'LBR','Import Declaration (DI)',800000,'758ec4fd-8bbf-4147-b3e1-ab4bb4a968db',TO_TIMESTAMP('2014-11-19 14:58:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_TIMESTAMP('2014-11-19 14:58:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h1min53s BRST
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-11-19 15:01:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800028
;

-- 19/11/2014 15h2min28s BRST
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-11-19 15:02:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800042
;

-- 19/11/2014 15h3min7s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',800000,10,'N','N','N','N','N','Y','N',0,'9815c708-e335-48a3-85df-1c3183ee19eb','LBR','Import Declaration (DI)',800000,0,0,TO_TIMESTAMP('2014-11-19 15:03:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800000,'B',TO_TIMESTAMP('2014-11-19 15:03:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min26s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,22,'N','N',10,'Y',800000,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','b80c12ec-c4cd-432a-9c7d-47a8cd87e62d','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800000,TO_TIMESTAMP('2014-11-19 15:03:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min27s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,22,'N','N',20,'Y',800001,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','11234426-8dd3-4a9e-b7c0-4bece8cbed45','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800001,TO_TIMESTAMP('2014-11-19 15:03:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min29s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,255,'N','N',30,'Y',800002,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','9ef58a41-5d61-48ec-ab30-a951136ccfa8','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,800009,TO_TIMESTAMP('2014-11-19 15:03:27','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,22,'N','N','Y',800003,'N','The DI is a document used in a product/service import.','LBR','Identifies an Import Declaration (DI)','Import Declaration (DI)','200e4d8e-47de-46fd-bde3-4eae3b9c4bc7','N','N',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:29','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800007,TO_TIMESTAMP('2014-11-19 15:03:29','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min31s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,36,'N','N',40,'Y',800004,'N','The DI is a document used in a product/service import.','LBR','Identifies an Import Declaration (DI)','Import Declaration (DI)','5cf2437d-6b38-44e9-a04c-8d93ae19c05a','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800008,TO_TIMESTAMP('2014-11-19 15:03:30','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min32s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,12,'N','N',50,'Y',800005,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Import Declaration (DI) No','35e38794-e1c5-455a-aec1-fd2b2cd7bd72','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800010,TO_TIMESTAMP('2014-11-19 15:03:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min33s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,7,'N','N',60,'Y',800006,'N','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','LBR','Date of the Document','Document Date','ca7c6191-61bb-473a-bfb2-33f3b2e303a2','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800011,TO_TIMESTAMP('2014-11-19 15:03:32','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min34s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,22,'N','N',70,'Y',800007,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Importer)','2221b604-e5ea-4c35-a922-829fb82c6448','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:33','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,800012,TO_TIMESTAMP('2014-11-19 15:03:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min35s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,22,'N','N',80,'Y',800008,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Buyer)','672a5f5d-d1a1-4ae5-a76e-aad50ac3e790','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:34','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,800013,TO_TIMESTAMP('2014-11-19 15:03:34','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min36s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,10,'N','N',90,'Y',800009,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','26d84608-d5ea-4e8f-9da4-7ada1e2efc05','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,800014,TO_TIMESTAMP('2014-11-19 15:03:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min37s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,10,'N','N',100,'Y',800010,'N','City in a country','LBR','City','City','55a3674a-d169-4fbd-b2f8-caeff757582c','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,800015,TO_TIMESTAMP('2014-11-19 15:03:36','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min38s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,7,'N','N',110,'Y',800011,'N','The Clearance Date for imported / exported goods','LBR','Date of the clearance','Clearance Date','181c54ac-7272-4ed7-8beb-697386dc761e','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,800016,TO_TIMESTAMP('2014-11-19 15:03:37','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min39s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,2,'N','N',120,'Y',800012,'N','Indicates the type of transportation used in an Import Declaration (DI)','LBR','Type of transportation','Transportation Type','29b0a0c0-d962-4ffa-8480-9acdc90ebf04','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,800017,TO_TIMESTAMP('2014-11-19 15:03:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min41s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,1,'N','N',130,'Y',800013,'N','Indicates the type of mediation used in an Import Declaration (DI)','LBR','Type of mediation','Mediation Type','f0b2fcbf-aed7-4b01-9e83-c4fdf2e52149','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,800018,TO_TIMESTAMP('2014-11-19 15:03:39','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h3min42s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800000,1,'N','N',140,'Y',800014,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','843ac02d-5c5a-4b4b-9f86-f6285dd2e034','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:03:41','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,2,0,2,800006,TO_TIMESTAMP('2014-11-19 15:03:41','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h4min49s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',800000,20,'N','N','N','N','N','Y','N',1,'19f4afc1-c6db-42cd-873d-8b0f72d2e521','LBR','Addition',800001,0,0,TO_TIMESTAMP('2014-11-19 15:04:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800001,'B',TO_TIMESTAMP('2014-11-19 15:04:48','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h4min58s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',10,'Y',800015,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','22a88211-c421-49b7-9a69-7875daf3c43e','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:04:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800019,TO_TIMESTAMP('2014-11-19 15:04:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h4min59s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',20,'Y',800016,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','fcdccb92-b033-44d9-9399-fa5d747f3429','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:04:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800020,TO_TIMESTAMP('2014-11-19 15:04:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min0s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,255,'N','N',30,'Y',800017,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','23deff62-5e28-4135-a0e3-33de21a42aef','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,800029,TO_TIMESTAMP('2014-11-19 15:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min1s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N','Y',800018,'N','LBR','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','d55c5db5-c471-4789-9cf8-8390b1104e4e','N','N',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800026,TO_TIMESTAMP('2014-11-19 15:05:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min3s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,36,'N','N',40,'Y',800019,'N','LBR','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','9ca8f9b1-da3a-4fdb-91f7-68705d33e499','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800027,TO_TIMESTAMP('2014-11-19 15:05:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min4s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',50,'Y',800020,'N','The DI is a document used in a product/service import.','LBR','Identifies an Import Declaration (DI)','Import Declaration (DI)','2444c988-5b56-4eeb-bf49-54d9749e5791','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800028,TO_TIMESTAMP('2014-11-19 15:05:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min5s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',60,'Y',800021,'N','The Sequence indicates the order of records','LBR','Method of ordering records; lowest number comes first','Sequence','09dc0f82-1b5b-4b01-9366-c0d7cbacb430','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800030,TO_TIMESTAMP('2014-11-19 15:05:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min6s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',70,'Y',800022,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Exporter)','7f85fa8b-b0ec-4124-a880-21f368450491','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,800031,TO_TIMESTAMP('2014-11-19 15:05:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min7s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,22,'N','N',80,'Y',800023,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner (Manufacturer)','fdd44e38-e138-44b7-8976-7af92aa4ff64','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,800032,TO_TIMESTAMP('2014-11-19 15:05:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min8s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800001,1,'N','N',90,'Y',800024,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','1dcad327-29b8-4aaf-b9bb-6b2b72136b92','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:05:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,800025,TO_TIMESTAMP('2014-11-19 15:05:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h5min53s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',800000,30,'N','N','N','N','N','Y','N',2,'2c8c37f9-f75a-4eb8-894e-15593ede4c7f','LBR','Product',800002,0,0,TO_TIMESTAMP('2014-11-19 15:05:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800002,'B',TO_TIMESTAMP('2014-11-19 15:05:52','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min2s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',10,'Y',800025,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','eea21f3b-f2c0-4113-9821-de831011d4cc','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800033,TO_TIMESTAMP('2014-11-19 15:06:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min3s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',20,'Y',800026,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','cb3cad94-b8d6-4d0d-aa4f-a6fc0823cdb4','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800034,TO_TIMESTAMP('2014-11-19 15:06:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min4s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,255,'N','N',30,'Y',800027,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','4d619db8-cbf8-481f-98a7-e68cfc5a3995','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,800043,TO_TIMESTAMP('2014-11-19 15:06:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min5s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N','Y',800028,'N','LBR','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','b4dc0bb8-1a31-4dfb-800b-7cc05625dee6','N','N',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:04','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800040,TO_TIMESTAMP('2014-11-19 15:06:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min6s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,36,'N','N',40,'Y',800029,'N','LBR','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','63dc3b29-07ce-4718-bf1c-e8764efa2953','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800041,TO_TIMESTAMP('2014-11-19 15:06:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min7s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',50,'Y',800030,'N','LBR','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','a506f73a-4c0a-496a-8d08-7f08f3ce364a','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800042,TO_TIMESTAMP('2014-11-19 15:06:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min8s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',60,'Y',800031,'N','The Sequence indicates the order of records','LBR','Method of ordering records; lowest number comes first','Sequence','0a64ba49-ea0c-4def-b71c-b59b233ed2c4','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800044,TO_TIMESTAMP('2014-11-19 15:06:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min9s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',70,'Y',800032,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','996e56de-7c02-4e3b-b4b0-d4b4f6f38665','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,800045,TO_TIMESTAMP('2014-11-19 15:06:08','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min10s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,255,'N','N',80,'Y',800033,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Specification','4f5bb970-2149-4e31-94cf-2b31880c4b96','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,5,800046,TO_TIMESTAMP('2014-11-19 15:06:09','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min11s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',90,'Y',800034,'N','The Quantity indicates the number of a specific product or item for this document.','LBR','Quantity','Quantity','6528bbf1-2f75-4fe8-a6dd-4b8e5b48873e','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,800047,TO_TIMESTAMP('2014-11-19 15:06:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min13s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',100,'Y',800035,'N','The UOM defines a unique non monetary Unit of Measure','LBR','Unit of Measure','UOM','94d63f40-9e38-4160-a70d-e4ed0e5c8533','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,800048,TO_TIMESTAMP('2014-11-19 15:06:12','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min14s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',110,'Y',800036,'N','The Actual or Unit Price indicates the Price for a product in source currency.','LBR','Actual Price ','Unit Price','f2e7e586-cdc0-4224-8cab-43a733949dec','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,800049,TO_TIMESTAMP('2014-11-19 15:06:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min15s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,22,'N','N',120,'Y',800037,'N','Indicates the Currency to be used when processing or reporting on this record','LBR','The Currency for this record','Currency','45398bd3-4611-475a-9df2-118f1f4ca9d9','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,800050,TO_TIMESTAMP('2014-11-19 15:06:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min16s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800002,1,'N','N',130,'Y',800038,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','587ddf9e-e3ac-4184-884b-e7ce0ab72ec9','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 15:06:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,2,0,2,800039,TO_TIMESTAMP('2014-11-19 15:06:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h6min40s BRST
UPDATE AD_Table SET AD_Window_ID=800000,Updated=TO_TIMESTAMP('2014-11-19 15:06:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800002
;

-- 19/11/2014 15h6min47s BRST
UPDATE AD_Table SET AD_Window_ID=800000,Updated=TO_TIMESTAMP('2014-11-19 15:06:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800001
;

-- 19/11/2014 15h6min50s BRST
UPDATE AD_Table SET AD_Window_ID=800000,Updated=TO_TIMESTAMP('2014-11-19 15:06:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800000
;

-- 19/11/2014 15h8min44s BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800000,800000,'N','N','N','LBR','Y','Import Declaration (DI)',NULL,'c1a7123d-6cae-47d7-b8f9-566913140037','W','Y',0,TO_TIMESTAMP('2014-11-19 15:08:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-11-19 15:08:43','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 15h8min44s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800000, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800000)
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19/11/2014 15h8min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 19/11/2014 15h14min3s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800004
;

-- 19/11/2014 15h14min3s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=800014
;

-- 19/11/2014 15h14min59s BRST
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-11-19 15:14:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800002
;

-- 19/11/2014 15h15min18s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:15:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800006
;

-- 19/11/2014 15h15min47s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:15:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800010
;

-- 19/11/2014 15h15min59s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:15:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800013
;

-- 19/11/2014 15h19min41s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800019
;

-- 19/11/2014 15h19min41s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=800024
;

-- 19/11/2014 15h20min10s BRST
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-11-19 15:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800017
;

-- 19/11/2014 15h20min45s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800021
;

-- 19/11/2014 15h23min15s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800029
;

-- 19/11/2014 15h23min15s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=800038
;

-- 19/11/2014 15h23min33s BRST
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-11-19 15:23:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800027
;

-- 19/11/2014 15h23min50s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800031
;

-- 19/11/2014 15h24min13s BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_TIMESTAMP('2014-11-19 15:24:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800033
;

-- 19/11/2014 15h24min22s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:24:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800035
;

-- 19/11/2014 15h24min31s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 15:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800037
;

-- 19/11/2014 16h5min13s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000014,800003,'N','N','N','LBR','L','dcd8e807-4910-4d8d-86fa-134c0f317690','Y','Y','LBR_NotaFiscalDI','Brazilian Fiscal Invoice (Nota Fiscal) DI','Brazilian Fiscal Invoice (Nota Fiscal) DI','Y',0,0,TO_TIMESTAMP('2014-11-19 16:05:12','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-11-19 16:05:12','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h5min14s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800003,'Table LBR_NotaFiscalDI','LBR_NotaFiscalDI',1,'d3fd49ec-14e0-47e2-ae68-053785bfc1a1',0,TO_TIMESTAMP('2014-11-19 16:05:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-11-19 16:05:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h5min53s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800051,'N','N','N',0,'N',22,'N','N','N','Y','fda30033-971c-4afc-9d3b-d0890e0a5afa','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-11-19 16:05:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:05:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,800003,129,0,'LBR')
;

-- 19/11/2014 16h5min56s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:05:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800051
;

-- 19/11/2014 16h5min56s BRST
CREATE TABLE LBR_NotaFiscalDI (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- 19/11/2014 16h5min56s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT ADClient_LBRNotaFiscalDI FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h6min12s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800052,'N','N','N',0,'N',22,'N','N','N','Y','468e4cf4-a49e-44df-ae1a-485460220136','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-11-19 16:06:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:06:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,800003,104,0,'LBR')
;

-- 19/11/2014 16h6min16s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800052
;

-- 19/11/2014 16h6min16s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 16h6min16s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT ADOrg_LBRNotaFiscalDI FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h6min29s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800053,'N','N','N',0,'N',7,'N','N','N','Y','0458a959-7b8b-458f-8072-33f4874dc42a','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-11-19 16:06:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:06:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,800003,0,'LBR')
;

-- 19/11/2014 16h6min31s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 16h6min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800054,'N','N','N',0,'N',22,'N','N','N','Y','2fbc47f3-31f1-423b-bc84-5a68d828a73b','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-11-19 16:06:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:06:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,800003,0,'LBR')
;

-- 19/11/2014 16h6min47s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:06:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800054
;

-- 19/11/2014 16h6min47s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 16h6min47s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT CreatedBy_LBRNotaFiscalDI FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h7min0s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800055,'N','N','N',0,'N',7,'N','N','N','Y','9f98b472-255a-4555-9d0b-cdef3186c63c','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-11-19 16:06:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:06:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,800003,0,'LBR')
;

-- 19/11/2014 16h7min1s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- 19/11/2014 16h7min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800056,'N','N','N',0,'N',22,'N','N','N','Y','9f6b14b3-c32d-400d-a3f0-b6ba4588152b','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-11-19 16:07:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:07:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,800003,0,'LBR')
;

-- 19/11/2014 16h7min17s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800056
;

-- 19/11/2014 16h7min17s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- 19/11/2014 16h7min17s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT UpdatedBy_LBRNotaFiscalDI FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h7min32s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800057,'N','N','N',0,'N',1,'N','N','N','Y','4a271fde-8d20-44e3-aa99-d889f9c63fc3','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-11-19 16:07:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:07:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,800003,0,'LBR')
;

-- 19/11/2014 16h7min34s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 19/11/2014 16h9min2s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalDI_ID',800015,'The DI is a document used in a product/service import.','Brazilian Fiscal Invoice (Nota Fiscal) DI','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','Nota Fiscal DI','ad092cfe-5974-4ae6-b78a-72b67c1b6b18',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 16:09:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 16:09:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h9min9s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalDI_UU',800016,'The DI is a document used in a product/service import.','Brazilian Fiscal Invoice (Nota Fiscal) DI','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','Nota Fiscal DI','620fe703-aa2f-4941-8173-1f9f8e8f0d9d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-11-19 16:09:08','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 16:09:08','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h9min34s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800058,'Y','N','N',0,'N',22,'N','Y','N','Y','80ab02a1-29b6-4c32-9186-a80788891818','N','LBR_NotaFiscalDI_ID','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','The DI is a document used in a product/service import.','Brazilian Fiscal Invoice (Nota Fiscal) DI','N',TO_TIMESTAMP('2014-11-19 16:09:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:09:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800015,13,800003,0,'LBR')
;

-- 19/11/2014 16h9min36s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN LBR_NotaFiscalDI_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 16h9min36s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT LBR_NotaFiscalDI_Key PRIMARY KEY (LBR_NotaFiscalDI_ID)
;

-- 19/11/2014 16h9min57s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800059,'N','N','N',0,'N',36,'N','N','N','Y','4f95f3c6-9a58-40c5-a830-cb7f6aaffda7','N','LBR_NotaFiscalDI_UU','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','The DI is a document used in a product/service import.','Brazilian Fiscal Invoice (Nota Fiscal) DI','N',TO_TIMESTAMP('2014-11-19 16:09:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:09:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800016,10,800003,0,'LBR')
;

-- 19/11/2014 16h9min58s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN LBR_NotaFiscalDI_UU VARCHAR(36) DEFAULT NULL 
;

-- 19/11/2014 16h9min58s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT LBR_NotaFiscalDI_UU_idx UNIQUE (LBR_NotaFiscalDI_UU)
;

-- 19/11/2014 16h10min51s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800060,'Y','N','N',0,'Y',22,'N','N','N','Y','5712ff9e-0450-4a3a-9497-a356356975d8','N','LBR_NotaFiscalLine_ID','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Y',TO_TIMESTAMP('2014-11-19 16:10:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:10:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000186,19,800003,0,'LBR')
;

-- 19/11/2014 16h10min53s BRST
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNotaFiscalLine_LBRNotaFisca', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800060
;

-- 19/11/2014 16h10min53s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN LBR_NotaFiscalLine_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 16h10min53s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT LBRNotaFiscalLine_LBRNotaFisca FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h12min55s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800061,'Y','N','N',0,'N',22,'N','N','N','Y','a1edb167-5179-4f3c-ba8d-734f82b9a3d2','Y','LBR_DI_Addition_ID','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','Y',TO_TIMESTAMP('2014-11-19 16:12:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:12:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800008,30,800003,0,'LBR')
;

-- 19/11/2014 16h12min57s BRST
UPDATE AD_Column SET FKConstraintName='LBRDIAddition_LBRNotaFiscalDI', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800061
;

-- 19/11/2014 16h12min57s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN LBR_DI_Addition_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 16h12min57s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT LBRDIAddition_LBRNotaFiscalDI FOREIGN KEY (LBR_DI_Addition_ID) REFERENCES lbr_di_addition(lbr_di_addition_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h13min40s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800062,'Y','N','N',0,'N',22,'N','N','N','Y','044d3025-5a42-487c-9895-9e8fe462d854','N','LBR_DI_AdditionProd_ID','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','Y',TO_TIMESTAMP('2014-11-19 16:13:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-19 16:13:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800012,19,800003,0,'LBR')
;

-- 19/11/2014 16h13min42s BRST
UPDATE AD_Column SET FKConstraintName='LBRDIAdditionProd_LBRNotaFisca', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-11-19 16:13:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800062
;

-- 19/11/2014 16h13min42s BRST
ALTER TABLE LBR_NotaFiscalDI ADD COLUMN LBR_DI_AdditionProd_ID NUMERIC(10) NOT NULL
;

-- 19/11/2014 16h13min42s BRST
ALTER TABLE LBR_NotaFiscalDI ADD CONSTRAINT LBRDIAdditionProd_LBRNotaFisca FOREIGN KEY (LBR_DI_AdditionProd_ID) REFERENCES lbr_di_additionprod(lbr_di_additionprod_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/11/2014 16h15min27s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000014,33,'The Brazilian Fiscal Invoice (Nota Fiscal) DI Tab displays information about selected DIs.','N','N','N','N','N','Y','N',2,'86ff0a2e-d898-4a6d-b907-b2ade9f1f752','LBR','Brazilian Fiscal Invoice (Nota Fiscal) DI','Brazilian Fiscal Invoice (Nota Fiscal) DI',800003,0,0,TO_TIMESTAMP('2014-11-19 16:15:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800003,'B',TO_TIMESTAMP('2014-11-19 16:15:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min37s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N',10,'Y',800039,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','81fe0455-d874-419e-bd04-81d44117a36f','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:35','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800051,TO_TIMESTAMP('2014-11-19 16:15:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min38s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N',20,'Y',800040,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','eca2f783-502d-41a2-a5f1-93b3fdd599e8','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800052,TO_TIMESTAMP('2014-11-19 16:15:37','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min39s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N','Y',800041,'N','The DI is a document used in a product/service import.','LBR','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','Brazilian Fiscal Invoice (Nota Fiscal) DI','a9fb5d70-da62-43f0-845e-946318578ff6','N','N',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800058,TO_TIMESTAMP('2014-11-19 16:15:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min40s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N',30,'Y',800042,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line','fb94e08b-c211-44e9-b022-575545b57b05','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,800060,TO_TIMESTAMP('2014-11-19 16:15:39','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min41s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N',40,'Y',800043,'N','LBR','Identifies an Import Declaration (DI) Addiction','Import Declaration (DI) Addition','955f2cc0-fbc1-416e-9af0-ce3a7a2142ac','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800061,TO_TIMESTAMP('2014-11-19 16:15:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min42s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,22,'N','N',50,'Y',800044,'N','LBR','Identifies an Import Declaration (DI) Addiction Product','DI Addition Product','13ee1333-7144-4a97-808b-5d33c9ac8084','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:41','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800062,TO_TIMESTAMP('2014-11-19 16:15:41','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min43s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',800003,1,'N','N',60,'Y',800045,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8755fc40-bd23-4acd-b551-0046d01c41ba','N','Y',0,0,0,TO_TIMESTAMP('2014-11-19 16:15:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,2,0,2,800057,TO_TIMESTAMP('2014-11-19 16:15:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/11/2014 16h15min58s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800045
;

-- 19/11/2014 16h15min58s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800042
;

-- 19/11/2014 16h15min58s BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=800043
;

-- 19/11/2014 16h15min58s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=800044
;

-- 19/11/2014 16h16min18s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_TIMESTAMP('2014-11-19 16:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800044
;

-- 19/11/2014 16h20min58s BRST
UPDATE AD_Tab SET SeqNo=29,Updated=TO_TIMESTAMP('2014-11-19 16:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800003
;

-- 19/11/2014 16h31min30s BRST
-- Tables/Window for DI (import doc.) and related tabs in NF window 
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-11-19 16:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800045
;

-- 19/11/2014 16h32min27s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2014-11-19 16:32:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800062
;

-- 19/11/2014 16h33min56s BRST
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-11-19 16:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000607
;

-- 19/11/2014 16h34min22s BRST
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-11-19 16:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000615
;

-- 19/11/2014 16h34min45s BRST
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2014-11-19 16:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000617
;

-- 19/11/2014 16h37min21s BRST
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2014-11-19 16:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800011
;

-- 19/11/2014 16h50min46s BRST
UPDATE AD_Column SET IsSelectionColumn='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-11-19 16:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800028
;

-- 19/11/2014 17h3min51s BRST
INSERT INTO AD_InfoWindow (Processing,FromClause,AD_InfoWindow_UU,AD_InfoWindow_ID,EntityType,Name,AD_Org_ID,UpdatedBy,CreatedBy,IsActive,OrderByClause,IsDefault,IsValid,IsDistinct,AD_Client_ID,AD_Table_ID,SeqNo,IsShowInDashboard,Created,Updated,MaxQueryRecords) VALUES ('N','LBR_DI_Addition a','693bed45-153d-4dd9-8833-c48733871c09',800000,'LBR','DI Addition Info',0,0,0,'Y','a.SeqNo','N','N','N',0,800001,20,'N',TO_TIMESTAMP('2014-11-19 17:03:50','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 17:03:50','YYYY-MM-DD HH24:MI:SS'),0)
;

-- 19/11/2014 17h4min47s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',10,'c7787c07-12e0-4a1f-a073-38be516b5ec7',800000,'N','LBR','Client/Tenant for this installation.',0,TO_TIMESTAMP('2014-11-19 17:04:46','YYYY-MM-DD HH24:MI:SS'),0,0,'Client',129,'Y','AD_Client_ID','Y','Y','a.AD_Client_ID',0,'N',0,102,800000,19,TO_TIMESTAMP('2014-11-19 17:04:46','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h4min47s BRST
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_TIMESTAMP('2014-11-19 17:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoWindow_ID=800000
;

-- 19/11/2014 17h5min9s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',20,'5b698826-5ea0-4234-9192-850a7bb48aae',800001,'N','LBR','Organizational entity within client',0,TO_TIMESTAMP('2014-11-19 17:05:08','YYYY-MM-DD HH24:MI:SS'),0,0,'Organization',104,'Y','AD_Org_ID','Y','Y','a.AD_Org_ID',0,'N',0,113,800000,19,TO_TIMESTAMP('2014-11-19 17:05:08','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h7min1s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('The DI is a document used in a product/service import.',30,'71b28d41-af40-4768-8e0b-b3915ccce3c8',800002,'Y','LBR','Identifies an Import Declaration (DI)',0,TO_TIMESTAMP('2014-11-19 17:07:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Import Declaration (DI)','Y','LBR_DI_ID','Y','Y','=','a.LBR_DI_ID',0,'Y',0,800000,800000,30,TO_TIMESTAMP('2014-11-19 17:07:00','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h12min33s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('The Sequence indicates the order of records',40,'b3d9d9a4-7029-4633-9f25-5cd21301d376',800003,'N','LBR','Method of ordering records; lowest number comes first',0,TO_TIMESTAMP('2014-11-19 17:12:32','YYYY-MM-DD HH24:MI:SS'),0,0,'Sequence','Y','SeqNo','Y','Y','=','a.SeqNo',0,'Y',0,566,800000,11,TO_TIMESTAMP('2014-11-19 17:12:32','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h13min5s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,AD_Reference_Value_ID,Created,IsMandatory) VALUES ('A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',50,'8d58a1ae-1859-4427-b956-196de2f654e7',800004,'N','LBR','Identifies a Business Partner',0,TO_TIMESTAMP('2014-11-19 17:13:04','YYYY-MM-DD HH24:MI:SS'),0,0,'Business Partner (Exporter)','Y','LBR_BP_Exporter_ID','Y','Y','a.LBR_BP_Exporter_ID',0,'N',0,800010,800000,30,138,TO_TIMESTAMP('2014-11-19 17:13:04','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h14min30s BRST
UPDATE AD_InfoColumn SET SeqNo=35,Updated=TO_TIMESTAMP('2014-11-19 17:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800004
;

-- 19/11/2014 17h14min40s BRST
UPDATE AD_InfoColumn SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-11-19 17:14:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800000
;

-- 19/11/2014 17h21min37s BRST
UPDATE AD_InfoColumn SET SeqNo=50,Updated=TO_TIMESTAMP('2014-11-19 17:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800004
;

-- 19/11/2014 17h21min58s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,AD_Reference_Value_ID,Created,IsMandatory) VALUES ('A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',60,'a022b8ca-1c3f-4e05-bc93-cdadfd58e15e',800005,'N','LBR','Identifies a Business Partner',0,TO_TIMESTAMP('2014-11-19 17:21:56','YYYY-MM-DD HH24:MI:SS'),0,0,'Business Partner (Manufacturer)','Y','LBR_BP_Manufacturer_ID','Y','Y','a.LBR_BP_Manufacturer_ID',0,'N',0,800011,800000,30,138,TO_TIMESTAMP('2014-11-19 17:21:56','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h26min16s BRST
INSERT INTO AD_InfoWindow (Processing,FromClause,AD_InfoWindow_UU,AD_InfoWindow_ID,EntityType,Name,AD_Org_ID,UpdatedBy,CreatedBy,IsActive,OrderByClause,IsDefault,IsValid,IsDistinct,AD_Client_ID,AD_Table_ID,SeqNo,IsShowInDashboard,Created,Updated,MaxQueryRecords) VALUES ('N','LBR_DI a','063bf01e-1ccb-4a2d-84d6-8fd2bcfd6fab',800001,'LBR','DI Info',0,0,0,'Y','a.DateDoc DESC','N','N','N',0,800000,20,'N',TO_TIMESTAMP('2014-11-19 17:26:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 17:26:15','YYYY-MM-DD HH24:MI:SS'),0)
;

-- 19/11/2014 17h26min56s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',10,'d1a81084-2112-4f71-838c-7a8bfa987d23',800006,'N','LBR','Organizational entity within client',0,TO_TIMESTAMP('2014-11-19 17:26:55','YYYY-MM-DD HH24:MI:SS'),0,0,'Organization',104,'Y','AD_Org_ID','Y','Y','a.AD_Org_ID',0,'N',0,113,800001,19,TO_TIMESTAMP('2014-11-19 17:26:55','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h26min56s BRST
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_TIMESTAMP('2014-11-19 17:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoWindow_ID=800001
;

-- 19/11/2014 17h27min30s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryFunction,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',20,'790b9883-afbe-4bb3-b6d2-c288d006c704',800007,'Y','LBR','Document sequence number of the document',0,TO_TIMESTAMP('2014-11-19 17:27:29','YYYY-MM-DD HH24:MI:SS'),0,0,'Import Declaration (DI) No','Y','LBR_DI_No','Y','Y','Upper','Like','a.LBR_DI_No',0,'Y',0,800002,800001,10,TO_TIMESTAMP('2014-11-19 17:27:29','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h27min51s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryFunction,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',30,'a65b9291-64c6-4682-8991-d96430a17148',800008,'Y','LBR','Date of the Document',0,TO_TIMESTAMP('2014-11-19 17:27:50','YYYY-MM-DD HH24:MI:SS'),0,0,'Document Date','Y','DateDoc','Y','Y','Trunc','=','a.DateDoc',0,'Y',0,265,800001,15,TO_TIMESTAMP('2014-11-19 17:27:50','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h28min17s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,Created,IsMandatory) VALUES ('The Clearance Date for imported / exported goods',40,'6b51cd21-ac81-417b-9d95-49fa2e07b589',800009,'N','LBR','Date of the clearance',0,TO_TIMESTAMP('2014-11-19 17:28:16','YYYY-MM-DD HH24:MI:SS'),0,0,'Clearance Date','Y','LBR_ClearanceDate','Y','Y','a.LBR_ClearanceDate',0,'N',0,800005,800001,15,TO_TIMESTAMP('2014-11-19 17:28:16','YYYY-MM-DD HH24:MI:SS'),'N')
;

-- 19/11/2014 17h28min31s BRST
UPDATE AD_InfoColumn SET IsQueryCriteria='Y', QueryOperator='Like',Updated=TO_TIMESTAMP('2014-11-19 17:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800009
;

-- 19/11/2014 17h28min45s BRST
UPDATE AD_InfoColumn SET QueryFunction='Trunc', QueryOperator='=',Updated=TO_TIMESTAMP('2014-11-19 17:28:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800009
;

-- 19/11/2014 17h35min20s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800002,'LBR_DI_Addition','LBR','671a0a11-8d15-4374-997b-bb3d902bb567','N','T',0,0,TO_TIMESTAMP('2014-11-19 17:35:19','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-11-19 17:35:19','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 19/11/2014 17h36min14s BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,AD_InfoWindow_ID,EntityType) VALUES ('N','16a562b8-6bac-4c7e-92ae-0c16e270fd8c',0,TO_TIMESTAMP('2014-11-19 17:36:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-19 17:36:14','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,800026,800026,800002,800001,800000,'LBR')
;

-- 20/11/2014 11h57min49s BRST
-- Tables/Window for DI (import doc.) and related tabs in NF window 
UPDATE AD_Column SET AD_Reference_Value_ID=162,Updated=TO_TIMESTAMP('2014-11-20 11:57:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800045
;

-- 20/11/2014 11h59min35s BRST
UPDATE AD_Column SET AD_Reference_Value_ID=800002,Updated=TO_TIMESTAMP('2014-11-20 11:59:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800061
;

-- 20/11/2014 12h2min25s BRST
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_DI_AddictionProd.LBR_DI_Addiction_ID=@LBR_DI_Addiction_ID@',800000,'LBR','LBR_DI_AddictionProd of LBR_DI_Addiction','S','2b3496ed-598e-44ce-9b9b-e3a83f12021c',0,0,TO_TIMESTAMP('2014-11-20 12:02:24','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-20 12:02:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- 20/11/2014 12h2min40s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=800000,Updated=TO_TIMESTAMP('2014-11-20 12:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800062
;

-- 20/11/2014 12h6min40s BRST
UPDATE AD_Val_Rule SET Code='LBR_DI_AdditionProd.LBR_DI_Addition_ID=@LBR_DI_Addition_ID@', Name='LBR_DI_AdditionProd of LBR_DI_Addition',Updated=TO_TIMESTAMP('2014-11-20 12:06:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=800000
;

-- 20/11/2014 12h12min58s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-11-20 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800043
;

-- 20/11/2014 12h13min3s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-11-20 12:13:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800044
;

-- 20/11/2014 12h18min50s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800003,'LBR_DI','LBR','88ffe430-15d1-4c5b-a9a6-bdec1d517742','N','T',0,0,TO_TIMESTAMP('2014-11-20 12:18:49','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-11-20 12:18:49','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 20/11/2014 12h19min27s BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','ad61a571-a98e-47f3-a730-bd693fa24674',0,TO_TIMESTAMP('2014-11-20 12:19:27','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-20 12:19:27','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,800010,800007,800003,800000,'LBR')
;

-- 20/11/2014 12h19min53s BRST
UPDATE AD_InfoColumn SET AD_Reference_Value_ID=800003,Updated=TO_TIMESTAMP('2014-11-20 12:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=800002
;

SELECT lbr_register_migration_script('201411201228.sql') FROM dual
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Apr 2, 2014 1:11:24 PM BRT
-- Table/Tab/Fields for LBR_DocLine_ImportTax (Order)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ImportTax_ID',1000162,'The Doc Line Import Tax is a unique identifier for a doc line details.','Doc Line Import Tax','Doc Line Import Tax','Doc Line Import Tax','7922b94c-beeb-402b-a5a2-99ae724de953',TO_DATE('2014-04-02 13:11:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 13:11:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 1:11:35 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_ImportTax_UU',1000163,'The Doc Line Import Tax is a unique identifier for a doc line details.','Doc Line Import Tax','Doc Line Import Tax','Doc Line Import Tax','7a8f228c-e3ef-496b-a5b5-658c713bc2c1',TO_DATE('2014-04-02 13:11:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 13:11:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 1:13:59 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000031,'Y','N','Y','LBR','L','987a1d41-327f-4376-bef3-fca5dcc85b09','Y','Y','LBR_DocLine_ImportTax','Doc Line Import Tax','Y',0,0,TO_DATE('2014-04-02 13:13:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:13:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Apr 2, 2014 1:13:59 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000035,'Table LBR_DocLine_ImportTax','LBR_DocLine_ImportTax',1,'c0cd9223-e81b-4733-8022-dfdf735bbd93',TO_DATE('2014-04-02 13:13:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:13:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Apr 2, 2014 1:14:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000560,'N','N','N',0,'N',22,'N','N','N','Y','dabce01a-7dd3-4330-ae9a-5cd75bfb7ad8','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-04-02 13:14:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:14:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000031,129,0,'LBR')
;

-- Apr 2, 2014 1:14:29 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineImportTax', FKConstraintType='N',Updated=TO_DATE('2014-04-02 13:14:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000560
;

-- Apr 2, 2014 1:14:29 PM BRT
CREATE TABLE LBR_DocLine_ImportTax (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Apr 2, 2014 1:14:29 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT ADClient_LBRDocLineImportTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 1:14:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000561,'N','N','N',0,'N',22,'N','N','N','Y','13e0c6e5-5723-4c88-814c-7dafdc2c6fde','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-04-02 13:14:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:14:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000031,104,0,'LBR')
;

-- Apr 2, 2014 1:14:49 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineImportTax', FKConstraintType='N',Updated=TO_DATE('2014-04-02 13:14:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000561
;

-- Apr 2, 2014 1:14:49 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 1:14:50 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT ADOrg_LBRDocLineImportTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 1:15:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000562,'N','N','N',0,'N',7,'N','N','N','Y','64dc0da8-0740-47e8-9fc0-494de6cff9ce','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-04-02 13:15:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:15:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000031,0,'LBR')
;

-- Apr 2, 2014 1:15:11 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD Created DATE DEFAULT NULL 
;

-- Apr 2, 2014 1:15:27 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000563,'N','N','N',0,'N',22,'N','N','N','Y','122b59b9-fec4-40ff-ae80-5af4c6fc1487','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-04-02 13:15:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:15:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000031,0,'LBR')
;

-- Apr 2, 2014 1:15:29 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineImportTax', FKConstraintType='N',Updated=TO_DATE('2014-04-02 13:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000563
;

-- Apr 2, 2014 1:15:29 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 1:15:29 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT CreatedBy_LBRDocLineImportTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 1:15:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000564,'N','N','N',0,'N',7,'N','N','N','Y','a76c882e-e076-43ca-9618-d1860b0ae663','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-04-02 13:15:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:15:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000031,0,'LBR')
;

-- Apr 2, 2014 1:15:50 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD Updated DATE DEFAULT NULL 
;

-- Apr 2, 2014 1:16:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000565,'N','N','N',0,'N',22,'N','N','N','Y','33ed9289-76f9-47d2-9fff-2dc0c2d3ba1e','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-04-02 13:16:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:16:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000031,0,'LBR')
;

-- Apr 2, 2014 1:16:08 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineImportTax', FKConstraintType='N',Updated=TO_DATE('2014-04-02 13:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000565
;

-- Apr 2, 2014 1:16:08 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 1:16:08 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT UpdatedBy_LBRDocLineImportTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 1:16:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000566,'N','N','N',0,'N',1,'N','N','N','Y','de7e4101-a18c-4033-99a4-25d33e4d2451','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-04-02 13:16:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:16:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000031,0,'LBR')
;

-- Apr 2, 2014 1:16:25 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Apr 2, 2014 1:16:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000567,'N','N','N',0,'N',22,'N','Y','N','Y','0746ee01-9a98-4dd1-8c3f-6d57690c9064','N','LBR_DocLine_ImportTax_ID','Doc Line Import Tax','The Doc Line Import Tax is a unique identifier for a doc line details.','Doc Line Import Tax','N',TO_DATE('2014-04-02 13:16:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:16:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000162,13,1000031,0,'LBR')
;

-- Apr 2, 2014 1:17:00 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_DocLine_ImportTax_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 1:17:00 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT LBR_DocLine_ImportTax_Key PRIMARY KEY (LBR_DocLine_ImportTax_ID)
;

-- Apr 2, 2014 1:17:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000568,'N','N','N',0,'N',36,'N','N','N','Y','193c8ce8-5e93-47d1-978b-3e92f2cb1a17','N','LBR_DocLine_ImportTax_UU','Doc Line Import Tax','The Doc Line Import Tax is a unique identifier for a doc line details.','Doc Line Import Tax','N',TO_DATE('2014-04-02 13:17:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:17:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000163,10,1000031,0,'LBR')
;

-- Apr 2, 2014 1:17:21 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_DocLine_ImportTax_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Apr 2, 2014 1:17:21 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT LBR_DocLine_ImportTax_UU_idx UNIQUE (LBR_DocLine_ImportTax_UU)
;

-- Apr 2, 2014 1:17:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000569,'N','N','N',0,'N',22,'N','N','N','Y','f7ca0edb-363b-47fb-8a4b-3c909eeeec86','Y','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Y',TO_DATE('2014-04-02 13:17:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:17:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,19,1000031,0,'LBR')
;

-- Apr 2, 2014 1:17:47 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLineIm', FKConstraintType='N',Updated=TO_DATE('2014-04-02 13:17:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000569
;

-- Apr 2, 2014 1:17:47 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_DocLine_Details_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 1:17:47 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CONSTRAINT LBRDocLineDetails_LBRDocLineIm FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 1:18:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000570,'N','N','N',0,'N',10,'N','N','N','Y','fb8c0e06-c1f4-4910-9d7b-d80dff9ed525','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_DATE('2014-04-02 13:18:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:18:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000031,0,'LBR')
;

-- Apr 2, 2014 1:18:12 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 1:18:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000571,'N','N','N',0,'N',10,'N','N','N','Y','1ba40213-4d4a-4220-9931-553dee4bb909','Y','CustomsValue','Customs Value','Y',TO_DATE('2014-04-02 13:18:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:18:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',200616,12,1000031,0,'LBR')
;

-- Apr 2, 2014 1:18:51 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD CustomsValue NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 1:20:05 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IOFAmt',1000164,'IOF Amount','Defines the IOF Amount','IOF Amount','2d5bf0f2-31f7-46d8-9cb3-ee4dfdbc53aa',TO_DATE('2014-04-02 13:20:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 13:20:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 1:21:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000572,'N','N','N',0,'N',10,'N','N','N','Y','857115d4-f2d7-4f3c-a3cd-06c8c4655761','Y','LBR_IOFAmt','Defines the IOF Amount','IOF Amount','Y',TO_DATE('2014-04-02 13:21:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:21:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000164,12,1000031,0,'LBR')
;

-- Apr 2, 2014 1:21:27 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_IOFAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 1:21:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000573,'N','N','N',0,'N',10,'N','N','N','Y','28becda1-67ca-43e9-8472-2c35e7d2d59b','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_DATE('2014-04-02 13:21:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 13:21:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000031,0,'LBR')
;

-- Apr 2, 2014 1:21:54 PM BRT
ALTER TABLE LBR_DocLine_ImportTax ADD LBR_TaxAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 1:23:24 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',143,80,'The Import Tax Tab defines amounts for Import Tax','N','N','N','N','N','N','N',3,'f24fad00-dc80-43cf-a41f-3c1016abeb7d','LBR','Import Tax','Import Tax',1000031,'@Processed@=Y',0,TO_DATE('2014-04-02 13:23:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000031,'B')
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,22,'N','N',10,'Y',1000439,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','1e25d88f-4a98-4c49-a7db-2cee4027f094','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000560)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,22,'N','N',20,'Y',1000440,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','8ec7ab1e-fdee-40e6-bf14-03a94720e31d','N','Y','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000561)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,22,'N','N',30,'Y',1000441,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','cfc7a82f-76fe-4fc4-bde1-ab5df61433a0','N','N',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000567)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,36,'N','N',40,'Y',1000442,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','8fef6550-8fb6-48c2-b74e-d15e1a2887ec','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000568)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,22,'N','N',50,'Y',1000443,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','da8f8c1a-1d0d-4454-b310-23edc88ce014','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000569)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,10,'N','N',60,'Y',1000444,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','1e76ab50-ce7f-46b0-bed9-4be2f5d8dd0b','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000570)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,10,'N','N',70,'Y',1000445,'N','LBR','Customs Value','782a84b6-ea87-4eea-8c8a-4d751cc4d022','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000571)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,10,'N','N',80,'Y',1000446,'N','LBR','Defines the IOF Amount','IOF Amount','7ad0e422-b947-47d9-9a48-204ee7bb1753','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000572)
;

-- Apr 2, 2014 1:23:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,10,'N','N',90,'Y',1000447,'N','LBR','Defines the Tax Amount','Tax Amount','95b1b77e-3469-44a2-a9f7-268cd4a74577','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000573)
;

-- Apr 2, 2014 1:23:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000031,1,'N','N',100,'Y',1000448,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','208fd72e-c285-4809-8516-4f796057bdeb','N','Y',0,0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 13:23:55','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000566)
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000442
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000443
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000448
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000441
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000444
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000445
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000446
;

-- Apr 2, 2014 1:24:26 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000447
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000442
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000443
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000448
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000447
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000444
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000445
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000446
;

-- Apr 2, 2014 1:25:00 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000440
;

SELECT lbr_register_migration_script('201404021336.sql') FROM dual
;

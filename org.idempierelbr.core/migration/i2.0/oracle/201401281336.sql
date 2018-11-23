SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 28, 2014 12:46:36 PM BRST
-- Table: LBR_Tax and LBR_TaxLine
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000012,'N','N','N','LBR','L','8aa0588b-ff8b-40da-9412-a8c430748de0','Y','Y','LBR_Tax','Transaction Tax','Y',0,0,TO_DATE('2014-01-28 12:46:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 12:46:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 28, 2014 12:46:37 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000016,'Table LBR_Tax','LBR_Tax',1,'480c0502-c5d1-405a-80a6-fc59706c6ffb',TO_DATE('2014-01-28 12:46:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 12:46:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 28, 2014 12:46:56 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000180,'N','N','N',0,'N',22,'N','N','N','Y','9e8de109-f04c-46e3-be09-4874b9f29622','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-28 12:46:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:46:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000012,129,0,'LBR')
;

-- Jan 28, 2014 12:47:01 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTax', FKConstraintType='N',Updated=TO_DATE('2014-01-28 12:47:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000180
;

-- Jan 28, 2014 12:47:01 PM BRST
CREATE TABLE LBR_Tax (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 28, 2014 12:47:01 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT ADClient_LBRTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 12:47:21 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000181,'N','N','N',0,'N',22,'N','N','N','Y','a8cf3101-34b5-4104-818a-1c0bdb73b02f','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-28 12:47:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:47:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000012,104,0,'LBR')
;

-- Jan 28, 2014 12:47:25 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTax', FKConstraintType='N',Updated=TO_DATE('2014-01-28 12:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000181
;

-- Jan 28, 2014 12:47:25 PM BRST
ALTER TABLE LBR_Tax ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 12:47:26 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT ADOrg_LBRTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 12:47:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000182,'N','N','N',0,'N',7,'N','N','N','Y','7a55e898-9011-45a9-8488-7496ef7709fd','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-28 12:47:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:47:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000012,0,'LBR')
;

-- Jan 28, 2014 12:47:53 PM BRST
ALTER TABLE LBR_Tax ADD Created DATE DEFAULT NULL 
;

-- Jan 28, 2014 12:48:05 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000183,'N','N','N',0,'N',22,'N','N','N','Y','3460d846-981d-41e3-bd9e-e3c90f697dc3','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-28 12:48:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:48:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000012,0,'LBR')
;

-- Jan 28, 2014 12:48:10 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTax', FKConstraintType='N',Updated=TO_DATE('2014-01-28 12:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000183
;

-- Jan 28, 2014 12:48:10 PM BRST
ALTER TABLE LBR_Tax ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 12:48:10 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT CreatedBy_LBRTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 12:48:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000184,'N','N','N',0,'N',7,'N','N','N','Y','73af0357-b956-41d6-aa04-1c75a21ad82d','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-28 12:48:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:48:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000012,0,'LBR')
;

-- Jan 28, 2014 12:48:28 PM BRST
ALTER TABLE LBR_Tax ADD Updated DATE DEFAULT NULL 
;

-- Jan 28, 2014 12:48:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000185,'N','N','N',0,'N',22,'N','N','N','Y','f949d888-d97a-4607-a459-7c3519ed6726','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-28 12:48:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:48:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000012,0,'LBR')
;

-- Jan 28, 2014 12:48:45 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTax', FKConstraintType='N',Updated=TO_DATE('2014-01-28 12:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000185
;

-- Jan 28, 2014 12:48:45 PM BRST
ALTER TABLE LBR_Tax ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 12:48:45 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT UpdatedBy_LBRTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 12:49:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000186,'N','N','N',0,'N',255,'Y','N','N','Y','f22fb161-6115-454d-a8ca-a2b07a2f9a63','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-28 12:49:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:49:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000012,0,'LBR')
;

-- Jan 28, 2014 12:49:30 PM BRST
ALTER TABLE LBR_Tax ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jan 28, 2014 12:49:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000187,'N','N','N',0,'N',1,'N','N','N','Y','63220f44-0374-4f08-9622-826890bfe08e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-28 12:49:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:49:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000012,0,'LBR')
;

-- Jan 28, 2014 12:49:54 PM BRST
ALTER TABLE LBR_Tax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 28, 2014 12:50:57 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Tax_ID',1000053,'Transaction Tax','Identifies a transaction tax (document/line)','Transaction Tax','6cff9c27-8df9-4be0-9267-0f59974d4209',TO_DATE('2014-01-28 12:50:57','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 12:50:57','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 12:51:21 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000188,'Y','N','N',0,'N',10,'N','Y','N','Y','a7fd6b8c-2bcc-454f-a581-be43e3404d21','N','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','N',TO_DATE('2014-01-28 12:51:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:51:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,13,1000012,0,'LBR')
;

-- Jan 28, 2014 12:51:26 PM BRST
ALTER TABLE LBR_Tax ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 12:51:26 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT LBR_Tax_Key PRIMARY KEY (LBR_Tax_ID)
;

-- Jan 28, 2014 12:51:43 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Tax_UU',1000054,'LBR_Tax_UU',NULL,'LBR_Tax_UU','be4af6d5-db42-4bd4-9605-cd01c78ab21d',TO_DATE('2014-01-28 12:51:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 12:51:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 12:52:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000189,'N','N','N',0,'N',36,'N','N','N','Y','dea3d593-7f0c-4bcd-a057-8962f1de65c2','N','LBR_Tax_UU','LBR_Tax_UU','N',TO_DATE('2014-01-28 12:52:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 12:52:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000054,10,1000012,0,'LBR')
;

-- Jan 28, 2014 12:52:06 PM BRST
ALTER TABLE LBR_Tax ADD LBR_Tax_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 28, 2014 12:52:06 PM BRST
ALTER TABLE LBR_Tax ADD CONSTRAINT LBR_Tax_UU_idx UNIQUE (LBR_Tax_UU)
;

-- Jan 28, 2014 12:58:46 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000013,'N','N','N','LBR','L','b2855b7d-025e-4a0f-a8f4-14f70a64c11d','Y','Y','LBR_TaxLine','Transaction Tax Line','Y',0,0,TO_DATE('2014-01-28 12:58:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 12:58:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 28, 2014 12:58:46 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000017,'Table LBR_TaxLine','LBR_TaxLine',1,'5d2c1b0a-9a5a-41c9-9ca5-e000c23e5321',TO_DATE('2014-01-28 12:58:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 12:58:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 28, 2014 1:00:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000190,'N','N','N',0,'N',22,'N','N','N','Y','77712224-1621-4e97-a16e-b64dddcd3b9b','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-28 13:00:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:00:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000013,129,0,'LBR')
;

-- Jan 28, 2014 1:00:28 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000190
;

-- Jan 28, 2014 1:00:28 PM BRST
CREATE TABLE LBR_TaxLine (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 28, 2014 1:00:28 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT ADClient_LBRTaxLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:00:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000191,'N','N','N',0,'N',22,'N','N','N','Y','d51eaddd-01f8-4ed6-a1bd-b728b8ad4939','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-28 13:00:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:00:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000013,104,0,'LBR')
;

-- Jan 28, 2014 1:00:49 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000191
;

-- Jan 28, 2014 1:00:49 PM BRST
ALTER TABLE LBR_TaxLine ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:00:49 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT ADOrg_LBRTaxLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:01:09 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000192,'N','N','N',0,'N',7,'N','N','N','Y','18c7505a-532b-4304-95f6-d8905858f876','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-28 13:01:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:01:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000013,0,'LBR')
;

-- Jan 28, 2014 1:01:13 PM BRST
ALTER TABLE LBR_TaxLine ADD Created DATE DEFAULT NULL 
;

-- Jan 28, 2014 1:01:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000193,'N','N','N',0,'N',22,'N','N','N','Y','35c79445-97c5-4804-a4b3-288fac8ad204','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-28 13:01:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:01:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000013,0,'LBR')
;

-- Jan 28, 2014 1:01:27 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:01:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000193
;

-- Jan 28, 2014 1:01:27 PM BRST
ALTER TABLE LBR_TaxLine ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:01:27 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT CreatedBy_LBRTaxLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:02:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000194,'N','N','N',0,'N',1,'N','N','N','Y','3e91c3f4-3318-4bfd-be45-8926e6e67003','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-28 13:02:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:02:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000013,0,'LBR')
;

-- Jan 28, 2014 1:02:37 PM BRST
ALTER TABLE LBR_TaxLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 28, 2014 1:03:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000195,'Y','N','N',0,'N',1,'N','N','N','Y','867f1401-e1bf-4b9c-83ad-0a8b039fe8bd','N','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_DATE('2014-01-28 13:03:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:03:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000013,0,'LBR')
;

-- Jan 28, 2014 1:03:23 PM BRST
ALTER TABLE LBR_TaxLine ADD IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Jan 28, 2014 1:04:10 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000196,'N','N','N',0,'N',22,'N','N','N','Y','c83d31cc-5fcd-43d1-abd3-aaaebd759068','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-01-28 13:04:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:04:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000013,0,'LBR')
;

-- Jan 28, 2014 1:04:18 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000196
;

-- Jan 28, 2014 1:04:18 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:04:18 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRLegalMessage_LBRTaxLine FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:04:25 PM BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-01-28 13:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000195
;

-- Jan 28, 2014 1:09:19 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PostTax',1000055,'Post Tax','Indicates if the Tax should be Posted (Account)','Post Tax','af99612e-e084-47b4-a4fe-176465f02fdf',TO_DATE('2014-01-28 13:09:19','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:09:19','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:09:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000197,'Y','N','N',0,'N',1,'N','N','N','Y','2c9d6012-4054-4a8a-b483-931462f0f1a1','Y','LBR_PostTax','Indicates if the Tax should be Posted (Account)','Y','Post Tax','Y',TO_DATE('2014-01-28 13:09:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:09:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000055,20,1000013,0,'LBR')
;

-- Jan 28, 2014 1:10:02 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_PostTax CHAR(1) DEFAULT 'Y' CHECK (LBR_PostTax IN ('Y','N')) NOT NULL
;

-- Jan 28, 2014 1:10:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000198,'Y','N','N',0,'N',10,'N','N','N','Y','149f855e-2e07-4b7c-b56d-f92594ab3083','N','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-01-28 13:10:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:10:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,19,1000013,0,'LBR')
;

-- Jan 28, 2014 1:10:35 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTax_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:10:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000198
;

-- Jan 28, 2014 1:10:35 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 1:10:35 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRTax_LBRTaxLine FOREIGN KEY (LBR_Tax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:11:45 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxAmt',1000056,'Tax Amount','Defines the Tax Amount','Tax Amount','c852b093-276c-478b-b5d3-ebd96f13bb8a',TO_DATE('2014-01-28 13:11:45','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:11:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:12:17 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000199,'N','N','N',0,'N',10,'N','N','N','Y','3b660884-b576-4bfe-8f60-096959cd3654','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_DATE('2014-01-28 13:12:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:12:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000013,0,'LBR')
;

-- Jan 28, 2014 1:12:25 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxAmt NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:13:51 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxBase',1000057,'Tax Base','Indicates the Tax Base','Tax Base','ab2ad4dd-64ce-4e48-a2d5-efbb0b22b215',TO_DATE('2014-01-28 13:13:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:13:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:14:40 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000200,'N','N','N',0,'N',10,'N','N','N','Y','57ba7dd6-2046-4c96-912a-842933a88eab','Y','LBR_TaxBase','Indicates the Tax Base','Tax Base','Y',TO_DATE('2014-01-28 13:14:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:14:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000057,12,1000013,0,'LBR')
;

-- Jan 28, 2014 1:14:44 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxBase NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:15:41 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxBaseAmt',1000058,'Tax Base Amount','Defines the Tax Base Amount','Tax Base Amount','09b2d97b-f6ac-4335-be17-c4539fcbad05',TO_DATE('2014-01-28 13:15:41','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:15:41','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:16:10 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000201,'N','N','N',0,'N',10,'N','N','N','Y','e7d21ad3-eccc-418c-afb6-053ac8fad038','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_DATE('2014-01-28 13:16:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:16:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000013,0,'LBR')
;

-- Jan 28, 2014 1:16:14 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:17:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000202,'N','N','N',0,'N',10,'N','N','N','Y','994b1676-b6af-4801-ad89-2a8c26ced9d1','Y','LBR_TaxBaseType_ID','Tax Base Type','Y',TO_DATE('2014-01-28 13:17:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:17:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000051,19,1000013,0,'LBR')
;

-- Jan 28, 2014 1:18:07 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxBaseType_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:18:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000202
;

-- Jan 28, 2014 1:18:07 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxBaseType_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:18:07 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRTaxBaseType_LBRTaxLine FOREIGN KEY (LBR_TaxBaseType_ID) REFERENCES lbr_taxbasetype(lbr_taxbasetype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:19:13 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxLine_ID',1000059,'Transaction Tax Line','Tax Line for the Transaction Tax','Transaction Tax Line','174a5411-fc80-4868-b70d-f4dd56a8667a',TO_DATE('2014-01-28 13:19:13','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:19:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:19:31 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000203,'Y','N','N',0,'N',10,'N','Y','N','Y','00e82392-332e-4c3c-9a8f-63850942e8ce','N','LBR_TaxLine_ID','Tax Line for the Transaction Tax','Transaction Tax Line','N',TO_DATE('2014-01-28 13:19:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:19:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000059,13,1000013,0,'LBR')
;

-- Jan 28, 2014 1:19:35 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxLine_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 1:19:35 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBR_TaxLine_Key PRIMARY KEY (LBR_TaxLine_ID)
;

-- Jan 28, 2014 1:19:51 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxLine_UU',1000060,'LBR_TaxLine_UU',NULL,'LBR_TaxLine_UU','e90ca7d8-b559-486f-a615-7d7576ff718b',TO_DATE('2014-01-28 13:19:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:19:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:20:08 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000204,'N','N','N',0,'N',36,'N','N','N','Y','4250850c-74d4-406c-9301-6eac3af6d65e','N','LBR_TaxLine_UU','LBR_TaxLine_UU','N',TO_DATE('2014-01-28 13:20:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:20:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000060,10,1000013,0,'LBR')
;

-- Jan 28, 2014 1:20:14 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxLine_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 28, 2014 1:20:14 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBR_TaxLine_UU_idx UNIQUE (LBR_TaxLine_UU)
;

-- Jan 28, 2014 1:25:16 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxListAmt',1000061,'Tax List Amount (Flat Rate)','Tax List Amount (Flat Rate) stated by law','Tax List Amount (Flat Rate)','5caaeaac-bcee-4d35-8477-6cb84d507700',TO_DATE('2014-01-28 13:25:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:25:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:25:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000205,'N','N','N',0,'N',13,'N','N','N','Y','5c4c8e28-d344-4659-8e10-d10ddd88473f','Y','LBR_TaxListAmt','Tax List Amount (Flat Rate) stated by law','Tax List Amount (Flat Rate)','Y',TO_DATE('2014-01-28 13:25:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:25:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000061,12,1000013,0,'LBR')
;

-- Jan 28, 2014 1:25:52 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxListAmt NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:26:35 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000206,'Y','N','N',0,'N',22,'Y','N','N','Y','f7aa6f53-affa-44b6-9d69-c2b178c3e0ca','Y','LBR_TaxName_ID','Primary key table LBR_TaxName','Primary key table LBR_TaxName','Tax Name','Y',TO_DATE('2014-01-28 13:26:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:26:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000034,30,1000013,0,'LBR')
;

-- Jan 28, 2014 1:26:39 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxName_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000206
;

-- Jan 28, 2014 1:26:39 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxName_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 1:26:39 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRTaxName_LBRTaxLine FOREIGN KEY (LBR_TaxName_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:27:26 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxRate',1000062,'Tax Rate','Indicates the Tax Rate','Tax Rate','ab447a14-62a0-4946-8f68-5b8a73308ca5',TO_DATE('2014-01-28 13:27:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 13:27:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 1:27:57 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000207,'N','N','N',0,'N',10,'N','N','N','Y','9c017341-dd69-4abf-bed2-c76621c6c8c3','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_DATE('2014-01-28 13:27:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:27:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000013,0,'LBR')
;

-- Jan 28, 2014 1:28:02 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxRate NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:28:44 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000208,'N','N','N',0,'N',22,'N','N','N','Y','72463320-20c8-42ba-b147-28897d0fed43','Y','LBR_TaxStatus_ID','Brazilian Tax Status','Tax Status','Y',TO_DATE('2014-01-28 13:28:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:28:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000049,30,1000013,0,'LBR')
;

-- Jan 28, 2014 1:28:49 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxStatus_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000208
;

-- Jan 28, 2014 1:28:49 PM BRST
ALTER TABLE LBR_TaxLine ADD LBR_TaxStatus_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:28:49 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBRTaxStatus_LBRTaxLine FOREIGN KEY (LBR_TaxStatus_ID) REFERENCES lbr_taxstatus(lbr_taxstatus_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 1:33:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000209,'N','N','N',0,'N',22,'N','N','N','Y','ed262795-fcdc-49df-b177-bfbff6bc5f7d','Y','Qty','Quantity','The Quantity indicates the number of a specific product or item for this document.','Quantity','Y',TO_DATE('2014-01-28 13:33:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:33:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',526,29,1000013,0,'LBR')
;

-- Jan 28, 2014 1:33:48 PM BRST
ALTER TABLE LBR_TaxLine ADD Qty NUMBER DEFAULT NULL 
;

-- Jan 28, 2014 1:34:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000210,'N','N','N',0,'N',7,'N','N','N','Y','eb32ae5f-7178-42aa-a9b4-6581b1023020','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-28 13:34:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:34:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000013,0,'LBR')
;

-- Jan 28, 2014 1:34:19 PM BRST
ALTER TABLE LBR_TaxLine ADD Updated DATE DEFAULT NULL 
;

-- Jan 28, 2014 1:34:33 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000211,'N','N','N',0,'N',22,'N','N','N','Y','659a8c43-07ba-497b-8823-0d27ab6c78c6','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-28 13:34:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 13:34:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000013,0,'LBR')
;

-- Jan 28, 2014 1:34:39 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxLine', FKConstraintType='N',Updated=TO_DATE('2014-01-28 13:34:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000211
;

-- Jan 28, 2014 1:34:39 PM BRST
ALTER TABLE LBR_TaxLine ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 1:34:39 PM BRST
ALTER TABLE LBR_TaxLine ADD CONSTRAINT UpdatedBy_LBRTaxLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT lbr_register_migration_script('201401281336.sql') FROM dual
;

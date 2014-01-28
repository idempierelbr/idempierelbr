SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 28, 2014 9:05:11 AM BRST
-- Table/Tab: Tax Status and Tax Base Type (Tax Brazil)
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000007,1000010,'N','N','N','LBR','L','e8ca6bd6-b271-4531-9f4d-c2910b339df5','Y','Y','LBR_TaxStatus','Brazilian Tax Status','Tax Status','Y',0,0,TO_DATE('2014-01-28 09:05:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:05:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 28, 2014 9:05:12 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000014,'Table LBR_TaxStatus','LBR_TaxStatus',1,'0d36f35d-c603-4afb-8b30-51d5032223d1',TO_DATE('2014-01-28 09:05:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:05:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 28, 2014 9:05:39 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000149,'N','N','N',0,'N',22,'N','N','N','Y','6d957e5e-f694-4bab-9657-554415268ace','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-28 09:05:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:05:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000010,129,0,'LBR')
;

-- Jan 28, 2014 9:05:44 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxStatus', FKConstraintType='N',Updated=TO_DATE('2014-01-28 09:05:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000149
;

-- Jan 28, 2014 9:05:44 AM BRST
CREATE TABLE LBR_TaxStatus (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 28, 2014 9:05:45 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT ADClient_LBRTaxStatus FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 9:06:05 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000150,'N','N','N',0,'N',22,'N','N','N','Y','931d39c4-0bf4-4724-b891-08f531e62b65','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-28 09:06:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:06:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000010,104,0,'LBR')
;

-- Jan 28, 2014 9:06:09 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxStatus', FKConstraintType='N',Updated=TO_DATE('2014-01-28 09:06:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000150
;

-- Jan 28, 2014 9:06:09 AM BRST
ALTER TABLE LBR_TaxStatus ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 9:06:09 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT ADOrg_LBRTaxStatus FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 9:06:32 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000151,'N','N','N',0,'N',7,'N','N','N','Y','13ccbc73-85e3-4ce7-a490-8b75f1283559','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-28 09:06:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:06:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000010,0,'LBR')
;

-- Jan 28, 2014 9:06:37 AM BRST
ALTER TABLE LBR_TaxStatus ADD Created DATE DEFAULT NULL 
;

-- Jan 28, 2014 9:06:53 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000152,'N','N','N',0,'N',22,'N','N','N','Y','7b17854c-8ad3-4777-8d10-fbbfeb66904c','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-28 09:06:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:06:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000010,0,'LBR')
;

-- Jan 28, 2014 9:06:56 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxStatus', FKConstraintType='N',Updated=TO_DATE('2014-01-28 09:06:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000152
;

-- Jan 28, 2014 9:06:56 AM BRST
ALTER TABLE LBR_TaxStatus ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 9:06:56 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT CreatedBy_LBRTaxStatus FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 9:08:04 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000153,'Y','N','N',0,'N',255,'Y','N','N','Y','d87604d4-ec4c-4a84-b539-fef038cd318b','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-28 09:08:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:08:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000010,0,'LBR')
;

-- Jan 28, 2014 9:08:08 AM BRST
ALTER TABLE LBR_TaxStatus ADD Description VARCHAR2(255) NOT NULL
;

-- Jan 28, 2014 9:08:45 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000154,'N','N','N',0,'N',255,'N','N','N','Y','c8c0b30b-737d-46d0-919a-e22ce0461b58','Y','PO_Description','Description in PO Screens','PO Description','Y',TO_DATE('2014-01-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1659,14,1000010,0,'LBR')
;

-- Jan 28, 2014 9:08:50 AM BRST
ALTER TABLE LBR_TaxStatus ADD PO_Description VARCHAR2(255) DEFAULT NULL 
;

-- Jan 28, 2014 9:09:29 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000155,'Y','N','Y',0,'N',60,'Y','N','N','Y','a5ee066b-d7bc-4216-872d-b13c5c64da36','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-01-28 09:09:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:09:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000010,0,'LBR')
;

-- Jan 28, 2014 9:09:34 AM BRST
ALTER TABLE LBR_TaxStatus ADD Name VARCHAR2(60) NOT NULL
;

-- Jan 28, 2014 9:10:00 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000156,'N','N','N',0,'N',60,'Y','N','N','Y','b8be11a7-6aca-4102-a29a-f3b7ec77bccd','Y','PO_Name','Name on PO Screens','PO Name','Y',TO_DATE('2014-01-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1661,10,1000010,0,'LBR')
;

-- Jan 28, 2014 9:10:05 AM BRST
ALTER TABLE LBR_TaxStatus ADD PO_Name VARCHAR2(60) DEFAULT NULL 
;

-- Jan 28, 2014 9:10:42 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000157,'N','N','N',0,'N',1,'N','N','N','Y','5143f08a-f4c1-492b-b900-24d89eb38941','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-28 09:10:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:10:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000010,0,'LBR')
;

-- Jan 28, 2014 9:10:46 AM BRST
ALTER TABLE LBR_TaxStatus ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 28, 2014 9:11:30 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000158,'Y','N','N',0,'N',22,'Y','N','N','Y','b5cbc8d6-7492-4f8e-b968-908e529f90fb','N','LBR_TaxName_ID','Primary key table LBR_TaxName','Primary key table LBR_TaxName','Tax Name','Y',TO_DATE('2014-01-28 09:11:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:11:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000034,19,1000010,0,'LBR')
;

-- Jan 28, 2014 9:11:33 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxName_LBRTaxStatus', FKConstraintType='N',Updated=TO_DATE('2014-01-28 09:11:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000158
;

-- Jan 28, 2014 9:11:33 AM BRST
ALTER TABLE LBR_TaxStatus ADD LBR_TaxName_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 9:11:33 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT LBRTaxName_LBRTaxStatus FOREIGN KEY (LBR_TaxName_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 9:12:27 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxStatus_ID',1000049,'Tax Status','Brazilian Tax Status','Tax Status','2c7623a9-a045-4299-b68a-e8f289197486',TO_DATE('2014-01-28 09:12:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 09:12:27','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 9:12:58 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000159,'Y','N','N',0,'N',22,'N','N','N','Y','30783f30-1021-4017-bbf8-ba5628a9b766','N','LBR_TaxStatus_ID','Brazilian Tax Status','Tax Status','Y',TO_DATE('2014-01-28 09:12:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:12:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000049,13,1000010,0,'LBR')
;

-- Jan 28, 2014 9:13:01 AM BRST
ALTER TABLE LBR_TaxStatus ADD LBR_TaxStatus_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 9:13:09 AM BRST
UPDATE AD_Column SET IsKey='Y', IsUpdateable='N', IsAllowCopy='N',Updated=TO_DATE('2014-01-28 09:13:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000159
;

-- Jan 28, 2014 9:13:13 AM BRST
ALTER TABLE LBR_TaxStatus MODIFY LBR_TaxStatus_ID NUMBER(10)
;

-- Jan 28, 2014 9:13:13 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT LBR_TaxStatus_Key PRIMARY KEY (LBR_TaxStatus_ID)
;

-- Jan 28, 2014 9:19:56 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxStatus_UU',1000050,'LBR_TaxStatus_UU',NULL,'LBR_TaxStatus_UU','89b9866a-ab45-44d4-a6ea-b1d1e07f1a0e',TO_DATE('2014-01-28 09:19:56','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 09:19:56','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 9:20:19 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000160,'N','N','N',0,'N',36,'N','N','N','Y','8f07714e-e91a-4251-a1bb-03bdf2f3d3c5','N','LBR_TaxStatus_UU','LBR_TaxStatus_UU','N',TO_DATE('2014-01-28 09:20:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:20:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000050,10,1000010,0,'LBR')
;

-- Jan 28, 2014 9:20:24 AM BRST
ALTER TABLE LBR_TaxStatus ADD LBR_TaxStatus_UU VARCHAR2(36) DEFAULT NULL 
;

-- Jan 28, 2014 9:20:24 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT LBR_TaxStatus_UU_idx UNIQUE (LBR_TaxStatus_UU)
;

-- Jan 28, 2014 9:21:23 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000161,'N','N','N',0,'N',2000,'N','N','N','Y','efda59b4-c98b-42ab-b989-3f034590e87b','Y','Script','Dynamic Java Language Script to calculate result','Use Java language constructs to define the result of the calculation','Script','Y',TO_DATE('2014-01-28 09:21:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:21:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1718,34,1000010,0,'LBR')
;

-- Jan 28, 2014 9:21:28 AM BRST
ALTER TABLE LBR_TaxStatus ADD Script VARCHAR2(2000) DEFAULT NULL 
;

-- Jan 28, 2014 9:22:02 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000162,'N','N','N',0,'N',7,'N','N','N','Y','1874abb2-a106-4887-b1dc-207e5662fa63','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-28 09:22:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:22:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000010,0,'LBR')
;

-- Jan 28, 2014 9:22:07 AM BRST
ALTER TABLE LBR_TaxStatus ADD Updated DATE DEFAULT NULL 
;

-- Jan 28, 2014 9:22:17 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000163,'N','N','N',0,'N',22,'N','N','N','Y','60d74345-55f6-4f91-ac9b-a47c290b2f77','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-28 09:22:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:22:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000010,0,'LBR')
;

-- Jan 28, 2014 9:22:21 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxStatus', FKConstraintType='N',Updated=TO_DATE('2014-01-28 09:22:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000163
;

-- Jan 28, 2014 9:22:21 AM BRST
ALTER TABLE LBR_TaxStatus ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 9:22:21 AM BRST
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT UpdatedBy_LBRTaxStatus FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 9:23:16 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000164,'Y','N','N',0,'N',7,'N','N','N','Y','20c45aa5-8075-4342-ae23-b400b264b8a6','Y','ValidFrom','Valid from including this date (first day)','@#Date@','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-01-28 09:23:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:23:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000010,0,'LBR')
;

-- Jan 28, 2014 9:23:19 AM BRST
ALTER TABLE LBR_TaxStatus ADD ValidFrom DATE NOT NULL
;

-- Jan 28, 2014 9:23:41 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000165,'N','N','N',0,'N',7,'N','N','N','Y','3017dd0f-de68-46f7-ad99-2c3d017254a0','Y','ValidTo','Valid to including this date (last day)','The Valid To date indicates the last day of a date range','Valid to','Y',TO_DATE('2014-01-28 09:23:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 09:23:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',618,15,1000010,0,'LBR')
;

-- Jan 28, 2014 9:23:44 AM BRST
ALTER TABLE LBR_TaxStatus ADD ValidTo DATE DEFAULT NULL 
;

-- Jan 28, 2014 9:24:59 AM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000007,30,'N','N','N','N','N','Y','N',1,'3e9174c7-e77f-4d3b-906c-2476ecb6b517','LBR','Tax Status',1000010,0,TO_DATE('2014-01-28 09:24:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:24:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000158,1000010,'B')
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,22,'N','N',10,'Y',1000109,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f97269f8-1e5d-4755-a816-b6492c43385e','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000149)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,22,'N','N',20,'Y',1000110,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','32abf46f-d04d-4c38-9c08-e73d1b8896a7','N','Y','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000150)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,60,'N','N',30,'Y',1000111,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','e2d0d9ab-0f85-4baa-9e07-1fe4db2c0975','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000155)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000010,255,'N','N',40,'Y',1000112,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','8cd5303e-f9bf-45e8-a8a8-43d6d6da178a','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000153)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000010,255,'N','N',50,'Y',1000113,'N','LBR','Description in PO Screens','PO Description','b89673d0-7715-43ea-883c-51c8b41d05c9','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000154)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,60,'N','N',60,'Y',1000114,'N','LBR','Name on PO Screens','PO Name','1ffb33d4-7030-424f-aa5c-027dd16036db','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000156)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,22,'N','N',70,'Y',1000115,'N','Primary key table LBR_TaxName','LBR','Primary key table LBR_TaxName','Tax Name','34f81d13-59c8-4beb-8bd5-9ad2752c57d1','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000158)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,22,'N','N',80,'Y',1000116,'N','LBR','Brazilian Tax Status','Tax Status','f7fc373d-660d-4c7f-b336-39726a52259e','N','N',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000159)
;

-- Jan 28, 2014 9:25:07 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,36,'N','N',90,'Y',1000117,'N','LBR','LBR_TaxStatus_UU','c72cc1c7-06b3-4fed-978c-e5d9009e609d','N','N',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000160)
;

-- Jan 28, 2014 9:25:08 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000010,2000,'N','N',100,'Y',1000118,'N','Use Java language constructs to define the result of the calculation','LBR','Dynamic Java Language Script to calculate result','Script','d19a6665-f9bd-4f3b-82e8-599b3439a285','N','Y',0,0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000161)
;

-- Jan 28, 2014 9:25:08 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,7,'N','N',110,'Y',1000119,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','7e707db7-1898-4f1a-968c-9750518456a0','N','Y',0,0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000164)
;

-- Jan 28, 2014 9:25:08 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,7,'N','N',120,'Y',1000120,'N','The Valid To date indicates the last day of a date range','LBR','Valid to including this date (last day)','Valid to','ec9d01c3-294d-4bf2-9628-4a08ec589bbf','N','Y',0,0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000165)
;

-- Jan 28, 2014 9:25:08 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000010,1,'N','N',130,'Y',1000121,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','58476333-d962-43af-9d5e-be4c7581b892','N','Y',0,0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:25:08','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000157)
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000117
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000116
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000114
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000112
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000113
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000120
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000119
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000115
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000121
;

-- Jan 28, 2014 9:26:50 AM BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000118
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000121
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000109
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000110
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000112
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000111
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000113
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000114
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000118
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000115
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000119
;

-- Jan 28, 2014 9:27:09 AM BRST
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000120
;

-- Jan 28, 2014 9:27:28 AM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000111
;

-- Jan 28, 2014 9:27:28 AM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000112
;

-- Jan 28, 2014 9:27:28 AM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000114
;

-- Jan 28, 2014 9:27:28 AM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000113
;

-- Jan 28, 2014 9:28:00 AM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-28 09:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000110
;

-- Jan 28, 2014 9:28:43 AM BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2014-01-28 09:28:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000111
;

-- Jan 28, 2014 9:28:59 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_DATE('2014-01-28 09:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000114
;

-- Jan 28, 2014 9:29:12 AM BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2014-01-28 09:29:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000112
;

-- Jan 28, 2014 9:29:25 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_DATE('2014-01-28 09:29:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000113
;

-- Jan 28, 2014 9:29:52 AM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000119
;

-- Jan 28, 2014 9:29:52 AM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000120
;

-- Jan 28, 2014 9:30:19 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-01-28 09:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000120
;

-- Jan 28, 2014 9:30:47 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-01-28 09:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000121
;

-- Jan 28, 2014 9:31:15 AM BRST
UPDATE AD_Field SET NumLines=15,Updated=TO_DATE('2014-01-28 09:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000118
;

-- Jan 28, 2014 9:32:50 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-01-28 09:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000111
;

-- Jan 28, 2014 9:32:57 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-01-28 09:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000114
;

-- Jan 28, 2014 9:33:03 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-01-28 09:33:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000112
;

-- Jan 28, 2014 9:33:08 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-01-28 09:33:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000113
;

-- Jan 28, 2014 9:33:22 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-01-28 09:33:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000119
;

-- Jan 28, 2014 9:33:27 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-01-28 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000120
;

-- Jan 28, 2014 9:33:32 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-01-28 09:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000115
;

-- Jan 28, 2014 9:33:40 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-01-28 09:33:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000121
;

-- Jan 28, 2014 9:35:08 AM BRST
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Validation','ab4e86d1-d610-473e-b7c0-516aa7578a26',1000001,TO_DATE('2014-01-28 09:35:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 09:35:08','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Jan 28, 2014 9:35:26 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2014-01-28 09:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000118
;

-- Jan 28, 2014 9:38:16 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000106
;

-- Jan 28, 2014 9:38:23 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000107
;

-- Jan 28, 2014 9:38:27 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000099
;

-- Jan 28, 2014 9:38:30 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000102
;

-- Jan 28, 2014 9:38:33 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000100
;

-- Jan 28, 2014 9:38:35 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000101
;

-- Jan 28, 2014 9:38:40 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2014-01-28 09:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000098
;

-- Jan 28, 2014 9:39:13 AM BRST
UPDATE AD_FieldGroup SET IsCollapsedByDefault='N',Updated=TO_DATE('2014-01-28 09:39:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=111
;

-- Jan 28, 2014 10:24:44 AM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000007,1000011,'N','N','N','LBR','L','c6f9410b-b616-45bd-b2f7-d8f4e3e51c56','Y','Y','LBR_TaxBaseType','Tax Base Type','Y',0,0,TO_DATE('2014-01-28 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 28, 2014 10:24:44 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000015,'Table LBR_TaxBaseType','LBR_TaxBaseType',1,'311a10f4-f0f8-4e54-a453-6660b1203cba',TO_DATE('2014-01-28 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:24:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 28, 2014 10:25:16 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000166,'N','N','N',0,'N',22,'N','N','N','Y','45d42258-dbb6-4e68-891e-b696697b76a8','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-28 10:25:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:25:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000011,129,0,'LBR')
;

-- Jan 28, 2014 10:25:21 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxBaseType', FKConstraintType='N',Updated=TO_DATE('2014-01-28 10:25:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000166
;

-- Jan 28, 2014 10:25:21 AM BRST
CREATE TABLE LBR_TaxBaseType (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 28, 2014 10:25:21 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT ADClient_LBRTaxBaseType FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 10:25:41 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000167,'N','N','N',0,'N',22,'N','N','N','Y','057423af-434b-439a-a509-6397b0d55aa2','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-28 10:25:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:25:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000011,104,0,'LBR')
;

-- Jan 28, 2014 10:25:45 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxBaseType', FKConstraintType='N',Updated=TO_DATE('2014-01-28 10:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000167
;

-- Jan 28, 2014 10:25:45 AM BRST
ALTER TABLE LBR_TaxBaseType ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 10:25:45 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT ADOrg_LBRTaxBaseType FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 10:26:03 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000168,'N','N','N',0,'N',7,'N','N','N','Y','73f86f3d-524d-46bf-8ab2-7a39180e8084','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-28 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:26:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000011,0,'LBR')
;

-- Jan 28, 2014 10:26:06 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Created DATE DEFAULT NULL 
;

-- Jan 28, 2014 10:26:16 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000169,'N','N','N',0,'N',22,'N','N','N','Y','22c7d8b1-186c-42cb-b89a-779da6743e14','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-28 10:26:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:26:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000011,0,'LBR')
;

-- Jan 28, 2014 10:26:20 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxBaseType', FKConstraintType='N',Updated=TO_DATE('2014-01-28 10:26:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000169
;

-- Jan 28, 2014 10:26:20 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 10:26:20 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT CreatedBy_LBRTaxBaseType FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 10:27:00 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000170,'N','N','N',0,'N',255,'Y','N','N','Y','1d339ca3-7ed7-4070-bbca-3a8db0208de8','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-28 10:27:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:27:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000011,0,'LBR')
;

-- Jan 28, 2014 10:27:05 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Jan 28, 2014 10:27:27 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000171,'N','N','N',0,'N',1,'N','N','N','Y','3a5b35b1-9738-4a07-b93a-5655c6524d9a','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-28 10:27:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:27:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000011,0,'LBR')
;

-- Jan 28, 2014 10:27:31 AM BRST
ALTER TABLE LBR_TaxBaseType ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 28, 2014 10:28:05 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxBaseType_ID',1000051,'Tax Base Type','Tax Base Type','5d50206d-66a9-4dd2-8c26-3a1e8f2299ae',TO_DATE('2014-01-28 10:28:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 10:28:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 10:28:30 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000172,'Y','N','N',0,'N',10,'N','Y','N','Y','9b8e9dab-1702-42e9-b2db-d237bb86859e','N','LBR_TaxBaseType_ID','Tax Base Type','N',TO_DATE('2014-01-28 10:28:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:28:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000051,13,1000011,0,'LBR')
;

-- Jan 28, 2014 10:28:34 AM BRST
ALTER TABLE LBR_TaxBaseType ADD LBR_TaxBaseType_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 10:28:34 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT LBR_TaxBaseType_Key PRIMARY KEY (LBR_TaxBaseType_ID)
;

-- Jan 28, 2014 10:28:52 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxBaseType_UU',1000052,'LBR_TaxBaseType_UU','LBR_TaxBaseType_UU','68754e73-c1cc-43f8-95a5-36d9a03c315a',TO_DATE('2014-01-28 10:28:52','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-28 10:28:52','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 28, 2014 10:29:05 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000173,'N','N','N',0,'N',36,'N','N','N','Y','e3b7f15b-157a-4c16-80e0-b0b995a8b707','N','LBR_TaxBaseType_UU','LBR_TaxBaseType_UU','N',TO_DATE('2014-01-28 10:29:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:29:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000052,10,1000011,0,'LBR')
;

-- Jan 28, 2014 10:29:09 AM BRST
ALTER TABLE LBR_TaxBaseType ADD LBR_TaxBaseType_UU VARCHAR2(36) DEFAULT NULL 
;

-- Jan 28, 2014 10:29:09 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT LBR_TaxBaseType_UU_idx UNIQUE (LBR_TaxBaseType_UU)
;

-- Jan 28, 2014 10:29:52 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000174,'Y','N','N',0,'N',22,'N','N','N','Y','3b0b961b-82ba-4f7c-8b2f-9a51cf57fbef','N','LBR_TaxStatus_ID','Brazilian Tax Status','Tax Status','Y',TO_DATE('2014-01-28 10:29:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:29:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000049,19,1000011,0,'LBR')
;

-- Jan 28, 2014 10:29:55 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxStatus_LBRTaxBaseType', FKConstraintType='N',Updated=TO_DATE('2014-01-28 10:29:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000174
;

-- Jan 28, 2014 10:29:55 AM BRST
ALTER TABLE LBR_TaxBaseType ADD LBR_TaxStatus_ID NUMBER(10) NOT NULL
;

-- Jan 28, 2014 10:29:55 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT LBRTaxStatus_LBRTaxBaseType FOREIGN KEY (LBR_TaxStatus_ID) REFERENCES lbr_taxstatus(lbr_taxstatus_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 10:30:31 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000175,'Y','N','Y',0,'N',60,'Y','N','N','Y','cca1bac2-d0eb-4066-8948-adde797fe3aa','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-01-28 10:30:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:30:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,14,1000011,0,'LBR')
;

-- Jan 28, 2014 10:30:34 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Name VARCHAR2(60) NOT NULL
;

-- Jan 28, 2014 10:31:18 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000176,'N','N','N',0,'N',2000,'N','N','N','Y','517edaf6-a4c2-445f-8ec9-2a28393269ae','Y','Script','Dynamic Java Language Script to calculate result','Use Java language constructs to define the result of the calculation','Script','Y',TO_DATE('2014-01-28 10:31:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:31:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1718,34,1000011,0,'LBR')
;

-- Jan 28, 2014 10:31:22 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Script VARCHAR2(2000) DEFAULT NULL 
;

-- Jan 28, 2014 10:32:04 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000177,'N','N','N',0,'N',7,'N','N','N','Y','c54f6b9b-6c93-48d5-9db8-6ec573ed186a','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-28 10:32:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:32:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000011,0,'LBR')
;

-- Jan 28, 2014 10:32:08 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Updated DATE DEFAULT NULL 
;

-- Jan 28, 2014 10:32:20 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000178,'N','N','N',0,'N',22,'N','N','N','Y','ed81320a-982e-4b88-9ce8-d920716b6453','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-28 10:32:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:32:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000011,0,'LBR')
;

-- Jan 28, 2014 10:32:25 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxBaseType', FKConstraintType='N',Updated=TO_DATE('2014-01-28 10:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000178
;

-- Jan 28, 2014 10:32:25 AM BRST
ALTER TABLE LBR_TaxBaseType ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 28, 2014 10:32:25 AM BRST
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT UpdatedBy_LBRTaxBaseType FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 28, 2014 10:33:04 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000179,'N','N','N',0,'N',40,'Y','N','N','Y','51431a8b-8ce7-4067-a34c-4fdfcf3ff0ff','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-01-28 10:33:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-28 10:33:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000011,0,'LBR')
;

-- Jan 28, 2014 10:33:08 AM BRST
ALTER TABLE LBR_TaxBaseType ADD Value VARCHAR2(40) DEFAULT NULL 
;

-- Jan 28, 2014 10:34:41 AM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000007,40,'N','N','N','N','N','Y','N',2,'b193a2ee-c6d9-4ffc-bb98-281fe7870002','LBR','Tax Base Type',1000011,0,TO_DATE('2014-01-28 10:34:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000174,1000011,'B')
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,22,'N','N',10,'Y',1000122,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','2f5f4149-87bf-4588-ac9d-0195d4e57356','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000166)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,22,'N','N',20,'Y',1000123,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9d37e42f-9066-49ab-b000-ed68c676d673','N','Y','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000167)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,40,'N','N',30,'Y',1000124,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','09186fd3-0f1c-4d05-b0bf-8b211e2452a9','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000179)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000011,60,'N','N',40,'Y',1000125,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','7921411b-8968-49d4-9cbc-5823f7b73adc','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000175)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000011,255,'N','N',50,'Y',1000126,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','9468acb6-1f13-41ee-a98d-72153cfd39e2','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000170)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,10,'N','N',60,'Y',1000127,'N','LBR','Tax Base Type','6da2ef4a-40ec-4b92-ac6d-0071cc07a6e4','N','N',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000172)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,36,'N','N',70,'Y',1000128,'N','LBR','LBR_TaxBaseType_UU','7ea273c3-80b3-47b5-b2bb-7dea33e5ee4e','N','N',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000173)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,22,'N','N',80,'Y',1000129,'N','LBR','Brazilian Tax Status','Tax Status','f853c5b2-1026-4c14-87ee-f14e297da635','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000174)
;

-- Jan 28, 2014 10:34:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000011,2000,'N','N',90,'Y',1000130,'N','Use Java language constructs to define the result of the calculation','LBR','Dynamic Java Language Script to calculate result','Script','21d031d0-0ab0-437f-bb87-ce7809ce0871','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000176)
;

-- Jan 28, 2014 10:34:47 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000011,1,'N','N',100,'Y',1000131,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','1e17b26d-8353-48b0-ac67-90d7eed8c0b3','N','Y',0,0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-28 10:34:46','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000171)
;

-- Jan 28, 2014 10:37:13 AM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000128
;

-- Jan 28, 2014 10:37:13 AM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000127
;

-- Jan 28, 2014 10:37:13 AM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000129
;

-- Jan 28, 2014 10:37:13 AM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000131
;

-- Jan 28, 2014 10:37:13 AM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000130
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000131
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000122
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000123
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000126
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000125
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000130
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000124
;

-- Jan 28, 2014 10:37:26 AM BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000129
;

-- Jan 28, 2014 10:37:54 AM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-28 10:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000123
;

-- Jan 28, 2014 10:38:30 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-01-28 10:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000131
;

-- Jan 28, 2014 10:38:48 AM BRST
UPDATE AD_Field SET NumLines=15, AD_FieldGroup_ID=1000001,Updated=TO_DATE('2014-01-28 10:38:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000130
;

SELECT lbr_register_migration_script('201401280951.sql') FROM dual
;

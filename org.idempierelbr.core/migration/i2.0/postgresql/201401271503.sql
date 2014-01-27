-- Jan 27, 2014 1:22:25 PM BRST
-- Table/Window/Menu: Tax (Brazil)
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000007,'N','N','N','LBR','L','72251e7c-5ee4-4cf3-9bcf-f7ec3884bc12','Y','Y','LBR_TaxName','Tax Name (Brazil)','Y',0,0,TO_TIMESTAMP('2014-01-27 13:22:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:22:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 27, 2014 1:22:25 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000011,'Table LBR_TaxName','LBR_TaxName',1,'d8bea5fe-f968-4668-8000-c9c80d7dea1d',TO_TIMESTAMP('2014-01-27 13:22:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:22:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 27, 2014 1:23:07 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000104,'N','N','N',0,'N',22,'N','N','N','Y','0e00c8f5-e2e6-4ecc-bbab-019f3d105489','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-01-27 13:23:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:23:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000007,129,0,'LBR')
;

-- Jan 27, 2014 1:23:13 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxName', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-27 13:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000104
;

-- Jan 27, 2014 1:23:13 PM BRST
CREATE TABLE LBR_TaxName (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- Jan 27, 2014 1:23:13 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT ADClient_LBRTaxName FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 1:23:17 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-27 13:23:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000104
;

-- Jan 27, 2014 1:23:36 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000105,'N','N','N',0,'N',22,'N','N','N','Y','6bb1afc2-47cb-4140-a932-b85b54247b85','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-01-27 13:23:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:23:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000007,104,0,'U')
;

-- Jan 27, 2014 1:23:42 PM BRST
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-01-27 13:23:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000105
;

-- Jan 27, 2014 1:23:48 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxName', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-27 13:23:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000105
;

-- Jan 27, 2014 1:23:48 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 27, 2014 1:23:48 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT ADOrg_LBRTaxName FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 1:23:52 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-27 13:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000105
;

-- Jan 27, 2014 1:24:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000106,'N','N','N',0,'N',7,'N','N','N','Y','0be121a4-6182-4ca8-9cab-1d44a3b83a01','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-01-27 13:24:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:24:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000007,0,'LBR')
;

-- Jan 27, 2014 1:24:19 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- Jan 27, 2014 1:24:23 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-27 13:24:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000106
;

-- Jan 27, 2014 1:24:47 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000107,'N','N','N',0,'N',22,'N','N','N','Y','7c690156-ce47-414e-a96f-472a98697106','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-01-27 13:24:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:24:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000007,0,'LBR')
;

-- Jan 27, 2014 1:24:52 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxName', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-27 13:24:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000107
;

-- Jan 27, 2014 1:24:52 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jan 27, 2014 1:24:52 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT CreatedBy_LBRTaxName FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 1:24:56 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-27 13:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000107
;

-- Jan 27, 2014 1:25:40 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000108,'N','N','N',0,'N',255,'Y','N','N','Y','5067e41f-1427-47c7-aa4a-e569aa1595d8','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-01-27 13:25:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:25:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000007,0,'LBR')
;

-- Jan 27, 2014 1:25:45 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jan 27, 2014 1:30:40 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_HasWithHold',1000033,'Has WithHold','Indicates if the Tax has WithHold','Has WithHold','90db34aa-f1b7-4b11-b9af-fc1ff7a898b5',TO_TIMESTAMP('2014-01-27 13:30:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:30:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:32:31 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000109,'Y','N','N',0,'N',1,'N','N','N','Y','9db7af1a-e6b9-4b02-8579-db1973270f3b','Y','LBR_HasWithHold','Indicates if the Tax has WithHold','''N''','Has WithHold','Y',TO_TIMESTAMP('2014-01-27 13:32:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:32:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000033,20,1000007,0,'LBR')
;

-- Jan 27, 2014 1:32:37 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_HasWithHold CHAR(1) DEFAULT 'N' CHECK (LBR_HasWithHold IN ('Y','N')) NOT NULL
;

-- Jan 27, 2014 1:33:13 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000110,'Y','N','N',0,'N',1,'N','N','N','Y','d86c8767-3175-4355-ac92-1b09400c2b3e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-01-27 13:33:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:33:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000007,0,'LBR')
;

-- Jan 27, 2014 1:33:17 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 27, 2014 1:34:40 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxName_ID',1000034,'Primary key table LBR_TaxName','Tax Name','Primary key table LBR_TaxName','Tax Name','50ab027e-45c1-4d94-862f-55094d329523',TO_TIMESTAMP('2014-01-27 13:34:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:34:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:35:32 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000111,'N','N','N',0,'N',22,'Y','Y','N','Y','47660a55-fe4b-4eed-9df8-8d9e4a4d9b47','N','LBR_TaxName_ID','Primary key table LBR_TaxName','Primary key table LBR_TaxName','Tax Name','N',TO_TIMESTAMP('2014-01-27 13:35:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:35:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000034,13,1000007,0,'LBR')
;

-- Jan 27, 2014 1:35:42 PM BRST
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-27 13:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000111
;

-- Jan 27, 2014 1:35:44 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_TaxName_ID NUMERIC(10) NOT NULL
;

-- Jan 27, 2014 1:35:44 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT LBR_TaxName_Key PRIMARY KEY (LBR_TaxName_ID)
;

-- Jan 27, 2014 1:36:05 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxName_UU',1000035,NULL,'LBR_TaxName_UU',NULL,'LBR_TaxName_UU','d8ebec57-503a-4ac9-b751-5795d0b8d842',TO_TIMESTAMP('2014-01-27 13:36:05','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:36:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:36:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000112,'N','N','N',0,'N',36,'Y','N','N','Y','f776b3b1-9532-4bd6-ad61-3e1d06acfb06','N','LBR_TaxName_UU','LBR_TaxName_UU','N',TO_TIMESTAMP('2014-01-27 13:36:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:36:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000035,10,1000007,0,'LBR')
;

-- Jan 27, 2014 1:36:30 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_TaxName_UU VARCHAR(36) DEFAULT NULL 
;

-- Jan 27, 2014 1:36:31 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT LBR_TaxName_UU_idx UNIQUE (LBR_TaxName_UU)
;

-- Jan 27, 2014 1:38:45 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxSubstitution_ID',1000036,'Tax Substitution','Defines the Tax Substitution','Tax Substitution','ea884b8e-b6ca-4a38-978d-482d06cf920d',TO_TIMESTAMP('2014-01-27 13:38:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:38:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:41:03 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000006,'LBR_TaxName','LBR','508b2366-5b61-46d2-b521-bfa267697248','N','T',0,0,TO_TIMESTAMP('2014-01-27 13:41:03','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-01-27 13:41:03','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 27, 2014 1:42:05 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','7fc4d27b-1ca5-4dd5-8a1c-d1cd0756ee4e',0,TO_TIMESTAMP('2014-01-27 13:42:05','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:42:05','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000108,1000111,1000006,1000007,'LBR')
;

-- Jan 27, 2014 1:43:19 PM BRST
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_TaxName.LBR_TaxType IN (''P'',''S'')',1000000,'LBR','LBR_TaxName (not Substitution)','S','5b3e958d-2030-4787-9338-21600946a1c8',0,0,TO_TIMESTAMP('2014-01-27 13:43:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:43:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Jan 27, 2014 1:44:00 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000113,'Y','N','N',0,'N',22,'N','N','N','Y','76da177b-88b3-4847-8321-5a9196050778','Y','LBR_TaxSubstitution_ID','Defines the Tax Substitution','Tax Substitution','Y',TO_TIMESTAMP('2014-01-27 13:44:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:44:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000036,18,1000006,1000007,1000000,0,'LBR')
;

-- Jan 27, 2014 1:44:05 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxSubstitution_LBRTaxName', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-27 13:44:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000113
;

-- Jan 27, 2014 1:44:05 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_TaxSubstitution_ID NUMERIC(10) DEFAULT NULL
;

-- Jan 27, 2014 1:44:05 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT LBRTaxSubstitution_LBRTaxName FOREIGN KEY (LBR_TaxSubstitution_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 1:45:35 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000114,'N','N','Y',0,'N',60,'Y','N','N','Y','27f6b116-3609-45d7-9752-cbb76afa4569','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-01-27 13:45:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:45:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000007,0,'LBR')
;

-- Jan 27, 2014 1:45:40 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-27 13:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000114
;

-- Jan 27, 2014 1:45:46 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- Jan 27, 2014 1:46:00 PM BRST
UPDATE AD_Ref_Table SET AD_Display=1000114,Updated=TO_TIMESTAMP('2014-01-27 13:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000006
;

-- Jan 27, 2014 1:48:46 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxType',1000037,'Tax Type','Defines the Tax Type','Tax Type','7f0f1569-19da-4c77-986c-c2aa73c78f1f',TO_TIMESTAMP('2014-01-27 13:48:46','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:48:46','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:49:58 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000007,'LBR_TaxType','LBR','d6d3a289-c697-46dc-87c0-1fbfc0a3eb8d','N','L',0,0,TO_TIMESTAMP('2014-01-27 13:49:58','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-01-27 13:49:58','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 27, 2014 1:50:16 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000017,1000007,'e7c59d0b-65ca-4738-b8a7-e7ceb7ce2b42','P',TO_TIMESTAMP('2014-01-27 13:50:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:50:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Product')
;

-- Jan 27, 2014 1:50:31 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000018,1000007,'7bd86064-502b-4f95-a82f-2d5cc3631593','S',TO_TIMESTAMP('2014-01-27 13:50:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:50:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Service')
;

-- Jan 27, 2014 1:50:56 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000019,1000007,'9f00c466-f966-40d6-ae76-0cee6ae2e24d','T',TO_TIMESTAMP('2014-01-27 13:50:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:50:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Substitution')
;

-- Jan 27, 2014 1:51:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000115,'Y','N','N',0,'N',1,'N','N','N','Y','0923b087-50f1-47de-aa2a-ceed5b72dd5e','Y','LBR_TaxType','Defines the Tax Type','''P''','Tax Type','Y',TO_TIMESTAMP('2014-01-27 13:51:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:51:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000037,17,1000007,1000007,0,'LBR')
;

-- Jan 27, 2014 1:51:34 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_TaxType CHAR(1) DEFAULT 'P' NOT NULL
;

-- Jan 27, 2014 1:52:59 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_WithHoldFrequency',1000038,'WithHold Frequency','Defines the WithHold Frequency','WithHold Frequency','e4368951-b3b1-4850-a57d-b2b04b4cb931',TO_TIMESTAMP('2014-01-27 13:52:59','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 13:52:59','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 1:54:02 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000008,'LBR_WithHoldFrequency','LBR','362ee3fa-209b-40f1-a7bb-652597574fbb','N','L',0,0,TO_TIMESTAMP('2014-01-27 13:54:02','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-01-27 13:54:02','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 27, 2014 1:54:23 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000020,1000008,'1d2fdcb5-9e2b-4cd8-a5b5-50b71cc8b405','M',TO_TIMESTAMP('2014-01-27 13:54:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 13:54:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Monthly')
;

-- Jan 27, 2014 1:54:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000116,'N','N','N',0,'N',1,'N','N','N','Y','9bca16e1-44ee-457f-bc89-bd061beb3ecc','Y','LBR_WithHoldFrequency','Defines the WithHold Frequency','''M''','WithHold Frequency','Y',TO_TIMESTAMP('2014-01-27 13:54:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:54:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000038,17,1000008,1000007,0,'LBR')
;

-- Jan 27, 2014 1:58:06 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN LBR_WithHoldFrequency CHAR(1) DEFAULT 'M' NOT NULL
;

-- Jan 27, 2014 1:59:06 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000117,'N','N','N',0,'N',7,'N','N','N','Y','e682e010-ad0e-4c55-9bc8-4edcc3f6dc02','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-01-27 13:59:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 13:59:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000007,0,'LBR')
;

-- Jan 27, 2014 1:59:09 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- Jan 27, 2014 2:00:00 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000118,'N','N','N',0,'N',22,'N','N','N','Y','0d8f2d1e-4320-48f8-af35-0a2367a074bc','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-01-27 14:00:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 14:00:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000007,0,'LBR')
;

-- Jan 27, 2014 2:00:04 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxName', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-27 14:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000118
;

-- Jan 27, 2014 2:00:04 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jan 27, 2014 2:00:04 PM BRST
ALTER TABLE LBR_TaxName ADD CONSTRAINT UpdatedBy_LBRTaxName FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 2:15:27 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('WithHoldThreshold',1000039,'WithHold Threshold','Defines the WithHold Threshold','WithHold Threshold','ef5d7a06-6b4d-4749-abd7-f6b5f4903412',TO_TIMESTAMP('2014-01-27 14:15:27','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 14:15:27','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 2:16:16 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000119,'Y','N','N',0,'N',10,'N','N','N','Y','9d83ff55-f144-4410-95b9-4578b056b4b9','Y','WithHoldThreshold','Defines the WithHold Threshold','WithHold Threshold','Y',TO_TIMESTAMP('2014-01-27 14:16:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-27 14:16:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000039,12,1000007,0,'LBR')
;

-- Jan 27, 2014 2:16:20 PM BRST
ALTER TABLE LBR_TaxName ADD COLUMN WithHoldThreshold NUMERIC NOT NULL
;

-- Jan 27, 2014 2:18:07 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Tax (Brazil)',1000007,'e5bf831a-fbb8-4cdd-a4bd-9a483d8b3056',TO_TIMESTAMP('2014-01-27 14:18:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 14:18:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 27, 2014 2:19:18 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','N',1000007,10,'N','N','N','N','N','Y','N',0,'ac90678c-07e1-44d2-9aa8-e11ca98160bd','LBR','Tax (Brazil)',1000007,0,TO_TIMESTAMP('2014-01-27 14:19:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000007,'B')
;

-- Jan 27, 2014 2:19:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,22,'N','N',10,'Y',1000076,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','06e6000b-02ac-4b24-9c17-764bda886ba8','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000104)
;

-- Jan 27, 2014 2:19:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,22,'N','N',20,'Y',1000077,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9308fd18-d51e-4ab6-952a-661456d1e758','N','Y','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000105)
;

-- Jan 27, 2014 2:19:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,60,'N','N',30,'Y',1000078,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','10915fab-c00e-47fa-b092-e8fc2b8eeff9','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000114)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000007,255,'N','N',40,'Y',1000079,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','a873e44a-119a-4651-b0c2-4b99a31322a3','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000108)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,1,'N','N',50,'Y',1000080,'N','LBR','Indicates if the Tax has WithHold','Has WithHold','192751f8-cac7-4d98-bed2-83386a9c9965','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000109)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,22,'N','N',60,'Y',1000081,'N','Primary key table LBR_TaxName','LBR','Primary key table LBR_TaxName','Tax Name','0bb56bda-b2d9-420a-bca5-1b8517c5720d','N','N',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000111)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,36,'N','N',70,'Y',1000082,'N','LBR','LBR_TaxName_UU','72d23568-f476-47b2-82be-cf15301d19d5','N','N',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000112)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,22,'N','N',80,'Y',1000083,'N','LBR','Defines the Tax Substitution','Tax Substitution','79bb1f72-3792-4a57-bceb-6ee30c3a5c03','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000113)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,1,'N','N',90,'Y',1000084,'N','LBR','Defines the Tax Type','Tax Type','2a31a7bd-d105-469b-b87f-e5a26d62b30e','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000115)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,1,'N','N',100,'Y',1000085,'N','LBR','Defines the WithHold Frequency','WithHold Frequency','5d0551ba-f9a9-4c1c-a762-b3ff40baf0e9','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000116)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,10,'N','N',110,'Y',1000086,'N','LBR','Defines the WithHold Threshold','WithHold Threshold','b4fadb82-72d8-4276-ac62-ce9a3a567f3b','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000119)
;

-- Jan 27, 2014 2:19:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000007,1,'N','N',120,'Y',1000087,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','b619feb9-87ad-4f8e-9f54-74d1bcff8194','N','Y',0,0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-27 14:19:34','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000110)
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000082
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000081
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000087
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000084
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000083
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000080
;

-- Jan 27, 2014 2:22:31 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000086
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000087
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000076
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000077
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000079
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000080
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000078
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000083
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000084
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000085
;

-- Jan 27, 2014 2:22:54 PM BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000086
;

-- Jan 27, 2014 2:24:28 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-27 14:24:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000077
;

-- Jan 27, 2014 2:25:23 PM BRST
UPDATE AD_Field SET NumLines=4,Updated=TO_TIMESTAMP('2014-01-27 14:25:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000079
;

-- Jan 27, 2014 2:26:38 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-01-27 14:26:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000084
;

-- Jan 27, 2014 2:27:38 PM BRST
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@LBR_TaxType@=''T''', XPosition=4,Updated=TO_TIMESTAMP('2014-01-27 14:27:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000083
;

-- Jan 27, 2014 2:28:19 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_TaxType@=''S''', XPosition=1,Updated=TO_TIMESTAMP('2014-01-27 14:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000080
;

-- Jan 27, 2014 2:28:37 PM BRST
UPDATE AD_Field SET XPosition=2,Updated=TO_TIMESTAMP('2014-01-27 14:28:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000080
;

-- Jan 27, 2014 2:29:22 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_TaxType@=''S'' & @HasWithHold@=''Y''',Updated=TO_TIMESTAMP('2014-01-27 14:29:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000086
;

-- Jan 27, 2014 2:29:53 PM BRST
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@LBR_TaxType@=''S'' & @HasWithHold@=''Y''', XPosition=4,Updated=TO_TIMESTAMP('2014-01-27 14:29:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000085
;

-- Jan 27, 2014 2:30:38 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-01-27 14:30:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000083
;

-- Jan 27, 2014 2:30:40 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-01-27 14:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000080
;

-- Jan 27, 2014 2:30:43 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-01-27 14:30:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000086
;

-- Jan 27, 2014 2:30:47 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-01-27 14:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000085
;

-- Jan 27, 2014 2:32:59 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000007,1000010,'N','Y','N','LBR','Y','Tax (Brazil)',NULL,'a196f440-2063-4cc1-9512-f9a3093e6e5b','W','Y',0,TO_TIMESTAMP('2014-01-27 14:32:59','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-27 14:32:59','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 27, 2014 2:32:59 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000010, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000010)
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 27, 2014 2:33:09 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 27, 2014 2:33:15 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 27, 2014 2:33:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jan 27, 2014 2:35:48 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_TaxType@=''S'' & @LBR_HasWithHold@=''Y''',Updated=TO_TIMESTAMP('2014-01-27 14:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000085
;

-- Jan 27, 2014 2:36:00 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_TaxType@=''S'' & @LBR_HasWithHold@=''Y''',Updated=TO_TIMESTAMP('2014-01-27 14:36:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000086
;

-- Jan 27, 2014 2:36:58 PM BRST
UPDATE AD_Tab SET IsSingleRow='Y',Updated=TO_TIMESTAMP('2014-01-27 14:36:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000007
;

-- Jan 27, 2014 3:26:10 PM BRST
UPDATE AD_Column SET VFormat='LLLLLLLLLLLLLLLLLLLL',Updated=TO_TIMESTAMP('2014-01-27 15:26:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000114
;

-- Jan 27, 2014 4:49:15 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000007,Updated=TO_TIMESTAMP('2014-01-27 16:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000007
;

SELECT lbr_register_migration_script('201401271503.sql') FROM dual
;

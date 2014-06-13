-- Jun 2, 2014 1:49:59 PM BRT
-- Sefaz Web Services
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','4',0,1000045,'N','N','Y','LBR','L','465b9a73-c288-416a-b3ee-d537bfdfbf7f','Y','Y','LBR_NFeWebService','Used to maintain NF-e Web Services (Sefaz)','NF-e Web Services','Y',0,0,TO_TIMESTAMP('2014-06-02 13:49:58','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-06-02 13:49:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 1:49:59 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000057,'Table LBR_NFeWebService','LBR_NFeWebService',1,'ecb073b8-a8cb-475d-b945-863749554f8b',0,TO_TIMESTAMP('2014-06-02 13:49:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-06-02 13:49:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 1:51:24 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NFeWebService_ID',1000256,'NF-e Web Service','Web Service used to communicate with Sefaz','NF-e Web Service','f0479807-4095-4ec7-afa3-51877957bde2',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-02 13:51:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-02 13:51:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 1:51:32 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NFeWebService_UU',1000257,'NF-e Web Service','Web Service used to communicate with Sefaz','NF-e Web Service','2daa698d-5f6c-40fd-9c5a-5a3a9258db7c',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-02 13:51:32','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-02 13:51:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 1:53:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000865,'N','N','N',0,'N',22,'N','N','N','Y','f67d2eb5-797d-46aa-a829-0fd5ac525f80','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-06-02 13:53:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 13:53:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000045,129,0,'LBR')
;

-- Jun 2, 2014 1:53:14 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNFeWebService', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-02 13:53:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000865
;

-- Jun 2, 2014 1:53:14 PM BRT
CREATE TABLE LBR_NFeWebService (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- Jun 2, 2014 1:53:15 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT ADClient_LBRNFeWebService FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 2, 2014 1:54:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000866,'N','N','N',0,'N',22,'N','N','N','Y','b9fde690-37db-4dbe-80b7-dbc84ad349a8','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-06-02 13:54:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 13:54:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000045,104,0,'LBR')
;

-- Jun 2, 2014 1:54:07 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNFeWebService', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-02 13:54:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000866
;

-- Jun 2, 2014 1:54:07 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Jun 2, 2014 1:54:07 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT ADOrg_LBRNFeWebService FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 2, 2014 1:55:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000867,'N','N','N',0,'N',7,'N','N','N','Y','b13d37be-11f4-44ca-b383-cb404b5717b5','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-06-02 13:55:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 13:55:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000045,0,'LBR')
;

-- Jun 2, 2014 1:55:18 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 2, 2014 2:00:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000868,'N','N','N',0,'N',22,'N','N','N','Y','28319461-abf7-49f6-8ad0-6e98c5262a9e','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-06-02 14:00:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:00:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000045,0,'LBR')
;

-- Jun 2, 2014 2:00:21 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNFeWebService', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-02 14:00:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000868
;

-- Jun 2, 2014 2:00:21 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 2, 2014 2:00:21 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT CreatedBy_LBRNFeWebService FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 2, 2014 2:00:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000869,'N','N','N',0,'N',7,'N','N','N','Y','5da5023d-661d-4350-97c6-b667c4a665a1','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-06-02 14:00:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:00:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000045,0,'LBR')
;

-- Jun 2, 2014 2:00:41 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 2, 2014 2:00:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000870,'N','N','N',0,'N',22,'N','N','N','Y','90c87ddb-c5f9-430d-953f-9c999c2076a2','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-06-02 14:00:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:00:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000045,0,'LBR')
;

-- Jun 2, 2014 2:00:56 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNFeWebService', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-02 14:00:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000870
;

-- Jun 2, 2014 2:00:56 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 2, 2014 2:00:56 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT UpdatedBy_LBRNFeWebService FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 2, 2014 2:01:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000871,'Y','N','N',0,'N',22,'N','Y','N','Y','9aae0070-64fe-4b45-9f57-90b24570807d','N','LBR_NFeWebService_ID','Web Service used to communicate with Sefaz','NF-e Web Service','N',TO_TIMESTAMP('2014-06-02 14:01:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:01:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000256,13,1000045,0,'LBR')
;

-- Jun 2, 2014 2:01:40 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_NFeWebService_ID NUMERIC(10) NOT NULL
;

-- Jun 2, 2014 2:01:40 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT LBR_NFeWebService_Key PRIMARY KEY (LBR_NFeWebService_ID)
;

-- Jun 2, 2014 2:02:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000872,'N','N','N',0,'N',36,'N','N','N','Y','55712402-37f0-4132-b661-29178e06cdc4','N','LBR_NFeWebService_UU','Web Service used to communicate with Sefaz','NF-e Web Service','N',TO_TIMESTAMP('2014-06-02 14:02:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:02:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000257,10,1000045,0,'LBR')
;

-- Jun 2, 2014 2:02:15 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_NFeWebService_UU VARCHAR(36) DEFAULT NULL 
;

-- Jun 2, 2014 2:02:15 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT LBR_NFeWebService_UU_idx UNIQUE (LBR_NFeWebService_UU)
;

-- Jun 2, 2014 2:02:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000873,'Y','N','N',0,'N',1,'N','N','N','Y','b4da702b-4690-491e-87ae-343d4748ad4c','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-06-02 14:02:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:02:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000045,0,'LBR')
;

-- Jun 2, 2014 2:02:40 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jun 2, 2014 2:03:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000874,'Y','N','Y',0,'N',60,'Y','N','N','Y','edfa0715-60bb-40c6-b731-6c59daf0846f','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-06-02 14:03:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:03:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000045,0,'LBR')
;

-- Jun 2, 2014 2:03:23 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- Jun 2, 2014 2:05:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000875,'N','N','N',0,'N',20,'N','N','N','Y','2a46b546-b990-4fdf-b7e6-cae8f75fc9e5','Y','VersionNo','Version Number','Version No','Y',TO_TIMESTAMP('2014-06-02 14:05:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:05:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1949,10,1000045,0,'LBR')
;

-- Jun 2, 2014 2:05:10 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN VersionNo VARCHAR(20) DEFAULT NULL 
;

-- Jun 2, 2014 2:06:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000876,'Y','N','N',0,'N',1,'N','N','N','Y','b5714621-6196-43fd-86ee-5d7dfeb9bf6d','Y','LBR_NFeEnv','Sefaz NF-e Environment','Y',TO_TIMESTAMP('2014-06-02 14:06:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:06:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000234,17,1000051,1000045,0,'LBR')
;

-- Jun 2, 2014 2:06:30 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_NFeEnv CHAR(1) NOT NULL
;

-- Jun 2, 2014 2:06:54 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000877,'N','N','N',0,'N',10,'N','N','N','Y','a9545406-d6de-4fb4-ab7f-a7f6e0e5e0c4','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_TIMESTAMP('2014-06-02 14:06:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:06:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000045,1000001,0,'LBR')
;

-- Jun 2, 2014 2:06:55 PM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNFeWebService', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-02 14:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000877
;

-- Jun 2, 2014 2:06:55 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- Jun 2, 2014 2:06:55 PM BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT CRegion_LBRNFeWebService FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 2, 2014 2:07:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000878,'Y','N','N',0,'N',255,'N','N','N','Y','bb729b0c-73c1-446b-8a6b-84b7c4350fb4','Y','URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org','URL','Y',TO_TIMESTAMP('2014-06-02 14:07:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-06-02 14:07:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',983,40,1000045,0,'LBR')
;

-- Jun 2, 2014 2:07:39 PM BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN URL VARCHAR(255) NOT NULL
;

-- Jun 2, 2014 2:08:41 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','Y','N','N',0,0,'LBR','NF-e Web Service','Maintain NF-e Web Services',1000016,'00499137-71c5-4baa-879c-829117782f55',TO_TIMESTAMP('2014-06-02 14:08:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:08:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:52 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','N',1000016,10,'N','N','N','N','N','Y','N',0,'36526fe6-20de-4913-83e4-a81a44d6eaf3','LBR','Web Service','Maintain NF-e Web Services',1000087,0,0,TO_TIMESTAMP('2014-06-02 14:11:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000045,'B',TO_TIMESTAMP('2014-06-02 14:11:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,22,'N','N',10,'Y',1001633,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','55232661-adf0-4f49-b545-19529b3a69a9','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000865,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,22,'N','N',20,'Y',1001634,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9909f3fc-7e19-437c-be77-3f4b87be3d62','N','Y','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000866,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,60,'N','N',30,'Y',1001635,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','1c41ebfa-b4f6-48f8-8b25-a4d25c115892','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,0,5,1000874,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,22,'N','N','Y',1001636,'N','LBR','Web Service used to communicate with Sefaz','NF-e Web Service','c5607035-4777-4a3c-81fd-a2c75497d19a','N','N',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000871,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,36,'N','N',40,'Y',1001637,'N','LBR','Web Service used to communicate with Sefaz','NF-e Web Service','cc968c35-2b9a-4fc3-9802-5afb9e981202','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,1000872,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,20,'N','N',50,'Y',1001638,'N','LBR','Version Number','Version No','9200db1d-d971-4e4a-960f-b8cd11aafb14','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1000875,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,1,'N','N',60,'Y',1001639,'N','LBR','Sefaz NF-e Environment','96822bf4-83a8-4fb4-8281-f27076c84d54','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1000876,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,10,'N','N',70,'Y',1001640,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','8acd1373-4a17-4475-936a-c570232c843d','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1000877,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,255,'N','N',80,'Y',1001641,'N','The URL defines an fully qualified web address like http://www.idempiere.org','LBR','Full URL address - e.g. http://www.idempiere.org','URL','00bccb28-2501-47e4-8ef5-d1d53edc5d9d','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,5,1000878,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:11:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000087,1,'N','N',90,'Y',1001642,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','2e4b9ae2-87dd-4c16-a92a-95de3815b68a','N','Y',0,0,0,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,2,0,2,1000873,TO_TIMESTAMP('2014-06-02 14:11:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:12:36 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001637
;

-- Jun 2, 2014 2:12:36 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001642
;

-- Jun 2, 2014 2:12:36 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001635
;

-- Jun 2, 2014 2:13:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-02 14:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001634
;

-- Jun 2, 2014 2:14:29 PM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-06-02 14:14:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001635
;

-- Jun 2, 2014 2:14:38 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-06-02 14:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001638
;

-- Jun 2, 2014 2:15:03 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-06-02 14:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001640
;

-- Jun 2, 2014 2:19:04 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000016,1000019,'N','N','N','LBR','Y','NF-e Web Service','Maintain NF-e Web Services','13f2b079-da70-4021-b2f7-d3145a5e34fa','W','Y',0,TO_TIMESTAMP('2014-06-02 14:19:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-06-02 14:19:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 2:19:04 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000019, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000019)
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jun 2, 2014 2:19:20 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jun 2, 2014 2:19:31 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- Jun 2, 2014 2:19:54 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000016,Updated=TO_TIMESTAMP('2014-06-02 14:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000045
;

-- Jun 2, 2014 2:29:00 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:29:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:29:00','YYYY-MM-DD HH24:MI:SS'),1000000,0,'d4257369-7e64-45cb-81df-aade5c8cff5a','Y','NfeInutilizacao','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx')
;

-- Jun 2, 2014 2:29:48 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:29:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:29:48','YYYY-MM-DD HH24:MI:SS'),1000001,0,'2405fba3-876d-42a3-8cce-b708cbef3166','Y','NfeConsultaProtocolo','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/nfeconsulta2.asmx')
;

-- Jun 2, 2014 2:30:39 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:30:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:30:39','YYYY-MM-DD HH24:MI:SS'),1000002,0,'395f6da8-846e-40ad-80ff-c101f62deda7','Y','NfeStatusServico','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/nfestatusservico2.asmx')
;

-- Jun 2, 2014 2:31:10 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:31:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:31:10','YYYY-MM-DD HH24:MI:SS'),1000003,0,'2f7038dc-9edc-4ec4-89b4-781f948ebef3','Y','NfeConsultaCadastro','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/cadconsultacadastro2.asmx')
;

-- Jun 2, 2014 2:31:46 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:31:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:31:46','YYYY-MM-DD HH24:MI:SS'),1000004,0,'dd851970-7f4e-4b08-8720-b69a9de2ad8b','Y','RecepcaoEvento','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/recepcaoevento.asmx')
;

-- Jun 2, 2014 2:32:19 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:32:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:32:19','YYYY-MM-DD HH24:MI:SS'),1000005,0,'52418ac0-14c3-403b-829a-b6875cf62f17','Y','NFeAutorizacao','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/nfeautorizacao.asmx')
;

-- Jun 2, 2014 2:32:53 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:32:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:32:53','YYYY-MM-DD HH24:MI:SS'),1000006,0,'330b596b-8488-4842-a2a0-aec52b4b570e','Y','NFeRetAutorizacao','3.10','1',465,'https://nfe.fazenda.sp.gov.br/ws/nferetautorizacao.asmx')
;

-- Jun 2, 2014 2:36:55 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:36:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:36:55','YYYY-MM-DD HH24:MI:SS'),1000007,0,'2c96c958-22ee-4634-a993-4b1499e57f3e','Y','NFeAutorizacao','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeautorizacao.asmx')
;

-- Jun 2, 2014 2:37:52 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:37:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:37:52','YYYY-MM-DD HH24:MI:SS'),1000008,0,'ea644cba-9fbe-4f34-9155-3ff3e45eef19','Y','NFeRetAutorizacao','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nferetautorizacao.asmx')
;

-- Jun 2, 2014 2:38:55 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:38:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:38:55','YYYY-MM-DD HH24:MI:SS'),1000009,0,'4fa454c2-6713-40c5-a236-c2a62125ae73','Y','NfeInutilizacao','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx')
;

-- Jun 2, 2014 2:39:50 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:39:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:39:49','YYYY-MM-DD HH24:MI:SS'),1000010,0,'f4420c2e-0f45-4a16-8798-e20e44d66468','Y','NfeConsultaProtocolo','3.10','1',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeconsulta2.asmx')
;

-- Jun 2, 2014 2:40:25 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:40:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:40:25','YYYY-MM-DD HH24:MI:SS'),1000011,0,'8183b9d2-0519-4d2e-82ac-177af8abf368','Y','RecepcaoEvento','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/recepcaoevento.asmx')
;

-- Jun 2, 2014 2:41:02 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:41:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:41:02','YYYY-MM-DD HH24:MI:SS'),1000012,0,'8531ade2-e645-4855-a513-5f7816d02de4','Y','NfeConsultaCadastro','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/cadconsultacadastro2.asmx')
;

-- Jun 2, 2014 2:41:22 PM BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,LBR_NFeWebService_ID,UpdatedBy,LBR_NFeWebService_UU,IsActive,Name,VersionNo,LBR_NFeEnv,C_Region_ID,URL) VALUES (0,0,TO_TIMESTAMP('2014-06-02 14:41:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-06-02 14:41:22','YYYY-MM-DD HH24:MI:SS'),1000013,0,'132ef2cb-9d78-445a-a394-0c7e617fca0a','Y','NfeStatusServico','3.10','2',465,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfestatusservico2.asmx')
;

-- Jun 2, 2014 2:41:52 PM BRT
UPDATE LBR_NFeWebService SET LBR_NFeEnv='2',Updated=TO_TIMESTAMP('2014-06-02 14:41:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_NFeWebService_ID=1000010
;

-- Jun 2, 2014 3:45:34 PM BRT
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000001,'N','N','3d7c5976-5ad0-4d8f-a6b2-44f88d5cc7a8','4','N','N',0,0,'Y','LBR','Generate Certificates for NF-e Web Services',0,0,'Y',0,'org.idempierelbr.nfe.process.ProcGenerateNFeWebServiceCert','LBR_ProcGenerateNFeWebServiceCert',0,TO_TIMESTAMP('2014-06-02 15:45:34','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-02 15:45:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 3:49:52 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000234,1000000,'0ee2151c-23f8-4b31-83fe-4693c0e5155f',1000001,17,'Y','Sefaz NF-e Environment','LBR_NFeEnv',1,'Y',20,'1','Y',0,TO_TIMESTAMP('2014-06-02 15:49:52','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,1000051,'LBR',TO_TIMESTAMP('2014-06-02 15:49:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 3:57:49 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000020,'N','N','N',1000001,'LBR','Y','Generate NF-e Web Service Certificate','8a88f71c-460b-4478-81f0-ada1da7b7e90','P','Y',0,TO_TIMESTAMP('2014-06-02 15:57:49','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-06-02 15:57:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 2, 2014 3:57:49 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000020, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000020)
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jun 2, 2014 3:57:53 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- Jun 3, 2014 4:35:38 PM BRT
UPDATE AD_Process SET Help='Based on entries in Window NF-e Web Services, a keystore is generated. You should be online so that the system can connect to the webservices.', Description='Generate Certificates for NF-e Web Services',Updated=TO_TIMESTAMP('2014-06-03 16:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000001
;

-- Jun 3, 2014 4:35:38 PM BRT
UPDATE AD_Menu SET Name='Generate Certificates for NF-e Web Services', Description='Generate Certificates for NF-e Web Services', IsActive='Y',Updated=TO_TIMESTAMP('2014-06-03 16:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000020
;

-- Jun 6, 2014 9:59:58 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotQueriedOn',1000258,NULL,'NF-e Lot Queried On','The date+time (expressed in decimal format) when the NF-e Lot has been queried','NF-e Lot Queried On','4ac0c0b5-2fb2-462b-aec4-bbbbacda93c8',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 09:59:58','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 09:59:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:01:15 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotSentOn',1000259,'NF-e Lot Sent On','The date+time (expressed in decimal format) when the NF-e Lot has been sent','NF-e Lot Sent On','4949c13e-2139-41ea-8016-c4af0e47e1ac',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:01:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:01:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:03:17 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalLot_ID',1000260,'NF-e Lot','Identifies a NF-e Lot','NF-e Lot','6dd47221-6a6a-4743-9a62-0caa873a8495',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:03:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:03:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:03:35 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalLot_UU',1000261,'NF-e Lot','Identifies a NF-e Lot','NF-e Lot','5c3d28c0-df88-45ea-9c37-b1787117f191',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:03:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:03:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:04:57 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ProcessingType',1000262,'Processing Type','Processing Type','a2bc0f3a-66f4-4629-a259-2bf792f58c17',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:04:57','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:04:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:06:24 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ProcSendNFeLot',1000263,'Send NF-e Lot','Process to send NF-e Lot to Sefaz','Send NF-e Lot','4593f19d-45be-481b-a167-3d881479ec45',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:06:24','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:06:24','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:07:26 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ProcQueryNFeLot',1000264,'Query NF-e Lot','Process to query NF-e Lot to Sefaz','Query NF-e Lot','72507861-2141-4bc8-adc0-f9b57b206fd4',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:07:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:07:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:10:52 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotSent',1000265,'NF-e Lot Sent','Indicate if the NF-e Lot was sent correctly to Sefaz','NF-e Lot Sent','6c1e7044-5266-4fc4-bab8-b44b0e5aa7a5',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:10:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:10:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:11:21 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotQueried',1000266,'NF-e Lot Queried','Indicate if the NF-e Lot was queried correctly to Sefaz','NF-e Lot Queried','a122a31b-f488-4018-84c9-2fb123023680',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:11:21','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:11:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:12:43 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotSendingStatus',1000267,'NF-e Lot Sending Status','Indicates the status of the sending process to Sefaz','NF-e Lot Sending Status','743ada89-4bfd-4b34-92cf-40ea30e57185',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:12:43','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:12:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:13:13 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotQueryStatus',1000268,'NF-e Lot Query Status','Indicates the status of the query process to Sefaz','NF-e Lot Query Status','c0b97cde-e70a-4417-a951-3b7720a69959',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:13:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:13:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:14:29 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotSendingRec',1000269,'NF-e Lot Sending Receipt','Indicates the receipt of the sending process to Sefaz','NF-e Lot Sending Receipt','054075b6-5753-4f10-bc1e-635711b476e6',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:14:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:14:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:15:07 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LotSendingProt',1000270,'NF-e Lot Sending Protocol','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','e621e68c-2e17-4888-afc7-b71a800aba2c',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 10:15:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:15:07','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:16:55 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created,Updated) VALUES ('N','N','N','1',0,1000046,'N','N','Y','LBR','L','db9fcccc-76ce-4f0f-96a7-0e5ed099e34e','Y','Y','LBR_NotaFiscalLot','Nota Fiscal Lot Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Lot','Y',0,0,0,0,'N','N',TO_TIMESTAMP('2014-06-06 10:16:54','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:16:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:16:55 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created,Updated) VALUES ('N',200000,'Y',1000000,'N','Y',1000059,'Table LBR_NotaFiscalLot','LBR_NotaFiscalLot',1,'74589be0-aef6-4cb8-98dc-6907cee37d62',0,0,'Y',1000000,0,0,TO_TIMESTAMP('2014-06-06 10:16:55','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:16:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:17:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000879,'Y','N','N',0,'N',22,'N','N','N','Y','1c884d20-0ce0-429b-9f88-3d969980673c','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:17:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000046,129,0,'LBR',TO_TIMESTAMP('2014-06-06 10:17:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:17:26 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 10:17:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000879
;

-- Jun 6, 2014 10:17:26 AM BRT
CREATE TABLE LBR_NotaFiscalLot (AD_Client_ID NUMERIC(10) NOT NULL)
;

-- Jun 6, 2014 10:17:28 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT ADClient_LBRNotaFiscalLot FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 10:17:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000880,'Y','N','N',0,'N',22,'N','N','N','Y','97445b54-32f7-4ed2-81db-0dacfbfa3af9','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000046,104,0,'LBR',TO_TIMESTAMP('2014-06-06 10:17:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:17:55 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 10:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000880
;

-- Jun 6, 2014 10:17:55 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- Jun 6, 2014 10:17:55 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT ADOrg_LBRNotaFiscalLot FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 10:18:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000881,'N','N','N',0,'N',7,'N','N','N','Y','f0a14b32-a04f-4e38-b888-e18c97db7ac3','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:18:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:18:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:18:20 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 6, 2014 10:18:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000882,'N','N','N',0,'N',22,'N','N','N','Y','914fe1c1-1602-4d89-a635-2d24635435a4','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:18:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:18:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:18:34 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 10:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000882
;

-- Jun 6, 2014 10:18:34 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 10:18:34 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT CreatedBy_LBRNotaFiscalLot FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 10:18:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000883,'N','N','N',0,'N',7,'N','N','N','Y','96fbc899-3a5a-47d1-afbd-ad1ecbcd76c6','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:18:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:18:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:18:51 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 6, 2014 10:19:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000884,'N','N','N',0,'N',22,'N','N','N','Y','7f25114c-a4a7-4253-9859-bb31a5522094','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:19:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:19:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:19:05 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalLot', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 10:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000884
;

-- Jun 6, 2014 10:19:05 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 10:19:05 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT UpdatedBy_LBRNotaFiscalLot FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 10:19:27 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000885,'Y','N','N',0,'N',1,'N','N','N','Y','809e45d4-69b5-4e23-ad99-dc6d09f8bd3c','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:19:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:19:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:19:31 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jun 6, 2014 10:19:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000886,'N','N','N',0,'N',22,'N','Y','N','Y','e611237a-3426-489f-978a-1f4d9546e177','N','LBR_NotaFiscalLot_ID','Identifies a NF-e Lot','NF-e Lot','N',0,'Y',TO_TIMESTAMP('2014-06-06 10:19:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000260,13,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:19:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:20:00 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_NotaFiscalLot_ID NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 10:20:00 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT LBR_NotaFiscalLot_Key PRIMARY KEY (LBR_NotaFiscalLot_ID)
;

-- Jun 6, 2014 10:20:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000887,'N','N','N',0,'N',36,'N','N','N','Y','aba9e2cb-a7c9-4633-b1eb-695c26781ab4','N','LBR_NotaFiscal_UU','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:20:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000170,10,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:20:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:20:20 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_NotaFiscal_UU VARCHAR(36) DEFAULT NULL 
;

-- Jun 6, 2014 10:20:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000888,'Y','N','N',0,'N',30,'Y','N','N','Y','8d66ca76-768c-42af-8728-b6a67a2868cf','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:20:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:20:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:20:59 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN DocumentNo VARCHAR(30) NOT NULL
;

-- Jun 6, 2014 10:21:31 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000889,'N','N','N',0,'N',255,'Y','N','N','Y','206b4699-e386-4eeb-8f10-d5dd463a91fe','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:21:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:21:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:21:33 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 10:22:39 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,IsActive,Created,UpdatedBy,AD_Client_ID,Updated) VALUES (1000057,'LBR_NFeLotProcessingType','LBR','72426844-e17e-4e30-b41a-b3c4d9c724ac','N','L',0,0,'Y',TO_TIMESTAMP('2014-06-06 10:22:39','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2014-06-06 10:22:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:23:10 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (1000198,1000057,'3faee956-f333-4aa7-9811-15216308ed8d','S',TO_TIMESTAMP('2014-06-06 10:23:10','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Synchronous',TO_TIMESTAMP('2014-06-06 10:23:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:23:23 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (1000199,1000057,'1c6a34fb-69c5-4940-b541-854f03fb4b71','A',TO_TIMESTAMP('2014-06-06 10:23:23','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Asynchronous',TO_TIMESTAMP('2014-06-06 10:23:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:23:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000890,'Y','N','N',0,'N',1,'N','N','N','Y','6c5d8fed-7fea-4c56-b975-ac4dc3fd1e47','Y','LBR_ProcessingType','Processing Type','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:23:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000262,17,1000057,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:23:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:23:44 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_ProcessingType CHAR(1) NOT NULL
;

-- Jun 6, 2014 10:23:57 AM BRT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-06-06 10:23:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000890
;

-- Jun 6, 2014 10:26:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000891,'N','N','N',0,'N',1,'N','N','N','Y','501b9346-7ccb-4547-9643-dd95951b7a19','Y','LBR_ProcSendNFeLot','Process to send NF-e Lot to Sefaz','Send NF-e Lot','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:26:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',1000263,28,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:26:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:26:12 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_ProcSendNFeLot CHAR(1) DEFAULT NULL 
;

-- Jun 6, 2014 10:27:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000892,'Y','N','N',0,'N',1,'N','N','N','Y','1ad02ccd-3b05-436a-84dc-c3e7b1306748','Y','LBR_LotSent','Indicate if the NF-e Lot was sent correctly to Sefaz','NF-e Lot Sent','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:27:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000265,20,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:27:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:27:16 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotSent CHAR(1) CHECK (LBR_LotSent IN ('Y','N')) NOT NULL
;

-- Jun 6, 2014 10:29:13 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000893,'N','N','N',0,'N',3,'N','N','N','Y','8a0a4086-5386-4339-818e-10102f1f93ad','Y','LBR_LotSendingStatus','Indicates the status of the sending process to Sefaz','NF-e Lot Sending Status','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:29:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000267,17,1000039,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:29:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:29:16 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotSendingStatus VARCHAR(3) DEFAULT NULL 
;

-- Jun 6, 2014 10:30:44 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000894,'N','N','N',0,'N',255,'N','N','N','Y','80e6b3ed-5b28-44d4-af61-b82615caf607','Y','LBR_LotSendingRec','Indicates the receipt of the sending process to Sefaz','NF-e Lot Sending Receipt','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:30:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000269,10,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:30:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:31:14 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotSendingRec VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 10:31:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000895,'N','N','N',0,'N',255,'N','N','N','Y','e6a3f933-a006-4049-9fef-43a40596177f','Y','LBR_LotSendingProt','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:31:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000270,10,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:31:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:31:51 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotSendingProt VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 10:33:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000896,'N','N','N',0,'N',7,'N','N','N','Y','a6ba319b-6d12-4e6d-b175-8f10fd40cf7e','Y','LBR_LotSentOn','The date+time (expressed in decimal format) when the NF-e Lot has been sent','NF-e Lot Sent On','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:33:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000259,16,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:33:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:33:06 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotSentOn TIMESTAMP DEFAULT NULL 
;

-- Jun 6, 2014 10:33:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000897,'N','N','N',0,'N',1,'N','N','N','Y','ec4f9a1c-a8e5-4209-98e8-29ad3890eaa8','Y','LBR_ProcQueryNFeLot','Process to query NF-e Lot to Sefaz','Query NF-e Lot','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:33:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',1000264,28,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:33:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:33:55 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_ProcQueryNFeLot CHAR(1) DEFAULT NULL 
;

-- Jun 6, 2014 10:34:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000898,'Y','N','N',0,'N',1,'N','N','N','Y','6e5e4d64-c4a9-4930-95e8-5c3e24c62b04','Y','LBR_LotQueried','Indicate if the NF-e Lot was queried correctly to Sefaz','NF-e Lot Queried','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:34:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000266,20,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:34:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:34:37 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotQueried CHAR(1) CHECK (LBR_LotQueried IN ('Y','N')) NOT NULL
;

-- Jun 6, 2014 10:35:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000899,'N','N','N',0,'N',3,'N','N','N','Y','6509d5a6-cd10-4d8e-8a1b-963eb6800ca5','Y','LBR_LotQueryStatus','Indicates the status of the query process to Sefaz','NF-e Lot Query Status','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:35:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000268,17,1000039,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:35:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:35:21 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotQueryStatus VARCHAR(3) DEFAULT NULL 
;

-- Jun 6, 2014 10:35:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000900,'N','N','N',0,'N',7,'N','N','N','Y','e5a6f55a-0a98-4143-b77f-717eb68fec94','Y','LBR_LotQueriedOn','The date+time (expressed in decimal format) when the NF-e Lot has been queried','NF-e Lot Queried On','Y',0,'Y',TO_TIMESTAMP('2014-06-06 10:35:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000258,16,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 10:35:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:35:56 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN LBR_LotQueriedOn TIMESTAMP DEFAULT NULL 
;

-- Jun 6, 2014 10:40:52 AM BRT
INSERT INTO AD_Window (Processing,WindowType,Help,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created,Updated) VALUES ('N','T','The Brazilian Fiscal Invoice Lot Window allows you to display and enter lots and send them to Sefaz.','Y','N','N',0,0,'LBR','Brazilian Fiscal Invoice Lot','Customer & Vendor Brazilian Fiscal Invoice Lot Entry',1000017,'40437224-28a7-420a-b87b-af90f540e211',0,'Y',0,0,0,TO_TIMESTAMP('2014-06-06 10:40:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:40:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:41:53 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created,Updated) VALUES ('N','N','Y',1000017,10,'N','N','N','N','N','Y','N',0,'59cb9b08-b06c-4c5c-ab2f-19b32a41b237','LBR','NF-e Lot','NF-e Lot Entries',1000088,0,0,0,'Y',0,1000046,'B',TO_TIMESTAMP('2014-06-06 10:41:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:41:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:41:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,22,'N','N',10,'Y',1001643,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','75242f21-b4fb-418b-b420-cc847e06b65b','N','Y',0,0,0,'Y','N',0,2,1000879,TO_TIMESTAMP('2014-06-06 10:41:59','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:41:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,22,'N','N',20,'Y',1001644,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','18e7f359-26fb-4330-8630-90f3629247d6','N','Y','Y',0,0,0,'Y','Y',10,4,0,2,1000880,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,255,'N','N',30,'Y',1001645,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','e356b866-1800-4e92-bdad-a9cfe740a28f','N','Y',0,0,0,'Y','Y',20,0,5,1000889,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,22,'N','N','Y',1001646,'N','LBR','Identifies a NF-e Lot','NF-e Lot','2b75dc3e-7765-4e04-9c31-d94cd847415c','N','N',0,0,0,'Y','N',0,2,1000886,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,36,'N','N',40,'Y',1001647,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','8290254a-3163-474b-9698-bc1deb319d8a','N','Y',0,0,0,'Y','Y',30,0,2,1000887,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,30,'N','N',50,'Y',1001648,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','4b185852-cb86-4770-911d-48766d4756f9','N','Y',0,0,0,'Y','Y',40,0,2,1000888,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',60,'Y',1001649,'N','LBR','Processing Type','5ff3f3d3-1dd3-4655-b5f4-7dd28e633519','N','Y',0,0,0,'Y','Y',50,0,2,1000890,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',70,'Y',1001650,'N','LBR','Process to send NF-e Lot to Sefaz','Send NF-e Lot','5d7021f4-cab8-4467-88cc-feebff2b7c4c','N','Y',0,0,0,'Y','Y',60,2,0,2,1000891,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',80,'Y',1001651,'N','LBR','Indicate if the NF-e Lot was sent correctly to Sefaz','NF-e Lot Sent','ebcd7cdd-0370-4902-8812-f1561936b9ec','N','Y',0,0,0,'Y','Y',70,2,0,2,1000892,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,3,'N','N',90,'Y',1001652,'N','LBR','Indicates the status of the sending process to Sefaz','NF-e Lot Sending Status','94240e79-0ed3-4edd-a62c-653624081201','N','Y',0,0,0,'Y','Y',80,0,2,1000893,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,255,'N','N',100,'Y',1001653,'N','LBR','Indicates the receipt of the sending process to Sefaz','NF-e Lot Sending Receipt','751b6ad1-5b4f-46bd-b82c-ee68a7a0c60f','N','Y',0,0,0,'Y','Y',90,0,5,1000894,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,255,'N','N',110,'Y',1001654,'N','LBR','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','193c727d-2550-4706-a284-a9680c95ca0f','N','Y',0,0,0,'Y','Y',100,0,5,1000895,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,7,'N','N',120,'Y',1001655,'N','LBR','The date+time (expressed in decimal format) when the NF-e Lot has been sent','NF-e Lot Sent On','a1f24931-ee67-43f5-8599-766ba47afcfe','N','Y',0,0,0,'Y','Y',110,0,2,1000896,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',130,'Y',1001656,'N','LBR','Process to query NF-e Lot to Sefaz','Query NF-e Lot','c6121bd2-4e18-4714-86d5-0a34e63c4942','N','Y',0,0,0,'Y','Y',120,2,0,2,1000897,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',140,'Y',1001657,'N','LBR','Indicate if the NF-e Lot was queried correctly to Sefaz','NF-e Lot Queried','60c97410-8b61-4e46-8cb8-5c86be2310e4','N','Y',0,0,0,'Y','Y',130,2,0,2,1000898,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,3,'N','N',150,'Y',1001658,'N','LBR','Indicates the status of the query process to Sefaz','NF-e Lot Query Status','f2cbbe80-cb7b-45ea-ad70-9fb2389b2d18','N','Y',0,0,0,'Y','Y',140,0,2,1000899,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,7,'N','N',160,'Y',1001659,'N','LBR','The date+time (expressed in decimal format) when the NF-e Lot has been queried','NF-e Lot Queried On','c9cf9307-cda2-4474-8298-96545b3f8f13','N','Y',0,0,0,'Y','Y',150,0,2,1000900,TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:42:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000088,1,'N','N',170,'Y',1001660,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','6fbe90f4-be7f-4c6a-a6a2-b789cd09a9df','N','Y',0,0,0,'Y','Y',160,2,0,2,1000885,TO_TIMESTAMP('2014-06-06 10:42:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:42:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:43:02 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001647
;

-- Jun 6, 2014 10:43:02 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001648
;

-- Jun 6, 2014 10:43:02 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001645
;

-- Jun 6, 2014 10:43:02 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001649
;

-- Jun 6, 2014 10:43:02 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001660
;

-- Jun 6, 2014 10:44:27 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-06 10:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001644
;

-- Jun 6, 2014 10:44:47 AM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-06-06 10:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001645
;

-- Jun 6, 2014 10:45:04 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_TIMESTAMP('2014-06-06 10:45:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001660
;

-- Jun 6, 2014 10:48:10 AM BRT
UPDATE AD_FieldGroup SET Name='Tax (LBR)',Updated=TO_TIMESTAMP('2014-06-06 10:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=1000002
;

-- Jun 6, 2014 10:48:21 AM BRT
UPDATE AD_FieldGroup SET Name='Validation (LBR)',Updated=TO_TIMESTAMP('2014-06-06 10:48:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=1000001
;

-- Jun 6, 2014 10:49:15 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created,Updated) VALUES ('C','LBR','N','Lot Sending (LBR)','f4098c41-4567-4ec3-a4e6-22b36df06c66',1000016,0,0,0,'Y',0,TO_TIMESTAMP('2014-06-06 10:49:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:49:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:49:39 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created,Updated) VALUES ('C','LBR','N','Lot Receipt (LBR)','a6ebe2aa-07df-4d7b-8f4a-a3b2e8f9c8c2',1000017,0,0,0,'Y',0,TO_TIMESTAMP('2014-06-06 10:49:39','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:49:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:50:13 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001650
;

-- Jun 6, 2014 10:50:30 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001651
;

-- Jun 6, 2014 10:50:45 AM BRT
UPDATE AD_Field SET ColumnSpan=5,Updated=TO_TIMESTAMP('2014-06-06 10:50:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001652
;

-- Jun 6, 2014 10:51:04 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001652
;

-- Jun 6, 2014 10:51:08 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:51:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001653
;

-- Jun 6, 2014 10:51:18 AM BRT
UPDATE AD_Field SET ColumnSpan=2, AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001654
;

-- Jun 6, 2014 10:51:23 AM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-06-06 10:51:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001653
;

-- Jun 6, 2014 10:51:48 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000016,Updated=TO_TIMESTAMP('2014-06-06 10:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001655
;

-- Jun 6, 2014 10:52:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000017,Updated=TO_TIMESTAMP('2014-06-06 10:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001656
;

-- Jun 6, 2014 10:52:14 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=1000017,Updated=TO_TIMESTAMP('2014-06-06 10:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001657
;

-- Jun 6, 2014 10:52:30 AM BRT
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=1000017,Updated=TO_TIMESTAMP('2014-06-06 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001658
;

-- Jun 6, 2014 10:53:03 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000017,Updated=TO_TIMESTAMP('2014-06-06 10:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001659
;

-- Jun 6, 2014 10:54:43 AM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created,Updated) VALUES (1000017,1000021,'N','Y','N','LBR','Y','Brazilian Fiscal Invoice Lot','Customer & Vendor Brazilian Fiscal Invoice Lot','5ea4283e-0289-43d7-ae11-d6321c14585c','W','Y',0,0,0,0,TO_TIMESTAMP('2014-06-06 10:54:42','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 10:54:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 10:54:43 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000021, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000021)
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Jun 6, 2014 10:54:50 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Jun 6, 2014 11:01:24 AM BRT
UPDATE AD_Column SET IsToolbarButton='N',Updated=TO_TIMESTAMP('2014-06-06 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000897
;

-- Jun 6, 2014 11:01:30 AM BRT
UPDATE AD_Column SET IsToolbarButton='N',Updated=TO_TIMESTAMP('2014-06-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000891
;

-- Jun 6, 2014 11:03:11 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001651
;

-- Jun 6, 2014 11:03:15 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001652
;

-- Jun 6, 2014 11:03:18 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001653
;

-- Jun 6, 2014 11:03:21 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001654
;

-- Jun 6, 2014 11:03:25 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001655
;

-- Jun 6, 2014 11:03:30 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001657
;

-- Jun 6, 2014 11:03:33 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001658
;

-- Jun 6, 2014 11:03:36 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 11:03:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001659
;

-- Jun 6, 2014 11:06:27 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ProcessingType@=A',Updated=TO_TIMESTAMP('2014-06-06 11:06:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001653
;

-- Jun 6, 2014 11:06:35 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ProcessingType@=S',Updated=TO_TIMESTAMP('2014-06-06 11:06:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001654
;

-- Jun 6, 2014 11:07:58 AM BRT
UPDATE AD_Field SET IsSameLine='N', XPosition=1,Updated=TO_TIMESTAMP('2014-06-06 11:07:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001655
;

-- Jun 6, 2014 11:09:39 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y',Updated=TO_TIMESTAMP('2014-06-06 11:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001656
;

-- Jun 6, 2014 11:09:49 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y',Updated=TO_TIMESTAMP('2014-06-06 11:09:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001657
;

-- Jun 6, 2014 11:10:47 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y & @LBR_ProcessingType@=A',Updated=TO_TIMESTAMP('2014-06-06 11:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001656
;

-- Jun 6, 2014 11:10:52 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y & @LBR_ProcessingType@=A',Updated=TO_TIMESTAMP('2014-06-06 11:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001657
;

-- Jun 6, 2014 11:10:55 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y & @LBR_ProcessingType@=A',Updated=TO_TIMESTAMP('2014-06-06 11:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001658
;

-- Jun 6, 2014 11:10:59 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSent@=Y & @LBR_ProcessingType@=A',Updated=TO_TIMESTAMP('2014-06-06 11:10:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001659
;

-- Jun 6, 2014 11:12:27 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000901,'N','N','N',0,'N',1,'N','N','N','Y','ff82c243-0720-4edc-b383-340ff5daa841','Y','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed','Y',0,'Y',TO_TIMESTAMP('2014-06-06 11:12:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000046,0,'LBR',TO_TIMESTAMP('2014-06-06 11:12:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 11:12:29 AM BRT
ALTER TABLE LBR_NotaFiscalLot ADD COLUMN Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N'))
;

-- Jun 6, 2014 12:14:24 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000017,Updated=TO_TIMESTAMP('2014-06-06 12:14:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000046
;

-- Jun 6, 2014 1:11:08 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalLotLine_ID',1000271,'NF-e Lot Line','Identifies a NF-e Lot Line','NF-e Lot Line','31436db1-1883-419f-88b5-a351c8c5c349',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 13:11:08','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:11:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:11:17 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalLotLine_UU',1000272,'NF-e Lot Line','Identifies a NF-e Lot Line','NF-e Lot Line','22426298-e6e8-4037-a479-46afa2d5bbe3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 13:11:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:11:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:14:25 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DigestValue',1000273,'DigestValue','Identifies a DigestValue','DigestValue','7f70d38f-1a82-4c29-8922-c5f1c6ceb798',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-06-06 13:14:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:14:25','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:15:45 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created,Updated) VALUES ('N','N','N','1',0,1000017,1000047,'N','N','Y','LBR','L','8660dc68-8fd4-4cc1-993b-a7ce144703d9','Y','Y','LBR_NotaFiscalLotLine','Identifies a NF-e Lot Line','NF-e Lot Line','Y',0,0,0,0,'N','N',TO_TIMESTAMP('2014-06-06 13:15:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:15:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:15:46 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created,Updated) VALUES ('N',200000,'Y',1000000,'N','Y',1000060,'Table LBR_NotaFiscalLotLine','LBR_NotaFiscalLotLine',1,'2ac4128b-7049-49f3-89a4-e985f2f7be80',0,0,'Y',1000000,0,0,TO_TIMESTAMP('2014-06-06 13:15:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:15:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:16:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000902,'N','N','N',0,'N',22,'N','N','N','Y','b732953d-c3d5-47be-8b04-ab2f8e2cc980','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:16:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000047,129,0,'LBR',TO_TIMESTAMP('2014-06-06 13:16:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:16:14 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 13:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000902
;

-- Jun 6, 2014 1:16:14 PM BRT
CREATE TABLE LBR_NotaFiscalLotLine (AD_Client_ID NUMERIC(10) DEFAULT NULL )
;

-- Jun 6, 2014 1:16:14 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT ADClient_LBRNotaFiscalLotLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:16:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000903,'N','N','N',0,'N',22,'N','N','N','Y','d559be23-6901-4ee3-ac25-0cfafaa0a56d','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:16:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000047,104,0,'LBR',TO_TIMESTAMP('2014-06-06 13:16:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:16:29 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 13:16:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000903
;

-- Jun 6, 2014 1:16:29 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN AD_Org_ID NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 1:16:29 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT ADOrg_LBRNotaFiscalLotLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:16:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000904,'N','N','N',0,'N',7,'N','N','N','Y','5f03fa84-2cfc-447f-aab5-5eb1a4732a8c','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:16:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:16:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:16:47 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN Created TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 6, 2014 1:17:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000905,'N','N','N',0,'N',22,'N','N','N','Y','e9040ec4-02b1-456f-b718-6fa5869e2e1d','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:17:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:17:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:17:03 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 13:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000905
;

-- Jun 6, 2014 1:17:03 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 1:17:03 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT CreatedBy_LBRNotaFiscalLotLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:17:17 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000906,'N','N','N',0,'N',7,'N','N','N','Y','68c1d9d2-bf62-4e14-abcd-e1b7fd1ec97f','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:17:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:17:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:17:18 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN Updated TIMESTAMP DEFAULT statement_timestamp() 
;

-- Jun 6, 2014 1:17:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000907,'N','N','N',0,'N',22,'N','N','N','Y','8c5b2ee1-73fc-4ea7-9e9c-50ad67afdda2','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:17:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:17:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:17:33 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalLotLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 13:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000907
;

-- Jun 6, 2014 1:17:33 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 1:17:33 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT UpdatedBy_LBRNotaFiscalLotLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:17:52 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000908,'N','N','N',0,'N',1,'N','N','N','Y','08330770-5640-46fe-b7fd-931f7b5273ed','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:17:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:17:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:17:53 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jun 6, 2014 1:18:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000909,'N','N','N',0,'N',22,'N','Y','N','Y','62c85c4b-e6da-436c-9b7a-572bd6757293','N','LBR_NotaFiscalLotLine_ID','Identifies a NF-e Lot Line','NF-e Lot Line','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:18:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000271,13,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:18:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:18:17 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NotaFiscalLotLine_ID NUMERIC(10) DEFAULT NULL 
;

-- Jun 6, 2014 1:18:17 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT LBR_NotaFiscalLotLine_Key PRIMARY KEY (LBR_NotaFiscalLotLine_ID)
;

-- Jun 6, 2014 1:18:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000910,'N','N','N',0,'N',36,'N','N','N','Y','eabe6d05-ff40-448f-bb74-124bbb5f704c','N','LBR_NotaFiscalLotLine_UU','Identifies a NF-e Lot Line','NF-e Lot Line','N',0,'Y',TO_TIMESTAMP('2014-06-06 13:18:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000272,10,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:18:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:18:36 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NotaFiscalLotLine_UU VARCHAR(36) DEFAULT NULL 
;

-- Jun 6, 2014 1:18:36 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT LBR_NotaFiscalLotLine_UU_idx UNIQUE (LBR_NotaFiscalLotLine_UU)
;

-- Jun 6, 2014 1:20:54 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000911,'Y','N','N',0,'N',22,'N','N','N','Y','dae79abe-2b32-4538-8054-5f6e0241f441','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:20:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,30,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:20:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:20:56 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalLot', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-06-06 13:20:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000911
;

-- Jun 6, 2014 1:20:56 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- Jun 6, 2014 1:20:56 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalLot FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:21:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000912,'N','N','N',0,'N',255,'Y','N','N','Y','6a6ebae7-1f2a-4832-9ed6-50668926f2a0','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:21:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:21:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:21:21 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 1:21:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000913,'N','N','N',0,'N',3,'N','N','N','Y','346920c7-512d-4799-a9cc-dc8b91774dd4','Y','LBR_NFeStatus','NFe Status','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:21:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000171,17,1000039,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:21:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:21:43 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NFeStatus VARCHAR(3) DEFAULT NULL 
;

-- Jun 6, 2014 1:22:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000914,'N','N','N',0,'N',255,'N','N','N','Y','9ac9acf5-5998-4d37-9f92-8de34d0675d2','Y','LBR_NFeID','NFe ID','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:22:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000172,10,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:22:05','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:22:07 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NFeID VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 1:22:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000915,'N','N','N',0,'N',255,'N','N','N','Y','42425f53-0bb8-4418-bbf5-8983f38b7ed4','Y','LBR_LotSendingProt','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:22:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000270,10,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:22:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:22:37 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_LotSendingProt VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 1:23:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000916,'N','N','N',0,'N',255,'N','N','N','Y','5ddd032f-20e9-4e94-9946-1bb01dfafd4e','Y','LBR_DigestValue','Identifies a DigestValue','DigestValue','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:23:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000273,10,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:23:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:23:04 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_DigestValue VARCHAR(255) DEFAULT NULL 
;

-- Jun 6, 2014 1:27:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,1000918,'Y','N','N',0,'N',22,'N','N','N','Y','797a6fe0-a256-404e-a869-34df4fbb2897','N','LBR_NotaFiscalLot_ID','Identifies a NF-e Lot','NF-e Lot','Y',0,'Y',TO_TIMESTAMP('2014-06-06 13:27:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000260,19,1000047,0,'LBR',TO_TIMESTAMP('2014-06-06 13:27:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:27:57 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLot_LBRNotaFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-06-06 13:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000918
;

-- Jun 6, 2014 1:27:57 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD COLUMN LBR_NotaFiscalLot_ID NUMERIC(10) NOT NULL
;

-- Jun 6, 2014 1:27:57 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT LBRNotaFiscalLot_LBRNotaFiscal FOREIGN KEY (LBR_NotaFiscalLot_ID) REFERENCES lbr_notafiscallot(lbr_notafiscallot_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 6, 2014 1:29:57 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn,Created,Updated) VALUES ('N','N','Y',1000017,20,'N','N','N','N','N','Y','N',1,'64273b87-f093-424b-8408-d939e4c5d2e2','LBR','NF-e Lot Line','NF-e Lot Line Entries',1000089,0,0,0,'Y',0,1000918,1000047,'B',TO_TIMESTAMP('2014-06-06 13:29:57','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:29:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,22,'N','N',10,'Y',1001661,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','bc6c87bd-8279-4eac-ab9d-3683ffd8d7fd','N','Y',0,0,0,'Y','N',0,2,1000902,TO_TIMESTAMP('2014-06-06 13:30:02','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,22,'N','N',20,'Y',1001662,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','3dd355a0-c8ee-4580-81fe-9a1441e6a7d7','N','Y','Y',0,0,0,'Y','Y',10,4,0,2,1000903,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,255,'N','N',30,'Y',1001663,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','0df8db0b-1b62-4923-b9a7-96a06ad93f9f','N','Y',0,0,0,'Y','Y',20,0,5,1000912,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,22,'N','N','Y',1001664,'N','LBR','Identifies a NF-e Lot Line','NF-e Lot Line','156468f1-e5a8-4940-92cd-59fdb4fd0d48','N','N',0,0,0,'Y','N',0,2,1000909,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,36,'N','N',40,'Y',1001665,'N','LBR','Identifies a NF-e Lot Line','NF-e Lot Line','eff8c550-2d13-46b6-bd4f-2257d05cfea4','N','Y',0,0,0,'Y','Y',30,0,2,1000910,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,22,'N','N',50,'Y',1001666,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','54297fb1-61ec-44ff-9cb5-05bfcc73a02c','N','Y',0,0,0,'Y','Y',40,0,2,1000911,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,3,'N','N',60,'Y',1001667,'N','LBR','NFe Status','7d29f5b1-ad66-4635-afa0-82fe389fbbae','N','Y',0,0,0,'Y','Y',50,0,2,1000913,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,255,'N','N',70,'Y',1001668,'N','LBR','NFe ID','f42f65df-3b90-4ca2-9a4e-ea0ddf7c59a1','N','Y',0,0,0,'Y','Y',60,0,5,1000914,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,255,'N','N',80,'Y',1001669,'N','LBR','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','a1b67292-0f9f-41fc-85f3-c5073d9f94f7','N','Y',0,0,0,'Y','Y',70,0,5,1000915,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,255,'N','N',90,'Y',1001670,'N','LBR','Identifies a DigestValue','DigestValue','acdf705e-e68d-4e38-ba15-73a7725a0455','N','Y',0,0,0,'Y','Y',80,0,5,1000916,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,22,'N','N',100,'Y',1001671,'N','LBR','Identifies a NF-e Lot','NF-e Lot','28bffa29-e209-455f-a81e-0e01c30f45f9','N','Y',0,0,0,'Y','Y',90,0,2,1000918,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000089,1,'N','N',110,'Y',1001672,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','a691eb73-c344-41e9-b76f-3bf7ca39b77f','N','Y',0,0,0,'Y','Y',100,2,0,2,1000908,TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-06 13:30:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001672
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001671
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001665
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001666
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001663
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001667
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001668
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001669
;

-- Jun 6, 2014 1:30:38 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001670
;

-- Jun 6, 2014 1:30:58 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-06 13:30:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001662
;

-- Jun 6, 2014 1:31:14 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-06-06 13:31:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001663
;

-- Jun 6, 2014 1:31:49 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-06-06 13:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001667
;

-- Jun 6, 2014 1:32:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-06-06 13:32:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001668
;

-- Jun 6, 2014 1:32:11 PM BRT
UPDATE AD_Field SET ColumnSpan=2, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-06-06 13:32:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001669
;

-- Jun 6, 2014 1:32:22 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-06-06 13:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001670
;

-- Jun 6, 2014 1:48:29 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,IsActive,Created,UpdatedBy,AD_Client_ID,Updated) VALUES (1000058,'LBR_NotaFiscal','LBR','7d97f996-a2b8-40ee-9836-e75253529268','N','T',0,0,'Y',TO_TIMESTAMP('2014-06-06 13:48:29','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2014-06-06 13:48:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:49:06 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType,Updated) VALUES ('N','5d22b5a4-6b58-4f8c-9007-c8484fae673b',0,TO_TIMESTAMP('2014-06-06 13:49:06','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000607,1000599,1000058,1000033,'LBR',TO_TIMESTAMP('2014-06-06 13:49:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 6, 2014 1:49:14 PM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000058,Updated=TO_TIMESTAMP('2014-06-06 13:49:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000911
;

-- Jun 6, 2014 1:54:10 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 13:54:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001667
;

-- Jun 6, 2014 1:54:13 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 13:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001668
;

-- Jun 6, 2014 1:54:17 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 13:54:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001669
;

-- Jun 6, 2014 1:54:22 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-06 13:54:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001670
;

-- Jun 6, 2014 3:12:41 PM BRT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-06-06 15:12:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000898
;

-- Jun 6, 2014 3:12:47 PM BRT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-06-06 15:12:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000892
;

-- Jun 6, 2014 3:12:52 PM BRT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-06-06 15:12:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000901
;

-- Jun 8, 2014 12:25:10 PM BRT
INSERT INTO AD_Process (CopyFromProcess,Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',NULL,1000002,'N','N','506b68bf-f88f-4781-b11a-a965bcf36e89','3','N','N',3,3,'N','LBR','Send NF-e Lot to Sefaz','Send NF-e Lot to Sefaz',0,0,'Y',0,'org.idempierelbr.nfe.process.SendNFeLot','LBR_ProcSendNFeLot',0,TO_TIMESTAMP('2014-06-08 12:25:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-08 12:25:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 8, 2014 12:28:46 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000002,Updated=TO_TIMESTAMP('2014-06-08 12:28:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000891
;

SELECT lbr_register_migration_script('201406021444.sql') FROM dual
;

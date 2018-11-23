SET SQLBLANKLINES ON
SET DEFINE OFF

-- 16/01/2014 9h53min52s BRST
-- Table/Window/Menu: Legal Message
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000001,'N','N','N','LBR','L','75799173-e69a-467c-9d92-fca466af16ee','Y','Y','LBR_LegalMessage','Identifies a Legal Message','Legal Message','Y',0,0,TO_DATE('2014-01-16 09:53:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 09:53:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- 16/01/2014 9h53min53s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000005,'Table LBR_LegalMessage','LBR_LegalMessage',1,'77984afa-b95e-444a-85e7-b26dc81591b5',TO_DATE('2014-01-16 09:53:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 09:53:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- 16/01/2014 10h29min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000030,'N','N','N',0,'N',22,'N','N','N','Y','3d229bdd-44c2-4191-a453-eef4a214fe54','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-16 10:29:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:29:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000001,129,0,'LBR')
;

-- 16/01/2014 10h29min50s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRLegalMessage', FKConstraintType='N',Updated=TO_DATE('2014-01-16 10:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000030
;

-- 16/01/2014 10h29min50s BRST
CREATE TABLE LBR_LegalMessage (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- 16/01/2014 10h29min50s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT ADClient_LBRLegalMessage FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/01/2014 10h29min56s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:29:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000030
;

-- 16/01/2014 10h30min19s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000031,'N','N','N',0,'N',22,'N','N','N','Y','19271062-a938-4dd2-9ede-4a0c79cf2276','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-16 10:30:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:30:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000001,104,0,'LBR')
;

-- 16/01/2014 10h30min27s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRLegalMessage', FKConstraintType='N',Updated=TO_DATE('2014-01-16 10:30:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000031
;

-- 16/01/2014 10h30min27s BRST
ALTER TABLE LBR_LegalMessage ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- 16/01/2014 10h30min27s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT ADOrg_LBRLegalMessage FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/01/2014 10h30min33s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000031
;

-- 16/01/2014 10h31min0s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000032,'N','N','N',0,'N',7,'N','N','N','Y','c7e0e63e-0217-4eb2-b4f3-894a3355222c','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-16 10:31:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:31:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000001,0,'LBR')
;

-- 16/01/2014 10h31min5s BRST
ALTER TABLE LBR_LegalMessage ADD Created DATE DEFAULT NULL 
;

-- 16/01/2014 10h31min8s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000032
;

-- 16/01/2014 10h31min32s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000033,'N','N','N',0,'N',22,'N','N','N','Y','0062b1e9-f503-4f72-9233-0effe6008b62','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-16 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:31:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000001,0,'LBR')
;

-- 16/01/2014 10h31min37s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRLegalMessage', FKConstraintType='N',Updated=TO_DATE('2014-01-16 10:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000033
;

-- 16/01/2014 10h31min37s BRST
ALTER TABLE LBR_LegalMessage ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- 16/01/2014 10h31min37s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT CreatedBy_LBRLegalMessage FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/01/2014 10h31min44s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000033
;

-- 16/01/2014 10h32min9s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000034,'N','N','N',0,'N',1,'N','N','N','Y','35116f36-af44-443d-b06a-4cbdab6b09f0','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-16 10:32:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:32:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000001,0,'LBR')
;

-- 16/01/2014 10h32min14s BRST
ALTER TABLE LBR_LegalMessage ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 16/01/2014 10h32min18s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000034
;

-- 16/01/2014 10h32min59s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_LegalMessage_ID',1000014,'Legal Message','Identifies a Legal Message','Legal Message','97179a3c-2f7d-4e98-b9c8-c0ebfc09e079',TO_DATE('2014-01-16 10:32:59','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 10:32:59','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 16/01/2014 10h33min31s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000035,'Y','N','N',0,'N',22,'N','Y','N','Y','70c477c5-3d75-4065-99f0-1a6d0cbcf17b','N','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','N',TO_DATE('2014-01-16 10:33:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:33:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,13,1000001,0,'LBR')
;

-- 16/01/2014 10h33min37s BRST
ALTER TABLE LBR_LegalMessage ADD LBR_LegalMessage_ID NUMBER(10) NOT NULL
;

-- 16/01/2014 10h33min37s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT LBR_LegalMessage_Key PRIMARY KEY (LBR_LegalMessage_ID)
;

-- 16/01/2014 10h34min5s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_LegalMessage_UU',1000015,'LBR_LegalMessage_UU',NULL,'LBR_LegalMessage_UU','ff3787be-18e3-49ca-a685-7f4eb3e9598d',TO_DATE('2014-01-16 10:34:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 10:34:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 16/01/2014 10h34min21s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000036,'N','N','N',0,'N',36,'N','N','N','Y','8a8fafe4-178a-4696-b057-3f6493771ff3','N','LBR_LegalMessage_UU','LBR_LegalMessage_UU','N',TO_DATE('2014-01-16 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000015,10,1000001,0,'LBR')
;

-- 16/01/2014 10h34min26s BRST
ALTER TABLE LBR_LegalMessage ADD LBR_LegalMessage_UU NVARCHAR2(36) DEFAULT NULL 
;

-- 16/01/2014 10h34min46s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT LBR_LegalMessage_UU_idx UNIQUE (LBR_LegalMessage_UU)
;

-- 16/01/2014 10h39min34s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000037,'N','N','N',0,'N',7,'N','N','N','Y','27db9926-d7fd-424e-8f3d-051b327b854e','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-16 10:39:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:39:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000001,0,'LBR')
;

-- 16/01/2014 10h39min40s BRST
ALTER TABLE LBR_LegalMessage ADD Updated DATE DEFAULT NULL 
;

-- 16/01/2014 10h39min44s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:39:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000037
;

-- 16/01/2014 10h40min5s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000038,'N','N','N',0,'N',22,'N','N','N','Y','f644d38f-fe00-4240-a2d6-0e496f15ecb3','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-16 10:40:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:40:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000001,0,'LBR')
;

-- 16/01/2014 10h40min9s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRLegalMessage', FKConstraintType='N',Updated=TO_DATE('2014-01-16 10:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000038
;

-- 16/01/2014 10h40min9s BRST
ALTER TABLE LBR_LegalMessage ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- 16/01/2014 10h40min9s BRST
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT UpdatedBy_LBRLegalMessage FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16/01/2014 10h40min13s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 10:40:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000038
;

-- 16/01/2014 10h41min0s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000039,'Y','N','Y',0,'N',255,'Y','N','N','Y','e90495fe-df08-4fdb-b6aa-af6da522deab','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-01-16 10:41:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 10:41:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000001,0,'LBR')
;

-- 16/01/2014 10h41min5s BRST
ALTER TABLE LBR_LegalMessage ADD Value NVARCHAR2(255) NOT NULL
;

-- 16/01/2014 10h42min35s BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Legal Message','Maintain Legal Messages',1000001,'12e468e7-43df-4b62-86a5-3bf97a8664b4',TO_DATE('2014-01-16 10:42:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 10:42:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- 16/01/2014 10h43min1s BRST
UPDATE AD_Table SET AD_Window_ID=1000001,Updated=TO_DATE('2014-01-16 10:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000001
;

-- 16/01/2014 10h44min24s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000001,10,'N','N','N','N','N','Y','N',0,'e9b6d0e6-0e52-4561-86df-bcbbf7398921','LBR','Legal Message','Maintain Legal Messages',1000001,0,TO_DATE('2014-01-16 10:44:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000001)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,22,'N','N',10,'Y',1000026,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','5f96c6e4-4a73-4221-9970-007ad82ff31c','N','Y',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000030)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,22,'N','N',20,'Y',1000027,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','565a2fcc-5115-4f05-afb4-d1436529efef','N','Y','Y',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000031)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,255,'N','N',30,'Y',1000028,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','0fba4611-fdf6-41ec-af65-4a2de853b9fb','N','Y',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000039)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,22,'N','N',40,'Y',1000029,'N','LBR','Identifies a Legal Message','Legal Message','3e57e5b8-be1f-4b20-b817-247e8d45ce3b','N','N',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000035)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,36,'N','N',50,'Y',1000030,'N','LBR','LBR_LegalMessage_UU','9a8c2027-5f89-4ef1-8a30-dcef6b762ee3','N','N',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000036)
;

-- 16/01/2014 10h44min30s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000001,1,'N','N',60,'Y',1000031,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','fd49c124-dabd-4191-b600-2d502357c542','N','Y',0,0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000034)
;

-- 16/01/2014 10h45min28s BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000026
;

-- 16/01/2014 10h45min28s BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000027
;

-- 16/01/2014 10h45min28s BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000028
;

-- 16/01/2014 10h45min28s BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000031
;

-- 16/01/2014 10h45min52s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-16 10:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000027
;

-- 16/01/2014 10h46min24s BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_DATE('2014-01-16 10:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000028
;

-- 16/01/2014 10h47min43s BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000001,1000002,'N','Y','N','LBR','Y','Legal Message','Maintain Legal Messages','80487aec-4d45-4e57-a990-56fbf0fe9632','W','Y',0,TO_DATE('2014-01-16 10:47:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 10:47:43','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- 16/01/2014 10h47min43s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000002, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000002)
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 16/01/2014 10h47min52s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 16/01/2014 10h48min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

SELECT lbr_register_migration_script('201401161052.sql') FROM dual
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 27, 2014 4:28:35 PM BRST
-- Table/Window/Menu: LBR_Formula
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000008,'N','N','N','LBR','L','c726f6e9-613d-4bf8-96a6-4dfbc7be7793','Y','Y','LBR_Formula','Tax Formula (Brazil)','Y',0,0,TO_DATE('2014-01-27 16:28:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:28:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 27, 2014 4:28:35 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000012,'Table LBR_Formula','LBR_Formula',1,'6ffa0cd1-f224-4bec-8a54-25ba5845df37',TO_DATE('2014-01-27 16:28:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:28:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 27, 2014 4:29:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000120,'N','N','N',0,'N',22,'N','N','N','Y','d8276e12-5ad4-4873-9f5a-8f9814fc2c4e','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-27 16:29:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:29:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000008,129,0,'LBR')
;

-- Jan 27, 2014 4:29:36 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 16:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000120
;

-- Jan 27, 2014 4:29:36 PM BRST
CREATE TABLE LBR_Formula (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 27, 2014 4:29:36 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT ADClient_LBRFormula FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 4:29:41 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-27 16:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000120
;

-- Jan 27, 2014 4:30:01 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000121,'N','N','N',0,'N',22,'N','N','N','Y','40b327a3-ea64-4e38-a6da-d7c01b9d2854','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-27 16:30:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:30:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000008,104,0,'LBR')
;

-- Jan 27, 2014 4:30:06 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 16:30:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000121
;

-- Jan 27, 2014 4:30:06 PM BRST
ALTER TABLE LBR_Formula ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 4:30:06 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT ADOrg_LBRFormula FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 4:30:16 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-27 16:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000121
;

-- Jan 27, 2014 4:30:35 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000122,'N','N','N',0,'N',7,'N','N','N','Y','ca1c53e8-7c55-4e36-9439-c684523ff8ab','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-27 16:30:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:30:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000008,0,'LBR')
;

-- Jan 27, 2014 4:30:39 PM BRST
ALTER TABLE LBR_Formula ADD Created DATE DEFAULT NULL 
;

-- Jan 27, 2014 4:30:43 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-27 16:30:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000122
;

-- Jan 27, 2014 4:31:04 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000123,'N','N','N',0,'N',22,'N','N','N','Y','dbaacd9a-6e98-4276-8180-5125bb128eb6','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-27 16:31:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:31:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000008,0,'LBR')
;

-- Jan 27, 2014 4:31:08 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 16:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000123
;

-- Jan 27, 2014 4:31:08 PM BRST
ALTER TABLE LBR_Formula ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 4:31:09 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT CreatedBy_LBRFormula FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 4:31:14 PM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-27 16:31:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000123
;

-- Jan 27, 2014 4:33:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000124,'N','N','N',0,'N',512,'Y','N','N','Y','691e4ec5-acab-46b2-abaf-9a9bda846b4d','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-27 16:33:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:33:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000008,0,'LBR')
;

-- Jan 27, 2014 4:33:30 PM BRST
ALTER TABLE LBR_Formula ADD Description NVARCHAR2(512) DEFAULT NULL 
;

-- Jan 27, 2014 4:33:53 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000125,'N','N','N',0,'N',1,'N','N','N','Y','b46cc340-7ad6-4780-a4b2-ebdbf2a8ace2','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-27 16:33:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:33:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000008,0,'LBR')
;

-- Jan 27, 2014 4:33:58 PM BRST
ALTER TABLE LBR_Formula ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 27, 2014 4:34:58 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Formula',1000040,'Formula','Defines the Tax Formula','Formula','75dbe73d-29d6-4444-ba4e-6148d5bd94b1',TO_DATE('2014-01-27 16:34:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 16:34:58','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 4:35:37 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000126,'Y','N','N',0,'N',512,'N','N','N','Y','562c628d-0e90-4918-beba-b1b62fa0b2e2','Y','LBR_Formula','Defines the Tax Formula','Formula','Y',TO_DATE('2014-01-27 16:35:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:35:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000040,34,1000008,0,'LBR')
;

-- Jan 27, 2014 4:35:41 PM BRST
ALTER TABLE LBR_Formula ADD LBR_Formula NVARCHAR2(512) NOT NULL
;

-- Jan 27, 2014 4:36:30 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Formula_ID',1000041,'Tax Formula (Brazil)',NULL,'Tax Formula (Brazil)','08e31581-c0bb-4320-9a04-0bedd153593b',TO_DATE('2014-01-27 16:36:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 16:36:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 4:36:54 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000127,'Y','N','N',0,'N',22,'N','Y','N','Y','53c7c5d7-4bcf-4574-8b6b-4ddc6e262723','N','LBR_Formula_ID','Tax Formula (Brazil)','N',TO_DATE('2014-01-27 16:36:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:36:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000041,13,1000008,0,'LBR')
;

-- Jan 27, 2014 4:36:58 PM BRST
ALTER TABLE LBR_Formula ADD LBR_Formula_ID NUMBER(10) NOT NULL
;

-- Jan 27, 2014 4:36:58 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT LBR_Formula_Key PRIMARY KEY (LBR_Formula_ID)
;

-- Jan 27, 2014 4:37:12 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Formula_UU',1000042,'LBR_Formula_UU','LBR_Formula_UU','bfbffb46-54b4-477b-a6de-7e61ec1588cb',TO_DATE('2014-01-27 16:37:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 16:37:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 4:37:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000128,'N','N','N',0,'N',36,'N','N','N','Y','d75eee6e-d8a4-41b8-bea0-7c0a233829d3','N','LBR_Formula_UU','LBR_Formula_UU','N',TO_DATE('2014-01-27 16:37:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:37:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000042,10,1000008,0,'LBR')
;

-- Jan 27, 2014 4:37:33 PM BRST
ALTER TABLE LBR_Formula ADD LBR_Formula_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 27, 2014 4:37:34 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT LBR_Formula_UU_idx UNIQUE (LBR_Formula_UU)
;

-- Jan 27, 2014 4:38:16 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000129,'Y','N','Y',0,'N',60,'Y','N','N','Y','46d0fcc9-a3c5-4fcf-bc21-40384c45ee00','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-01-27 16:38:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:38:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000008,0,'LBR')
;

-- Jan 27, 2014 4:38:20 PM BRST
ALTER TABLE LBR_Formula ADD Name NVARCHAR2(60) NOT NULL
;

-- Jan 27, 2014 4:38:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000130,'N','N','N',0,'N',7,'N','N','N','Y','f0d4c0f6-ad0f-429d-8910-869d2b878f37','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-27 16:38:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:38:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000008,0,'LBR')
;

-- Jan 27, 2014 4:38:47 PM BRST
ALTER TABLE LBR_Formula ADD Updated DATE DEFAULT NULL 
;

-- Jan 27, 2014 4:39:05 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000131,'N','N','N',0,'N',22,'N','N','N','Y','c9256015-c71f-44e4-b3cb-720b095cd75b','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-27 16:39:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 16:39:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000008,0,'LBR')
;

-- Jan 27, 2014 4:39:12 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 16:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000131
;

-- Jan 27, 2014 4:39:12 PM BRST
ALTER TABLE LBR_Formula ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 4:39:12 PM BRST
ALTER TABLE LBR_Formula ADD CONSTRAINT UpdatedBy_LBRFormula FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 4:40:35 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Tax Formula (Brazil)',1000008,'85a92339-145c-4afc-b2b0-29d196865ebe',TO_DATE('2014-01-27 16:40:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 16:40:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 27, 2014 4:41:05 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000008,10,'N','N','N','N','N','Y','N',0,'6541def0-b017-43a6-b14c-0d5489375b63','LBR','Tax Formula (Brazil)',1000008,0,TO_DATE('2014-01-27 16:41:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000008,'B')
;

-- Jan 27, 2014 4:41:10 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,22,'N','N',10,'Y',1000088,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f9848af5-5721-4163-8710-1544d032255f','N','Y',0,0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000120)
;

-- Jan 27, 2014 4:41:10 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,22,'N','N',20,'Y',1000089,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','f88151ca-a8b1-46dd-9a1c-b199996935d2','N','Y','Y',0,0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000121)
;

-- Jan 27, 2014 4:41:10 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,60,'N','N',30,'Y',1000090,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','900cd50e-fc75-4cd2-a857-5228ecf0bfa4','N','Y',0,0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000129)
;

-- Jan 27, 2014 4:41:11 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000008,512,'N','N',40,'Y',1000091,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','472d734c-fd32-4899-a682-1258dc0e41e4','N','Y',0,0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000124)
;

-- Jan 27, 2014 4:41:11 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000008,512,'N','N',50,'Y',1000092,'N','LBR','Defines the Tax Formula','Formula','ef7dd0af-8ac9-4756-928f-adb6388ad831','N','Y',0,0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000126)
;

-- Jan 27, 2014 4:41:11 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,22,'N','N',60,'Y',1000093,'N','LBR','Tax Formula (Brazil)','1ad2b7cb-f72e-4c4c-b68b-b84072c16cb4','N','N',0,0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000127)
;

-- Jan 27, 2014 4:41:11 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,36,'N','N',70,'Y',1000094,'N','LBR','LBR_Formula_UU','149324e6-3d12-42d0-b2a5-357457c23b1f','N','N',0,0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000128)
;

-- Jan 27, 2014 4:41:11 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000008,1,'N','N',80,'Y',1000095,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','ed85091b-8498-410c-8161-099f7b9bbec1','N','Y',0,0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 16:41:11','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000125)
;

-- Jan 27, 2014 4:41:48 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000094
;

-- Jan 27, 2014 4:41:48 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000093
;

-- Jan 27, 2014 4:41:48 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000095
;

-- Jan 27, 2014 4:41:48 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000092
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000095
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000088
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000089
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000091
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000092
;

-- Jan 27, 2014 4:42:04 PM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000090
;

-- Jan 27, 2014 4:43:24 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-27 16:43:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000089
;

-- Jan 27, 2014 4:46:03 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000008,1000011,'N','Y','N','LBR','Y','Tax Formula (Brazil)','4391bd0b-b4fa-4c38-940b-912b0177471e','W','Y',0,TO_DATE('2014-01-27 16:46:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 16:46:03','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 27, 2014 4:46:03 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000011, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000011)
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 27, 2014 4:46:10 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 27, 2014 4:46:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 27, 2014 4:46:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 27, 2014 4:46:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 27, 2014 4:46:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 27, 2014 4:46:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jan 27, 2014 4:48:58 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000008,Updated=TO_DATE('2014-01-27 16:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000008
;

SELECT lbr_register_migration_script('201401271654.sql') FROM dual
;

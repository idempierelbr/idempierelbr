SET SQLBLANKLINES ON
SET DEFINE OFF

-- Aug 20, 2014 2:57:01 PM BRT
-- Table/Window/Menu/Data: Collection Occurrences Group
-- Table/Window/Menu/Data: Collection Movement Code
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','6',0,1000056,'N','N','N','LBR','L','41c4b321-d8ed-443a-9a36-a435d20f04dc','Y','Y','LBR_Cob_GO','Maintain Collection Occurrences Groups','Collection Occurrences Group','Y',0,0,TO_DATE('2014-08-20 14:57:01','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-20 14:57:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 2:57:02 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000072,'Table LBR_Cob_GO','LBR_Cob_GO',1,'8d26e3b9-b2f7-4bab-9fe4-2c98e4b49868',0,TO_DATE('2014-08-20 14:57:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-20 14:57:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 2:57:22 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001148,'N','N','N',0,'N',22,'N','N','N','Y','80a7a8f2-2025-4242-b76c-cd0256697da7','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-20 14:57:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:57:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000056,129,0,'LBR')
;

-- Aug 20, 2014 2:57:25 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCobGO', FKConstraintType='N',Updated=TO_DATE('2014-08-20 14:57:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001148
;

-- Aug 20, 2014 2:57:25 PM BRT
CREATE TABLE LBR_Cob_GO (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Aug 20, 2014 2:57:26 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT ADClient_LBRCobGO FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 2:57:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001149,'N','N','N',0,'N',22,'N','N','N','Y','d0663a9e-a12b-4934-aee0-a49adaf20d1d','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-20 14:57:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:57:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000056,104,0,'LBR')
;

-- Aug 20, 2014 2:57:55 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCobGO', FKConstraintType='N',Updated=TO_DATE('2014-08-20 14:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001149
;

-- Aug 20, 2014 2:57:55 PM BRT
ALTER TABLE LBR_Cob_GO ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 2:57:55 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT ADOrg_LBRCobGO FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 2:58:09 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001150,'N','N','N',0,'N',7,'N','N','N','Y','c2b75397-0290-4979-9165-cc41ab940556','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-20 14:58:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:58:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000056,0,'LBR')
;

-- Aug 20, 2014 2:58:11 PM BRT
ALTER TABLE LBR_Cob_GO ADD Created DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 2:58:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001151,'N','N','N',0,'N',22,'N','N','N','Y','f09a3f72-2a9a-4433-ae19-34db054b367a','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-20 14:58:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:58:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000056,0,'LBR')
;

-- Aug 20, 2014 2:58:25 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCobGO', FKConstraintType='N',Updated=TO_DATE('2014-08-20 14:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001151
;

-- Aug 20, 2014 2:58:25 PM BRT
ALTER TABLE LBR_Cob_GO ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 2:58:25 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT CreatedBy_LBRCobGO FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 2:58:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001152,'N','N','N',0,'N',7,'N','N','N','Y','dccbc05a-6040-4d31-a2e0-e86677f78755','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-20 14:58:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:58:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000056,0,'LBR')
;

-- Aug 20, 2014 2:58:40 PM BRT
ALTER TABLE LBR_Cob_GO ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 2:58:52 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001153,'N','N','N',0,'N',22,'N','N','N','Y','dba2d2e1-e025-4e37-b7f6-1472a18d375a','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-20 14:58:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:58:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000056,0,'LBR')
;

-- Aug 20, 2014 2:58:54 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCobGO', FKConstraintType='N',Updated=TO_DATE('2014-08-20 14:58:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001153
;

-- Aug 20, 2014 2:58:54 PM BRT
ALTER TABLE LBR_Cob_GO ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 2:58:54 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT UpdatedBy_LBRCobGO FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 2:59:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001154,'Y','N','N',0,'N',1,'N','N','N','Y','3bd9e630-47c4-46a0-9577-5d17b53d8004','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-20 14:59:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 14:59:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000056,0,'LBR')
;

-- Aug 20, 2014 2:59:10 PM BRT
ALTER TABLE LBR_Cob_GO ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 20, 2014 2:59:58 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_GO_ID',1000357,'Collection Occurrences Group','Collection Occurrences Group','d992728f-69e9-4cd3-87a8-3c0161b86d89',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 14:59:57','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 14:59:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:00:04 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_GO_UU',1000358,'Collection Occurrences Group','Collection Occurrences Group','9b7c9d1c-61e6-4acb-a065-c2c45cc5a315',0,0,0,'Y',0,'U',TO_DATE('2014-08-20 15:00:04','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 15:00:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:00:10 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2014-08-20 15:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000358
;

-- Aug 20, 2014 3:01:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001155,'N','N','N',0,'N',22,'N','Y','N','Y','797ff7e0-453a-489e-9979-ffdc26a3f418','N','LBR_Cob_GO_ID','Collection Occurrences Group','N',TO_DATE('2014-08-20 15:01:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:01:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000357,13,1000056,0,'LBR')
;

-- Aug 20, 2014 3:01:29 PM BRT
ALTER TABLE LBR_Cob_GO ADD LBR_Cob_GO_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:01:29 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT LBR_Cob_GO_Key PRIMARY KEY (LBR_Cob_GO_ID)
;

-- Aug 20, 2014 3:01:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001156,'N','N','N',0,'N',36,'N','N','N','Y','03d3163d-b547-43a7-8d50-7f3ef3752f8a','N','LBR_Cob_GO_UU','Collection Occurrences Group','N',TO_DATE('2014-08-20 15:01:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:01:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000358,10,1000056,0,'LBR')
;

-- Aug 20, 2014 3:01:44 PM BRT
ALTER TABLE LBR_Cob_GO ADD LBR_Cob_GO_UU VARCHAR2(36) DEFAULT NULL 
;

-- Aug 20, 2014 3:01:44 PM BRT
ALTER TABLE LBR_Cob_GO ADD CONSTRAINT LBR_Cob_GO_UU_idx UNIQUE (LBR_Cob_GO_UU)
;

-- Aug 20, 2014 3:02:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001157,'N','N','N',0,'N',40,'Y','N','N','Y','caba1252-f157-4c53-8ac2-6ab6b4d544a0','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-08-20 15:02:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:02:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000056,0,'LBR')
;

-- Aug 20, 2014 3:02:02 PM BRT
ALTER TABLE LBR_Cob_GO ADD Value VARCHAR2(40) DEFAULT NULL 
;

-- Aug 20, 2014 3:02:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001158,'Y','N','Y',0,'N',60,'Y','N','N','Y','75b5be7a-6fe8-4445-9a11-2287f001502b','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-20 15:02:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:02:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000056,0,'LBR')
;

-- Aug 20, 2014 3:02:40 PM BRT
ALTER TABLE LBR_Cob_GO ADD Name VARCHAR2(60) NOT NULL
;

-- Aug 20, 2014 3:02:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001159,'N','N','N',0,'N',255,'Y','N','N','Y','2c285bd2-c9fd-42db-98ea-18b8c31e6bbe','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-20 15:02:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:02:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000056,0,'LBR')
;

-- Aug 20, 2014 3:02:56 PM BRT
ALTER TABLE LBR_Cob_GO ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Aug 20, 2014 3:04:45 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','Y','N','N',0,0,'LBR','Collection Occurrences Group','Maintain groups for occurrences',1000022,'3a96da18-f266-4f2c-8b5b-e1c7ea765afc',TO_DATE('2014-08-20 15:04:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_DATE('2014-08-20 15:04:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:10:20 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000022,10,'N','N','N','N','N','Y','N',0,'8db94921-899a-4e28-9516-e6e87a644c82','LBR','Group','Maintain groups for occurrences',1000099,0,0,TO_DATE('2014-08-20 15:10:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000056,'B',TO_DATE('2014-08-20 15:10:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,22,'N','N',10,'Y',1001956,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','d84aabb8-1287-43d9-8811-43a8dee67ef7','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,0,2,1001148,TO_DATE('2014-08-20 15:12:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,22,'N','N',20,'Y',1001957,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','ae2d2055-04c5-404f-94e3-3f1f77966c37','N','Y','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1001149,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,40,'N','N',30,'Y',1001958,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','aabb444d-db7b-4c63-b96f-2a9b2e23e22d','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,1001157,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,60,'N','N',40,'Y',1001959,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','5c532600-4ad5-417e-8c99-c12d3f7130b4','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,1001158,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,255,'N','N',50,'Y',1001960,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','05fef47f-8179-4693-9e8b-7b9235bbb41c','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,5,1001159,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,22,'N','N','Y',1001961,'N','LBR','Collection Occurrences Group','0ab26f34-4e79-449c-a2eb-df4f1f90f502','N','N',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001155,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,36,'N','N',60,'Y',1001962,'N','LBR','Collection Occurrences Group','53c44e80-49e0-4627-a24f-89775f1a32ef','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001156,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000099,1,'N','N',70,'Y',1001963,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','ac206c1c-d7e7-4b78-a6a3-872699041329','N','Y',0,0,0,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,2,0,2,1001154,TO_DATE('2014-08-20 15:12:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:12:25 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001962
;

-- Aug 20, 2014 3:12:25 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001963
;

-- Aug 20, 2014 3:15:11 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000022,1000029,'N','Y','N','LBR','Y','Collection Occurrences Group','Maintain groups for occurrences','3c5d3427-57f7-4809-a751-d5b407700f1c','W','Y',0,TO_DATE('2014-08-20 15:15:11','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-20 15:15:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:15:11 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000029, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000029)
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 3:15:23 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 3:15:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 20, 2014 3:15:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 20, 2014 3:21:57 PM BRT
INSERT INTO LBR_Cob_GO (LBR_Cob_GO_UU,AD_Client_ID,Updated,AD_Org_ID,Created,CreatedBy,UpdatedBy,IsActive,LBR_Cob_GO_ID,Name,Description,Value) VALUES ('27c6e5e5-c63f-45b6-a118-f62cab9159d7',0,TO_DATE('2014-08-20 15:21:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-20 15:21:57','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',1000000,'Domínio A','Ocorrências de Rejeição','DomínioA')
;

-- Aug 20, 2014 3:22:50 PM BRT
INSERT INTO LBR_Cob_GO (LBR_Cob_GO_UU,AD_Client_ID,Updated,AD_Org_ID,Created,CreatedBy,UpdatedBy,IsActive,LBR_Cob_GO_ID,Name,Description,Value) VALUES ('c93f1502-6ec2-448b-9d74-013f5f9ac80a',0,TO_DATE('2014-08-20 15:22:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-20 15:22:50','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',1000001,'Domínio B','Ocorrências de Tarifas / Custas','DomínioB')
;

-- Aug 20, 2014 3:23:10 PM BRT
INSERT INTO LBR_Cob_GO (LBR_Cob_GO_UU,AD_Client_ID,Updated,AD_Org_ID,Created,CreatedBy,UpdatedBy,IsActive,LBR_Cob_GO_ID,Name,Description,Value) VALUES ('c0ad2c8c-2911-4100-8be2-f7a9e7a216da',0,TO_DATE('2014-08-20 15:23:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-20 15:23:10','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',1000002,'Domínio C','Ocorrências de Liquidação / Baixa','DomínioC')
;

-- Aug 20, 2014 3:25:18 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','6',0,1000057,'N','N','N','LBR','L','12981d2e-d718-4da6-a4d7-8acfc5dd75ec','Y','Y','LBR_Cob_Ocorrencia','Maintain Collection Occurrences','Collection Occurrences','Y',0,0,TO_DATE('2014-08-20 15:25:18','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-20 15:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:25:18 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000073,'Table LBR_Cob_Ocorrencia','LBR_Cob_Ocorrencia',1,'a67833c8-5f14-409a-a4ce-77fb4aac8e07',0,TO_DATE('2014-08-20 15:25:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-20 15:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:25:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001160,'N','N','N',0,'N',22,'N','N','N','Y','dc96c12d-dcbe-4b90-b8d9-cb39ece7a3c7','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-20 15:25:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:25:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000057,129,0,'LBR')
;

-- Aug 20, 2014 3:25:59 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCobOcorrencia', FKConstraintType='N',Updated=TO_DATE('2014-08-20 15:25:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001160
;

-- Aug 20, 2014 3:25:59 PM BRT
CREATE TABLE LBR_Cob_Ocorrencia (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Aug 20, 2014 3:25:59 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT ADClient_LBRCobOcorrencia FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 3:26:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001161,'N','N','N',0,'N',22,'N','N','N','Y','afb6e5cd-2f0f-45f3-bf34-1fc35d35117d','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-20 15:26:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:26:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000057,104,0,'LBR')
;

-- Aug 20, 2014 3:26:13 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCobOcorrencia', FKConstraintType='N',Updated=TO_DATE('2014-08-20 15:26:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001161
;

-- Aug 20, 2014 3:26:13 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:26:13 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT ADOrg_LBRCobOcorrencia FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 3:26:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001162,'N','N','N',0,'N',7,'N','N','N','Y','54c4090e-62b6-45d3-9019-17487e81fbee','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-20 15:26:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:26:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000057,0,'LBR')
;

-- Aug 20, 2014 3:26:27 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD Created DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 3:26:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001163,'N','N','N',0,'N',22,'N','N','N','Y','550268bc-475e-45f3-b289-0981180c9de8','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-20 15:26:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:26:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000057,0,'LBR')
;

-- Aug 20, 2014 3:26:41 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCobOcorrencia', FKConstraintType='N',Updated=TO_DATE('2014-08-20 15:26:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001163
;

-- Aug 20, 2014 3:26:41 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:26:41 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT CreatedBy_LBRCobOcorrencia FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 3:26:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001164,'N','N','N',0,'N',7,'N','N','N','Y','224d8a3f-40ed-4358-b768-360bc6f97d9c','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-20 15:26:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:26:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000057,0,'LBR')
;

-- Aug 20, 2014 3:26:57 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 3:27:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001165,'N','N','N',0,'N',22,'N','N','N','Y','99b7405d-2c58-416c-933e-315e9b1aeee2','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-20 15:27:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:27:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000057,0,'LBR')
;

-- Aug 20, 2014 3:27:09 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCobOcorrencia', FKConstraintType='N',Updated=TO_DATE('2014-08-20 15:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001165
;

-- Aug 20, 2014 3:27:09 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:27:09 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT UpdatedBy_LBRCobOcorrencia FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 3:27:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001166,'N','N','N',0,'N',1,'N','N','N','Y','5da8b036-7d60-469e-a21f-d2586f15a985','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-20 15:27:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:27:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000057,0,'LBR')
;

-- Aug 20, 2014 3:27:24 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Aug 20, 2014 3:27:53 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia_ID',1000359,'Collection Occurrence','Collection Occurrence','3346f425-74ef-4888-8098-3971d6d017a7',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 15:27:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 15:27:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:28:44 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia_UU',1000360,'Collection Occurrence','Collection Occurrence','775dca12-a979-4db1-ad97-3f00c069fbbf',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 15:28:44','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 15:28:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:29:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001167,'N','N','N',0,'N',22,'N','Y','N','Y','b4157d3d-9f41-4568-b467-1624580e05f8','N','LBR_Cob_Ocorrencia_ID','Collection Occurrence','N',TO_DATE('2014-08-20 15:29:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:29:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000359,13,1000057,0,'LBR')
;

-- Aug 20, 2014 3:29:08 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD LBR_Cob_Ocorrencia_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:29:08 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT LBR_Cob_Ocorrencia_Key PRIMARY KEY (LBR_Cob_Ocorrencia_ID)
;

-- Aug 20, 2014 3:29:21 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001168,'N','N','N',0,'N',36,'N','N','N','Y','48d719ae-cc12-4b63-8a9a-f86828364ade','N','LBR_Cob_Ocorrencia_UU','Collection Occurrence','N',TO_DATE('2014-08-20 15:29:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:29:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000360,10,1000057,0,'LBR')
;

-- Aug 20, 2014 3:29:22 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD LBR_Cob_Ocorrencia_UU VARCHAR2(36) DEFAULT NULL 
;

-- Aug 20, 2014 3:29:22 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT LBR_Cob_Ocorrencia_UU_idx UNIQUE (LBR_Cob_Ocorrencia_UU)
;

-- Aug 20, 2014 3:29:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001169,'N','N','N',0,'N',22,'N','N','N','Y','ec820235-fcd7-4da4-acf0-227e67723d48','N','LBR_Cob_GO_ID','Collection Occurrences Group','Y',TO_DATE('2014-08-20 15:29:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:29:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000357,19,1000057,0,'LBR')
;

-- Aug 20, 2014 3:29:47 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobGO_LBRCobOcorrencia', FKConstraintType='N',Updated=TO_DATE('2014-08-20 15:29:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001169
;

-- Aug 20, 2014 3:29:47 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD LBR_Cob_GO_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 3:29:47 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD CONSTRAINT LBRCobGO_LBRCobOcorrencia FOREIGN KEY (LBR_Cob_GO_ID) REFERENCES lbr_cob_go(lbr_cob_go_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 3:30:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001170,'N','N','N',0,'N',40,'Y','N','N','Y','97997ab9-d417-4684-a285-4592728a7ac3','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-08-20 15:30:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:30:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000057,0,'LBR')
;

-- Aug 20, 2014 3:30:26 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD Value VARCHAR2(40) DEFAULT NULL 
;

-- Aug 20, 2014 3:30:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001171,'Y','N','Y',0,'N',60,'Y','N','N','Y','2f33560e-a05c-417f-8221-c89c44b251a5','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-20 15:30:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:30:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000057,0,'LBR')
;

-- Aug 20, 2014 3:30:45 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD Name VARCHAR2(60) NOT NULL
;

-- Aug 20, 2014 3:31:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001172,'N','N','N',0,'N',255,'Y','N','N','Y','8c7c7946-608f-4b02-9733-ec7169b0c1c1','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-20 15:31:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 15:31:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000057,0,'LBR')
;

-- Aug 20, 2014 3:31:02 PM BRT
ALTER TABLE LBR_Cob_Ocorrencia ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Aug 20, 2014 3:31:17 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000022,Updated=TO_DATE('2014-08-20 15:31:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000057
;

-- Aug 20, 2014 3:31:21 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000022,Updated=TO_DATE('2014-08-20 15:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000056
;

-- Aug 20, 2014 3:32:37 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000022,20,'N','N','N','N','N','Y','N',1,'76f1a42e-a9ce-43d0-83cc-8a7722d8e0aa','LBR','Occurrences','Maintain occurrences',1000100,0,0,TO_DATE('2014-08-20 15:32:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000057,'B',TO_DATE('2014-08-20 15:32:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:32:53 PM BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2014-08-20 15:32:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001169
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,22,'N','N',10,'Y',1001964,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','8eb7d551-21fc-459c-860e-1f65c536f786','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,0,2,1001160,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,22,'N','N',20,'Y',1001965,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','435ea9ad-e0e0-4f73-9dd7-e29ad7a76f49','N','Y','Y',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1001161,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,40,'N','N',30,'Y',1001966,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','57f2627f-7ba2-4069-b8d5-96c369fbbac0','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,1001170,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,60,'N','N',40,'Y',1001967,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','dfbeb590-29a1-44f6-9233-8199e98abdb5','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,1001171,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,255,'N','N',50,'Y',1001968,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','1d095279-51c5-4329-8350-ad3bc97fba6a','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,5,1001172,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,22,'N','N','Y',1001969,'N','LBR','Collection Occurrence','49d2a1f1-fb38-46ab-b8e9-3f7fc3a83cbe','N','N',0,0,0,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001167,TO_DATE('2014-08-20 15:33:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,36,'N','N',60,'Y',1001970,'N','LBR','Collection Occurrence','6ab444a3-67be-4df5-8304-838fb339b63b','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001168,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,22,'N','N',70,'Y',1001971,'N','LBR','Collection Occurrences Group','23a9a89e-b6d3-42ce-8e82-abe7116669f9','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1001169,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:33:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000100,1,'N','N',80,'Y',1001972,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','44222f33-70d7-479e-baf7-2f2fa7c338f9','N','Y',0,0,0,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,2,0,2,1001166,TO_DATE('2014-08-20 15:33:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001970
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001971
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001966
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001967
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001968
;

-- Aug 20, 2014 3:34:24 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001972
;

-- Aug 20, 2014 3:34:45 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-20 15:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001971
;

-- Aug 20, 2014 3:37:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:37:53','YYYY-MM-DD HH24:MI:SS'),'Y','25bd896f-e56a-4b5a-b29f-e48ee91957b7',0,TO_DATE('2014-08-20 15:37:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'01 - Código do Banco Inválido',0,1000000,'01')
;

-- Aug 20, 2014 3:39:46 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:39:46','YYYY-MM-DD HH24:MI:SS'),'Y','b7f4fff5-c834-426c-88a8-3794e364adb3',0,TO_DATE('2014-08-20 15:39:46','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'02 - Código do Registro Detalhe Inválido',0,1000001,'02')
;

-- Aug 20, 2014 3:40:02 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:40:02','YYYY-MM-DD HH24:MI:SS'),'Y','62cda3fd-f032-477a-bb78-d3371dcb3739',0,TO_DATE('2014-08-20 15:40:02','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'03 - Código do Segmento Inválido',0,1000002,'03')
;

-- Aug 20, 2014 3:40:25 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:40:25','YYYY-MM-DD HH24:MI:SS'),'Y','03a045a4-0db3-4e9e-b16b-36f9036a7536',0,TO_DATE('2014-08-20 15:40:25','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'04 - Código de Movimento Não Permitido para Carteira',0,1000003,'04')
;

-- Aug 20, 2014 3:40:40 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:40:40','YYYY-MM-DD HH24:MI:SS'),'Y','83d3b20d-963c-4f3a-a8d0-3af777570cdd',0,TO_DATE('2014-08-20 15:40:40','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'05 - Código de Movimento Inválido',0,1000004,'05')
;

-- Aug 20, 2014 3:41:09 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:41:09','YYYY-MM-DD HH24:MI:SS'),'Y','6e779d53-68ca-4775-9951-67e52673b45f',0,TO_DATE('2014-08-20 15:41:09','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'06 - Tipo/Número de Inscrição do Cedente Inválidos',0,1000005,'06')
;

-- Aug 20, 2014 3:41:42 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:41:42','YYYY-MM-DD HH24:MI:SS'),'Y','c59ea1c6-7a6c-49f1-a429-3c4aa86cc225',0,TO_DATE('2014-08-20 15:41:42','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'07 - Agência/Conta/DV Inválido',0,1000006,'07')
;

-- Aug 20, 2014 3:41:58 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:41:58','YYYY-MM-DD HH24:MI:SS'),'Y','5e2f8d45-853c-4cc7-aa51-0c71e0faa14d',0,TO_DATE('2014-08-20 15:41:58','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'08 - Nosso Número Inválido',0,1000007,'08')
;

-- Aug 20, 2014 3:42:12 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:42:12','YYYY-MM-DD HH24:MI:SS'),'Y','ac4ef068-159c-4ac1-8856-3907e1ca42da',0,TO_DATE('2014-08-20 15:42:12','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'09 - Nosso Número Duplicado',0,1000008,'09')
;

-- Aug 20, 2014 3:42:27 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:42:27','YYYY-MM-DD HH24:MI:SS'),'Y','f0e3ba30-5042-4d3e-87fe-94a8169b33e8',0,TO_DATE('2014-08-20 15:42:27','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'10 - Carteira Inválida',0,1000009,'10')
;

-- Aug 20, 2014 3:42:44 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:42:44','YYYY-MM-DD HH24:MI:SS'),'Y','13e221af-6760-44e2-94fa-a1c885d03133',0,TO_DATE('2014-08-20 15:42:44','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'11 - Forma de Cadastramento do Título Inválido',0,1000010,'11')
;

-- Aug 20, 2014 3:42:59 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:42:59','YYYY-MM-DD HH24:MI:SS'),'Y','0c866163-e9fd-4301-8f22-eb400df17ee5',0,TO_DATE('2014-08-20 15:42:59','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'12 - Tipo de Documento Inválido',0,1000011,'12')
;

-- Aug 20, 2014 3:43:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:43:20','YYYY-MM-DD HH24:MI:SS'),'Y','31795434-5cc8-4f73-b00d-137293a2baba',0,TO_DATE('2014-08-20 15:43:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'13 - Identificação da Emissão do Bloqueto Inválida',0,1000012,'13')
;

-- Aug 20, 2014 3:43:48 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:43:48','YYYY-MM-DD HH24:MI:SS'),'Y','eaa211c8-8845-47a3-9684-7d18f09f55bd',0,TO_DATE('2014-08-20 15:43:48','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'14 - Identificação da Distribuição do Bloqueto Inválida',0,1000013,'14')
;

-- Aug 20, 2014 3:44:12 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:44:12','YYYY-MM-DD HH24:MI:SS'),'Y','f66a9ebe-d606-4a16-86c2-36481daa8369',0,TO_DATE('2014-08-20 15:44:12','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'15 - Características da Cobrança Incompatíveis',0,1000014,'15')
;

-- Aug 20, 2014 3:44:26 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:44:26','YYYY-MM-DD HH24:MI:SS'),'Y','c98f369a-82ce-410b-9943-e779edea5e8f',0,TO_DATE('2014-08-20 15:44:26','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'16 - Data de Vencimento Inválida',0,1000015,'16')
;

-- Aug 20, 2014 3:45:36 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:45:36','YYYY-MM-DD HH24:MI:SS'),'Y','d0b41b91-f9a1-4367-8d45-6a09d5171933',0,TO_DATE('2014-08-20 15:45:36','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'17 - Data de Vencimento Anterior à Data de Emissão',0,1000016,'17')
;

-- Aug 20, 2014 3:45:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:45:53','YYYY-MM-DD HH24:MI:SS'),'Y','23a91e98-918e-4dde-8012-957b1afe03a8',0,TO_DATE('2014-08-20 15:45:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'18 - Vencimento Fora do Prazo de Operação',0,1000017,'18')
;

-- Aug 20, 2014 3:47:12 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:47:12','YYYY-MM-DD HH24:MI:SS'),'Y','051f562a-5fc9-433d-a44e-93e9429fcec4',0,TO_DATE('2014-08-20 15:47:12','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'19 - Título Banco Corresp. com Venc. Inferior a XX Dias',0,1000018,'19')
;

-- Aug 20, 2014 3:47:27 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:47:27','YYYY-MM-DD HH24:MI:SS'),'Y','65744d5c-2559-4b00-bdca-672a88fe6308',0,TO_DATE('2014-08-20 15:47:27','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'20 - Valor do Título Inválido',0,1000019,'20')
;

-- Aug 20, 2014 3:47:47 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:47:47','YYYY-MM-DD HH24:MI:SS'),'Y','3c8b57df-c31e-4bc6-b76f-7c7c21fe0021',0,TO_DATE('2014-08-20 15:47:47','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'21 - Espécie do Título Inválida',0,1000020,'21')
;

-- Aug 20, 2014 3:52:49 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:52:49','YYYY-MM-DD HH24:MI:SS'),'Y','e37ec5e8-525d-4e7f-b88b-eeb7701f87dd',0,TO_DATE('2014-08-20 15:52:49','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'22 - Espécie do Título Não Permitida para a Carteira',0,1000021,'22')
;

-- Aug 20, 2014 3:52:59 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:52:59','YYYY-MM-DD HH24:MI:SS'),'Y','2c1d8b86-2e03-4ab2-8fd5-f1c046c98fbc',0,TO_DATE('2014-08-20 15:52:59','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'23 - Aceite Inválido',0,1000022,'23')
;

-- Aug 20, 2014 3:53:13 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:53:13','YYYY-MM-DD HH24:MI:SS'),'Y','26e54b0b-dd40-42a0-affd-fc1e86f5ec4a',0,TO_DATE('2014-08-20 15:53:13','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'24 - Data da Emissão Inválida',0,1000023,'24')
;

-- Aug 20, 2014 3:53:33 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:53:33','YYYY-MM-DD HH24:MI:SS'),'Y','f38b3489-a858-4f36-9f1f-a2cbbb660ede',0,TO_DATE('2014-08-20 15:53:33','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'25 - Data da Emissão Posterior à Data de Entrada',0,1000024,'25')
;

-- Aug 20, 2014 3:53:55 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:53:55','YYYY-MM-DD HH24:MI:SS'),'Y','3b009892-b31d-41e6-b3fd-7e1d2e77d82f',0,TO_DATE('2014-08-20 15:53:55','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'26 - Código de Juros de Mora Inválido',0,1000025,'26')
;

-- Aug 20, 2014 3:54:16 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:54:16','YYYY-MM-DD HH24:MI:SS'),'Y','5bb9d7e6-3552-42de-9a0b-a8fc8ba294ef',0,TO_DATE('2014-08-20 15:54:16','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'27 - Valor/Taxa de Juros de Mora Inválido',0,1000026,'27')
;

-- Aug 20, 2014 3:54:32 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:54:32','YYYY-MM-DD HH24:MI:SS'),'Y','472fa269-7e7f-4a33-bdf7-fa48f44ead2f',0,TO_DATE('2014-08-20 15:54:32','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'28 - Código do Desconto Inválido',0,1000027,'28')
;

-- Aug 20, 2014 3:54:59 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:54:59','YYYY-MM-DD HH24:MI:SS'),'Y','f8e9e58b-76bc-4584-8ad3-0f2b2f370edd',0,TO_DATE('2014-08-20 15:54:59','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'29 - Valor do Desconto Maior/Igual ao Valor do Título',0,1000028,'29')
;

-- Aug 20, 2014 3:55:12 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 15:55:12','YYYY-MM-DD HH24:MI:SS'),'Y','46f237de-b71a-4a29-b7ee-857ec07b4eb2',0,TO_DATE('2014-08-20 15:55:12','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'30 - Desconto a Conceder Não Confere',0,1000029,'30')
;

-- Aug 20, 2014 4:00:55 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:00:55','YYYY-MM-DD HH24:MI:SS'),'Y','c0899da4-d216-4634-83ee-22440a188f7b',0,TO_DATE('2014-08-20 16:00:55','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'31 - Concessão de Desconto - Já Existe Desconto Anterior',0,1000030,'31')
;

-- Aug 20, 2014 4:01:08 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:01:08','YYYY-MM-DD HH24:MI:SS'),'Y','d4d265eb-c882-4db4-a7b9-ea29171669f6',0,TO_DATE('2014-08-20 16:01:08','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'32 - Valor do IOF Inválido',0,1000031,'32')
;

-- Aug 20, 2014 4:01:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:01:20','YYYY-MM-DD HH24:MI:SS'),'Y','959aea31-cf14-43b9-a0e6-ce89d04c27a0',0,TO_DATE('2014-08-20 16:01:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'33 - Valor do Abatimento Inválido',0,1000032,'33')
;

-- Aug 20, 2014 4:01:39 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:01:39','YYYY-MM-DD HH24:MI:SS'),'Y','2ace7e53-f962-43b5-b56c-5584f8d8ae27',0,TO_DATE('2014-08-20 16:01:39','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'34 - Valor do Abatimento Maior/Igual ao Valor do Título',0,1000033,'34')
;

-- Aug 20, 2014 4:01:54 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:01:54','YYYY-MM-DD HH24:MI:SS'),'Y','0952b6c8-d54d-4969-9c40-9eaecbb3edcd',0,TO_DATE('2014-08-20 16:01:54','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'35 - Valor a Conceder Não Confere',0,1000034,'35')
;

-- Aug 20, 2014 4:02:16 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:02:16','YYYY-MM-DD HH24:MI:SS'),'Y','edadb37c-3746-461b-a659-6b26a3d3c3db',0,TO_DATE('2014-08-20 16:02:16','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'36 - Concessão de Abatimento - Já Existe Abatimento Anterior',0,1000035,'36')
;

-- Aug 20, 2014 4:02:30 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:02:30','YYYY-MM-DD HH24:MI:SS'),'Y','a68e39f6-2221-4ec8-a3e8-5c945f75cb9b',0,TO_DATE('2014-08-20 16:02:30','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'37 - Código para Protesto Inválido',0,1000036,'37')
;

-- Aug 20, 2014 4:02:44 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:02:44','YYYY-MM-DD HH24:MI:SS'),'Y','ec9be4d8-9f42-4d97-9ae6-8279eed96292',0,TO_DATE('2014-08-20 16:02:44','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'38 - Prazo para Protesto Inválido',0,1000037,'38')
;

-- Aug 20, 2014 4:03:03 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:03:03','YYYY-MM-DD HH24:MI:SS'),'Y','514567e4-a5e4-4709-961d-c130623b7c68',0,TO_DATE('2014-08-20 16:03:03','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'39 - Pedido de Protesto Não Permitido para o Título',0,1000038,'39')
;

-- Aug 20, 2014 4:03:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:03:20','YYYY-MM-DD HH24:MI:SS'),'Y','db0b357a-cc45-481e-a64a-0aa5f5ca143c',0,TO_DATE('2014-08-20 16:03:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'40 - Título com Ordem de Protesto Emitida',0,1000039,'40')
;

-- Aug 20, 2014 4:04:34 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:04:34','YYYY-MM-DD HH24:MI:SS'),'Y','212b2597-4ba9-4b8d-af47-b21f493948f9',0,TO_DATE('2014-08-20 16:04:34','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'41 - Pedido de Canc./Sustação para Título sem Inst. de Prot.',0,1000040,'41')
;

-- Aug 20, 2014 4:04:54 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:04:54','YYYY-MM-DD HH24:MI:SS'),'Y','59247296-85eb-4823-9246-42c206ff9319',0,TO_DATE('2014-08-20 16:04:54','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'42 - Código para Baixa/Devolução Inválido',0,1000041,'42')
;

-- Aug 20, 2014 4:07:39 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:07:39','YYYY-MM-DD HH24:MI:SS'),'Y','cf63bd4c-8241-482f-82c7-61ac981a532c',0,TO_DATE('2014-08-20 16:07:39','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'43 - Prazo para Baixa/Devolução Inválido',0,1000042,'43')
;

-- Aug 20, 2014 4:08:28 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:08:28','YYYY-MM-DD HH24:MI:SS'),'Y','ba8f9f32-7736-489b-b829-48bb2a34da74',0,TO_DATE('2014-08-20 16:08:28','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'44 - Código da Moeda Inválido',0,1000043,'44')
;

-- Aug 20, 2014 4:09:26 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:09:26','YYYY-MM-DD HH24:MI:SS'),'Y','da923abf-bc97-468f-a12b-592678946ed5',0,TO_DATE('2014-08-20 16:09:26','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'45 - Nome do Sacado Não Informado',0,1000044,'45')
;

-- Aug 20, 2014 4:11:41 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:11:41','YYYY-MM-DD HH24:MI:SS'),'Y','5079b280-59ae-4601-93a4-153db1bd804e',0,TO_DATE('2014-08-20 16:11:41','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'46 - Tipo/Núm. de Inscrição do Sacado Inválidos',0,1000045,'46')
;

-- Aug 20, 2014 4:12:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:12:20','YYYY-MM-DD HH24:MI:SS'),'Y','c439a37b-fda4-4bc3-81bd-fa4df41ea478',0,TO_DATE('2014-08-20 16:12:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'47 - Endereço do Sacado Não Informado',0,1000046,'47')
;

-- Aug 20, 2014 4:12:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:12:53','YYYY-MM-DD HH24:MI:SS'),'Y','9c30212a-3911-4807-a2c2-cb842628fcfa',0,TO_DATE('2014-08-20 16:12:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'48 - CEP Inválido',0,1000047,'48')
;

-- Aug 20, 2014 4:14:06 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:14:06','YYYY-MM-DD HH24:MI:SS'),'Y','be7c7db9-9a8c-4643-a122-19a3c9e6d963',0,TO_DATE('2014-08-20 16:14:06','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'49 - CEP sem Praça de Cobrança (Não Localizado)',0,1000048,'49')
;

-- Aug 20, 2014 4:14:26 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:14:26','YYYY-MM-DD HH24:MI:SS'),'Y','3d302981-e378-4dce-a19f-eed2b279b558',0,TO_DATE('2014-08-20 16:14:26','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'50 - CEP Referente a um Banco Correspondente',0,1000049,'50')
;

-- Aug 20, 2014 4:14:47 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:14:47','YYYY-MM-DD HH24:MI:SS'),'Y','4dd0417a-9a08-45ae-b08b-73ad0035dbf5',0,TO_DATE('2014-08-20 16:14:47','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'51 - CEP incompatível com a Unidade da Federação',0,1000050,'51')
;

-- Aug 20, 2014 4:15:01 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','6f64b591-b229-4df0-8980-331752080b3a',0,TO_DATE('2014-08-20 16:15:01','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'52 - Unidade da Federação Inválida',0,1000051,'52')
;

-- Aug 20, 2014 4:15:28 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:15:28','YYYY-MM-DD HH24:MI:SS'),'Y','dbb982fc-9a1a-4547-a5d9-c2ea6cf78c1e',0,TO_DATE('2014-08-20 16:15:28','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'53 - Tipo/Núm. de Inscrição do Sacador/Avalista Inválidos',0,1000052,'53')
;

-- Aug 20, 2014 4:15:45 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:15:45','YYYY-MM-DD HH24:MI:SS'),'Y','eb4211b9-4ccf-4a59-b4e9-9a7dee015976',0,TO_DATE('2014-08-20 16:15:45','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'54 - Sacador/Avalista Não Informado',0,1000053,'54')
;

-- Aug 20, 2014 4:16:01 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:16:01','YYYY-MM-DD HH24:MI:SS'),'Y','cd3515aa-8434-49ba-a2ba-a7c7482d6aba',0,TO_DATE('2014-08-20 16:16:01','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'55 - Nosso Número no Banco Correspondente Não Informado',0,1000054,'55')
;

-- Aug 20, 2014 4:16:21 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:16:21','YYYY-MM-DD HH24:MI:SS'),'Y','c9256446-b1a7-4cac-9633-077441b49c86',0,TO_DATE('2014-08-20 16:16:21','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'56 - Código do Banco Correspondente Não Informado',0,1000055,'56')
;

-- Aug 20, 2014 4:16:36 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:16:36','YYYY-MM-DD HH24:MI:SS'),'Y','539144c0-dbee-4125-bb4d-e547e6ed4da4',0,TO_DATE('2014-08-20 16:16:36','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'57 - Código da Multa Inválido',0,1000056,'57')
;

-- Aug 20, 2014 4:16:48 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:16:48','YYYY-MM-DD HH24:MI:SS'),'Y','824b3a18-485e-4a5e-aa34-b5e8520d65a7',0,TO_DATE('2014-08-20 16:16:48','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'58 - Data da Multa Inválida',0,1000057,'58')
;

-- Aug 20, 2014 4:17:04 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:17:04','YYYY-MM-DD HH24:MI:SS'),'Y','c94f34aa-bb72-4232-a823-b6509f89a1ff',0,TO_DATE('2014-08-20 16:17:04','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'59 - Valor/Percentual da Multa Inválido',0,1000058,'59')
;

-- Aug 20, 2014 4:17:23 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:17:23','YYYY-MM-DD HH24:MI:SS'),'Y','7415a7c3-2390-482b-895e-dd4419c45c3f',0,TO_DATE('2014-08-20 16:17:23','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'60 - Movimento para Título Não Cadastrado',0,1000059,'60')
;

-- Aug 20, 2014 4:17:45 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:17:45','YYYY-MM-DD HH24:MI:SS'),'Y','2de31cfd-a336-4d3a-ad54-d3db62930f47',0,TO_DATE('2014-08-20 16:17:45','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'61 - Alteração da Agência Cobradora/DV Inválida',0,1000060,'61')
;

-- Aug 20, 2014 4:18:00 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:18:00','YYYY-MM-DD HH24:MI:SS'),'Y','95e3631b-00ab-42dc-8237-bcb0520f6651',0,TO_DATE('2014-08-20 16:18:00','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'62 - Tipo de Impressão Inválido',0,1000061,'62')
;

-- Aug 20, 2014 4:18:14 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:18:14','YYYY-MM-DD HH24:MI:SS'),'Y','6bb6e159-75fd-4e64-8c57-7ef5f875f84c',0,TO_DATE('2014-08-20 16:18:14','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'63 - Entrada para Título já Cadastrado',0,1000062,'63')
;

-- Aug 20, 2014 4:18:26 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y','2fe1c3a1-1658-44da-921f-30ceb03ed8d2',0,TO_DATE('2014-08-20 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'64 - Número da Linha Inválido',0,1000063,'64')
;

-- Aug 20, 2014 4:18:46 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:18:46','YYYY-MM-DD HH24:MI:SS'),'Y','994819bb-5528-4c92-b892-d4a78f18f1d3',0,TO_DATE('2014-08-20 16:18:46','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'65 - Código do Banco para Débito Inválido',0,1000064,'65')
;

-- Aug 20, 2014 4:19:07 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:19:07','YYYY-MM-DD HH24:MI:SS'),'Y','dd8323fc-4341-4e4f-8cb0-445068dbdac1',0,TO_DATE('2014-08-20 16:19:07','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'66 - Agência/Conta/DV para Débito Inválido',0,1000065,'66')
;

-- Aug 20, 2014 4:20:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:20:18','YYYY-MM-DD HH24:MI:SS'),'Y','8ca4df4b-482d-49f0-a133-317214502c2b',0,TO_DATE('2014-08-20 16:20:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'67 - Dados para Débito Incompatív. com a Identif. da Emissão',0,1000066,'67')
;

-- Aug 20, 2014 4:20:31 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:20:31','YYYY-MM-DD HH24:MI:SS'),'Y','e5322d94-0a46-4631-9814-952f455eed46',0,TO_DATE('2014-08-20 16:20:31','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'68 - Débito Automático Agendado',0,1000067,'68')
;

-- Aug 20, 2014 4:20:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:20:53','YYYY-MM-DD HH24:MI:SS'),'Y','fde75610-777a-474e-9b78-9c06984a06da',0,TO_DATE('2014-08-20 16:20:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'69 - Débito Não Agendado - Erro nos Dados da Remessa',0,1000068,'69')
;

-- Aug 20, 2014 4:22:41 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:22:41','YYYY-MM-DD HH24:MI:SS'),'Y','8e8ba6fb-a01c-4dd5-88a5-351b6c79ed59',0,TO_DATE('2014-08-20 16:22:41','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'70 - Débito Não Agendado - Sacado Não Consta Cadastro Autor.',0,1000069,'70')
;

-- Aug 20, 2014 4:24:46 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:24:46','YYYY-MM-DD HH24:MI:SS'),'Y','b0629299-6c46-4aa2-9e4d-452a2807e99c',0,TO_DATE('2014-08-20 16:24:46','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'71 - Débito Não Agendado - Cedente Não Autor. pelo Sacado',0,1000070,'71')
;

-- Aug 20, 2014 4:28:14 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:28:14','YYYY-MM-DD HH24:MI:SS'),'Y','0d025796-10a2-4cbc-a333-e3234512ffbf',0,TO_DATE('2014-08-20 16:28:14','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'72 - Débito Não Agendado - Cedente Não Participa da Mod.',0,1000071,'72')
;

-- Aug 20, 2014 4:28:48 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:28:48','YYYY-MM-DD HH24:MI:SS'),'Y','ff43f63d-72e9-4d7c-a1e5-c66910df2a0e',0,TO_DATE('2014-08-20 16:28:48','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'73 - Débito Não Agendado - Cód. Moeda Diferente de Real (R$)',0,1000072,'73')
;

-- Aug 20, 2014 4:29:08 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:29:08','YYYY-MM-DD HH24:MI:SS'),'Y','02b113cd-3a85-40a8-8c91-82839bbee3ca',0,TO_DATE('2014-08-20 16:29:08','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'74 - Débito Não Agendado - Data de Vencimento Inválida',0,1000073,'74')
;

-- Aug 20, 2014 4:29:40 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:29:40','YYYY-MM-DD HH24:MI:SS'),'Y','4c8e8739-3c8e-427e-b71a-b6d96a3d2bea',0,TO_DATE('2014-08-20 16:29:40','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'75 - Débito Não Agendado - Conf. seu Pedido, Título Não Reg.',0,1000074,'75')
;

-- Aug 20, 2014 4:30:52 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:30:52','YYYY-MM-DD HH24:MI:SS'),'Y','7aabb693-1b78-48b3-99a3-39d4a1f760d9',0,TO_DATE('2014-08-20 16:30:52','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'76 - Débito Não Agendado - Tipo/Núm. Inscr. do Deb. Inválido',0,1000075,'76')
;

-- Aug 20, 2014 4:31:31 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:31:31','YYYY-MM-DD HH24:MI:SS'),'Y','88880f28-016f-48d0-a558-03b7a5f8f846',0,TO_DATE('2014-08-20 16:31:31','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'77 - Transferência para Desc. Não Permitida para a Carteira',0,1000076,'77')
;

-- Aug 20, 2014 4:32:11 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:32:11','YYYY-MM-DD HH24:MI:SS'),'Y','112b53d9-731a-43f0-9c29-ae997600596b',0,TO_DATE('2014-08-20 16:32:11','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'78 - Data Inferior/Igual ao Venc. para Débito Automático',0,1000077,'78')
;

-- Aug 20, 2014 4:32:23 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:32:23','YYYY-MM-DD HH24:MI:SS'),'Y','8fc23743-a207-486e-9862-8d132623ba86',0,TO_DATE('2014-08-20 16:32:23','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'79 - Data Juros de Mora Inválido',0,1000078,'79')
;

-- Aug 20, 2014 4:32:36 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:32:36','YYYY-MM-DD HH24:MI:SS'),'Y','4138d1fd-9ed5-42b6-9cb6-6d6a8445d93c',0,TO_DATE('2014-08-20 16:32:36','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'80 - Data do Desconto Inválida',0,1000079,'80')
;

-- Aug 20, 2014 4:32:58 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:32:58','YYYY-MM-DD HH24:MI:SS'),'Y','3fa14750-6570-4ca7-aca1-cf06dc3fe456',0,TO_DATE('2014-08-20 16:32:58','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'81 - Tentativas de Débito Esgotadas - Baixado',0,1000080,'81')
;

-- Aug 20, 2014 4:33:17 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:33:17','YYYY-MM-DD HH24:MI:SS'),'Y','e8a1c38d-fe1d-4240-8342-94d5a471697a',0,TO_DATE('2014-08-20 16:33:17','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'82 - Tentativas de Débito Esgotadas - Pendente',0,1000081,'82')
;

-- Aug 20, 2014 4:33:30 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:33:30','YYYY-MM-DD HH24:MI:SS'),'Y','671cdb37-df5e-4327-ac85-f0c3bfacfcd3',0,TO_DATE('2014-08-20 16:33:30','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'83 - Limite Excedido',0,1000082,'83')
;

-- Aug 20, 2014 4:33:46 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:33:46','YYYY-MM-DD HH24:MI:SS'),'Y','41d05b53-02f9-431f-bf7d-932c537c6143',0,TO_DATE('2014-08-20 16:33:46','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'84 - Número Autorização Inexistente',0,1000083,'84')
;

-- Aug 20, 2014 4:34:00 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:34:00','YYYY-MM-DD HH24:MI:SS'),'Y','a7bf9a6a-af09-4716-8ee9-e6d53e07124f',0,TO_DATE('2014-08-20 16:34:00','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'85 - Título com Pagamento Vinculado',0,1000084,'85')
;

-- Aug 20, 2014 4:34:15 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:34:15','YYYY-MM-DD HH24:MI:SS'),'Y','68f29a25-93ce-43f2-b6f3-19627c7e1b41',0,TO_DATE('2014-08-20 16:34:15','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'86 - Seu Número Inválido',0,1000085,'86')
;

-- Aug 20, 2014 4:34:33 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:34:33','YYYY-MM-DD HH24:MI:SS'),'Y','94c5dae0-b639-4b51-85ba-9f35e5f75b6d',0,TO_DATE('2014-08-20 16:34:33','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'87 - E-mail/SMS Enviado',0,1000086,'87')
;

-- Aug 20, 2014 4:34:45 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:34:45','YYYY-MM-DD HH24:MI:SS'),'Y','45c61de2-3e5c-4d94-b1c1-4e864d60a20b',0,TO_DATE('2014-08-20 16:34:45','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'88 - E-mail Lido',0,1000087,'88')
;

-- Aug 20, 2014 4:35:17 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:35:17','YYYY-MM-DD HH24:MI:SS'),'Y','aacda565-bb38-44f0-b7b5-0ef8a0c611fa',0,TO_DATE('2014-08-20 16:35:17','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'89 - E-mail/SMS Devolvido - Incorreto',0,1000088,'89')
;

-- Aug 20, 2014 4:35:39 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:35:39','YYYY-MM-DD HH24:MI:SS'),'Y','2917ccba-0ec5-465c-be3d-b8e6d99d4a4e',0,TO_DATE('2014-08-20 16:35:39','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'90 - E-mail Devolvido - Caixa Postal Cheia',0,1000089,'90')
;

-- Aug 20, 2014 4:36:07 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:36:07','YYYY-MM-DD HH24:MI:SS'),'Y','10921488-d4b8-4383-bdcd-7cb76f416e23',0,TO_DATE('2014-08-20 16:36:07','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'91 - E-mail/Núm. do Celular do Sacado Não Informado',0,1000090,'91')
;

-- Aug 20, 2014 4:36:50 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:36:50','YYYY-MM-DD HH24:MI:SS'),'Y','fc8e9baa-53ab-4463-ae7e-9ba0fb8c4f0b',0,TO_DATE('2014-08-20 16:36:50','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'92 - Sacado Optante por Bloqueto Eletrônico - E-mail Não Env',0,1000091,'92')
;

-- Aug 20, 2014 4:37:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:37:18','YYYY-MM-DD HH24:MI:SS'),'Y','efcf2a63-1214-484b-bdc1-82750c7879e4',0,TO_DATE('2014-08-20 16:37:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'93 - Cód. Emissão Bloqueto Não Permite Envio de E-mail',0,1000092,'93')
;

-- Aug 20, 2014 4:37:44 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:37:44','YYYY-MM-DD HH24:MI:SS'),'Y','a0bf754c-1c2c-4a86-acde-75c4b14a6709',0,TO_DATE('2014-08-20 16:37:44','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'94 - Cód. da Carteira Inválido para Envio de E-mail',0,1000093,'94')
;

-- Aug 20, 2014 4:38:01 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:38:01','YYYY-MM-DD HH24:MI:SS'),'Y','128b7835-5049-4c15-83fb-7a14765dc550',0,TO_DATE('2014-08-20 16:38:01','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'95 - Contrato Não Permite o Envio de E-mail',0,1000094,'95')
;

-- Aug 20, 2014 4:38:13 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:38:13','YYYY-MM-DD HH24:MI:SS'),'Y','428d2cb1-441b-42f4-a177-679cbcfd17c0',0,TO_DATE('2014-08-20 16:38:13','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'96 - Número de Contrato Inválido',0,1000095,'96')
;

-- Aug 20, 2014 4:38:48 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:38:48','YYYY-MM-DD HH24:MI:SS'),'Y','b18dfcc2-5b91-46e9-8dd2-8f2b39899fe5',0,TO_DATE('2014-08-20 16:38:48','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'97 - Rejeição da Alteração do Prazo Limite de Recebimento',0,1000096,'97')
;

-- Aug 20, 2014 4:39:05 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:39:05','YYYY-MM-DD HH24:MI:SS'),'Y','42365444-e9ef-472c-b307-f490e1835958',0,TO_DATE('2014-08-20 16:39:05','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'98 - Rejeição de Dispensa de Prazo Limite de Recebimento',0,1000097,'98')
;

-- Aug 20, 2014 4:39:41 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:39:41','YYYY-MM-DD HH24:MI:SS'),'Y','9c919280-82a9-49ae-9bcf-e96e7967ec5d',0,TO_DATE('2014-08-20 16:39:41','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'99 - Rejeição da Alter. do Núm. do Título Dado pelo Cedente',0,1000098,'99')
;

-- Aug 20, 2014 4:40:09 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:40:09','YYYY-MM-DD HH24:MI:SS'),'Y','f716ba15-f5ca-43ac-8b96-aa2ea3985f1b',0,TO_DATE('2014-08-20 16:40:09','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A1 - Rejeição da Alteração do Núm. Controle Participante',0,1000099,'A1')
;

-- Aug 20, 2014 4:40:27 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:40:27','YYYY-MM-DD HH24:MI:SS'),'Y','c99927ae-85c6-48dd-8324-ed1ac5f22f04',0,TO_DATE('2014-08-20 16:40:27','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A2 - Rejeição da Alteração dos Dados do Sacado',0,1000100,'A2')
;

-- Aug 20, 2014 4:40:50 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:40:50','YYYY-MM-DD HH24:MI:SS'),'Y','0707c977-00c2-49c5-b470-63ed545fa2d4',0,TO_DATE('2014-08-20 16:40:50','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A3 - Rejeição da Alteração dos Dados do Sacador/Avalista',0,1000101,'A3')
;

-- Aug 20, 2014 4:41:01 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:41:01','YYYY-MM-DD HH24:MI:SS'),'Y','4583ff5c-95e9-4bcb-8755-37a876e659cc',0,TO_DATE('2014-08-20 16:41:01','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A4 - Sacado DDA',0,1000102,'A4')
;

-- Aug 20, 2014 4:41:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:41:20','YYYY-MM-DD HH24:MI:SS'),'Y','d3e0bac5-a345-41d2-b590-fa957a6630b8',0,TO_DATE('2014-08-20 16:41:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A5 - Registro Rejeitado - Título já Liquidado',0,1000103,'A5')
;

-- Aug 20, 2014 4:41:43 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:41:43','YYYY-MM-DD HH24:MI:SS'),'Y','baae4ddf-b4a8-41f6-975d-a079c131b461',0,TO_DATE('2014-08-20 16:41:43','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A6 - Cód. do Convenente Inválido ou Encerrado',0,1000104,'A6')
;

-- Aug 20, 2014 4:42:07 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:42:07','YYYY-MM-DD HH24:MI:SS'),'Y','0ee94f8c-43ae-4c7b-bca1-b74c4a4d6712',0,TO_DATE('2014-08-20 16:42:07','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A7 - Título já se Encontra na Situação Pretendida',0,1000105,'A7')
;

-- Aug 20, 2014 4:42:24 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:42:24','YYYY-MM-DD HH24:MI:SS'),'Y','ce94e5c9-7b85-469b-9ef4-6c1e3d65b44a',0,TO_DATE('2014-08-20 16:42:24','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A8 - Valor do Abatimento Inválido para Cancelamento',0,1000106,'A8')
;

-- Aug 20, 2014 4:42:40 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:42:40','YYYY-MM-DD HH24:MI:SS'),'Y','82a7b847-6485-4c65-9a14-096c27ab83c2',0,TO_DATE('2014-08-20 16:42:40','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'A9 - Não Autoriza Pagamento Parcial',0,1000107,'A9')
;

-- Aug 20, 2014 4:42:55 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:42:55','YYYY-MM-DD HH24:MI:SS'),'Y','c358fda7-de86-4600-9d77-a8bab2bccaa0',0,TO_DATE('2014-08-20 16:42:55','YYYY-MM-DD HH24:MI:SS'),0,0,1000000,'B1 - Autoriza Recebimento Parcial',0,1000108,'B1')
;

-- Aug 20, 2014 4:43:54 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:43:54','YYYY-MM-DD HH24:MI:SS'),'Y','dbec60a7-3b8b-4363-bd4c-2899687e4cc8',0,TO_DATE('2014-08-20 16:43:54','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'01 - Tarifa de Extrato de Posição',0,1000109,'01')
;

-- Aug 20, 2014 4:44:32 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:44:32','YYYY-MM-DD HH24:MI:SS'),'Y','002c60f1-fc5e-46c7-81d6-c5305045936e',0,TO_DATE('2014-08-20 16:44:32','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'02 - Tarifa de Manutenção de Título Vencido',0,1000110,'02')
;

-- Aug 20, 2014 4:44:48 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:44:48','YYYY-MM-DD HH24:MI:SS'),'Y','5dcd535e-b3b2-43c6-bb2e-a0e99840ae36',0,TO_DATE('2014-08-20 16:44:48','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'03 - Tarifa de Sustação',0,1000111,'03')
;

-- Aug 20, 2014 4:45:02 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:45:02','YYYY-MM-DD HH24:MI:SS'),'Y','56312c7e-b20f-4a26-bfd5-c3a14e75410f',0,TO_DATE('2014-08-20 16:45:02','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'04 - Tarifa de Protesto',0,1000112,'04')
;

-- Aug 20, 2014 4:45:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:45:18','YYYY-MM-DD HH24:MI:SS'),'Y','154c2ad5-8283-40f9-b5c7-c1d7d85c90c6',0,TO_DATE('2014-08-20 16:45:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'05 - Tarifa de Outras Instruções',0,1000113,'05')
;

-- Aug 20, 2014 4:45:32 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:45:32','YYYY-MM-DD HH24:MI:SS'),'Y','1f1d510e-4e66-421e-8d00-de23143d560b',0,TO_DATE('2014-08-20 16:45:32','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'06 - Tarifa de Outras Ocorrências',0,1000114,'06')
;

-- Aug 20, 2014 4:45:51 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:45:51','YYYY-MM-DD HH24:MI:SS'),'Y','63e8c7c1-9a92-4b11-aa1a-839b7e1b389c',0,TO_DATE('2014-08-20 16:45:51','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'07 - Tarifa de Envio de Duplicata ao Sacado',0,1000115,'07')
;

-- Aug 20, 2014 4:46:06 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:46:06','YYYY-MM-DD HH24:MI:SS'),'Y','4c056692-61f0-4bb0-b48b-5811df896de1',0,TO_DATE('2014-08-20 16:46:06','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'08 - Custas de Protesto',0,1000116,'08')
;

-- Aug 20, 2014 4:46:21 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:46:21','YYYY-MM-DD HH24:MI:SS'),'Y','8aa63865-ca37-457b-b3c4-b30e9b3818e9',0,TO_DATE('2014-08-20 16:46:21','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'09 - Custas de Sustação de Protesto',0,1000117,'09')
;

-- Aug 20, 2014 4:46:44 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:46:44','YYYY-MM-DD HH24:MI:SS'),'Y','4caf8777-7aea-4b45-afe4-b244af0b4972',0,TO_DATE('2014-08-20 16:46:44','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'10 - Custas de Cartório Distribuidor',0,1000118,'10')
;

-- Aug 20, 2014 4:47:07 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:47:07','YYYY-MM-DD HH24:MI:SS'),'Y','e55a420b-f312-439a-befd-828a6b2720b4',0,TO_DATE('2014-08-20 16:47:07','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'11 - Custas de Edital',0,1000119,'11')
;

-- Aug 20, 2014 4:47:30 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:47:30','YYYY-MM-DD HH24:MI:SS'),'Y','2bdcdbb9-5610-4c45-8b67-960db01cfd31',0,TO_DATE('2014-08-20 16:47:30','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'12 - Tarifa sobre Devolução de Título Vencido',0,1000120,'12')
;

-- Aug 20, 2014 4:47:55 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:47:55','YYYY-MM-DD HH24:MI:SS'),'Y','fe1c83c1-be02-439c-a78f-37ade253acac',0,TO_DATE('2014-08-20 16:47:55','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'13 - Tarifa sobre Registro Cobrada na Baixa/Liquidação',0,1000121,'13')
;

-- Aug 20, 2014 4:48:21 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:48:21','YYYY-MM-DD HH24:MI:SS'),'Y','4fe39786-c750-4e7b-9589-6e10a16eabb2',0,TO_DATE('2014-08-20 16:48:21','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'14 - Tarifa sobre Reapresentação Automática',0,1000122,'14')
;

-- Aug 20, 2014 4:48:42 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:48:42','YYYY-MM-DD HH24:MI:SS'),'Y','a9c035ad-ecb3-405d-9d05-6420cf482923',0,TO_DATE('2014-08-20 16:48:42','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'15 - Tarifa sobre Rateio de Crédito',0,1000123,'15')
;

-- Aug 20, 2014 4:49:02 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:49:02','YYYY-MM-DD HH24:MI:SS'),'Y','d28e9571-c349-4465-81ba-a7eb48172612',0,TO_DATE('2014-08-20 16:49:02','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'16 - Tarifa sobre Informações Via Fax',0,1000124,'16')
;

-- Aug 20, 2014 4:49:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:49:18','YYYY-MM-DD HH24:MI:SS'),'Y','ef54f560-f459-4f95-818e-1e5febbfd43c',0,TO_DATE('2014-08-20 16:49:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'17 - Tarifa sobre Prorrogação de Vencimento',0,1000125,'17')
;

-- Aug 20, 2014 4:49:38 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','824ccd5d-51c6-415f-879f-c6668e677447',0,TO_DATE('2014-08-20 16:49:38','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'18 - Tarifa sobre Alteração de Abatimento/Desconto',0,1000126,'18')
;

-- Aug 20, 2014 4:49:59 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:49:59','YYYY-MM-DD HH24:MI:SS'),'Y','06625aa8-bb40-46f4-a332-ff9aeadf6285',0,TO_DATE('2014-08-20 16:49:59','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'19 - Tarifa sobre Arquivo Mensal (Em Ser)',0,1000127,'19')
;

-- Aug 20, 2014 4:50:28 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:50:28','YYYY-MM-DD HH24:MI:SS'),'Y','242676be-d856-4c72-a889-72f7d5893172',0,TO_DATE('2014-08-20 16:50:28','YYYY-MM-DD HH24:MI:SS'),0,0,1000001,'20 - Tarifa sobre Emissão de Bloqueto Pré-Emitido pelo Banco',0,1000128,'20')
;

-- Aug 20, 2014 4:51:19 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:51:19','YYYY-MM-DD HH24:MI:SS'),'Y','cc213a21-b1cb-4482-a943-77f24d28df7a',0,TO_DATE('2014-08-20 16:51:19','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'01 - Por Saldo',0,1000129,'01')
;

-- Aug 20, 2014 4:51:31 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:51:31','YYYY-MM-DD HH24:MI:SS'),'Y','77fbedc3-1c15-4754-95c1-c80bc2ce4b2f',0,TO_DATE('2014-08-20 16:51:31','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'02 - Por Conta',0,1000130,'02')
;

-- Aug 20, 2014 4:51:51 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:51:51','YYYY-MM-DD HH24:MI:SS'),'Y','2d894e81-f944-4c96-8e32-22c265aa5736',0,TO_DATE('2014-08-20 16:51:51','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'03 - Liquidação no Guichê de Caixa em Dinheiro',0,1000131,'03')
;

-- Aug 20, 2014 4:52:04 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:52:04','YYYY-MM-DD HH24:MI:SS'),'Y','f6f13ec5-6b7c-4abd-9d20-d7ebb2c1722c',0,TO_DATE('2014-08-20 16:52:04','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'04 - Compensação Eletrônica',0,1000132,'04')
;

-- Aug 20, 2014 4:52:20 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:52:20','YYYY-MM-DD HH24:MI:SS'),'Y','e5380566-1068-4fce-bd98-390f27207a75',0,TO_DATE('2014-08-20 16:52:20','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'05 - Compensação Convencional',0,1000133,'05')
;

-- Aug 20, 2014 4:52:35 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:52:35','YYYY-MM-DD HH24:MI:SS'),'Y','7f920f52-4ee9-427d-8ab5-4d22a06a32e3',0,TO_DATE('2014-08-20 16:52:35','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'06 - Por Meio Eletrônico',0,1000134,'06')
;

-- Aug 20, 2014 4:52:46 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:52:46','YYYY-MM-DD HH24:MI:SS'),'Y','d696edda-46fd-448c-94f7-efbf7b3cae75',0,TO_DATE('2014-08-20 16:52:46','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'07 - Após Feriado Local',0,1000135,'07')
;

-- Aug 20, 2014 4:52:57 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:52:57','YYYY-MM-DD HH24:MI:SS'),'Y','9f8fd659-8a6d-454c-adaa-808b566889df',0,TO_DATE('2014-08-20 16:52:57','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'08 - Em Cartório',0,1000136,'08')
;

-- Aug 20, 2014 4:53:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:53:18','YYYY-MM-DD HH24:MI:SS'),'Y','8477341a-4f60-4776-8bae-fcd87b67af32',0,TO_DATE('2014-08-20 16:53:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'30 - Liquidação no Guichê de Caixa em Cheque',0,1000137,'30')
;

-- Aug 20, 2014 4:53:35 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:53:35','YYYY-MM-DD HH24:MI:SS'),'Y','4fdcdfe9-7a6b-4b4e-8e4a-1179127a0a4b',0,TO_DATE('2014-08-20 16:53:35','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'31 - Liquidação em Banco Correspondente',0,1000138,'31')
;

-- Aug 20, 2014 4:53:54 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:53:54','YYYY-MM-DD HH24:MI:SS'),'Y','a208f624-fb7d-4e20-8b81-8984a3ce943d',0,TO_DATE('2014-08-20 16:53:54','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'32 - Liquidação Terminal de Auto-Atendimento',0,1000139,'32')
;

-- Aug 20, 2014 4:54:14 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:54:14','YYYY-MM-DD HH24:MI:SS'),'Y','91c02924-a60a-4fbd-9754-2ab2c35ccb8b',0,TO_DATE('2014-08-20 16:54:14','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'33 - Liquidação na Internet (Home Banking)',0,1000140,'33')
;

-- Aug 20, 2014 4:54:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:54:53','YYYY-MM-DD HH24:MI:SS'),'Y','4e6a59b4-0694-4ccf-a545-0502a0b8e0b0',0,TO_DATE('2014-08-20 16:54:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'34 - Liquidação Office Banking',0,1000141,'34')
;

-- Aug 20, 2014 4:55:14 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:55:14','YYYY-MM-DD HH24:MI:SS'),'Y','0e18c07d-7f44-47b9-8b6f-edfc4ca7a210',0,TO_DATE('2014-08-20 16:55:14','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'35 - Liquidado Correspondente em Dinheiro',0,1000142,'35')
;

-- Aug 20, 2014 4:55:26 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:55:26','YYYY-MM-DD HH24:MI:SS'),'Y','3b853c6d-0845-4e03-8e18-fc25cec5d5ae',0,TO_DATE('2014-08-20 16:55:26','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'36 - Liquidado Correspondente em Cheque',0,1000143,'36')
;

-- Aug 20, 2014 4:55:53 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:55:53','YYYY-MM-DD HH24:MI:SS'),'Y','eb290744-2edf-4999-a1e8-b3b62eb318c8',0,TO_DATE('2014-08-20 16:55:53','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'37 - Liquidado por Meio de Central de Atendimento (Telefone)',0,1000144,'37')
;

-- Aug 20, 2014 4:56:08 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:56:08','YYYY-MM-DD HH24:MI:SS'),'Y','35390286-8e37-46d6-b713-6ee5082af29f',0,TO_DATE('2014-08-20 16:56:08','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'09 - Comandada Banco',0,1000145,'09')
;

-- Aug 20, 2014 4:56:23 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','93a704fa-6bbf-47fe-9916-4e10a5ab8bea',0,TO_DATE('2014-08-20 16:56:23','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'10 - Comandada Cliente Arquivo',0,1000146,'10')
;

-- Aug 20, 2014 4:56:51 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:56:51','YYYY-MM-DD HH24:MI:SS'),'Y','381c6454-2aaf-4328-92fa-ad22a005ad28',0,TO_DATE('2014-08-20 16:56:51','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'11 - Comandada Cliente On-line',0,1000147,'11')
;

-- Aug 20, 2014 4:57:05 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:57:05','YYYY-MM-DD HH24:MI:SS'),'Y','1bde5366-8354-4a72-a5eb-b80df6f8e2f4',0,TO_DATE('2014-08-20 16:57:05','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'12 - Decurso Prazo - Cliente',0,1000148,'12')
;

-- Aug 20, 2014 4:57:18 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:57:18','YYYY-MM-DD HH24:MI:SS'),'Y','b310f8bc-ce86-45b8-bddd-ca2529191f92',0,TO_DATE('2014-08-20 16:57:18','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'13 - Decurso Prazo - Banco',0,1000149,'13')
;

-- Aug 20, 2014 4:57:30 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:57:30','YYYY-MM-DD HH24:MI:SS'),'Y','b738f0fc-0956-4119-b8a3-5d48187bccd6',0,TO_DATE('2014-08-20 16:57:30','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'14 - Protestado',0,1000150,'14')
;

-- Aug 20, 2014 4:57:42 PM BRT
INSERT INTO LBR_Cob_Ocorrencia (Updated,IsActive,LBR_Cob_Ocorrencia_UU,AD_Client_ID,Created,CreatedBy,UpdatedBy,LBR_Cob_GO_ID,Name,AD_Org_ID,LBR_Cob_Ocorrencia_ID,Value) VALUES (TO_DATE('2014-08-20 16:57:42','YYYY-MM-DD HH24:MI:SS'),'Y','29819fa5-1ef2-4345-9686-1b7af5e9bbdf',0,TO_DATE('2014-08-20 16:57:42','YYYY-MM-DD HH24:MI:SS'),0,0,1000002,'15 - Título Excluído',0,1000151,'15')
;

-- Aug 20, 2014 5:07:29 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','6',0,1000058,'N','N','N','LBR','L','ac607925-35c0-4258-94fe-877572594160','Y','Y','LBR_Cob_Movimento','Maintain Collection Movements','Collection Movement','Y',0,0,TO_DATE('2014-08-20 17:07:29','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-20 17:07:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:07:29 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000074,'Table LBR_Cob_Movimento','LBR_Cob_Movimento',1,'98ce2db1-0f1f-47b3-8d32-d0be10d820ca',0,TO_DATE('2014-08-20 17:07:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-20 17:07:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:08:10 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Movimento_ID',1000361,'Collection Movement','Collection Movement','356a89bc-972f-4b02-a8f6-603a02fe088e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 17:08:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 17:08:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:08:18 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Movimento_UU',1000362,'Collection Movement','Collection Movement','bda77b42-a01b-4a05-984d-1a00d71b9aa0',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 17:08:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 17:08:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:08:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001173,'N','N','N',0,'N',22,'N','N','N','Y','b7360bba-281b-4467-af58-a63c3e8d916e','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-20 17:08:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:08:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000058,129,0,'LBR')
;

-- Aug 20, 2014 5:08:50 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCobMovimento', FKConstraintType='N',Updated=TO_DATE('2014-08-20 17:08:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001173
;

-- Aug 20, 2014 5:08:50 PM BRT
CREATE TABLE LBR_Cob_Movimento (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Aug 20, 2014 5:08:50 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT ADClient_LBRCobMovimento FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 5:09:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001174,'N','N','N',0,'N',22,'N','N','N','Y','72817051-55cc-4947-84ae-7375f325e3e7','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-20 17:09:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:09:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000058,104,0,'LBR')
;

-- Aug 20, 2014 5:09:06 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCobMovimento', FKConstraintType='N',Updated=TO_DATE('2014-08-20 17:09:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001174
;

-- Aug 20, 2014 5:09:06 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 5:09:06 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT ADOrg_LBRCobMovimento FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 5:09:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001175,'N','N','N',0,'N',7,'N','N','N','Y','c88ec79b-f955-4f17-b17d-2a5a7a326dd1','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-20 17:09:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:09:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000058,0,'LBR')
;

-- Aug 20, 2014 5:09:22 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD Created DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 5:09:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001176,'N','N','N',0,'N',22,'N','N','N','Y','e3c2ea9e-0141-464b-8889-07fc49d2ebfd','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-20 17:09:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:09:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000058,0,'LBR')
;

-- Aug 20, 2014 5:09:39 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCobMovimento', FKConstraintType='N',Updated=TO_DATE('2014-08-20 17:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001176
;

-- Aug 20, 2014 5:09:39 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 5:09:39 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT CreatedBy_LBRCobMovimento FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 5:09:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001177,'N','N','N',0,'N',7,'N','N','N','Y','37ae7728-cebe-4e47-b680-6b8dbe7365cf','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-20 17:09:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:09:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000058,0,'LBR')
;

-- Aug 20, 2014 5:09:52 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 20, 2014 5:10:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001178,'Y','N','N',0,'N',1,'N','N','N','Y','d69cdb9c-52b9-46c0-b9e1-1a4e50c8912e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-20 17:10:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:10:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000058,0,'LBR')
;

-- Aug 20, 2014 5:10:11 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 20, 2014 5:10:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001179,'N','N','N',0,'N',22,'N','Y','N','Y','e4c8a991-aa5b-4f44-b544-24ec545c30e4','N','LBR_Cob_Movimento_ID','Collection Movement','N',TO_DATE('2014-08-20 17:10:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:10:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000361,13,1000058,0,'LBR')
;

-- Aug 20, 2014 5:10:31 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD LBR_Cob_Movimento_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 5:10:31 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT LBR_Cob_Movimento_Key PRIMARY KEY (LBR_Cob_Movimento_ID)
;

-- Aug 20, 2014 5:10:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001180,'N','N','N',0,'N',36,'N','N','N','Y','8b55a721-b251-4ed2-8901-dc01a41de7b3','N','LBR_Cob_Movimento_UU','Collection Movement','N',TO_DATE('2014-08-20 17:10:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:10:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000362,10,1000058,0,'LBR')
;

-- Aug 20, 2014 5:10:52 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD LBR_Cob_Movimento_UU VARCHAR2(36) DEFAULT NULL 
;

-- Aug 20, 2014 5:10:52 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT LBR_Cob_Movimento_UU_idx UNIQUE (LBR_Cob_Movimento_UU)
;

-- Aug 20, 2014 5:11:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001181,'N','N','N',0,'N',40,'Y','N','N','Y','f43b9412-43ff-4e16-86d5-fe45d6de1c46','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-08-20 17:11:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:11:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000058,0,'LBR')
;

-- Aug 20, 2014 5:11:33 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD Value VARCHAR2(40) DEFAULT NULL 
;

-- Aug 20, 2014 5:11:47 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001182,'N','N','Y',0,'N',60,'Y','N','N','Y','32fa9e57-8df5-42fc-b6c4-6c7dafc36e57','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-20 17:11:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:11:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000058,0,'LBR')
;

-- Aug 20, 2014 5:11:53 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-08-20 17:11:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001182
;

-- Aug 20, 2014 5:11:55 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD Name VARCHAR2(60) NOT NULL
;

-- Aug 20, 2014 5:12:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001183,'N','N','N',0,'N',255,'Y','N','N','Y','98f56229-8e1b-4fc3-8cd7-363b0908fef8','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-20 17:12:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:12:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000058,0,'LBR')
;

-- Aug 20, 2014 5:12:11 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Aug 20, 2014 5:12:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001184,'N','N','N',0,'N',22,'N','N','N','Y','9eb6287e-d776-4097-92a3-b48faad8bdc4','Y','LBR_Cob_GO_ID','Collection Occurrences Group','Y',TO_DATE('2014-08-20 17:12:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:12:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000357,19,1000058,0,'LBR')
;

-- Aug 20, 2014 5:12:51 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobGO_LBRCobMovimento', FKConstraintType='N',Updated=TO_DATE('2014-08-20 17:12:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001184
;

-- Aug 20, 2014 5:12:51 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD LBR_Cob_GO_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 20, 2014 5:12:51 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT LBRCobGO_LBRCobMovimento FOREIGN KEY (LBR_Cob_GO_ID) REFERENCES lbr_cob_go(lbr_cob_go_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 20, 2014 5:13:30 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','Y','N','N',0,0,'LBR','Collection Movement','Maintain movement codes',1000023,'66c3aecb-f0aa-49d7-85d2-856b5bf488a1',TO_DATE('2014-08-20 17:13:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_DATE('2014-08-20 17:13:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:13:56 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000023,10,'N','N','N','N','N','Y','N',0,'e8d4dc11-9ad6-4796-b553-e0ddaadda65f','U','Movement','Maintain movement codes',1000101,0,0,TO_DATE('2014-08-20 17:13:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000058,'B',TO_DATE('2014-08-20 17:13:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N',10,'Y',1001973,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','1c086081-75c8-4ad9-8d76-f1251676deef','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,0,2,1001173,TO_DATE('2014-08-20 17:14:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N',20,'Y',1001974,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','2e7ab9cd-9362-402e-8c16-00bbf081b8ea','N','Y','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1001174,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,40,'N','N',30,'Y',1001975,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','e2f457d9-fab1-4688-a87f-289f89f04e11','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,1001181,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,60,'N','N',40,'Y',1001976,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','1b3a84b5-f735-44b2-9f69-8582c3889b55','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,1001182,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,255,'N','N',50,'Y',1001977,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','5c93468a-ea6b-4e23-96fa-149b7a30c8a1','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,5,1001183,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N','Y',1001978,'N','LBR','Collection Movement','96eedbda-afea-44b2-ad32-4b41c55c0288','N','N',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001179,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,36,'N','N',60,'Y',1001979,'N','LBR','Collection Movement','416b8337-7423-45bf-a8d1-4181299190c9','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001180,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N',70,'Y',1001980,'N','LBR','Collection Occurrences Group','da951a35-2137-45b8-9395-ab278dda95dc','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1001184,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,1,'N','N',80,'Y',1001981,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','9f3641a8-bc49-4c61-ab7a-d2f5c01089f2','N','Y',0,0,0,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,2,0,2,1001178,TO_DATE('2014-08-20 17:14:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:14:48 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001979
;

-- Aug 20, 2014 5:14:48 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001981
;

-- Aug 20, 2014 5:17:26 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNAB240MovementType',1000363,NULL,'Movement Type','Movement Type','9b2f4b5a-2a84-4b3c-86b9-82ba7212d01c',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-20 17:17:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-20 17:17:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:18:26 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000083,'LBR_CNAB240MovementType','LBR','78dc98a8-5335-4c87-867f-2bb343f51cf3','N','L',0,0,TO_DATE('2014-08-20 17:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-20 17:18:26','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 20, 2014 5:18:54 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000762,1000083,'19e3a88c-b345-4785-befc-b34caabee7f3','1',TO_DATE('2014-08-20 17:18:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-20 17:18:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Remessa (Cliente -> Banco)')
;

-- Aug 20, 2014 5:19:28 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000763,1000083,'3946bcef-d2ee-4837-bfd6-e3cd66129d66','2',TO_DATE('2014-08-20 17:19:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-20 17:19:28','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Retorno (Banco -> Cliente)')
;

-- Aug 20, 2014 5:19:54 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001185,'N','N','N',0,'N',1,'N','N','N','Y','6e5ce442-7eb3-4b83-9c51-71e3b546f5ed','Y','LBR_CNAB240MovementType','Movement Type','Y',TO_DATE('2014-08-20 17:19:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-20 17:19:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000363,17,1000083,1000058,0,'LBR')
;

-- Aug 20, 2014 5:20:07 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-08-20 17:20:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001185
;

-- Aug 20, 2014 5:20:09 PM BRT
ALTER TABLE LBR_Cob_Movimento ADD LBR_CNAB240MovementType CHAR(1) NOT NULL
;

-- Aug 20, 2014 5:20:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,1,'N','N',80,'Y',1001982,'N','LBR','Movement Type','3ef63294-7dda-4368-8916-82a351a08d64','N','Y',0,0,0,TO_DATE('2014-08-20 17:20:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1001185,TO_DATE('2014-08-20 17:20:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:20:37 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001982
;

-- Aug 20, 2014 5:20:37 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001980
;

-- Aug 20, 2014 5:21:41 PM BRT
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@LBR_CNAB240MovementType@=2', XPosition=4,Updated=TO_DATE('2014-08-20 17:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001980
;

-- Aug 20, 2014 5:26:30 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000023,1000030,'N','Y','N','LBR','Y','Collection Movement','Maintain movement codes','c87888cc-2bca-4b02-8f12-cfd66668b577','W','Y',0,TO_DATE('2014-08-20 17:26:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-20 17:26:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 20, 2014 5:26:30 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000030, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000030)
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 5:26:35 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 5:26:39 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 20, 2014 5:26:44 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 20, 2014 5:27:12 PM BRT
UPDATE AD_Table SET AD_Window_ID=1000023,Updated=TO_DATE('2014-08-20 17:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000058
;

-- Aug 21, 2014 9:01:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001186,'N','N','N',0,'N',22,'N','N','N','Y','342644d5-d1ce-4cf4-b2d8-3a0151e98192','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-21 09:01:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 09:01:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000058,0,'LBR')
;

-- Aug 21, 2014 9:01:47 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCobMovimento', FKConstraintType='N',Updated=TO_DATE('2014-08-21 09:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001186
;

-- Aug 21, 2014 9:01:47 AM BRT
ALTER TABLE LBR_Cob_Movimento ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 9:01:47 AM BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT UpdatedBy_LBRCobMovimento FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21/08/2014 9h38min44s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:38:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:38:44','YYYY-MM-DD HH24:MI:SS'),'Y',1000000,'74bcfe3a-7a92-4d5e-b829-3622ec16dbff','01','01 - Entrada de Títulos','1',0)
;

-- 21/08/2014 9h39min44s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_Cob_GO_ID,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:39:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:39:44','YYYY-MM-DD HH24:MI:SS'),'Y',1000001,'dd1ff67f-ba8f-4467-be24-7f57c1a8cb85','02','02 - Entrada Confirmada',1000000,'2',0)
;

-- 21/08/2014 9h40min4s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:40:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:40:04','YYYY-MM-DD HH24:MI:SS'),'Y',1000002,'0159ad3d-e02c-4c6c-8411-3447ebbff46f','02','02 - Pedido de Baixa','1',0)
;

-- 21/08/2014 9h49min55s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:49:55','YYYY-MM-DD HH24:MI:SS'),'Y',1000003,'667de571-d7da-4b15-9a98-7c7a3987f1d1','03','03 - Protesto para Fins Falimentares','1',0)
;

-- 21/08/2014 9h50min12s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:50:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:50:12','YYYY-MM-DD HH24:MI:SS'),'Y',1000004,'9e28580c-1ff5-4ccb-9edf-5adf05feae55','04','04 - Concessão de Abatimento','1',0)
;

-- 21/08/2014 9h50min29s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:50:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:50:29','YYYY-MM-DD HH24:MI:SS'),'Y',1000005,'38e59d8a-c3f4-43f0-b949-33107040d202','05','05 - Cancelamento de Abatimento','1',0)
;

-- 21/08/2014 9h50min45s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:50:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:50:45','YYYY-MM-DD HH24:MI:SS'),'Y',1000006,'0a889903-f336-42c5-b979-d4553fc563db','06','06 - Alteração de Vencimento','1',0)
;

-- 21/08/2014 9h50min58s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:50:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:50:58','YYYY-MM-DD HH24:MI:SS'),'Y',1000007,'7accb305-9603-4cd6-ad02-a6e9f1558be6','07','07 - Concessão de Desconto','1',0)
;

-- 21/08/2014 9h51min11s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:51:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:51:11','YYYY-MM-DD HH24:MI:SS'),'Y',1000008,'91c5703c-005c-4224-b53d-dffc8820a458','08','08 - Cancelamento de Desconto','1',0)
;

-- 21/08/2014 9h51min23s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:51:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:51:23','YYYY-MM-DD HH24:MI:SS'),'Y',1000009,'d4e488f7-c0c9-49a8-ba95-6589474bc689','09','09 - Protestar','1',0)
;

-- 21/08/2014 9h51min40s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:51:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:51:40','YYYY-MM-DD HH24:MI:SS'),'Y',1000010,'883e27db-ac98-4d2a-b210-1e03efe59d5a','10','10 - Sustar Protesto e Baixar Título','1',0)
;

-- 21/08/2014 9h52min0s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:52:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:52:00','YYYY-MM-DD HH24:MI:SS'),'Y',1000011,'6af0089d-e19c-40e2-bf31-60b66e6f13bf','11','11 - Sustar Protesto e Manter em Carteira','1',0)
;

-- 21/08/2014 9h52min13s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:52:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:52:13','YYYY-MM-DD HH24:MI:SS'),'Y',1000012,'ec7e66a9-870b-45eb-816e-56e609b56c9c','12','12 - Alteração de Juros de Mora','1',0)
;

-- 21/08/2014 9h52min32s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:52:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:52:32','YYYY-MM-DD HH24:MI:SS'),'Y',1000013,'5b05a1dd-ee3a-4e91-89b1-a24cb6131c7e','13','13 - Dispensar Cobrança de Juros de Mora','1',0)
;

-- 21/08/2014 9h52min52s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:52:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:52:52','YYYY-MM-DD HH24:MI:SS'),'Y',1000014,'2acafbcc-6174-418e-81f8-84d63c37d215','14','14 - Alteração de Valor/Percentual de Multa','1',0)
;

-- 21/08/2014 9h53min14s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:53:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:53:14','YYYY-MM-DD HH24:MI:SS'),'Y',1000015,'bcad133c-46d3-4c12-9287-8e5bee7438e2','15','15 - Dispensar Cobrança de Multa','1',0)
;

-- 21/08/2014 9h53min32s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:53:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:53:32','YYYY-MM-DD HH24:MI:SS'),'Y',1000016,'a97ced99-2d27-4e60-a2a4-a8a840474646','16','16 - Alteração de Valor/Data de Desconto','1',0)
;

-- 21/08/2014 9h53min45s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:53:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:53:45','YYYY-MM-DD HH24:MI:SS'),'Y',1000017,'e6476e66-dcd9-436f-9cd2-3499b139632e','17','17 - Não Conceder Desconto','1',0)
;

-- 21/08/2014 9h53min59s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:53:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:53:59','YYYY-MM-DD HH24:MI:SS'),'Y',1000018,'45ffa361-1eac-4dbb-8f6c-7510635e836b','18','18 - Alteração do Valor de Abatimento','1',0)
;

-- 21/08/2014 9h54min14s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:54:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:54:14','YYYY-MM-DD HH24:MI:SS'),'Y',1000019,'c9056236-0e84-4cfb-9b05-bcb735bf1a77','19','19 - Prazo Limite de Recebimento - Alterar','1',0)
;

-- 21/08/2014 9h54min28s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:54:28','YYYY-MM-DD HH24:MI:SS'),'Y',1000020,'101ef167-6aea-45b7-a80b-2252d7290edc','20','20 - Prazo Limite de Recebimento - Dispensar','1',0)
;

-- 21/08/2014 9h54min49s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:54:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:54:49','YYYY-MM-DD HH24:MI:SS'),'Y',1000021,'4abceee4-1444-4f81-956f-e4f4520890ed','21','21 - Alterar Número do Título Dado pelo Cedente','1',0)
;

-- 21/08/2014 9h55min8s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:55:08','YYYY-MM-DD HH24:MI:SS'),'Y',1000022,'b8f0cf2e-2950-437d-b1cc-f71b22f4bbf9','22','22 - Alterar Número Controle do Participante','1',0)
;

-- 21/08/2014 9h55min21s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:55:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:55:21','YYYY-MM-DD HH24:MI:SS'),'Y',1000023,'65f0092a-55b0-4094-8870-043579234eaa','23','23 - Alterar Dados do Sacado','1',0)
;

-- 21/08/2014 9h55min37s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:55:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:55:37','YYYY-MM-DD HH24:MI:SS'),'Y',1000024,'3c5c0248-8c31-4b97-993f-ba44e151cd36','24','24 - Alterar Dados do Sacador/Avalista','1',0)
;

-- 21/08/2014 9h55min53s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:55:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:55:53','YYYY-MM-DD HH24:MI:SS'),'Y',1000025,'a675f95e-c132-4fe6-8f15-c4cfa1b4541b','30','30 - Recusa da Alegação do Sacado','1',0)
;

-- 21/08/2014 9h56min9s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:56:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:56:09','YYYY-MM-DD HH24:MI:SS'),'Y',1000026,'7baa786e-3309-4978-b4a4-422c1ecb6886','31','31 - Alteração de Outros Dados','1',0)
;

-- 21/08/2014 9h56min29s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:56:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:56:29','YYYY-MM-DD HH24:MI:SS'),'Y',1000027,'b1575cd4-49d8-4bb3-b139-c583957d0133','33','33 - Alteração dos Dados do Rateio de Crédito','1',0)
;

-- 21/08/2014 9h56min50s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:56:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:56:50','YYYY-MM-DD HH24:MI:SS'),'Y',1000028,'e1e779d8-91b2-4f51-aeaa-0e1eebcc8b24','34','34 - Pedido de Cancelamento dos Dados do Rateio de Crédito','1',0)
;

-- 21/08/2014 9h57min9s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:57:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:57:09','YYYY-MM-DD HH24:MI:SS'),'Y',1000029,'81ab0bfc-5e82-4afa-9d3a-20d351c1fafb','35','35 - Pedido de Desagendamento do Débito Automático','1',0)
;

-- 21/08/2014 9h57min22s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:57:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:57:22','YYYY-MM-DD HH24:MI:SS'),'Y',1000030,'1e4f97a7-8010-4251-9eb9-5f2410a15396','40','40 - Alteração de Carteira','1',0)
;

-- 21/08/2014 9h57min34s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:57:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:57:34','YYYY-MM-DD HH24:MI:SS'),'Y',1000031,'de727d2b-3c27-4afe-99cf-5f46bd9c41a5','41','41 - Cancelar Protesto','1',0)
;

-- 21/08/2014 9h57min49s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:57:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:57:49','YYYY-MM-DD HH24:MI:SS'),'Y',1000032,'1e84951c-1a3f-4150-ab36-9171ca0bc8dd','42','42 - Alteração de Espécie de Título','1',0)
;

-- 21/08/2014 9h58min13s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:58:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:58:13','YYYY-MM-DD HH24:MI:SS'),'Y',1000033,'ade4e236-9b3c-42dd-8a9d-1aec3ccf2a90','43','43 - Transferência de Carteira/Modalidade de Cobrança','1',0)
;

-- 21/08/2014 9h58min27s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:58:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:58:27','YYYY-MM-DD HH24:MI:SS'),'Y',1000034,'20abbf00-65e1-43b4-b756-fbb6a2bab97e','44','44 - Alteração de Contrato de Cobrança','1',0)
;

-- 21/08/2014 9h58min42s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:58:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:58:42','YYYY-MM-DD HH24:MI:SS'),'Y',1000035,'dada7e7d-b2e7-4606-8204-afe7cefb4b53','45','45 - Negativação Sem Protesto','1',0)
;

-- 21/08/2014 9h59min13s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 09:59:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 09:59:13','YYYY-MM-DD HH24:MI:SS'),'Y',1000036,'0f2e56ee-7c92-43a6-be24-f0bb9d95634c','46','46 - Solicitação de Baixa de Título Negativado Sem Protesto','1',0)
;

-- 21/08/2014 10h0min32s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:00:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:00:32','YYYY-MM-DD HH24:MI:SS'),'Y',1000037,'75c500eb-4eae-4643-80dc-1f1c64d26566','03','03 - Entrada Rejeitada','2',0)
;

-- 21/08/2014 10h0min56s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:00:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:00:56','YYYY-MM-DD HH24:MI:SS'),'Y',1000038,'2621830b-71df-41af-b890-b26780bd9aa4','04','04 - Transferência de Carteira/Entrada','2',0)
;

-- 21/08/2014 10h1min10s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:01:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:01:10','YYYY-MM-DD HH24:MI:SS'),'Y',1000039,'484e9280-d1c3-4b83-b556-f9c4c2d0f14e','05','05 - Transferência de Carteira/Baixa','2',0)
;

-- 21/08/2014 10h1min20s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:01:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:01:20','YYYY-MM-DD HH24:MI:SS'),'Y',1000040,'443fa0fd-8759-4a8d-8bef-cd482623225d','06','06 - Liquidação','2',0)
;

-- 21/08/2014 10h1min41s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:01:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:01:41','YYYY-MM-DD HH24:MI:SS'),'Y',1000041,'d939e0dd-49c6-49ea-b344-0179f7c806b1','07','07 - Confirmação do Recebimento da Instrução de Desconto','2',0)
;

-- 21/08/2014 10h2min0s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:02:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:02:00','YYYY-MM-DD HH24:MI:SS'),'Y',1000042,'017b7aad-5e28-4df8-996e-f45e1331e122','08','08 - Confirmação do Recebimento do Cancelamento do Desconto','2',0)
;

-- 21/08/2014 10h2min11s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:02:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:02:11','YYYY-MM-DD HH24:MI:SS'),'Y',1000043,'c121f699-39cc-47c1-9248-d953a3b77ede','09','09 - Baixa','2',0)
;

-- 21/08/2014 10h2min33s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:02:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:02:33','YYYY-MM-DD HH24:MI:SS'),'Y',1000044,'b75483d0-b756-4cf7-a719-cb0b7f1a452e','11','11 - Títulos em Carteira (Em Ser)','2',0)
;

-- 21/08/2014 10h2min54s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:02:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:02:54','YYYY-MM-DD HH24:MI:SS'),'Y',1000045,'5d4319e9-38dd-4213-973f-e35e62751b17','12','12 - Confirmação Recebimento Instrução de Abatimento','2',0)
;

-- 21/08/2014 10h3min37s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:03:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:03:37','YYYY-MM-DD HH24:MI:SS'),'Y',1000046,'bb8873a7-8bc6-455b-a73f-683f8584f29c','13','13 - Confirmação Receb. Instr. de Cancelamento Abatimento','2',0)
;

-- 21/08/2014 10h4min11s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:04:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:04:11','YYYY-MM-DD HH24:MI:SS'),'Y',1000047,'061b1d98-ec2d-4eea-96ee-ca0dc7d32905','14','14 - Confirmação Recebimento Instr. Alteração de Vencimento','2',0)
;

-- 21/08/2014 10h4min24s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:04:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:04:24','YYYY-MM-DD HH24:MI:SS'),'Y',1000048,'582d13a3-d364-472d-94c6-6d930c38239e','15','15 - Franco de Pagamento','2',0)
;

-- 21/08/2014 10h5min1s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:05:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:05:01','YYYY-MM-DD HH24:MI:SS'),'Y',1000049,'2bbcf843-6f54-4eb7-9a94-84b997f9d9ca','17','17 - Liquidação Após Baixa ou Liquid. Título Não Registrado','2',0)
;

-- 21/08/2014 10h5min19s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:05:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:05:19','YYYY-MM-DD HH24:MI:SS'),'Y',1000050,'79250ccb-79d8-44fd-ab9b-aada791114d1','19','19 - Confirmação Recebimento Instrução de Protesto','2',0)
;

-- 21/08/2014 10h6min6s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:06:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:06:06','YYYY-MM-DD HH24:MI:SS'),'Y',1000051,'cf9a2446-d973-472f-87d0-802280bacea7','20','20 - Confirmação Receb. Instr. de Sustação/Cancel. Protesto','2',0)
;

-- 21/08/2014 10h6min23s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:06:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:06:23','YYYY-MM-DD HH24:MI:SS'),'Y',1000052,'a847d3d3-4f20-4447-8edb-065dc1c27823','23','23 - Remessa a Cartório (Aporte em Cartório)','2',0)
;

-- 21/08/2014 10h6min44s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:06:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:06:44','YYYY-MM-DD HH24:MI:SS'),'Y',1000053,'830e518e-4209-4dbe-9ded-86c9cb563c77','24','24 - Retirada de Cartório e Manutenção em Carteira','2',0)
;

-- 21/08/2014 10h7min14s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:07:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:07:14','YYYY-MM-DD HH24:MI:SS'),'Y',1000054,'3a45aebe-7a15-4929-a9f5-7c4266d2e92d','25','25 - Protestado e Baixado (Baixa por ter sido Protestado)','2',0)
;

-- 21/08/2014 10h7min32s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:07:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:07:32','YYYY-MM-DD HH24:MI:SS'),'Y',1000055,'af2bff7d-eb0c-4ae1-a7fc-13d5b5ac7403','26','26 - Instrução Rejeitada','2',0)
;

-- 21/08/2014 10h7min54s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:07:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:07:54','YYYY-MM-DD HH24:MI:SS'),'Y',1000056,'ac9ada18-d2be-4dc8-92cc-bb862b44b5b3','27','27 - Confirmação do Pedido de Alteração de Outros Dados','2',0)
;

-- 21/08/2014 10h8min8s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:08:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:08:08','YYYY-MM-DD HH24:MI:SS'),'Y',1000057,'373c06df-cccc-4757-936b-da9677c2fecc','28','28 - Débito de Tarifas/Custas','2',0)
;

-- 21/08/2014 10h8min22s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:08:22','YYYY-MM-DD HH24:MI:SS'),'Y',1000058,'6b9bffac-4590-4287-ad77-b3cabf388341','29','29 - Ocorrência do Sacado','2',0)
;

-- 21/08/2014 10h8min37s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:08:37','YYYY-MM-DD HH24:MI:SS'),'Y',1000059,'0fe7ebab-b1aa-42a3-a40d-1e86e5b6616e','30','30 - Alteração de Dados Rejeitada','2',0)
;

-- 21/08/2014 10h9min2s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:09:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:09:02','YYYY-MM-DD HH24:MI:SS'),'Y',1000060,'1029df7f-e6d1-437b-b67b-e49b82279b28','33','33 - Confirmação da Alteração dos Dados do Rateio de Crédito','2',0)
;

-- 21/08/2014 10h9min31s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:09:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:09:31','YYYY-MM-DD HH24:MI:SS'),'Y',1000061,'90538078-de43-4f3b-aa00-62b95b84fd90','34','34 - Confirmação do Cancel. dos Dados do Rateio de Crédito','2',0)
;

-- 21/08/2014 10h10min9s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:10:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:10:09','YYYY-MM-DD HH24:MI:SS'),'Y',1000062,'2035185b-5e95-459d-8bc1-c6145ce62497','35','35 - Confirmação do Desagendamento Débito Automático','2',0)
;

-- 21/08/2014 10h10min26s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:10:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:10:26','YYYY-MM-DD HH24:MI:SS'),'Y',1000063,'812ba863-b12c-427f-b0c1-1707a94d629a','36','36 - Confirmação de Envio de E-mail/SMS','2',0)
;

-- 21/08/2014 10h10min44s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:10:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:10:44','YYYY-MM-DD HH24:MI:SS'),'Y',1000064,'8cf6717f-70af-4afa-8b84-b383f9b38549','37','37 - Envio de E-mail/SMS Rejeitado','2',0)
;

-- 21/08/2014 10h11min22s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:11:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:11:22','YYYY-MM-DD HH24:MI:SS'),'Y',1000065,'fcc4311a-99b8-426c-a84b-4e9d6e4dfd0c','38','38 - Confirmação de Alteração do Prazo Limite de Recebimento','2',0)
;

-- 21/08/2014 10h11min45s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:11:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:11:45','YYYY-MM-DD HH24:MI:SS'),'Y',1000066,'a2dd1a2e-0e9a-4f60-aa01-b908cca0ed58','39','39 - Confirmação de Dispensa de Prazo Limite de Recebimento','2',0)
;

-- 21/08/2014 10h12min37s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:12:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:12:37','YYYY-MM-DD HH24:MI:SS'),'Y',1000067,'47391010-ed37-4be0-91c3-2655d1c3843c','40','40 - Confirmação Alter. do Núm. do Título Dado pelo Cedente','2',0)
;

-- 21/08/2014 10h13min2s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:13:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:13:02','YYYY-MM-DD HH24:MI:SS'),'Y',1000068,'56d995bb-2a6d-4489-a4d7-321e1545fd9b','41','41 - Confirmação Alter. do Núm. Controle do Participante','2',0)
;

-- 21/08/2014 10h13min30s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:13:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:13:30','YYYY-MM-DD HH24:MI:SS'),'Y',1000069,'81624170-c7e8-4269-84bc-6261eeff4b71','42','42 - Confirmação da Alteração dos Dados do Sacado','2',0)
;

-- 21/08/2014 10h13min51s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:13:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:13:51','YYYY-MM-DD HH24:MI:SS'),'Y',1000070,'fc0b7ad4-97fe-48ad-ab00-295c1b0098d9','43','43 - Confirmação da Alteração dos Dados do Sacador/Avalista','2',0)
;

-- 21/08/2014 10h14min8s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:14:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:14:08','YYYY-MM-DD HH24:MI:SS'),'Y',1000071,'e3399def-ff8a-4aa4-9113-60e968991a47','44','44 - Título Pago com Cheque Devolvido','2',0)
;

-- 21/08/2014 10h14min22s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:14:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:14:22','YYYY-MM-DD HH24:MI:SS'),'Y',1000072,'7345d4c5-3a16-49d9-9942-f510c80a87fc','45','45 - Título Pago com Cheque Compensado','2',0)
;

-- 21/08/2014 10h14min44s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',1000073,'cb36b729-4ff2-414e-b4ef-ac94c5d62b57','46','46 - Instrução para Cancelar Protesto Confirmada','2',0)
;

-- 21/08/2014 10h15min15s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:15:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:15:15','YYYY-MM-DD HH24:MI:SS'),'Y',1000074,'8e0812a2-8e48-4ce5-8e1d-2ef876703862','47','47 - Instrução para Protesto Fins Falimentares Confirmada','2',0)
;

-- 21/08/2014 10h15min50s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:15:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:15:50','YYYY-MM-DD HH24:MI:SS'),'Y',1000075,'4b861966-57be-4830-96be-ed081ec56cb5','48','48 - Confirmação Instr. de Transf. de Carteira/Modalidade','2',0)
;

-- 21/08/2014 10h16min7s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:16:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:16:07','YYYY-MM-DD HH24:MI:SS'),'Y',1000076,'919cec41-bded-4537-ae82-e3d471c9c889','49','49 - Alteração de Contrato de Cobrança','2',0)
;

-- 21/08/2014 10h16min25s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:16:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:16:25','YYYY-MM-DD HH24:MI:SS'),'Y',1000077,'c0e2543f-0c41-4988-ae83-5e2c3cd03e03','50','50 - Título Pago com Cheque Pendente de Liquidação','2',0)
;

-- 21/08/2014 10h16min42s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:16:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:16:42','YYYY-MM-DD HH24:MI:SS'),'Y',1000078,'f48ec158-784e-4000-99af-15eb8fad7646','51','51 - Título DDA Reconhecido pelo Sacado','2',0)
;

-- 21/08/2014 10h16min55s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:16:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:16:55','YYYY-MM-DD HH24:MI:SS'),'Y',1000079,'c7fb4bca-92ec-48f0-81e1-d1a662583937','52','52 - Título DDA Não Reconhecido pelo Sacado','2',0)
;

-- 21/08/2014 10h17min17s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:17:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:17:17','YYYY-MM-DD HH24:MI:SS'),'Y',1000080,'ca226100-e02d-49f6-820a-08979540b92a','53','53 - Título DDA Recusado pela CIP','2',0)
;

-- 21/08/2014 10h17min58s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:17:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:17:58','YYYY-MM-DD HH24:MI:SS'),'Y',1000081,'c620302a-8393-43c7-bdaa-5befff4eff94','54','54 - Confirmação Instr. Baixa de Título Negat. Sem Protesto','2',0)
;

-- 21/08/2014 10h18min20s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:18:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:18:20','YYYY-MM-DD HH24:MI:SS'),'Y',1000082,'bfcff052-4147-4c02-a512-3d51b32d0bba','55','55 - Confirmação de Pedido de Dispensa de Multa','2',0)
;

-- 21/08/2014 10h18min48s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:18:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:18:48','YYYY-MM-DD HH24:MI:SS'),'Y',1000083,'63ca8bc0-2e27-4972-b531-b5c5c0f84916','56','56 - Confirmação do Pedido de Cobrança de Multa','2',0)
;

-- 21/08/2014 10h19min10s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:19:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:19:10','YYYY-MM-DD HH24:MI:SS'),'Y',1000084,'921dc09b-4a24-4429-ad43-723711abc889','57','57 - Confirmação do Pedido de Alteração de Cobrança de Juros','2',0)
;

-- 21/08/2014 10h19min43s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:19:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:19:43','YYYY-MM-DD HH24:MI:SS'),'Y',1000085,'c8792ea7-89a1-4139-8cdf-d4f4538e7d70','58','58 - Confirmação do Pedido de Alter. Valor/Data do Desconto','2',0)
;

-- 21/08/2014 10h20min3s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:20:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:20:03','YYYY-MM-DD HH24:MI:SS'),'Y',1000086,'20e3f8d4-152a-4010-b9fc-6b841e386c8e','59','59 - Confirmação do Pedido de Alter. do Cedente do Título','2',0)
;

-- 21/08/2014 10h20min24s BRT
INSERT INTO LBR_Cob_Movimento (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,IsActive,LBR_Cob_Movimento_ID,LBR_Cob_Movimento_UU,Value,Name,LBR_CNAB240MovementType,UpdatedBy) VALUES (0,0,TO_DATE('2014-08-21 10:20:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-21 10:20:24','YYYY-MM-DD HH24:MI:SS'),'Y',1000087,'df4b28b0-531d-482c-860b-76660f58f8c8','60','60 - Confirmação do Pedido de Dispensa de Juros de Mora','2',0)
;

-- 21/08/2014 10h21min12s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000000,Updated=TO_DATE('2014-08-21 10:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000037
;

-- 21/08/2014 10h21min21s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000000,Updated=TO_DATE('2014-08-21 10:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000055
;

-- 21/08/2014 10h21min26s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000000,Updated=TO_DATE('2014-08-21 10:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000059
;

-- 21/08/2014 10h21min42s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000001,Updated=TO_DATE('2014-08-21 10:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000057
;

-- 21/08/2014 10h22min1s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000002,Updated=TO_DATE('2014-08-21 10:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000049
;

-- 21/08/2014 10h22min10s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000002,Updated=TO_DATE('2014-08-21 10:22:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000043
;

-- 21/08/2014 10h22min14s BRT
UPDATE LBR_Cob_Movimento SET LBR_Cob_GO_ID=1000002,Updated=TO_DATE('2014-08-21 10:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_Cob_Movimento_ID=1000040
;

-- Aug 21, 2014 4:31:04 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000021,1000059,'Y','N','Y','LBR','L','5673b520-b8d0-4380-a24d-c35133ec7abe','Y','Y','LBR_BoletoMovement','Boleto Movements','Boleto Movements','Y',0,0,TO_DATE('2014-08-21 16:31:04','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-21 16:31:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:31:04 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000075,'Table LBR_BoletoMovement','LBR_BoletoMovement',1,'65815a68-8689-4dc9-bea0-3005b95533db',0,TO_DATE('2014-08-21 16:31:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-21 16:31:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:31:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001187,'N','N','N',0,'N',22,'N','N','N','Y','9701224f-b9fc-4471-8d8c-67ed28520447','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-21 16:31:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:31:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000059,129,0,'LBR')
;

-- Aug 21, 2014 4:31:36 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBoletoMovement', FKConstraintType='N',Updated=TO_DATE('2014-08-21 16:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001187
;

-- Aug 21, 2014 4:31:36 PM BRT
CREATE TABLE LBR_BoletoMovement (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Aug 21, 2014 4:31:38 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT ADClient_LBRBoletoMovement FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 21, 2014 4:31:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001188,'N','N','N',0,'N',22,'N','N','N','Y','683f20ad-de64-4cf7-93a5-6b3165554f18','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-21 16:31:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:31:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000059,104,0,'LBR')
;

-- Aug 21, 2014 4:31:55 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBoletoMovement', FKConstraintType='N',Updated=TO_DATE('2014-08-21 16:31:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001188
;

-- Aug 21, 2014 4:31:55 PM BRT
ALTER TABLE LBR_BoletoMovement ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:31:55 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT ADOrg_LBRBoletoMovement FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 21, 2014 4:32:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001189,'N','N','N',0,'N',7,'N','N','N','Y','2b291fd1-da13-467b-aba8-af1aa7fda73c','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-21 16:32:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:32:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000059,0,'LBR')
;

-- Aug 21, 2014 4:32:25 PM BRT
ALTER TABLE LBR_BoletoMovement ADD Created DATE DEFAULT SYSDATE
;

-- Aug 21, 2014 4:32:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001190,'N','N','N',0,'N',22,'N','N','N','Y','6d39de3b-5d6b-43e5-97e6-204ba009ab27','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-21 16:32:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:32:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000059,0,'LBR')
;

-- Aug 21, 2014 4:32:40 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBoletoMovement', FKConstraintType='N',Updated=TO_DATE('2014-08-21 16:32:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001190
;

-- Aug 21, 2014 4:32:40 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:32:40 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT CreatedBy_LBRBoletoMovement FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 21, 2014 4:33:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001191,'N','N','N',0,'N',7,'N','N','N','Y','52bbbc29-3de8-4a85-b006-c34a199ae4ff','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-21 16:33:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:33:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000059,0,'LBR')
;

-- Aug 21, 2014 4:33:01 PM BRT
ALTER TABLE LBR_BoletoMovement ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 21, 2014 4:33:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001192,'N','N','N',0,'N',22,'N','N','N','Y','a72dcca9-2864-4cf8-8677-ea6309f1df97','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-21 16:33:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:33:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000059,0,'LBR')
;

-- Aug 21, 2014 4:33:15 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBoletoMovement', FKConstraintType='N',Updated=TO_DATE('2014-08-21 16:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001192
;

-- Aug 21, 2014 4:33:15 PM BRT
ALTER TABLE LBR_BoletoMovement ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:33:15 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT UpdatedBy_LBRBoletoMovement FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 21, 2014 4:33:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001193,'Y','N','N',0,'N',1,'N','N','N','Y','f9fa259f-41f8-4f1c-ab0d-c23339d115a3','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-21 16:33:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:33:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000059,0,'LBR')
;

-- Aug 21, 2014 4:33:31 PM BRT
ALTER TABLE LBR_BoletoMovement ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 21, 2014 4:34:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoMovement_ID',1000364,'Boleto Movement','Boleto Movement','53ea5805-b484-4073-af95-15ba6db9e8db',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 16:34:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:34:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:35:07 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoMovement_UU',1000365,'Boleto Movement','Boleto Movement','72fbdde9-c6a7-474f-b150-1ce24f4a6a0f',0,0,0,'Y',0,'U',TO_DATE('2014-08-21 16:35:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:35:07','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:35:21 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001194,'N','N','N',0,'N',22,'N','Y','N','Y','6d1a5a20-4e7a-423d-bbb0-0af9d81fc519','N','LBR_BoletoMovement_ID','Boleto Movement','N',TO_DATE('2014-08-21 16:35:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:35:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000364,13,1000059,0,'LBR')
;

-- Aug 21, 2014 4:35:23 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_BoletoMovement_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:35:23 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBR_BoletoMovement_Key PRIMARY KEY (LBR_BoletoMovement_ID)
;

-- Aug 21, 2014 4:35:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001195,'N','N','N',0,'N',36,'N','N','N','Y','b74aa735-929e-4ee1-bfb1-0215278318e1','N','LBR_BoletoMovement_UU','Boleto Movement','N',TO_DATE('2014-08-21 16:35:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:35:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000365,10,1000059,0,'LBR')
;

-- Aug 21, 2014 4:35:37 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_BoletoMovement_UU VARCHAR2(36) DEFAULT NULL 
;

-- Aug 21, 2014 4:35:37 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBR_BoletoMovement_UU_idx UNIQUE (LBR_BoletoMovement_UU)
;

-- Aug 21, 2014 4:35:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001196,'Y','N','N',0,'Y',22,'N','N','N','Y','e9d33215-ef1e-4e83-a83e-f5e2591d0774','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Y',TO_DATE('2014-08-21 16:35:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:35:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000309,19,1000059,0,'LBR')
;

-- Aug 21, 2014 4:35:59 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRBoleto_LBRBoletoMovement', FKConstraintType='C',Updated=TO_DATE('2014-08-21 16:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001196
;

-- Aug 21, 2014 4:35:59 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Boleto_ID NUMBER(10) NOT NULL
;

-- Aug 21, 2014 4:35:59 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRBoleto_LBRBoletoMovement FOREIGN KEY (LBR_Boleto_ID) REFERENCES lbr_boleto(lbr_boleto_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 21, 2014 4:36:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001197,'Y','N','N',0,'N',1,'N','N','N','Y','05bd984e-f839-4c4f-b48c-7069c120c0e5','N','LBR_CNAB240MovementType','Movement Type','Y',TO_DATE('2014-08-21 16:36:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:36:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000363,17,1000083,1000059,0,'LBR')
;

-- Aug 21, 2014 4:36:30 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNAB240MovementType CHAR(1) NOT NULL
;

-- Aug 21, 2014 4:36:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001198,'N','N','N',0,'N',255,'Y','N','N','Y','a18aa014-0221-4cd5-832a-83f2311a3f65','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-21 16:36:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:36:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000059,0,'LBR')
;

-- Aug 21, 2014 4:36:49 PM BRT
ALTER TABLE LBR_BoletoMovement ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- Aug 21, 2014 4:36:54 PM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-08-21 16:36:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001198
;

-- Aug 21, 2014 4:38:18 PM BRT
ALTER TABLE LBR_BoletoMovement MODIFY Description VARCHAR2(255) DEFAULT NULL 
;

-- Aug 21, 2014 4:39:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001199,'N','N','N',0,'N',22,'N','N','N','Y','d7614e05-defc-4843-bc88-85984af5259f','Y','SeqNo','Method of ordering records; lowest number comes first','@SQL=SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM LBR_BoletoMovement WHERE LBR_Boleto_ID=@LBR_Boleto_ID@','The Sequence indicates the order of records','Sequence','Y',TO_DATE('2014-08-21 16:39:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:39:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',566,11,1000059,0,'LBR')
;

-- Aug 21, 2014 4:39:40 PM BRT
ALTER TABLE LBR_BoletoMovement ADD SeqNo NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:42:23 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_FileGeneratingDate',1000366,'Indicates when the file was generated','File Generating Date','File Generating Date','fc708212-7411-4966-b015-03882b63f929',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 16:42:23','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:42:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:43:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001200,'N','N','N',0,'N',7,'N','N','N','Y','2939e303-3909-475b-bc7e-d8f76e02c24d','Y','LBR_FileGeneratingDate','Indicates when the file was generated','File Generating Date','Y',TO_DATE('2014-08-21 16:43:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:43:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000366,15,1000059,0,'LBR')
;

-- Aug 21, 2014 4:43:59 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_FileGeneratingDate DATE DEFAULT NULL 
;

-- Aug 21, 2014 4:46:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNAB240SeqNo',1000367,'Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','CNAB 240 Sequence No.','CNAB 240 Sequence No.','a0763a0b-5137-4505-a576-ee6e200844cb',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 16:46:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:46:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:49:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001201,'N','N','N',0,'N',22,'N','N','N','Y','12102b78-f612-4bb6-8734-fdb752eeef8d','Y','LBR_CNAB240SeqNo','Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','CNAB 240 Sequence No.','Y',TO_DATE('2014-08-21 16:49:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:49:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000367,11,1000059,0,'LBR')
;

-- Aug 21, 2014 4:49:09 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNAB240SeqNo NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:49:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001202,'N','N','N',0,'N',20,'N','N','N','Y','3aa10ce9-c124-4bf5-8cd0-5137b7be0f2b','Y','LBR_NumberInBank','Number in the Bank','Y',TO_DATE('2014-08-21 16:49:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:49:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000314,10,1000059,0,'LBR')
;

-- Aug 21, 2014 4:49:47 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_NumberInBank VARCHAR2(20) DEFAULT NULL 
;

-- Aug 21, 2014 4:50:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001203,'N','N','N',0,'N',1,'N','N','N','Y','90baff49-be1a-4130-89df-83c4e4f5205b','Y','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type','Y',TO_DATE('2014-08-21 16:50:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:50:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000290,17,1000064,1000059,0,'LBR')
;

-- Aug 21, 2014 4:50:05 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CarteiraType CHAR(1) DEFAULT NULL 
;

-- Aug 21, 2014 4:50:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001204,'N','N','N',0,'N',15,'N','N','N','Y','b6d64532-3760-4437-a9d5-df657348c22b','Y','LBR_NumberInOrg','Number in the Org','Y',TO_DATE('2014-08-21 16:50:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:50:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000316,10,1000059,0,'LBR')
;

-- Aug 21, 2014 4:50:21 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_NumberInOrg VARCHAR2(15) DEFAULT NULL 
;

-- Aug 21, 2014 4:50:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001205,'N','N','N',0,'N',7,'N','N','N','Y','34dbc7f4-5e0d-4b1f-9134-ef1d573d23d5','Y','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date','Y',TO_DATE('2014-08-21 16:50:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:50:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2000,15,1000059,0,'LBR')
;

-- Aug 21, 2014 4:50:46 PM BRT
ALTER TABLE LBR_BoletoMovement ADD DueDate DATE DEFAULT NULL 
;

-- Aug 21, 2014 4:51:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001206,'N','N','N',0,'N',22,'N','N','N','Y','ccc55b8f-1f9e-44f0-896a-f3fbc6d04cd7','Y','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total','Y',TO_DATE('2014-08-21 16:51:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:51:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',316,12,1000059,0,'LBR')
;

-- Aug 21, 2014 4:51:04 PM BRT
ALTER TABLE LBR_BoletoMovement ADD GrandTotal NUMBER DEFAULT NULL 
;

-- Aug 21, 2014 4:53:20 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectBankNo',1000368,'Indicates the collecting bank number.','Collecting Bank No.','Collecting Bank No.','c7775437-4860-492f-9d5c-c4bc1b06b6ac',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 16:53:20','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:53:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:55:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001207,'N','N','N',0,'N',22,'N','N','N','Y','9e88e077-0c5c-41d3-b85f-201517910484','Y','LBR_CollectBankNo','Indicates the collecting bank number.','Collecting Bank No.','Y',TO_DATE('2014-08-21 16:55:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:55:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000368,11,1000059,0,'LBR')
;

-- Aug 21, 2014 4:55:46 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CollectBankNo NUMBER(10) DEFAULT NULL 
;

-- Aug 21, 2014 4:56:35 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectBankAgencyNo',1000369,'Indicates the collecting bank agency number.','Collecting Bank Agency No.','Collecting Bank Agency No.','5593eed1-1b3d-45f9-9570-35b97f435729',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 16:56:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 16:56:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 4:58:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001208,'N','N','N',0,'N',7,'N','N','N','Y','28d5872c-ba67-4946-b5bc-2fd3e4cee1b8','Y','LBR_CollectBankAgencyNo','Indicates the collecting bank agency number.','Collecting Bank Agency No.','Y',TO_DATE('2014-08-21 16:58:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 16:58:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000369,10,1000059,0,'LBR')
;

-- Aug 21, 2014 4:58:40 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CollectBankAgencyNo VARCHAR2(7) DEFAULT NULL 
;

-- Aug 21, 2014 5:00:18 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DocumentNo',1000370,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Document sequence number of the document','Document No','759fd8f2-5ffd-4cc6-8a2e-a3c07715b3a7',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-21 17:00:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-21 17:00:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 21, 2014 5:01:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001209,'N','N','N',0,'N',30,'N','N','N','Y','488ce6e6-53c4-4eca-9b0b-5d3593ef0883','Y','LBR_DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_DATE('2014-08-21 17:01:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 17:01:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000370,10,1000059,0,'LBR')
;

-- Aug 21, 2014 5:01:39 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_DocumentNo VARCHAR2(30) DEFAULT NULL 
;

-- Aug 21, 2014 5:01:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001210,'N','N','N',0,'N',2,'N','N','N','Y','dbfd3cf8-d471-4518-976a-0986685c4dd8','Y','LBR_CNAB240Currency','Currency used for CNAB 240','Currency','Y',TO_DATE('2014-08-21 17:01:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 17:01:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000317,17,1000073,1000059,0,'LBR')
;

-- Aug 21, 2014 5:01:59 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNAB240Currency VARCHAR2(2) DEFAULT NULL 
;

-- Aug 21, 2014 5:02:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001211,'N','N','N',0,'N',10,'N','N','N','Y','fd6e1b62-6211-422a-9960-8050c0786a07','Y','LBR_LoanContractNo','Loan Contract No.','Y',TO_DATE('2014-08-21 17:02:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 17:02:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000318,10,1000059,0,'LBR')
;

-- Aug 21, 2014 5:02:17 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_LoanContractNo VARCHAR2(10) DEFAULT NULL 
;

-- Aug 21, 2014 5:02:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001212,'N','N','N',0,'N',22,'N','N','N','Y','539d1dd2-b762-4d80-91b5-46f620de5222','Y','FeeAmt','Fee amount in invoice currency','The Fee Amount indicates the charge amount on a dunning letter for overdue invoices.  This field will only display if the charge fee checkbox has been selected.','Fee Amount','Y',TO_DATE('2014-08-21 17:02:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-21 17:02:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',889,12,1000059,0,'LBR')
;

-- Aug 21, 2014 5:02:38 PM BRT
ALTER TABLE LBR_BoletoMovement ADD FeeAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:12:39 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia1_ID',1000371,'Collection Occurrence 1','Collection Occurrence 1','ca5784cd-f3db-4de6-a3eb-cbdd3471f413',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:12:39','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:12:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:12:55 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia2_ID',1000372,'Collection Occurrence 2','Collection Occurrence 2','92bc076f-dd4b-4dc9-956a-35f8c2404c5e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:12:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:12:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:13:06 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia3_ID',1000373,'Collection Occurrence 3','Collection Occurrence 3','06f05a7f-112a-48c0-945c-d0a5aea22264',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:13:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:13:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:13:17 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia4_ID',1000374,'Collection Occurrence 4','Collection Occurrence 4','94e4dc43-d476-4012-84c6-0bb9dd8a172a',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:13:17','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:13:29 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_Ocorrencia5_ID',1000375,'Collection Occurrence 5','Collection Occurrence 5','e09f1341-d3c1-488e-bccf-ac159204e133',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:13:29','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:13:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:19:03 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000084,'LBR_Cob_Ocorrencia','LBR','981f7b38-1b6a-481d-b3c2-d1806d65652e','N','T',0,0,TO_DATE('2014-08-22 10:19:03','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-22 10:19:03','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 22, 2014 10:19:37 AM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','d604af04-9acc-4136-988c-91e88e015e1d',0,TO_DATE('2014-08-22 10:19:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:19:37','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1001171,1001167,1000084,1000057,'LBR')
;

-- Aug 22, 2014 10:20:08 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001213,'N','N','N',0,'N',22,'N','N','N','Y','9bfeb867-e99f-4c7c-ae7f-d2784526977c','Y','LBR_Cob_Ocorrencia1_ID','Collection Occurrence 1','Y',TO_DATE('2014-08-22 10:20:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:20:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000371,18,1000084,1000059,0,'LBR')
;

-- Aug 22, 2014 10:20:11 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobOcorrencia1_LBRBoletoMov', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001213
;

-- Aug 22, 2014 10:20:11 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Ocorrencia1_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:20:12 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobOcorrencia1_LBRBoletoMov FOREIGN KEY (LBR_Cob_Ocorrencia1_ID) REFERENCES lbr_cob_ocorrencia(lbr_cob_ocorrencia_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:20:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001214,'N','N','N',0,'N',22,'N','N','N','Y','6220383c-8934-458d-b98c-89999e1a2d0f','Y','LBR_Cob_Ocorrencia2_ID','Collection Occurrence 2','Y',TO_DATE('2014-08-22 10:20:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:20:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000372,18,1000084,1000059,0,'LBR')
;

-- Aug 22, 2014 10:20:38 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobOcorrencia2_LBRBoletoMov', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:20:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001214
;

-- Aug 22, 2014 10:20:38 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Ocorrencia2_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:20:38 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobOcorrencia2_LBRBoletoMov FOREIGN KEY (LBR_Cob_Ocorrencia2_ID) REFERENCES lbr_cob_ocorrencia(lbr_cob_ocorrencia_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:20:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001215,'N','N','N',0,'N',22,'N','N','N','Y','1500b83a-3817-4bb1-8943-790d409eedcb','Y','LBR_Cob_Ocorrencia3_ID','Collection Occurrence 3','Y',TO_DATE('2014-08-22 10:20:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:20:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000373,18,1000084,1000059,0,'LBR')
;

-- Aug 22, 2014 10:21:00 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobOcorrencia3_LBRBoletoMov', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:21:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001215
;

-- Aug 22, 2014 10:21:00 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Ocorrencia3_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:21:00 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobOcorrencia3_LBRBoletoMov FOREIGN KEY (LBR_Cob_Ocorrencia3_ID) REFERENCES lbr_cob_ocorrencia(lbr_cob_ocorrencia_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:21:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001216,'N','N','N',0,'N',22,'N','N','N','Y','2ebb779d-acd0-42d9-b597-b8c040c31761','Y','LBR_Cob_Ocorrencia4_ID','Collection Occurrence 4','Y',TO_DATE('2014-08-22 10:21:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:21:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000374,18,1000084,1000059,0,'LBR')
;

-- Aug 22, 2014 10:21:22 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobOcorrencia4_LBRBoletoMov', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001216
;

-- Aug 22, 2014 10:21:22 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Ocorrencia4_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:21:22 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobOcorrencia4_LBRBoletoMov FOREIGN KEY (LBR_Cob_Ocorrencia4_ID) REFERENCES lbr_cob_ocorrencia(lbr_cob_ocorrencia_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:21:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001217,'N','N','N',0,'N',22,'N','N','N','Y','8b6e6e52-3f54-454a-9a35-6820cddbcdef','Y','LBR_Cob_Ocorrencia5_ID','Collection Occurrence 5','Y',TO_DATE('2014-08-22 10:21:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:21:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000375,18,1000084,1000059,0,'LBR')
;

-- Aug 22, 2014 10:21:44 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobOcorrencia5_LBRBoletoMov', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001217
;

-- Aug 22, 2014 10:21:44 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Ocorrencia5_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:21:44 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobOcorrencia5_LBRBoletoMov FOREIGN KEY (LBR_Cob_Ocorrencia5_ID) REFERENCES lbr_cob_ocorrencia(lbr_cob_ocorrencia_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:22:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001218,'N','N','N',0,'N',22,'N','N','N','Y','03294257-e06e-4e3a-a522-4b234a8bc797','Y','InterestAmt','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.','Interest Amount','Y',TO_DATE('2014-08-22 10:22:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:22:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1457,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:22:03 AM BRT
ALTER TABLE LBR_BoletoMovement ADD InterestAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:22:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001219,'N','N','N',0,'N',22,'N','N','N','Y','24320b52-d1d2-4637-9c56-994b748c9247','Y','DiscountAmt','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.','Discount Amount','Y',TO_DATE('2014-08-22 10:22:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:22:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1395,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:22:18 AM BRT
ALTER TABLE LBR_BoletoMovement ADD DiscountAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:22:35 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001220,'N','N','N',0,'N',22,'N','N','N','Y','01c0588d-f087-48fc-bec3-4a79f5f99221','Y','WriteOffAmt','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.','Write-off Amount','Y',TO_DATE('2014-08-22 10:22:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:22:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1450,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:22:37 AM BRT
ALTER TABLE LBR_BoletoMovement ADD WriteOffAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:22:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001221,'N','N','N',0,'N',10,'N','N','N','Y','348b1537-15ac-4f46-b9b1-9219c47e2716','Y','LBR_IOFAmt','Defines the IOF Amount','IOF Amount','Y',TO_DATE('2014-08-22 10:22:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:22:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000164,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:22:57 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_IOFAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:23:13 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001222,'N','N','N',0,'N',22,'N','N','N','Y','72ea1559-01d6-435c-80d6-d28cabeeea40','Y','PayAmt','Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Payment amount','Y',TO_DATE('2014-08-22 10:23:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:23:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1477,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:23:15 AM BRT
ALTER TABLE LBR_BoletoMovement ADD PayAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:23:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001223,'N','N','N',0,'N',22,'N','N','N','Y','cad012d7-5b7f-4013-b4cd-306cd25aada3','Y','AvailableAmt','Amount available for allocation for this document','Available Amount','Y',TO_DATE('2014-08-22 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:23:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2678,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:23:34 AM BRT
ALTER TABLE LBR_BoletoMovement ADD AvailableAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:25:44 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_OtherExpensesAmt',1000376,'Other expenses amount in currency','Other Expenses Amount','Amount for other expenses','Other Expenses Amount','cff4fe27-e66b-4338-80ed-01551556c8f5',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:25:44','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:25:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:27:09 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001224,'N','N','N',0,'N',22,'N','N','N','Y','0e74efd7-945b-4603-9b64-d0d34d059cdb','Y','LBR_OtherExpensesAmt','Amount for other expenses','Other expenses amount in currency','Other Expenses Amount','Y',TO_DATE('2014-08-22 10:27:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:27:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000376,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:27:10 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_OtherExpensesAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:28:03 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_OtherIncomesAmt',1000377,'Other incomes amount in currency','Other Incomes Amount','Amount for other incomes','Other Incomes Amount','ae36c0a5-511c-423b-9409-abd203216252',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:28:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:28:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:28:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001225,'N','N','N',0,'N',22,'N','N','N','Y','f4852b8d-a85f-4571-896c-adba1ac406cf','Y','LBR_OtherIncomesAmt','Amount for other incomes','Other incomes amount in currency','Other Incomes Amount','Y',TO_DATE('2014-08-22 10:28:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:28:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000377,12,1000059,0,'LBR')
;

-- Aug 22, 2014 10:28:54 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_OtherIncomesAmt NUMBER DEFAULT NULL 
;

-- Aug 22, 2014 10:30:02 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Cob_OcorrenciaDate',1000378,'Collection Occurrence Date','Collection Occurrence Date','0b9c1f93-45a5-4d21-8be9-b615c87b55ae',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:30:02','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:30:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:30:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001226,'N','N','N',0,'N',7,'N','N','N','Y','255420d9-c0b3-48a0-87a6-079973ccd5ee','Y','LBR_Cob_OcorrenciaDate','Collection Occurrence Date','Y',TO_DATE('2014-08-22 10:30:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:30:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000378,15,1000059,0,'LBR')
;

-- Aug 22, 2014 10:30:24 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_OcorrenciaDate DATE DEFAULT NULL 
;

-- Aug 22, 2014 10:31:37 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CreditDate',1000379,'Credit Date','Credit Date','5ec0f699-ce16-4666-8d4a-37a991dc2a92',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:31:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:31:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:32:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001227,'N','N','N',0,'N',7,'N','N','N','Y','e812fd12-d6ec-40b4-acb1-ebec7c3430b5','Y','LBR_CreditDate','Credit Date','Y',TO_DATE('2014-08-22 10:32:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:32:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000379,15,1000059,0,'LBR')
;

-- Aug 22, 2014 10:32:54 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CreditDate DATE DEFAULT NULL 
;

-- Aug 22, 2014 10:33:28 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CorrespBankNo',1000380,'Correspondente Bank Number','Correspondente Bank Number','6126d3eb-1142-4e65-b983-6223abdf9f69',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-22 10:33:28','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-22 10:33:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:34:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001228,'N','N','N',0,'N',22,'N','N','N','Y','35ffb2ca-6a3a-4761-a2b4-c240f2c4438b','Y','LBR_CorrespBankNo','Correspondente Bank Number','Y',TO_DATE('2014-08-22 10:34:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:34:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000380,11,1000059,0,'LBR')
;

-- Aug 22, 2014 10:34:22 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CorrespBankNo NUMBER(10) DEFAULT NULL 
;

-- Aug 22, 2014 10:34:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001229,'N','N','N',0,'N',20,'N','N','N','Y','7b80ccab-d19f-4ef3-a327-da4ccf391cd3','Y','LBR_NumberInCorrespBank','Number in the Correspondent Bank','Y',TO_DATE('2014-08-22 10:34:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:34:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000315,10,1000059,0,'LBR')
;

-- Aug 22, 2014 10:34:46 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_NumberInCorrespBank VARCHAR2(20) DEFAULT NULL 
;

-- Aug 22, 2014 10:35:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001230,'N','N','N',0,'N',20,'N','N','N','Y','a553d494-ed6d-47ed-8b39-a3e7faa47ba8','Y','LBR_ConvenioNo','Defines the Convênio number','Convênio No.','Y',TO_DATE('2014-08-22 10:35:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:35:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000286,10,1000059,0,'LBR')
;

-- Aug 22, 2014 10:35:12 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_ConvenioNo VARCHAR2(20) DEFAULT NULL 
;

-- Aug 22, 2014 10:35:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001231,'N','N','N',0,'N',2,'N','N','N','Y','6113f523-da33-42d0-8d7c-de9bec42605c','Y','LBR_CollectionType','Collection Type','Y',TO_DATE('2014-08-22 10:35:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:35:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000305,17,1000069,1000059,0,'LBR')
;

-- Aug 22, 2014 10:35:34 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CollectionType VARCHAR2(2) DEFAULT NULL 
;

-- Aug 22, 2014 10:36:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001232,'Y','N','N',0,'N',22,'N','N','N','Y','0808a2b2-a409-4eb2-a7f0-a2509bf37da2','Y','LBR_Cob_Movimento_ID','Collection Movement','Y',TO_DATE('2014-08-22 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-22 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000361,19,1000059,0,'LBR')
;

-- Aug 22, 2014 10:36:04 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCobMovimento_LBRBoletoMovem', FKConstraintType='N',Updated=TO_DATE('2014-08-22 10:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001232
;

-- Aug 22, 2014 10:36:04 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_Cob_Movimento_ID NUMBER(10) NOT NULL
;

-- Aug 22, 2014 10:36:04 AM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCobMovimento_LBRBoletoMovem FOREIGN KEY (LBR_Cob_Movimento_ID) REFERENCES lbr_cob_movimento(lbr_cob_movimento_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 22, 2014 10:37:51 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000021,17,'N','N','N','N','Y','N','N',1,'695a9aa3-a33a-4bce-97e2-5dc5a8c9f16a','LBR','Movements','Boleto Movements',1000102,0,0,TO_DATE('2014-08-22 10:37:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000059,'B',TO_DATE('2014-08-22 10:37:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',10,'Y',1001983,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','6d61008e-4e2e-40a9-98bd-676e192ee3db','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001187,TO_DATE('2014-08-22 10:38:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',20,'Y',1001984,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','bf8410ff-49d6-4fb9-a941-4b911441416c','N','Y','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1001188,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,255,'N','N',30,'Y',1001985,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','766723d0-a1ea-43c2-8753-73ee09a0ab4b','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1001198,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N','Y',1001986,'N','LBR','Boleto Movement','170dd0b1-7b00-4c00-be79-ed92b4980a4d','N','N',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001194,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,36,'N','N',40,'Y',1001987,'N','LBR','Boleto Movement','df08169a-ebe9-4056-bfc2-4fe131d54d1c','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1001195,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',50,'Y',1001988,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','47cad55a-6ac8-4a4e-af59-23e3033e1ac8','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1001196,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',60,'Y',1001989,'N','LBR','Movement Type','6dceaeff-324b-4674-bd2b-5f5cfb6200c8','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001197,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',70,'Y',1001990,'N','The Sequence indicates the order of records','LBR','Method of ordering records; lowest number comes first','Sequence','f4ad8654-473a-4a66-a5aa-1486e81bd7b9','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1001199,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',80,'Y',1001991,'N','Indicates when the file was generated','LBR','File Generating Date','c3d9cfbc-3522-480d-9691-9a09c22206e3','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,1001200,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',90,'Y',1001992,'N','Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','LBR','CNAB 240 Sequence No.','82d96a3c-d117-4b43-8b9d-90ab232ec2c8','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1001201,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,20,'N','N',100,'Y',1001993,'N','LBR','Number in the Bank','cfc79e52-a66e-4140-8ef4-38b6d8e34416','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1001202,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',110,'Y',1001994,'N','Defines the Carteira type according to Febraban','LBR','Bank Account Carteira Type','4b43d0c2-f482-4e52-b2ad-92b30a53eb00','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1001203,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,15,'N','N',120,'Y',1001995,'N','LBR','Number in the Org','abe64033-846e-4137-9d33-c94c3a06b842','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1001204,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',130,'Y',1001996,'N','Date when the payment is due without deductions or discount','LBR','Date when the payment is due','Due Date','c6e444a6-1eca-4c09-87cb-9f345a056ba9','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1001205,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',140,'Y',1001997,'N','The Grand Total displays the total amount including Tax and Freight in document currency','LBR','Total amount of document','Grand Total','cbe93897-564c-4d5e-af7b-e9bb9a374af6','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1001206,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',150,'Y',1001998,'N','Indicates the collecting bank number.','LBR','Collecting Bank No.','0af51c98-3942-4c34-8dca-697ff46a5eff','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1001207,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',160,'Y',1001999,'N','Indicates the collecting bank agency number.','LBR','Collecting Bank Agency No.','a720be5f-4be3-4525-9f05-5cf16c3c85fa','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1001208,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,30,'N','N',170,'Y',1002000,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','e463d41e-5267-4f86-bc54-dbd87728d819','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1001209,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,2,'N','N',180,'Y',1002001,'N','Currency used for CNAB 240','LBR','Currency','21ebb149-1e3c-4ae6-ba56-48569779210a','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1001210,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,10,'N','N',190,'Y',1002002,'N','LBR','Loan Contract No.','d38acc26-2621-45a8-b9cd-bbb66e573bb5','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1001211,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',200,'Y',1002003,'N','The Fee Amount indicates the charge amount on a dunning letter for overdue invoices.  This field will only display if the charge fee checkbox has been selected.','LBR','Fee amount in invoice currency','Fee Amount','304599f9-d790-4967-bdec-230f4a95783b','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1001212,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',210,'Y',1002004,'N','LBR','Collection Occurrence 1','953dc28e-22a5-44f3-9a54-4911f0c4a9d6','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1001213,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',220,'Y',1002005,'N','LBR','Collection Occurrence 2','9b26e2c9-8703-4f01-bd92-970c02bc8df9','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,0,2,1001214,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',230,'Y',1002006,'N','LBR','Collection Occurrence 3','0a2e0de9-5735-4221-b37e-e1efcbe6d5b9','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,1001215,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',240,'Y',1002007,'N','LBR','Collection Occurrence 4','a9dd910a-529a-4f18-9143-e5ebe023c0c6','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,0,2,1001216,TO_DATE('2014-08-22 10:38:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',250,'Y',1002008,'N','LBR','Collection Occurrence 5','9a3863cd-e131-49f5-8761-7f848376a141','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,0,2,1001217,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',260,'Y',1002009,'N','The Interest Amount indicates any interest charged or received on a Bank Statement.','LBR','Interest Amount','Interest Amount','1a6b9da2-e965-41f9-adae-56fde8191393','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,0,2,1001218,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',270,'Y',1002010,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','7901e97e-fffc-4303-ae53-dea78ec57b46','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,0,2,1001219,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',280,'Y',1002011,'N','The Write Off Amount indicates the amount to be written off as uncollectible.','LBR','Amount to write-off','Write-off Amount','19dceb6c-b8a1-498c-8192-5441edf65932','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,0,2,1001220,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,10,'N','N',290,'Y',1002012,'N','LBR','Defines the IOF Amount','IOF Amount','aee4a60d-5461-482d-a87c-9278c9c96e21','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,0,2,1001221,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',300,'Y',1002013,'N','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','LBR','Amount being paid','Payment amount','c254ad23-9d14-463b-85a0-9053500a9ad4','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,0,2,1001222,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',310,'Y',1002014,'N','LBR','Amount available for allocation for this document','Available Amount','51e23eab-45d1-4571-b5f8-9e6db931165c','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,0,2,1001223,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',320,'Y',1002015,'N','Other expenses amount in currency','LBR','Amount for other expenses','Other Expenses Amount','3745b92d-e234-44e8-843a-1c65b754515c','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',310,0,2,1001224,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',330,'Y',1002016,'N','Other incomes amount in currency','LBR','Amount for other incomes','Other Incomes Amount','9071b9ab-9108-4bf5-90c3-db9df5f2c4a3','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',320,0,2,1001225,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',340,'Y',1002017,'N','LBR','Collection Occurrence Date','dc4f963c-af68-4f6c-a524-c831fb8b3ea5','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',330,0,2,1001226,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',350,'Y',1002018,'N','LBR','Credit Date','3e1eda83-0432-466b-a54d-ddca97827067','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',340,0,2,1001227,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',360,'Y',1002019,'N','LBR','Correspondente Bank Number','1c5269fb-2988-479f-a3eb-4bd9c0c86114','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',350,0,2,1001228,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,20,'N','N',370,'Y',1002020,'N','LBR','Number in the Correspondent Bank','2897cb82-b19e-482e-82d9-2e1abc5e1801','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,0,2,1001229,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,20,'N','N',380,'Y',1002021,'N','Defines the Convênio number','LBR','Convênio No.','ea24e4f7-6fe8-4ccc-b9b5-a2700e7bb7b4','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,0,2,1001230,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,2,'N','N',390,'Y',1002022,'N','LBR','Collection Type','48e5cbc8-6556-412f-b751-dc5ed90517ca','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,0,2,1001231,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',400,'Y',1002023,'N','LBR','Collection Movement','cebb1779-12fc-4717-b63e-aa070164bcff','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,0,2,1001232,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:38:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',410,'Y',1002024,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','9cf629e2-707e-418c-aaf4-7d670bd1dc52','N','Y',0,0,0,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,2,0,2,1001193,TO_DATE('2014-08-22 10:38:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1002024
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001987
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001988
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001990
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1002023
;

-- Aug 22, 2014 10:39:59 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001989
;

-- Aug 22, 2014 10:42:37 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-08-22 10:42:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001984
;

-- Aug 22, 2014 10:44:06 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 10:44:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001990
;

-- Aug 22, 2014 10:44:22 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 10:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001989
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1002024
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001985
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001988
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001990
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1002023
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001989
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001991
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001992
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001993
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001994
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001995
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001996
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001998
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001999
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1002000
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1002001
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1002002
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1002003
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1002004
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1002006
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1002008
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1002009
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1002010
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1002011
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1002012
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1002013
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1002015
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1002016
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1002017
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1002018
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1002019
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1002020
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1002021
;

-- Aug 22, 2014 10:49:55 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1002022
;

-- Aug 22, 2014 10:51:14 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001985
;

-- Aug 22, 2014 10:51:14 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1002024
;

-- Aug 22, 2014 10:54:34 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-22 10:54:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 10:56:05 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-22 10:56:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002003
;

-- Aug 22, 2014 10:57:58 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-22 10:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002009
;

-- Aug 22, 2014 10:59:33 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-22 10:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 11:00:42 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-22 11:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002013
;

-- Aug 22, 2014 11:25:18 AM BRT
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType,Created) VALUES (1000004,'C','0','Permite informar o ID (banco de dados) de um movimento que será criado ao completar um boleto','221c3b5e-75c2-4389-99bf-1dc6f14fdf57',TO_DATE('2014-08-22 11:25:18','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_BOLETO_MOVIMENTO_ID_ON_COMPLETE',0,'LBR',TO_DATE('2014-08-22 11:25:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 22, 2014 12:35:01 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FileGeneratingDate@!''''',Updated=TO_DATE('2014-08-22 12:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001991
;

-- Aug 22, 2014 12:36:42 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CNAB240SeqNo@!''''',Updated=TO_DATE('2014-08-22 12:36:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001992
;

-- Aug 22, 2014 12:38:29 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NumberInBank@!''''', Name='Number in the Bank''',Updated=TO_DATE('2014-08-22 12:38:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001993
;

-- Aug 22, 2014 12:38:52 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CarteiraType@!''''',Updated=TO_DATE('2014-08-22 12:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001994
;

-- Aug 22, 2014 12:39:04 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NumberInOrg@!''''',Updated=TO_DATE('2014-08-22 12:39:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001995
;

-- Aug 22, 2014 12:39:27 PM BRT
UPDATE AD_Field SET DisplayLogic='@DueDate@!''''',Updated=TO_DATE('2014-08-22 12:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001996
;

-- Aug 22, 2014 12:39:37 PM BRT
UPDATE AD_Field SET DisplayLogic='@GrandTotal@!''''',Updated=TO_DATE('2014-08-22 12:39:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 12:39:47 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CollectBankNo@!''''',Updated=TO_DATE('2014-08-22 12:39:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001998
;

-- Aug 22, 2014 12:39:58 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CollectBankAgencyNo@!''''',Updated=TO_DATE('2014-08-22 12:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001999
;

-- Aug 22, 2014 12:40:08 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_DocumentNo@!''''',Updated=TO_DATE('2014-08-22 12:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002000
;

-- Aug 22, 2014 12:40:21 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CNAB240Currency@!''''',Updated=TO_DATE('2014-08-22 12:40:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002001
;

-- Aug 22, 2014 12:40:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LoanContractNo@!''''',Updated=TO_DATE('2014-08-22 12:40:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002002
;

-- Aug 22, 2014 12:40:39 PM BRT
UPDATE AD_Field SET DisplayLogic='@FeeAmt@!''''',Updated=TO_DATE('2014-08-22 12:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002003
;

-- Aug 22, 2014 12:40:52 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia1_ID@!''''',Updated=TO_DATE('2014-08-22 12:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002004
;

-- Aug 22, 2014 12:41:09 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia2_ID@!''''',Updated=TO_DATE('2014-08-22 12:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 12:41:23 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia3_ID@!''''',Updated=TO_DATE('2014-08-22 12:41:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002006
;

-- Aug 22, 2014 12:41:37 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia4_ID@!''''',Updated=TO_DATE('2014-08-22 12:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 12:41:47 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia5_ID@!''''',Updated=TO_DATE('2014-08-22 12:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002008
;

-- Aug 22, 2014 12:41:57 PM BRT
UPDATE AD_Field SET DisplayLogic='@InterestAmt@!''''',Updated=TO_DATE('2014-08-22 12:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002009
;

-- Aug 22, 2014 12:42:11 PM BRT
UPDATE AD_Field SET DisplayLogic='@DiscountAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002010
;

-- Aug 22, 2014 12:42:19 PM BRT
UPDATE AD_Field SET DisplayLogic='@WriteOffAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002011
;

-- Aug 22, 2014 12:42:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IOFAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002012
;

-- Aug 22, 2014 12:42:39 PM BRT
UPDATE AD_Field SET DisplayLogic='@PayAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002013
;

-- Aug 22, 2014 12:42:47 PM BRT
UPDATE AD_Field SET DisplayLogic='@AvailableAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 12:42:57 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_OtherExpensesAmt@!''''',Updated=TO_DATE('2014-08-22 12:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002015
;

-- Aug 22, 2014 12:43:08 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_OtherIncomesAmt@!''''',Updated=TO_DATE('2014-08-22 12:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002016
;

-- Aug 22, 2014 12:43:21 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_OcorrenciaDate@!''''',Updated=TO_DATE('2014-08-22 12:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002017
;

-- Aug 22, 2014 12:43:31 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CreditDate@!''''',Updated=TO_DATE('2014-08-22 12:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002018
;

-- Aug 22, 2014 12:43:41 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CorrespBankNo@!''''',Updated=TO_DATE('2014-08-22 12:43:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002019
;

-- Aug 22, 2014 12:43:50 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NumberInCorrespBank@!''''',Updated=TO_DATE('2014-08-22 12:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002020
;

-- Aug 22, 2014 12:43:59 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_ConvenioNo@!''''',Updated=TO_DATE('2014-08-22 12:43:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002021
;

-- Aug 22, 2014 12:44:09 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CollectionType@!''''',Updated=TO_DATE('2014-08-22 12:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002022
;

-- Aug 22, 2014 12:49:09 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia1_ID@>0',Updated=TO_DATE('2014-08-22 12:49:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002004
;

-- Aug 22, 2014 12:49:14 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia2_ID@>0',Updated=TO_DATE('2014-08-22 12:49:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 12:49:19 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia3_ID@>0',Updated=TO_DATE('2014-08-22 12:49:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002006
;

-- Aug 22, 2014 12:49:27 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia4_ID@>0',Updated=TO_DATE('2014-08-22 12:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 12:49:34 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Cob_Ocorrencia5_ID@>0',Updated=TO_DATE('2014-08-22 12:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002008
;

-- Aug 22, 2014 12:53:34 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001991
;

-- Aug 22, 2014 12:53:37 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001992
;

-- Aug 22, 2014 12:53:40 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001993
;

-- Aug 22, 2014 12:53:43 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001994
;

-- Aug 22, 2014 12:53:45 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001995
;

-- Aug 22, 2014 12:53:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001996
;

-- Aug 22, 2014 12:53:50 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 12:53:52 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001998
;

-- Aug 22, 2014 12:53:54 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001999
;

-- Aug 22, 2014 12:53:56 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002000
;

-- Aug 22, 2014 12:53:59 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002001
;

-- Aug 22, 2014 12:54:01 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002002
;

-- Aug 22, 2014 12:54:05 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002003
;

-- Aug 22, 2014 12:54:08 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002004
;

-- Aug 22, 2014 12:54:11 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 12:54:13 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002006
;

-- Aug 22, 2014 12:54:16 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 12:54:18 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002008
;

-- Aug 22, 2014 12:54:21 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002009
;

-- Aug 22, 2014 12:54:24 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002010
;

-- Aug 22, 2014 12:54:26 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002011
;

-- Aug 22, 2014 12:54:28 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002012
;

-- Aug 22, 2014 12:54:30 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002013
;

-- Aug 22, 2014 12:54:33 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 12:54:35 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002015
;

-- Aug 22, 2014 12:54:38 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002016
;

-- Aug 22, 2014 12:54:40 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002017
;

-- Aug 22, 2014 12:54:42 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002018
;

-- Aug 22, 2014 12:54:45 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002019
;

-- Aug 22, 2014 12:54:47 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002020
;

-- Aug 22, 2014 12:54:49 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002021
;

-- Aug 22, 2014 12:54:52 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-22 12:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002022
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001995
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001994
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1002021
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001996
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001998
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001999
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1002019
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1002020
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1002000
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1002022
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1002001
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1002002
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1002004
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1002006
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1002008
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1002003
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1002009
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1002010
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1002011
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1002012
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1002013
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1002015
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1002016
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1002017
;

-- Aug 22, 2014 12:59:16 PM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1002018
;

-- Aug 22, 2014 1:00:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001992
;

-- Aug 22, 2014 1:00:10 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001995
;

-- Aug 22, 2014 1:00:28 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002021
;

-- Aug 22, 2014 1:00:37 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:00:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001997
;

-- Aug 22, 2014 1:00:51 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:00:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001999
;

-- Aug 22, 2014 1:01:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002020
;

-- Aug 22, 2014 1:01:18 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:01:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002022
;

-- Aug 22, 2014 1:01:33 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002002
;

-- Aug 22, 2014 1:01:42 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002005
;

-- Aug 22, 2014 1:01:49 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002007
;

-- Aug 22, 2014 1:02:22 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002010
;

-- Aug 22, 2014 1:02:31 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002012
;

-- Aug 22, 2014 1:02:52 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002014
;

-- Aug 22, 2014 1:03:01 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:03:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002016
;

-- Aug 22, 2014 1:03:13 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-22 13:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002018
;

SELECT lbr_register_migration_script('201408200859.sql') FROM dual
;

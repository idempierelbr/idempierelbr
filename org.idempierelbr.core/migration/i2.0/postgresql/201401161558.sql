-- Jan 16, 2014 3:02:43 PM BRST
-- Table/Window/Menu: BP Fiscal Group
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000004,'N','N','N','LBR','L','e2046dd1-4eaa-418b-8ce8-f4b91f548ac3','Y','Y','LBR_FiscalGroup_BPartner','Identifies a Business Partner Fiscal Group','BP Fiscal Group','Y',0,0,TO_TIMESTAMP('2014-01-16 15:02:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:02:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 16, 2014 3:02:43 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000008,'Table LBR_FiscalGroup_BPartner','LBR_FiscalGroup_BPartner',1,'be7607c7-963f-4348-9c18-27c50bbde419',TO_TIMESTAMP('2014-01-16 15:02:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:02:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 16, 2014 3:03:10 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000062,'Y','N','N',0,'N',22,'N','N','N','Y','fd7bb86c-f653-4583-a2c8-4d18d08f5a30','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-01-16 15:03:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:03:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000004,129,0,'LBR')
;

-- Jan 16, 2014 3:03:22 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRFiscalGroupBPartne', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 15:03:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000062
;

-- Jan 16, 2014 3:03:22 PM BRST
CREATE TABLE LBR_FiscalGroup_BPartner (AD_Client_ID NUMERIC(10) NOT NULL)
;

-- Jan 16, 2014 3:03:23 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT ADClient_LBRFiscalGroupBPartne FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 3:03:51 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000063,'Y','N','N',0,'N',22,'N','N','N','Y','57cd4553-f42c-4825-a889-f81fba8c71c5','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-01-16 15:03:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:03:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000004,104,0,'LBR')
;

-- Jan 16, 2014 3:03:56 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRFiscalGroupBPartner', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 15:03:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000063
;

-- Jan 16, 2014 3:03:56 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 3:03:56 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT ADOrg_LBRFiscalGroupBPartner FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 3:04:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000064,'Y','N','N',0,'N',7,'N','N','N','Y','a88d4c34-ba06-4b2c-8be9-b71ccfaf4337','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-01-16 15:04:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:04:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000004,0,'LBR')
;

-- Jan 16, 2014 3:04:28 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN Created TIMESTAMP NOT NULL
;

-- Jan 16, 2014 3:04:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000065,'Y','N','N',0,'N',22,'N','N','N','Y','1b087367-ddcb-4eab-a36b-5e46080162f8','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-01-16 15:04:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:04:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000004,0,'LBR')
;

-- Jan 16, 2014 3:04:53 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRFiscalGroupBPartn', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 15:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000065
;

-- Jan 16, 2014 3:04:53 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 3:04:53 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT CreatedBy_LBRFiscalGroupBPartn FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 3:05:29 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000066,'N','N','N',0,'N',255,'Y','N','N','Y','ca1e0cf9-723a-4415-926b-345cc5624298','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-01-16 15:05:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:05:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000004,0,'LBR')
;

-- Jan 16, 2014 3:05:33 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jan 16, 2014 3:05:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000067,'Y','N','N',0,'N',1,'N','N','N','Y','8442b106-76ef-4e2d-b924-283c9cc2a462','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-01-16 15:05:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:05:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000004,0,'LBR')
;

-- Jan 16, 2014 3:06:05 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 16, 2014 3:07:39 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FiscalGroup_BPartner_ID',1000020,'BP Fiscal Group','Identifies a Business Partner Fiscal Group','BP Fiscal Group','39447ea3-34ae-4e39-b6d8-a9d4baa93af9',TO_TIMESTAMP('2014-01-16 15:07:39','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 15:07:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 3:08:01 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000068,'Y','N','N',0,'N',22,'N','Y','N','Y','632bb6c5-45a0-4ff0-9500-41bfa44b5bdc','N','LBR_FiscalGroup_BPartner_ID','Identifies a Business Partner Fiscal Group','BP Fiscal Group','N',TO_TIMESTAMP('2014-01-16 15:08:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:08:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000020,13,1000004,0,'LBR')
;

-- Jan 16, 2014 3:08:07 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN LBR_FiscalGroup_BPartner_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 3:08:07 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT LBR_FiscalGroup_BPartner_Key PRIMARY KEY (LBR_FiscalGroup_BPartner_ID)
;

-- Jan 16, 2014 3:08:38 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FiscalGroup_BPartner_UU',1000021,'LBR_FiscalGroup_BPartner_UU',NULL,'LBR_FiscalGroup_BPartner_UU','1d53795c-a907-447e-a555-9536fd0872e5',TO_TIMESTAMP('2014-01-16 15:08:38','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 15:08:38','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 3:08:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000069,'N','N','N',0,'N',36,'N','N','N','Y','8ab50616-ea21-4867-b1bf-3002ec728ffb','N','LBR_FiscalGroup_BPartner_UU','LBR_FiscalGroup_BPartner_UU','N',TO_TIMESTAMP('2014-01-16 15:08:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:08:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000021,10,1000004,0,'LBR')
;

-- Jan 16, 2014 3:09:00 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN LBR_FiscalGroup_BPartner_UU VARCHAR(36) DEFAULT NULL 
;

-- Jan 16, 2014 3:09:00 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT LBR_FiscalGroup_BPartner_UU_uu_idx UNIQUE (LBR_FiscalGroup_BPartner_UU)
;

-- Jan 16, 2014 3:09:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000070,'Y','N','Y',0,'N',60,'Y','N','N','Y','44313c8d-2901-48de-b305-01d642852ef5','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-01-16 15:09:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:09:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000004,0,'LBR')
;

-- Jan 16, 2014 3:09:53 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- Jan 16, 2014 3:10:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000071,'Y','N','N',0,'N',7,'N','N','N','Y','2a4158b5-7025-4dc6-ae26-7f6fa4142191','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-01-16 15:10:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:10:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000004,0,'LBR')
;

-- Jan 16, 2014 3:10:32 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- Jan 16, 2014 3:10:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000072,'Y','N','N',0,'N',22,'N','N','N','Y','e3bdab34-94b0-47d1-b080-16680fbfb05a','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-01-16 15:10:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 15:10:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000004,0,'LBR')
;

-- Jan 16, 2014 3:11:04 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRFiscalGroupBPartn', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 15:11:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000072
;

-- Jan 16, 2014 3:11:04 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 3:11:04 PM BRST
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT UpdatedBy_LBRFiscalGroupBPartn FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 3:12:00 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','BP Fiscal Group','Maintain Business Partner Fiscal Groups',1000004,'ee501c5e-9dfc-43ac-8f59-4522ce3dd1ba',TO_TIMESTAMP('2014-01-16 15:12:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 15:12:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 16, 2014 3:13:03 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000004,10,'N','N','N','N','N','Y','N',0,'8f093153-7e2f-48e9-a6e7-e1e4ac3e272b','LBR','BP Fiscal Group',1000004,0,TO_TIMESTAMP('2014-01-16 15:13:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:13:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000004)
;

-- Jan 16, 2014 3:13:37 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000004,Updated=TO_TIMESTAMP('2014-01-16 15:13:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000004
;

-- Jan 16, 2014 3:14:16 PM BRST
UPDATE AD_Tab SET Description='Maintain Business Partner Fiscal Groups',Updated=TO_TIMESTAMP('2014-01-16 15:14:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000004
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,22,'N','N',10,'Y',1000046,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','93143124-8fe4-40ba-9911-02e5b228ceca','N','Y',0,0,TO_TIMESTAMP('2014-01-16 15:14:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:31','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000062)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,22,'N','N',20,'Y',1000047,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','95bc4597-b919-43b3-8cbc-ba6b5f0bc32c','N','Y','Y',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000063)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,60,'N','N',30,'Y',1000048,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','737589d8-320c-4acc-a8b6-5b910f84f3ad','N','Y',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000070)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000004,255,'N','N',40,'Y',1000049,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','0f729cbf-7b47-4249-aff2-059a78c5f1d3','N','Y',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000066)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,22,'N','N',50,'Y',1000050,'N','LBR','Identifies a Business Partner Fiscal Group','BP Fiscal Group','1c40b20a-c996-4e0c-90d8-2048a1a0ef1b','N','N',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000068)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,36,'N','N',60,'Y',1000051,'N','LBR','LBR_FiscalGroup_BPartner_UU','caefe728-daaa-4c04-8eec-3ad272d6e047','N','N',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000069)
;

-- Jan 16, 2014 3:14:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000004,1,'N','N',70,'Y',1000052,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','99397b05-5a45-48f0-b0a5-6bbe16a6a19c','N','Y',0,0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 15:14:32','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000067)
;

-- Jan 16, 2014 3:15:13 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000052
;

-- Jan 16, 2014 3:15:13 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000046
;

-- Jan 16, 2014 3:15:13 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000047
;

-- Jan 16, 2014 3:15:13 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000048
;

-- Jan 16, 2014 3:15:13 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000049
;

-- Jan 16, 2014 3:16:04 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-16 15:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000047
;

-- Jan 16, 2014 3:16:32 PM BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_TIMESTAMP('2014-01-16 15:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000049
;

-- Jan 16, 2014 3:18:17 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000004,1000006,'N','Y','N','LBR','Y','BP Fiscal Group','Maintain Business Partner Fiscal Groups','f5892bf4-25a9-4686-90c7-1e385fb35dfc','W','Y',0,TO_TIMESTAMP('2014-01-16 15:18:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 15:18:17','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 3:18:17 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000006, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000006)
;

-- Jan 16, 2014 3:18:21 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 3:18:21 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 3:18:21 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 3:18:22 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 16, 2014 3:18:31 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

SELECT lbr_register_migration_script('201401161558.sql') FROM dual
;

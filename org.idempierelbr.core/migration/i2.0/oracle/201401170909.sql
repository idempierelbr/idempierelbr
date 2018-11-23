SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 17, 2014 8:51:03 AM BRST
-- Table/Window/Menu: CFOP BP Category
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000006,'N','N','N','LBR','L','36af901d-1fca-423e-85d9-1fe6bb6ab663','Y','Y','LBR_BPartnerCategory','Identifies a CFOP BPartner Category','CFOP BP Category','Y',0,0,TO_DATE('2014-01-17 08:51:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 08:51:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 17, 2014 8:51:04 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000010,'Table LBR_BPartnerCategory','LBR_BPartnerCategory',1,'ea10d01e-1efb-47e8-8a19-a47e8776f5e7',TO_DATE('2014-01-17 08:51:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 08:51:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 17, 2014 8:51:39 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000084,'Y','N','N',0,'N',22,'N','N','N','Y','2eeb4b6f-2643-4d64-82b6-5ffbfc7f2b16','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-17 08:51:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:51:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000006,129,0,'LBR')
;

-- Jan 17, 2014 8:51:46 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBPartnerCategory', FKConstraintType='N',Updated=TO_DATE('2014-01-17 08:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000084
;

-- Jan 17, 2014 8:51:46 AM BRST
CREATE TABLE LBR_BPartnerCategory (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Jan 17, 2014 8:51:47 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT ADClient_LBRBPartnerCategory FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 17, 2014 8:52:22 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000085,'Y','N','N',0,'N',22,'N','N','N','Y','0b8176d8-c831-43e8-90df-342319349368','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-17 08:52:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:52:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000006,104,0,'LBR')
;

-- Jan 17, 2014 8:52:38 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBPartnerCategory', FKConstraintType='N',Updated=TO_DATE('2014-01-17 08:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000085
;

-- Jan 17, 2014 8:52:38 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Jan 17, 2014 8:52:38 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT ADOrg_LBRBPartnerCategory FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 17, 2014 8:53:02 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000086,'Y','N','N',0,'N',7,'N','N','N','Y','8a43f71b-0ce1-49dd-ad10-a4ace8f5be03','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-17 08:53:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:53:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000006,0,'LBR')
;

-- Jan 17, 2014 8:53:06 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD Created DATE NOT NULL
;

-- Jan 17, 2014 8:53:42 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000087,'Y','N','N',0,'N',22,'N','N','N','Y','387d46db-82d2-4743-80b2-a9e206dc7f96','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-17 08:53:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:53:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000006,0,'LBR')
;

-- Jan 17, 2014 8:53:48 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBPartnerCategory', FKConstraintType='N',Updated=TO_DATE('2014-01-17 08:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000087
;

-- Jan 17, 2014 8:53:48 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CreatedBy NUMBER(10) NOT NULL
;

-- Jan 17, 2014 8:53:48 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT CreatedBy_LBRBPartnerCategory FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 17, 2014 8:54:43 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000088,'N','N','N',0,'N',255,'Y','N','N','Y','153ac0c0-8cc0-4990-8ec4-ed63c5ddde86','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-17 08:54:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:54:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000006,0,'LBR')
;

-- Jan 17, 2014 8:54:47 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jan 17, 2014 8:55:13 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000089,'Y','N','N',0,'N',1,'N','N','N','Y','c0b63343-2856-43cb-b997-09dc15ebf2ab','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-17 08:55:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:55:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000006,0,'LBR')
;

-- Jan 17, 2014 8:55:18 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 17, 2014 8:56:26 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BPartnerCategory_ID',1000024,'CFOP Business Partner Category','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','89977f5a-9ebc-47ba-99b9-b9fd5556be90',TO_DATE('2014-01-17 08:56:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-17 08:56:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 17, 2014 8:56:48 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000090,'Y','N','N',0,'N',22,'N','Y','N','Y','ba16503f-2d1f-490e-b5e7-ff0d633ce4b0','N','LBR_BPartnerCategory_ID','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','N',TO_DATE('2014-01-17 08:56:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:56:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000024,13,1000006,0,'LBR')
;

-- Jan 17, 2014 8:56:53 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD LBR_BPartnerCategory_ID NUMBER(10) NOT NULL
;

-- Jan 17, 2014 8:56:53 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT LBR_BPartnerCategory_Key PRIMARY KEY (LBR_BPartnerCategory_ID)
;

-- Jan 17, 2014 8:57:34 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BPartnerCategory_UU',1000025,'LBR_BPartnerCategory_UU',NULL,'LBR_BPartnerCategory_UU','856ce15b-4ed1-4c80-b208-48a46c23425c',TO_DATE('2014-01-17 08:57:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-17 08:57:34','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 17, 2014 8:58:24 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000091,'N','N','N',0,'N',36,'N','N','N','Y','d9f41081-fde2-4505-9010-e0c50e5a1f4e','N','LBR_BPartnerCategory_UU','LBR_BPartnerCategory_UU','N',TO_DATE('2014-01-17 08:58:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:58:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000025,10,1000006,0,'LBR')
;

-- Jan 17, 2014 8:58:29 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD LBR_BPartnerCategory_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 17, 2014 8:58:29 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT LBR_BPartnerCategory_UU_idx UNIQUE (LBR_BPartnerCategory_UU)
;

-- Jan 17, 2014 8:59:13 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000092,'Y','N','Y',0,'N',60,'Y','N','N','Y','552e764c-3f59-4f05-afb5-4e4351f2ffd9','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-01-17 08:59:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:59:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000006,0,'LBR')
;

-- Jan 17, 2014 8:59:17 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD Name NVARCHAR2(60) NOT NULL
;

-- Jan 17, 2014 8:59:40 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000093,'N','N','N',0,'N',7,'N','N','N','Y','9f5ea39c-92e1-4907-a312-fe95df4e6353','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-17 08:59:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 08:59:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000006,0,'LBR')
;

-- Jan 17, 2014 8:59:48 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD Updated DATE DEFAULT NULL 
;

-- Jan 17, 2014 9:00:10 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000094,'N','N','N',0,'N',22,'N','N','N','Y','d2422607-d273-4a77-9a5f-7304bd832e11','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-17 09:00:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 09:00:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000006,0,'LBR')
;

-- Jan 17, 2014 9:00:15 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBPartnerCategory', FKConstraintType='N',Updated=TO_DATE('2014-01-17 09:00:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000094
;

-- Jan 17, 2014 9:00:15 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 17, 2014 9:00:15 AM BRST
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT UpdatedBy_LBRBPartnerCategory FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 17, 2014 9:00:55 AM BRST
UPDATE AD_Table SET AD_Window_ID=1000005,Updated=TO_DATE('2014-01-17 09:00:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000005
;

-- Jan 17, 2014 9:01:40 AM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','CFOP BP Category','Maintain CFOP Business Partner Categories',1000006,'71faf0fd-f396-4ec1-aa51-7e77b248fe3b',TO_DATE('2014-01-17 09:01:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-17 09:01:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 17, 2014 9:02:32 AM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000006,10,'N','N','N','N','N','Y','N',0,'0f4c5e18-6a2a-495d-83ac-9b65e819472e','LBR','CFOP BP Category','Maintain CFOP BP Category',1000006,0,TO_DATE('2014-01-17 09:02:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000006)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,22,'N','N',10,'Y',1000060,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','c3e9e4f5-c3f8-4d7b-9e86-85f8f130159a','N','Y',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000084)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,22,'N','N',20,'Y',1000061,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','f724a644-034e-4c35-a5b6-2f035d531be9','N','Y','Y',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000085)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,60,'N','N',30,'Y',1000062,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','88cc1889-f0a9-43e6-9ef8-073d4bfbb0a8','N','Y',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000092)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000006,255,'N','N',40,'Y',1000063,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','fe0569d9-89d4-469e-a655-582a89c5c680','N','Y',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000088)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,22,'N','N',50,'Y',1000064,'N','LBR','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','63be6c35-74e9-4b20-b118-de2fde2ac074','N','N',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000090)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,36,'N','N',60,'Y',1000065,'N','LBR','LBR_BPartnerCategory_UU','311c1fd6-8b3e-4677-91fa-bd50892cfcd4','N','N',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000091)
;

-- Jan 17, 2014 9:02:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000006,1,'N','N',70,'Y',1000066,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','a45251da-bb57-4368-a90d-92c03e2f595a','N','Y',0,0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 09:02:41','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000089)
;

-- Jan 17, 2014 9:03:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000066
;

-- Jan 17, 2014 9:03:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000061
;

-- Jan 17, 2014 9:03:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000060
;

-- Jan 17, 2014 9:03:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000062
;

-- Jan 17, 2014 9:03:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000063
;

-- Jan 17, 2014 9:03:35 AM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-17 09:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000061
;

-- Jan 17, 2014 9:04:20 AM BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_DATE('2014-01-17 09:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000063
;

-- Jan 17, 2014 9:05:03 AM BRST
UPDATE AD_Table SET AD_Window_ID=1000006,Updated=TO_DATE('2014-01-17 09:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000006
;

-- Jan 17, 2014 9:07:43 AM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000006,1000009,'N','Y','N','LBR','Y','CFOP BP Category','Maintain CFOP Business Partner Categories','b2cb8122-0b10-4485-bfe9-67ac088f4eb2','W','Y',0,TO_DATE('2014-01-17 09:07:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-17 09:07:43','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 17, 2014 9:07:43 AM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000009, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000009)
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 17, 2014 9:07:47 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- Jan 17, 2014 9:07:58 AM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- Jan 17, 2014 9:17:48 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:17:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,'53422c45-d740-4243-bc34-638e83f4dc7d','Indústria',TO_DATE('2014-01-17 09:17:48','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:18:21 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:18:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000001,'b4b55c2a-8811-47cb-bc33-6368d4cc3ccb','Eletricidade',TO_DATE('2014-01-17 09:18:20','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:18:31 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:18:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000002,'0adf8919-12cb-40a4-a1b3-c7a38c44c223','Comunicação',TO_DATE('2014-01-17 09:18:31','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:18:37 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:18:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000003,'25337e89-77d5-43d9-84ad-a1b25b456592','Transporte',TO_DATE('2014-01-17 09:18:37','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:19:13 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:19:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000004,'bdf977d9-fe9a-4c55-866b-932424bf1a22','Serviço',TO_DATE('2014-01-17 09:19:13','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:19:19 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:19:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000005,'ef4a3072-d451-4826-88fe-570661e64a24','Ind. Consumo',TO_DATE('2014-01-17 09:19:19','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:19:28 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:19:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000006,'eac39538-76c5-43ac-b4dc-0f185d6ce246','Isento',TO_DATE('2014-01-17 09:19:28','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 17, 2014 9:19:35 AM BRST
INSERT INTO LBR_BPartnerCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_BPartnerCategory_ID,LBR_BPartnerCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2014-01-17 09:19:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000007,'b73a0ae4-c702-426c-8332-4354494b0b7e','Agrícola',TO_DATE('2014-01-17 09:19:35','YYYY-MM-DD HH24:MI:SS'),0)
;

SELECT lbr_register_migration_script('201401170909.sql') FROM dual
;

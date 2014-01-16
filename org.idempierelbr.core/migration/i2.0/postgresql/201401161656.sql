-- Jan 16, 2014 4:33:30 PM BRST
-- Table/Window/Menu: CFOP Product Category
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000005,'N','N','N','LBR','L','5fc37948-668e-41fa-8e23-05a163cce91c','Y','Y','LBR_ProductCategory','Identifies a CFOP Product Category','CFOP Product Category','Y',0,0,TO_TIMESTAMP('2014-01-16 16:33:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:33:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 16, 2014 4:33:31 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000009,'Table LBR_ProductCategory','LBR_ProductCategory',1,'7c473e81-cdb5-4a72-9e43-c6a22680d9bf',TO_TIMESTAMP('2014-01-16 16:33:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:33:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 16, 2014 4:35:17 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000073,'Y','N','N',0,'N',22,'N','N','N','Y','88df8e23-9382-4970-950a-a4ccf870f26b','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-01-16 16:35:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:35:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000005,129,0,'LBR')
;

-- Jan 16, 2014 4:35:40 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRProductCategory', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 16:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000073
;

-- Jan 16, 2014 4:35:40 PM BRST
CREATE TABLE LBR_ProductCategory (AD_Client_ID NUMERIC(10) NOT NULL)
;

-- Jan 16, 2014 4:35:41 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT ADClient_LBRProductCategory FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 4:36:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000074,'Y','N','N',0,'N',22,'N','N','N','Y','6f112194-757f-4d21-9da2-18001218ddea','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-01-16 16:36:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:36:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000005,104,0,'LBR')
;

-- Jan 16, 2014 4:36:48 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRProductCategory', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 16:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000074
;

-- Jan 16, 2014 4:36:48 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 4:36:48 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT ADOrg_LBRProductCategory FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 4:37:12 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000075,'Y','N','N',0,'N',7,'N','N','N','Y','db5eedef-c00c-420d-b3f3-4b47fef48a19','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-01-16 16:37:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:37:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000005,0,'LBR')
;

-- Jan 16, 2014 4:37:18 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN Created TIMESTAMP NOT NULL
;

-- Jan 16, 2014 4:37:37 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000076,'Y','N','N',0,'N',22,'N','N','N','Y','72884b44-5b3b-4712-b6c6-b78e54d4eac0','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-01-16 16:37:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:37:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000005,0,'LBR')
;

-- Jan 16, 2014 4:37:42 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRProductCategory', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 16:37:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000076
;

-- Jan 16, 2014 4:37:42 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 4:37:42 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT CreatedBy_LBRProductCategory FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 4:38:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000077,'N','N','N',0,'N',255,'Y','N','N','Y','33b12196-c6bb-4e6c-b611-22126b3d3839','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-01-16 16:38:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:38:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000005,0,'LBR')
;

-- Jan 16, 2014 4:38:28 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jan 16, 2014 4:38:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000078,'Y','N','N',0,'N',1,'N','N','N','Y','0c0125b9-ebf7-4946-ba1d-c22c4b8eb385','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-01-16 16:38:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:38:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000005,0,'LBR')
;

-- Jan 16, 2014 4:39:03 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 16, 2014 4:40:17 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ProductCategory_ID',1000022,'CFOP Product Category','Identifies a CFOP Product Category','CFOP Product Category','292ac665-cf2a-4328-8f70-14bc9afa5e89',TO_TIMESTAMP('2014-01-16 16:40:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 16:40:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 4:41:01 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000079,'Y','N','N',0,'N',22,'N','Y','N','Y','e166d353-6a23-4ea3-ac47-e9b8814a2252','N','LBR_ProductCategory_ID','Identifies a CFOP Product Category','CFOP Product Category','N',TO_TIMESTAMP('2014-01-16 16:41:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:41:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000022,13,1000005,0,'LBR')
;

-- Jan 16, 2014 4:41:07 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN LBR_ProductCategory_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 4:41:07 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT LBR_ProductCategory_Key PRIMARY KEY (LBR_ProductCategory_ID)
;

-- Jan 16, 2014 4:41:29 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ProductCategory_UU',1000023,'LBR_ProductCategory_UU',NULL,'LBR_ProductCategory_UU','444d0a3a-3917-4d95-9f9e-96d5d4bdfc61',TO_TIMESTAMP('2014-01-16 16:41:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 16:41:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 4:41:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000080,'N','N','N',0,'N',36,'N','N','N','Y','a75ae7fb-ddf4-483d-b917-067b5e2886aa','N','LBR_ProductCategory_UU','LBR_ProductCategory_UU','N',TO_TIMESTAMP('2014-01-16 16:41:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:41:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000023,10,1000005,0,'LBR')
;

-- Jan 16, 2014 4:41:53 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN LBR_ProductCategory_UU VARCHAR(36) DEFAULT NULL 
;

-- Jan 16, 2014 4:41:53 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT LBR_ProductCategory_UU_idx UNIQUE (LBR_ProductCategory_UU)
;

-- Jan 16, 2014 4:42:38 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000081,'Y','N','Y',0,'N',60,'Y','N','N','Y','c226655b-780a-44a4-ac74-2562ff623b1d','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-01-16 16:42:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:42:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000005,0,'LBR')
;

-- Jan 16, 2014 4:42:43 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- Jan 16, 2014 4:43:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000082,'Y','N','N',0,'N',7,'N','N','N','Y','f76edfaa-74fc-4bd7-abe5-c71f163a6b83','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-01-16 16:43:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:43:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000005,0,'LBR')
;

-- Jan 16, 2014 4:43:15 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- Jan 16, 2014 4:43:33 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000083,'Y','N','N',0,'N',22,'N','N','N','Y','a2cb01a3-c625-4684-8a46-b6517c3eb94e','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-01-16 16:43:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 16:43:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000005,0,'LBR')
;

-- Jan 16, 2014 4:43:38 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRProductCategory', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 16:43:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000083
;

-- Jan 16, 2014 4:43:38 PM BRST
ALTER TABLE LBR_ProductCategory ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 4:43:38 PM BRST
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT UpdatedBy_LBRProductCategory FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 4:45:44 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','CFOP Product Category','Maintain CFOP Product Categories',1000005,'603e54ab-fbf3-451b-9fcf-ad3d927c136c',TO_TIMESTAMP('2014-01-16 16:45:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 16:45:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 16, 2014 4:46:34 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000005,10,'N','N','N','N','N','Y','N',0,'cccb7ed5-3606-4468-871d-9241f901b235','LBR','CFOP Product Category','Maintain CFOP Product Categories',1000005,0,TO_TIMESTAMP('2014-01-16 16:46:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000005)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,22,'N','N',10,'Y',1000053,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','c0349cdd-e2d2-48ec-baf1-19f9481a51d5','N','Y',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000073)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,22,'N','N',20,'Y',1000054,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','e9183108-b8dc-4c66-8818-ea3faafc9d1c','N','Y','Y',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000074)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,60,'N','N',30,'Y',1000055,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','3936d2fc-d447-4247-8355-604a3a896d0f','N','Y',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000081)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000005,255,'N','N',40,'Y',1000056,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','27f0de32-0a10-462d-b3c2-5f02ab170e23','N','Y',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000077)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,22,'N','N',50,'Y',1000057,'N','LBR','Identifies a CFOP Product Category','CFOP Product Category','7e683cc4-5e2d-4b47-8d3a-e0eb42d8b2d2','N','N',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000079)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,36,'N','N',60,'Y',1000058,'N','LBR','LBR_ProductCategory_UU','bcdc9788-0815-404a-8c77-58af9168645d','N','N',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000080)
;

-- Jan 16, 2014 4:46:45 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000005,1,'N','N',70,'Y',1000059,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','1c884964-b1c5-452f-8050-6c155b090cac','N','Y',0,0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 16:46:45','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000078)
;

-- Jan 16, 2014 4:47:14 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000059
;

-- Jan 16, 2014 4:47:14 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000053
;

-- Jan 16, 2014 4:47:14 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000054
;

-- Jan 16, 2014 4:47:14 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000055
;

-- Jan 16, 2014 4:47:14 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000056
;

-- Jan 16, 2014 4:47:48 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-16 16:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000054
;

-- Jan 16, 2014 4:48:05 PM BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_TIMESTAMP('2014-01-16 16:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000056
;

-- Jan 16, 2014 4:52:12 PM BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000007,'Y','N','N','LBR','N','CFOP','CFOP Management','44052b4c-eff2-411e-ab15-d3115ea0176c','Y',0,TO_TIMESTAMP('2014-01-16 16:52:12','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 16:52:12','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 4:52:12 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000007, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000007)
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 4:52:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 4:52:40 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 4:52:40 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jan 16, 2014 4:52:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jan 16, 2014 4:54:14 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000005,1000008,'N','Y','N','LBR','Y','CFOP Product Category','Maintain CFOP Product Categories','1cd7fdb4-3109-44e3-8300-b4a50f8b6867','W','Y',0,TO_TIMESTAMP('2014-01-16 16:54:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 16:54:14','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 4:54:14 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000008, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000008)
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 4:54:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 4:54:25 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- Jan 16, 2014 5:15:47 PM BRST
INSERT INTO LBR_ProductCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_ProductCategory_ID,LBR_ProductCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2014-01-16 17:15:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,'d691aac5-3725-46ff-9696-77f68054ddb6','Material',TO_TIMESTAMP('2014-01-16 17:15:47','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 16, 2014 5:16:05 PM BRST
INSERT INTO LBR_ProductCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_ProductCategory_ID,LBR_ProductCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2014-01-16 17:16:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000001,'0fa947dd-bc17-46af-a374-e33c28751b25','Eletricidade',TO_TIMESTAMP('2014-01-16 17:16:05','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 16, 2014 5:16:13 PM BRST
INSERT INTO LBR_ProductCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_ProductCategory_ID,LBR_ProductCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2014-01-16 17:16:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000002,'15294193-8bdd-4557-bafa-97bb73a6231f','Comunicação',TO_TIMESTAMP('2014-01-16 17:16:13','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 16, 2014 5:16:30 PM BRST
INSERT INTO LBR_ProductCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_ProductCategory_ID,LBR_ProductCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2014-01-16 17:16:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000003,'4632f811-5a72-4a8a-9e7b-55b4c13e31c0','Transporte',TO_TIMESTAMP('2014-01-16 17:16:30','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jan 16, 2014 5:16:39 PM BRST
INSERT INTO LBR_ProductCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_ProductCategory_ID,LBR_ProductCategory_UU,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2014-01-16 17:16:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000004,'caa8344b-d8ff-47d9-bf10-fabd23bafb27','Animal',TO_TIMESTAMP('2014-01-16 17:16:39','YYYY-MM-DD HH24:MI:SS'),0)
;

SELECT lbr_register_migration_script('201401161656.sql') FROM dual
;

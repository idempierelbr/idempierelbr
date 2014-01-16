-- Jan 16, 2014 1:47:35 PM BRST
-- Table/Window/Menu: Product Fiscal Group
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000034
;

-- Jan 16, 2014 1:47:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000035
;

-- Jan 16, 2014 2:09:52 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000003,'N','N','N','LBR','L','a4073527-b598-4fa5-bbab-6030046b6500','Y','Y','LBR_FiscalGroup_Product','Identifies a Product Fiscal Group','Product Fiscal Group','Y',0,0,TO_TIMESTAMP('2014-01-16 14:09:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:09:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 16, 2014 2:09:52 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000007,'Table LBR_FiscalGroup_Product','LBR_FiscalGroup_Product',1,'387fa05e-a4dd-4d36-a5e3-ca2ff07e7ddb',TO_TIMESTAMP('2014-01-16 14:09:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:09:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 16, 2014 2:10:33 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000051,'Y','N','N',0,'N',22,'N','N','N','Y','aa179df5-2f24-4fc9-9c88-2f7885c3e170','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-01-16 14:10:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:10:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000003,129,0,'LBR')
;

-- Jan 16, 2014 2:10:39 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRFiscalGroupProduct', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 14:10:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000051
;

-- Jan 16, 2014 2:10:39 PM BRST
CREATE TABLE LBR_FiscalGroup_Product (AD_Client_ID NUMERIC(10) NOT NULL)
;

-- Jan 16, 2014 2:10:39 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT ADClient_LBRFiscalGroupProduct FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 2:11:05 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000052,'Y','N','N',0,'N',22,'N','N','N','Y','d28acf2b-2c7e-4528-842f-0a59dc20522c','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-01-16 14:11:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:11:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000003,104,0,'LBR')
;

-- Jan 16, 2014 2:11:12 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRFiscalGroupProduct', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 14:11:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000052
;

-- Jan 16, 2014 2:11:12 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 2:11:12 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT ADOrg_LBRFiscalGroupProduct FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 2:11:42 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000053,'Y','N','N',0,'N',7,'N','N','N','Y','4f043f1b-b605-4a7e-a091-211af89db8cb','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-01-16 14:11:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:11:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000003,0,'LBR')
;

-- Jan 16, 2014 2:11:47 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN Created TIMESTAMP NOT NULL
;

-- Jan 16, 2014 2:12:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000054,'Y','N','N',0,'N',22,'N','N','N','Y','380a2b57-2cfd-4a96-b41a-e2c75ae1a549','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-01-16 14:12:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:12:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000003,0,'LBR')
;

-- Jan 16, 2014 2:12:16 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRFiscalGroupProduc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 14:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000054
;

-- Jan 16, 2014 2:12:16 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 2:12:16 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT CreatedBy_LBRFiscalGroupProduc FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 2:13:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000055,'N','N','N',0,'N',255,'Y','N','N','Y','e8215189-832e-4aa7-9a45-b3508b7bfb02','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2014-01-16 14:13:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:13:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000003,0,'LBR')
;

-- Jan 16, 2014 2:13:29 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- Jan 16, 2014 2:13:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000056,'Y','N','N',0,'N',1,'N','N','N','Y','5ee5d10d-557f-41a7-876a-238531e12206','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-01-16 14:13:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:13:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000003,0,'LBR')
;

-- Jan 16, 2014 2:14:00 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 16, 2014 2:15:37 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FiscalGroup_Product_ID',1000018,'Product Fiscal Group','Identifies a Product Fiscal Group','Product Fiscal Group','4303f653-5799-4509-97fa-cc751edafe51',TO_TIMESTAMP('2014-01-16 14:15:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 14:15:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 2:16:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000057,'Y','N','N',0,'N',22,'N','Y','N','Y','a39d8d3e-2ff8-4177-b581-dae73433653a','N','LBR_FiscalGroup_Product_ID','Identifies a Product Fiscal Group','Product Fiscal Group','N',TO_TIMESTAMP('2014-01-16 14:16:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:16:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000018,13,1000003,0,'LBR')
;

-- Jan 16, 2014 2:16:06 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN LBR_FiscalGroup_Product_ID NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 2:16:06 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT LBR_FiscalGroup_Product_Key PRIMARY KEY (LBR_FiscalGroup_Product_ID)
;

-- Jan 16, 2014 2:16:33 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FiscalGroup_Product_UU',1000019,'LBR_FiscalGroup_Product_UU',NULL,'LBR_FiscalGroup_Product_UU','34d9539c-c31f-4574-9dd0-185d69f5491f',TO_TIMESTAMP('2014-01-16 14:16:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 14:16:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 2:16:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000058,'N','N','N',0,'N',36,'N','N','N','Y','c9232f6e-d12b-4bf2-a799-7b0bee1d6770','N','LBR_FiscalGroup_Product_UU','LBR_FiscalGroup_Product_UU','N',TO_TIMESTAMP('2014-01-16 14:16:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:16:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000019,10,1000003,0,'LBR')
;

-- Jan 16, 2014 2:17:00 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN LBR_FiscalGroup_Product_UU VARCHAR(36) DEFAULT NULL 
;

-- Jan 16, 2014 2:17:00 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT LBR_FiscalGroup_Product_UU_idx UNIQUE (LBR_FiscalGroup_Product_UU)
;

-- Jan 16, 2014 2:18:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000059,'Y','N','Y',0,'N',60,'Y','N','N','Y','48642fc9-c5a2-4ceb-b567-7d9c7eb7da4f','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_TIMESTAMP('2014-01-16 14:18:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:18:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000003,0,'LBR')
;

-- Jan 16, 2014 2:18:24 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN Name VARCHAR(60) NOT NULL
;

-- Jan 16, 2014 2:18:49 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000060,'Y','N','N',0,'N',7,'N','N','N','Y','40b9f2fc-0a47-40c7-8618-1f2054592b04','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-01-16 14:18:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:18:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000003,0,'LBR')
;

-- Jan 16, 2014 2:18:55 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- Jan 16, 2014 2:19:15 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000061,'Y','N','N',0,'N',22,'N','N','N','Y','d24239aa-520e-42d8-b674-0d6ccc4a31ba','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-01-16 14:19:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-01-16 14:19:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000003,0,'LBR')
;

-- Jan 16, 2014 2:19:20 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRFiscalGroupProduc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-01-16 14:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000061
;

-- Jan 16, 2014 2:19:20 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- Jan 16, 2014 2:19:20 PM BRST
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT UpdatedBy_LBRFiscalGroupProduc FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 2:20:36 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Product Fiscal Group','Maintain Product Fiscal Groups',1000003,'40a3a716-a730-4bc9-b737-ea1cf9578205',TO_TIMESTAMP('2014-01-16 14:20:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 14:20:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 16, 2014 2:20:57 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000003,Updated=TO_TIMESTAMP('2014-01-16 14:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000003
;

-- Jan 16, 2014 2:22:09 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000003,10,'N','N','N','N','N','Y','N',0,'fbf28201-fe0c-4a84-b62f-72b983fe78e1','LBR','Product Fiscal Group','Maintain Product Fiscal Groups',1000003,0,TO_TIMESTAMP('2014-01-16 14:22:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000003)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,22,'N','N',10,'Y',1000039,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','9d2813f0-cf7d-445b-bcf5-36bdb3f4326b','N','Y',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000051)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,22,'N','N',20,'Y',1000040,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b99a2625-8906-40f1-a0a1-188b9046dc09','N','Y','Y',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000052)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,60,'N','N',30,'Y',1000041,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','0c9bfe20-7545-4d44-a6cd-fecede301ac2','N','Y',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000059)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000003,255,'N','N',40,'Y',1000042,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','cfd128d1-f3ef-4af3-b183-1ad75df9fee8','N','Y',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000055)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,22,'N','N',50,'Y',1000043,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','ec62df1d-41d9-4e22-9eb5-c3a84ca1eacd','N','N',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000057)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,36,'N','N',60,'Y',1000044,'N','LBR','LBR_FiscalGroup_Product_UU','27cee9bc-237d-4508-8b8e-258cc7819a17','N','N',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000058)
;

-- Jan 16, 2014 2:22:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000003,1,'N','N',70,'Y',1000045,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','aab06388-fa7c-4c1f-a864-d20794b62e5e','N','Y',0,0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-16 14:22:18','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000056)
;

-- Jan 16, 2014 2:22:59 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000045
;

-- Jan 16, 2014 2:22:59 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000039
;

-- Jan 16, 2014 2:22:59 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000040
;

-- Jan 16, 2014 2:22:59 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000041
;

-- Jan 16, 2014 2:22:59 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000042
;

-- Jan 16, 2014 2:23:33 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-16 14:23:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000040
;

-- Jan 16, 2014 2:23:53 PM BRST
UPDATE AD_Field SET NumLines=2,Updated=TO_TIMESTAMP('2014-01-16 14:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000042
;

-- Jan 16, 2014 2:26:07 PM BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000004,'Y','N','N','LBR','N','Taxes','9b206750-ef40-4662-83dd-e146a07863cb','Y',0,TO_TIMESTAMP('2014-01-16 14:26:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 14:26:07','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 2:26:07 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000004, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000004)
;

-- Jan 16, 2014 2:26:16 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 2:26:16 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 2:26:16 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 2:26:16 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 2:26:16 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 2:26:17 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jan 16, 2014 2:26:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jan 16, 2014 2:27:08 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000003,1000005,'N','Y','N','LBR','Y','Product Fiscal Group','c968d149-0c21-42d5-a0db-7301e5657f56','W','Y',0,TO_TIMESTAMP('2014-01-16 14:27:08','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-16 14:27:08','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 2:27:08 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000005, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000005)
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 2:27:14 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 16, 2014 2:27:33 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 16, 2014 2:28:49 PM BRST
UPDATE AD_Menu SET Description='Maintain Product Fiscal Groups',Updated=TO_TIMESTAMP('2014-01-16 14:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000005
;

SELECT lbr_register_migration_script('201401161437.sql') FROM dual
;

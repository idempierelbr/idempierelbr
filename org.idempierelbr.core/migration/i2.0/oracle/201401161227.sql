SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 16, 2014 11:29:28 AM BRST
-- Table/Window/Menu: Tax Group (NF)
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000002,'N','N','N','LBR','L','eb59dd4c-2417-4465-975f-5eff7b50c18b','Y','Y','LBR_TaxGroup','Maintain NF Tax Groups','Tax Group (NF)','Y',0,0,TO_DATE('2014-01-16 11:29:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 11:29:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 16, 2014 11:29:28 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000006,'Table LBR_TaxGroup','LBR_TaxGroup',1,'ed58e593-39e7-4936-b983-1e1c7abbc45f',TO_DATE('2014-01-16 11:29:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 11:29:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 16, 2014 11:30:33 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000040,'Y','N','N',0,'N',22,'N','N','N','Y','4b754134-87c2-4eee-bfad-28ee12683609','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-16 11:30:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:30:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000002,129,0,'LBR')
;

-- Jan 16, 2014 11:30:38 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxGroup', FKConstraintType='N',Updated=TO_DATE('2014-01-16 11:30:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000040
;

-- Jan 16, 2014 11:30:38 AM BRST
CREATE TABLE LBR_TaxGroup (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Jan 16, 2014 11:30:38 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT ADClient_LBRTaxGroup FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 11:31:24 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000041,'Y','N','N',0,'N',22,'N','N','N','Y','862479fe-2431-4b79-83cb-e1f612585fbf','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-16 11:31:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:31:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000002,104,0,'LBR')
;

-- Jan 16, 2014 11:31:58 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxGroup', FKConstraintType='N',Updated=TO_DATE('2014-01-16 11:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000041
;

-- Jan 16, 2014 11:31:58 AM BRST
ALTER TABLE LBR_TaxGroup ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Jan 16, 2014 11:31:58 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT ADOrg_LBRTaxGroup FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 11:32:25 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000042,'Y','N','N',0,'N',7,'N','N','N','Y','9dcbbdbe-aa66-4cd4-84c8-7661caeeba29','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-16 11:32:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:32:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000002,0,'LBR')
;

-- Jan 16, 2014 11:32:30 AM BRST
ALTER TABLE LBR_TaxGroup ADD Created DATE NOT NULL
;

-- Jan 16, 2014 11:32:52 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000043,'Y','N','N',0,'N',22,'N','N','N','Y','1831faee-4656-48d2-b36c-5090f675dfb5','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-16 11:32:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:32:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000002,0,'LBR')
;

-- Jan 16, 2014 11:32:56 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxGroup', FKConstraintType='N',Updated=TO_DATE('2014-01-16 11:32:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000043
;

-- Jan 16, 2014 11:32:56 AM BRST
ALTER TABLE LBR_TaxGroup ADD CreatedBy NUMBER(10) NOT NULL
;

-- Jan 16, 2014 11:32:56 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT CreatedBy_LBRTaxGroup FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 11:34:06 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000044,'N','N','N',0,'N',255,'Y','N','N','Y','9756f5e0-3232-45f2-8021-9e8970d7a8f8','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-16 11:34:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:34:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000002,0,'LBR')
;

-- Jan 16, 2014 11:34:11 AM BRST
ALTER TABLE LBR_TaxGroup ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jan 16, 2014 11:34:41 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000045,'Y','N','N',0,'N',1,'N','N','N','Y','15fff46d-4888-4836-b72c-065ca3714696','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-16 11:34:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:34:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000002,0,'LBR')
;

-- Jan 16, 2014 11:34:45 AM BRST
ALTER TABLE LBR_TaxGroup ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 16, 2014 11:36:12 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxGroup_ID',1000016,'Tax Group','Identifies a NF Tax Group','Tax Group','8480261e-799b-423d-932b-b58a5ba36bce',TO_DATE('2014-01-16 11:36:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 11:36:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 11:36:34 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000046,'Y','N','N',0,'N',22,'N','Y','N','Y','5e550058-c6be-48ed-918f-f7da94a7f871','N','LBR_TaxGroup_ID','Identifies a NF Tax Group','Tax Group','N',TO_DATE('2014-01-16 11:36:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:36:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000016,13,1000002,0,'LBR')
;

-- Jan 16, 2014 11:36:38 AM BRST
ALTER TABLE LBR_TaxGroup ADD LBR_TaxGroup_ID NUMBER(10) NOT NULL
;

-- Jan 16, 2014 11:36:38 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT LBR_TaxGroup_Key PRIMARY KEY (LBR_TaxGroup_ID)
;

-- Jan 16, 2014 11:37:03 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxGroup_UU',1000017,'LBR_TaxGroup_UU',NULL,'LBR_TaxGroup_UU','c50b59dd-728e-41ce-a38d-97b1490d4f62',TO_DATE('2014-01-16 11:37:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 11:37:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 16, 2014 11:37:23 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000047,'N','N','N',0,'N',36,'N','N','N','Y','26c8215e-bd5f-4e90-a1fe-f0daec5a3d0b','N','LBR_TaxGroup_UU','LBR_TaxGroup_UU','N',TO_DATE('2014-01-16 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000017,10,1000002,0,'LBR')
;

-- Jan 16, 2014 11:37:28 AM BRST
ALTER TABLE LBR_TaxGroup ADD LBR_TaxGroup_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 16, 2014 11:37:28 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT LBR_TaxGroup_UU_idx UNIQUE (LBR_TaxGroup_UU)
;

-- Jan 16, 2014 11:38:45 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000048,'Y','N','Y',0,'N',60,'Y','N','N','Y','86610443-cfb9-4c3c-ade0-4776cf1034cb','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-01-16 11:38:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:38:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000002,0,'LBR')
;

-- Jan 16, 2014 11:38:50 AM BRST
ALTER TABLE LBR_TaxGroup ADD Name NVARCHAR2(60) NOT NULL
;

-- Jan 16, 2014 11:39:16 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000049,'Y','N','N',0,'N',7,'N','N','N','Y','501a8014-602e-4c16-9741-03e5cfa54321','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-16 11:39:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:39:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000002,0,'LBR')
;

-- Jan 16, 2014 11:39:22 AM BRST
ALTER TABLE LBR_TaxGroup ADD Updated DATE NOT NULL
;

-- Jan 16, 2014 11:39:45 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000050,'Y','N','N',0,'N',22,'N','N','N','Y','75c7ee0f-84e3-4407-a425-f493ce3e4836','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-16 11:39:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-16 11:39:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000002,0,'LBR')
;

-- Jan 16, 2014 11:40:01 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxGroup', FKConstraintType='N',Updated=TO_DATE('2014-01-16 11:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000050
;

-- Jan 16, 2014 11:40:01 AM BRST
ALTER TABLE LBR_TaxGroup ADD UpdatedBy NUMBER(10) NOT NULL
;

-- Jan 16, 2014 11:40:01 AM BRST
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT UpdatedBy_LBRTaxGroup FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 16, 2014 12:11:42 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Tax Group (NF)','Maintain NF Tax Groups',1000002,'9327ad2d-4ad3-4881-b334-95dfbb8acd28',TO_DATE('2014-01-16 12:11:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 12:11:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 16, 2014 12:11:54 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000002,Updated=TO_DATE('2014-01-16 12:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000002
;

-- Jan 16, 2014 12:12:47 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000002,10,'N','N','N','N','N','Y','N',0,'2a745405-fa60-4365-8409-b2c6c2f66b9a','LBR','Tax Group','Maintain Tax Groups',1000002,0,TO_DATE('2014-01-16 12:12:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000002)
;

-- Jan 16, 2014 12:12:53 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,22,'N','N',10,'Y',1000032,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','0a799bb4-2368-45cd-8655-1dc834e7c1b1','N','Y',0,0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000040)
;

-- Jan 16, 2014 12:12:53 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,22,'N','N',20,'Y',1000033,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','192effba-7cbc-44f0-b3a5-4adf4bd704d3','N','Y','Y',0,0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000041)
;

-- Jan 16, 2014 12:12:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,60,'N','N',30,'Y',1000034,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','3eb04f84-daa6-4f92-a546-da804d839998','N','Y',0,0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:53','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000048)
;

-- Jan 16, 2014 12:12:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000002,255,'N','N',40,'Y',1000035,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','0d06af89-226d-46d3-9d6d-d815316dad5c','N','Y',0,0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000044)
;

-- Jan 16, 2014 12:12:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,22,'N','N',50,'Y',1000036,'N','LBR','Identifies a NF Tax Group','Tax Group','f60660a2-59e8-4f8c-be57-c0ff536f4602','N','N',0,0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000046)
;

-- Jan 16, 2014 12:12:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,36,'N','N',60,'Y',1000037,'N','LBR','LBR_TaxGroup_UU','b245924b-9f3d-4aae-a711-292a32e07460','N','N',0,0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000047)
;

-- Jan 16, 2014 12:12:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000002,1,'N','N',70,'Y',1000038,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','d5d49a1b-0df6-4ef5-b1dd-bae5cf71ac4e','N','Y',0,0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-16 12:12:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000045)
;

-- Jan 16, 2014 12:13:55 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000038
;

-- Jan 16, 2014 12:13:55 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000032
;

-- Jan 16, 2014 12:13:55 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000033
;

-- Jan 16, 2014 12:13:55 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000035
;

-- Jan 16, 2014 12:13:55 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000034
;

-- Jan 16, 2014 12:14:27 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-16 12:14:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000033
;

-- Jan 16, 2014 12:15:16 PM BRST
UPDATE AD_Field SET NumLines=4,Updated=TO_DATE('2014-01-16 12:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000035
;

-- Jan 16, 2014 12:16:27 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000002,1000003,'N','Y','N','LBR','Y','Tax Group (NF)','Maintain NF Tax Groups','1c535a80-2e9f-4751-a786-fbf5170cccaf','W','Y',0,TO_DATE('2014-01-16 12:16:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-16 12:16:27','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 16, 2014 12:16:27 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000003, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000003)
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Jan 16, 2014 12:16:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Jan 16, 2014 12:16:45 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Jan 16, 2014 12:44:51 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:44:51','YYYY-MM-DD HH24:MI:SS'),'d1f7aaa0-4758-4c31-b441-51d5576433a7','ICMS',0,0,TO_DATE('2014-01-16 12:44:51','YYYY-MM-DD HH24:MI:SS'),0,'Grupo ICMS (Imposto sobre Circulação de Mercadorias e Serviços)','Y',1000000,0)
;

-- Jan 16, 2014 12:45:47 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:45:47','YYYY-MM-DD HH24:MI:SS'),'5268dff8-a6ed-4a90-bb95-c2c1ec0f8397','PIS',0,0,TO_DATE('2014-01-16 12:45:47','YYYY-MM-DD HH24:MI:SS'),0,'Grupo PIS (Programa de Integração Social)','Y',1000001,0)
;

-- Jan 16, 2014 12:46:36 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:46:36','YYYY-MM-DD HH24:MI:SS'),'9703cf04-a312-402d-ae92-dcc4370e1198','COFINS',0,0,TO_DATE('2014-01-16 12:46:36','YYYY-MM-DD HH24:MI:SS'),0,'Grupo COFINS (Contribuição para Financiamento da Seguridade Social)','Y',1000002,0)
;

-- Jan 16, 2014 12:47:13 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:47:13','YYYY-MM-DD HH24:MI:SS'),'c1297b67-f49b-49e3-95c1-9937dcb184b6','IPI',0,0,TO_DATE('2014-01-16 12:47:13','YYYY-MM-DD HH24:MI:SS'),0,'Grupo IPI (Imposto sobre Produtos Industrializados)','Y',1000003,0)
;

-- Jan 16, 2014 12:47:42 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:47:42','YYYY-MM-DD HH24:MI:SS'),'45f60e8e-63d1-4232-a309-7588a2cddc31','II',0,0,TO_DATE('2014-01-16 12:47:42','YYYY-MM-DD HH24:MI:SS'),0,'Grupo II (Imposto de Importação)','Y',1000004,0)
;

-- Jan 16, 2014 12:48:09 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:48:09','YYYY-MM-DD HH24:MI:SS'),'246c6938-802d-45f4-8ff1-cbf62258263f','IR',0,0,TO_DATE('2014-01-16 12:48:09','YYYY-MM-DD HH24:MI:SS'),0,'Grupo IR (Imposto de Renda)','Y',1000005,0)
;

-- Jan 16, 2014 12:49:11 PM BRST
INSERT INTO LBR_TaxGroup (Updated,LBR_TaxGroup_UU,Name,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,UpdatedBy) VALUES (TO_DATE('2014-01-16 12:49:11','YYYY-MM-DD HH24:MI:SS'),'069d2ac8-a914-41ea-a328-9f541c7fe98f','ICMSST',0,0,TO_DATE('2014-01-16 12:49:11','YYYY-MM-DD HH24:MI:SS'),0,'Grupo ICMS-ST (Imposto sobre Circulação de Mercadorias e Serviços - Substituição Tributária)','Y',1000006,0)
;

-- Jan 16, 2014 1:47:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000034
;

-- Jan 16, 2014 1:47:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000035
;

SELECT lbr_register_migration_script('201401161227.sql') FROM dual
;

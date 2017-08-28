SET SQLBLANKLINES ON
SET DEFINE OFF

-- Monophase NCM
-- 28/08/2017 8h55min4s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (800063,'NCM Monophase','LBR_NCMMono',0,'3',0,0,'Y',TO_DATE('2017-08-28 08:55:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:55:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','Y','N','LBR','N','Y','L','N','Y','9e0a4089-d3c2-40f6-aecf-f6323ce027e4','N','N','N')
;

-- 28/08/2017 8h55min5s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NCMMono',1000000,'N','N','Table LBR_NCMMono','Y','Y',0,0,TO_DATE('2017-08-28 08:55:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:55:04','YYYY-MM-DD HH24:MI:SS'),0,800491,'Y',1000000,1,200000,'cca3d828-7a42-4e01-94a7-ff57ece6fcaf')
;

-- 28/08/2017 8h55min36s BRT
UPDATE AD_Table SET Name='Monophase NCM',Updated=TO_DATE('2017-08-28 08:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800063
;

-- 28/08/2017 8h55min48s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800447,0,0,'Y',TO_DATE('2017-08-28 08:55:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:55:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NCMMono_ID','Monophase NCM','Monophase NCM','LBR','154bbfa9-c8be-4511-ae47-6944e7e1aa8c')
;

-- 28/08/2017 8h55min55s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800448,0,0,'Y',TO_DATE('2017-08-28 08:55:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:55:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NCMMono_UU','Monophase NCM','Monophase NCM','U','280dd6c7-53c9-4ac6-be70-7e155d1f9c79')
;

-- 28/08/2017 8h56min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801656,0,'Monophase NCM',800063,'LBR_NCMMono_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_DATE('2017-08-28 08:56:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:56:17','YYYY-MM-DD HH24:MI:SS'),0,800447,'N','N','LBR','N','N','N','Y','a9dff4ae-2168-405b-ad18-4f1907fc6be4','N',0,'N','N')
;

-- 28/08/2017 8h56min19s BRT
CREATE TABLE LBR_NCMMono (LBR_NCMMono_ID NUMBER(10) DEFAULT NULL , CONSTRAINT LBR_NCMMono_Key PRIMARY KEY (LBR_NCMMono_ID))
;

-- 28/08/2017 8h56min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801657,0,'Monophase NCM',800063,'LBR_NCMMono_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2017-08-28 08:56:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:56:31','YYYY-MM-DD HH24:MI:SS'),0,800448,'N','N','LBR','N','N','N','Y','01c9e240-f618-42a3-b848-1d01baee8db8','N',0,'N','N')
;

-- 28/08/2017 8h56min33s BRT
ALTER TABLE LBR_NCMMono ADD LBR_NCMMono_UU VARCHAR2(36) DEFAULT NULL 
;

-- 28/08/2017 8h56min34s BRT
ALTER TABLE LBR_NCMMono ADD CONSTRAINT LBR_NCMMono_UU_idx UNIQUE (LBR_NCMMono_UU)
;

-- 28/08/2017 8h56min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801658,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800063,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-08-28 08:56:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:56:44','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','LBR','N','N','N','Y','9bb90245-8ad4-4bc5-9c5c-05bba013658a','N',0,'N','N','D')
;

-- 28/08/2017 8h56min45s BRT
ALTER TABLE LBR_NCMMono ADD AD_Client_ID NUMBER(10) DEFAULT NULL 
;

-- 28/08/2017 8h56min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801659,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800063,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-08-28 08:56:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:56:55','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','LBR','N','N','N','Y','e2b581d2-2d4d-4fb3-92c9-db5f886b4946','N',0,'N','N','D')
;

-- 28/08/2017 8h56min56s BRT
ALTER TABLE LBR_NCMMono ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- 28/08/2017 8h57min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801660,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800063,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2017-08-28 08:57:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:57:11','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','LBR','N','N','N','Y','566c7d8e-6ec3-47eb-b0c2-087719da6eda','N',0,'N','N')
;

-- 28/08/2017 8h57min12s BRT
ALTER TABLE LBR_NCMMono ADD Created DATE DEFAULT SYSDATE
;

-- 28/08/2017 8h57min21s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801661,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800063,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2017-08-28 08:57:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:57:21','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','LBR','N','N','N','Y','9d6158d2-7dff-4e61-b29a-8030b3732b85','N',0,'N','N','D')
;

-- 28/08/2017 8h57min23s BRT
ALTER TABLE LBR_NCMMono ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- 28/08/2017 8h57min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801662,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800063,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2017-08-28 08:57:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:57:34','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','LBR','N','N','N','Y','ce1b6737-5f10-4f31-af2e-8bd470dd80be','N',0,'N','N')
;

-- 28/08/2017 8h57min36s BRT
ALTER TABLE LBR_NCMMono ADD Updated DATE DEFAULT SYSDATE
;

-- 28/08/2017 8h57min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801663,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800063,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2017-08-28 08:57:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:57:47','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','LBR','N','N','N','Y','4f019168-223a-4c5a-8682-7611a5b5097b','N',0,'N','N','D')
;

-- 28/08/2017 8h57min49s BRT
ALTER TABLE LBR_NCMMono ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- 28/08/2017 8h58min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801664,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800063,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_DATE('2017-08-28 08:58:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:58:00','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','LBR','N','N','N','Y','984a6b80-a716-4fd7-adf6-2cfa2e24e0a2','N',0,'N','N')
;

-- 28/08/2017 8h58min2s BRT
ALTER TABLE LBR_NCMMono ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- 28/08/2017 8h58min37s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801665,0,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800063,'C_Tax_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2017-08-28 08:58:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:58:37','YYYY-MM-DD HH24:MI:SS'),0,213,'N','N','LBR','N','N','N','Y','84920841-fdca-4b1c-a991-0429bfb3aa8a','Y',0,'N','N')
;

-- 28/08/2017 8h58min39s BRT
UPDATE AD_Column SET FKConstraintName='CTax_LBRNCMMono', FKConstraintType='N',Updated=TO_DATE('2017-08-28 08:58:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801665
;

-- 28/08/2017 8h58min39s BRT
ALTER TABLE LBR_NCMMono ADD C_Tax_ID NUMBER(10) NOT NULL
;

-- 28/08/2017 8h58min39s BRT
ALTER TABLE LBR_NCMMono ADD CONSTRAINT CTax_LBRNCMMono FOREIGN KEY (C_Tax_ID) REFERENCES c_tax(c_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- 28/08/2017 8h58min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801666,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800063,'Value',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2017-08-28 08:58:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:58:55','YYYY-MM-DD HH24:MI:SS'),0,620,'Y','Y','LBR','N','N','N','Y','b9f51e7c-009f-43a9-acfc-b9a444cc1dbd','Y',0,'N','N')
;

-- 28/08/2017 8h58min57s BRT
ALTER TABLE LBR_NCMMono ADD Value VARCHAR2(40) DEFAULT NULL 
;

-- 28/08/2017 8h59min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801667,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800063,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2017-08-28 08:59:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 08:59:27','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','LBR','N','N','N','Y','c6180c10-6274-4c3f-9d19-ddb83b71cb78','Y',0,'N','N')
;

-- 28/08/2017 8h59min30s BRT
ALTER TABLE LBR_NCMMono ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 28/08/2017 9h0min40s BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800020,'Monophase NCM',0,0,'Y',TO_DATE('2017-08-28 09:00:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:00:40','YYYY-MM-DD HH24:MI:SS'),0,'M','N','LBR','Y','N',0,0,'N','671490ae-03a0-4228-a257-26936db86d43')
;

-- 28/08/2017 9h1min40s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800059,'Tax',800020,10,'Y',261,0,0,'Y',TO_DATE('2017-08-28 09:01:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:01:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','Y','N','N',0,'N','LBR','N','N','1c78652c-5840-499a-99d6-cbcdfa2afe19','B')
;

-- 28/08/2017 9h2min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801407,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',800059,2246,'Y',0,10,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:02:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:02:58','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','06d0ad1c-c676-430b-a466-fdfe3625a67c','Y',10,1,1,1,'N','N','N')
;

-- 28/08/2017 9h3min23s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801408,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800059,2241,'Y',0,20,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:03:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:03:22','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','db569475-db4b-4d2f-99ab-a2ec1890460a','Y',20,1,1,1,'N','N','N')
;

-- 28/08/2017 9h3min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801409,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800059,2242,'Y',0,30,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:03:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:03:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','70401c35-4af6-438f-b64c-8575d5bb1c7e','Y','Y',30,1,1,1,'N','N','N')
;

-- 28/08/2017 9h3min49s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801410,'Description','Optional short description of the record','A description is limited to 255 characters.',800059,2247,'Y',0,40,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:03:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:03:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f40d929f-3b41-4abc-9d4b-829be64927a0','Y',40,1,1,1,'N','N','N')
;

-- 28/08/2017 9h4min21s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801411,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800059,2243,'Y',0,50,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:04:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:04:21','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','edf75e2b-8de7-41ba-944f-fd17dc6068d4','Y',50,1,1,1,'N','N','N')
;

-- 28/08/2017 9h4min32s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801412,'Tax Category','Tax Category','The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.',800059,2254,'Y',0,60,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:04:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:04:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','9c1e805e-a8bf-4dea-a294-5baf274e4ebf','Y',60,1,1,1,'N','N','N')
;

-- 28/08/2017 9h5min17s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801413,'Summary Level','This is a summary entity','A summary entity represents a branch in a tree rather than an end-node. Summary entities are used for reporting and do not have own values.',800059,3055,'Y',0,70,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:05:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:05:17','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8463a8b4-f4f5-474a-91e2-f73de05b802d','Y',70,1,1,1,'N','N','N')
;

-- 28/08/2017 9h5min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801414,'Sales Tax','This is a sales tax (i.e. not a value added tax)','If selected AP tax is handled as expense, otherwise it is handled as a VAT credit.',800059,14528,'Y',0,80,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:05:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','312a838f-fac0-4f22-a304-2e133ed7a27d','Y',80,1,1,1,'N','N','N')
;

-- 28/08/2017 9h6min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801415,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',800059,1000403,'Y',0,90,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:06:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:06:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','293cc4b8-ece5-40af-b96e-812c56dc8064','Y',90,1,1,1,'N','N','N')
;

-- 28/08/2017 9h6min11s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801416,'Tax Group','Identifies a NF Tax Group',800059,1000402,'Y',0,100,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:06:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:06:11','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0fe25ba8-9635-4778-ba13-37c7c2624845','Y',100,1,1,1,'N','N','N')
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801408
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801409
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801407
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801410
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801412
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801411
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801413
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801414
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801415
;

-- 28/08/2017 9h8min2s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801416
;

-- 28/08/2017 9h8min37s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800060,'Monophase NCM',800020,20,'Y',800063,0,0,'Y',TO_DATE('2017-08-28 09:08:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',0,'N','LBR','Y','N','39d02c31-7717-4a55-9272-f369aa2995c1','B')
;

-- 28/08/2017 9h8min45s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801417,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800060,801658,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','872e0c1b-9de3-4768-b5c9-4096528e704d','N',2)
;

-- 28/08/2017 9h8min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801418,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800060,801659,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','9e2b08df-ca5b-4b08-85ff-fd1d741cd3e8','Y','Y',10,4,2)
;

-- 28/08/2017 9h8min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801419,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800060,801666,'Y',40,30,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c14b0a31-1f20-437d-9ecb-4f487b5ec76c','Y',20,2)
;

-- 28/08/2017 9h8min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801420,'Description','Optional short description of the record','A description is limited to 255 characters.',800060,801667,'Y',255,40,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f068ccf9-d0e6-4827-a560-f42edb054592','Y',30,5)
;

-- 28/08/2017 9h8min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801421,'Monophase NCM',800060,801656,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0e842cbf-6995-4c2e-aad9-f82e8e27fa91','N',2)
;

-- 28/08/2017 9h8min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801422,'Monophase NCM',800060,801657,'Y',36,50,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e88d14c6-e02c-4f76-867b-832bf75041dc','Y',40,2)
;

-- 28/08/2017 9h8min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801423,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800060,801665,'Y',22,60,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','784761a1-9370-430b-ac12-21975c2fbe59','Y',50,2)
;

-- 28/08/2017 9h8min48s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801424,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800060,801664,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:08:47','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d696c0aa-7bc4-4a22-b116-1783df811539','Y',60,2,2)
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801424
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801423
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801419
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801420
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801422
;

-- 28/08/2017 9h10min0s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801421
;

-- 28/08/2017 9h10min19s BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2017-08-28 09:10:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801665
;

-- 28/08/2017 9h10min46s BRT
UPDATE AD_Table SET AD_Window_ID=800020,Updated=TO_DATE('2017-08-28 09:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800063
;

-- 28/08/2017 9h11min45s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800050,'MonophaseNCM (LBR)','MonophaseNCM','W',800020,0,0,'Y',TO_DATE('2017-08-28 09:11:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:11:45','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','LBR','Y','d73f70b5-1a1f-45ef-a714-b903728d22d9')
;

-- 28/08/2017 9h11min45s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800050, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800050)
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800050
;

-- 28/08/2017 9h11min49s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800020
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800050
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 28/08/2017 9h12min1s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800020
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800050
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 28/08/2017 9h12min3s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800020
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800050
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 28/08/2017 9h12min8s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 28/08/2017 9h13min43s BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2017-08-28 09:13:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800060
;

-- 28/08/2017 9h24min13s BRT
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2017-08-28 09:24:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800059
;

-- 28/08/2017 9h31min22s BRT
UPDATE AD_Column SET DefaultValue='@C_Tax_ID@', IsUpdateable='N',Updated=TO_DATE('2017-08-28 09:31:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801665
;

-- 28/08/2017 9h45min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (801425,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',800059,2240,'Y',0,110,0,'N','N','N','N',0,0,'Y',TO_DATE('2017-08-28 09:45:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-08-28 09:45:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d4798370-15df-4569-a686-6cf3f2b17c0c','Y',110,1,1,1,'N','N','N')
;

-- 28/08/2017 9h46min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801425
;

-- 28/08/2017 9h46min24s BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801407
;

-- 28/08/2017 9h46min24s BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801410
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801412
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801411
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801413
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801414
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801415
;

-- 28/08/2017 9h46min25s BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-08-28 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801416
;

-- 28/08/2017 9h47min10s BRT
UPDATE AD_Tab SET IsReadOnly='Y',Updated=TO_DATE('2017-08-28 09:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800059
;

SELECT lbr_register_migration_script('201708280952.sql') FROM dual
;

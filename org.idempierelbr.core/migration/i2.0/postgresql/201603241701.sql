-- Mar 24, 2016 4:32:08 PM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,CreatedBy,UpdatedBy,Processing,DatabaseViewDrop,EntityType,AD_Org_ID,AD_Client_ID,Created,Updated) VALUES ('N','N','N','4',0,800024,'N','N','N','L','8f8ff514-1ac2-47b9-b210-2ca90e27eed1','Y','Y','LBR_CEST','CEST','Y',0,0,'N','N','LBR',0,0,TO_TIMESTAMP('2016-03-24 16:32:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2016-03-24 16:32:07','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:32:08 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,AD_Sequence_UU,IncrementNo,AD_Org_ID,CreatedBy,UpdatedBy,Updated,IsActive,StartNo,AD_Client_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800037,'Table LBR_CEST','LBR_CEST','972a806a-b344-4a82-be5e-4cd3c4e94d64',1,0,0,0,TO_TIMESTAMP('2016-03-24 16:32:08','YYYY-MM-DD HH24:MI:SS'),'Y',1000000,0,TO_TIMESTAMP('2016-03-24 16:32:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:32:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800772,'N','N','N',0,'N',22,'N','N','N','Y','8ea2ecca-1dcb-47e2-95e7-83821bb9e578','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2016-03-24 16:32:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',102,19,800024,129,0,0,'LBR')
;

-- Mar 24, 2016 4:32:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800773,'N','N','N',0,'N',22,'N','N','N','Y','b85a6af1-6e9f-4858-8d93-1f61727207a9','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2016-03-24 16:32:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',113,19,800024,104,0,0,'LBR')
;

-- Mar 24, 2016 4:32:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800774,'N','N','N',0,'N',7,'N','N','N','Y','dbd46567-aa4f-4768-9156-03cfc3bbefa5','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2016-03-24 16:32:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',245,16,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800775,'N','N','N',0,'N',22,'N','N','N','Y','d73e0493-0f59-442e-879b-7aca225b23f8','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2016-03-24 16:32:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',246,18,110,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800776,'N','N','N',0,'N',255,'Y','N','N','Y','ed497a05-52ce-4136-8a1d-6fca75b4ef28','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2016-03-24 16:32:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',275,34,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800777,'N','N','N',0,'N',1,'N','N','N','Y','27980cc7-f2c3-47a1-9ee4-6615923cd514','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2016-03-24 16:32:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',348,20,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:33 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CEST_ID',800176,'CEST','CEST','4dfb19d7-0195-4dec-b4d5-2a602a3c8ef4',TO_TIMESTAMP('2016-03-24 16:32:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2016-03-24 16:32:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:32:33 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800778,'Y','N','N',0,'N',22,'N','Y','N','Y','f0387f29-0473-41c4-b0f6-323660734583','N','LBR_CEST_ID','CEST','N',TO_TIMESTAMP('2016-03-24 16:32:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800176,13,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:34 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CEST_UU',800177,'LBR_CEST_UU','LBR_CEST_UU','99ef6cd6-6aaa-4914-aa4e-aa0192cd09d1',TO_TIMESTAMP('2016-03-24 16:32:34','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2016-03-24 16:32:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:32:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800779,'N','N','N',0,'N',36,'N','N','N','Y','6aee0e17-cf6d-4cb8-9b6e-17615fd81c88','N','LBR_CEST_UU','LBR_CEST_UU','N',TO_TIMESTAMP('2016-03-24 16:32:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800177,10,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800780,'N','N','N',0,'N',7,'N','N','N','Y','3b114dac-5e9b-4dbf-8521-89f959606075','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2016-03-24 16:32:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',607,16,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800781,'N','N','N',0,'N',22,'N','N','N','Y','409d111e-ff68-4855-a6c3-64254861286f','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2016-03-24 16:32:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',608,18,110,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:32:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800782,'Y','N','N',0,'N',5,'Y','N','N','Y','b125f950-ca04-4869-8901-1ec33eea0a51','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_TIMESTAMP('2016-03-24 16:32:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:32:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',620,10,800024,0,0,'LBR')
;

-- Mar 24, 2016 4:42:05 PM BRT
UPDATE AD_Table SET AccessLevel='3',Updated=TO_TIMESTAMP('2016-03-24 16:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800024
;

-- Mar 24, 2016 4:42:27 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,CreatedBy,UpdatedBy,Processing,DatabaseViewDrop,EntityType,AD_Org_ID,AD_Client_ID,Created,Updated) VALUES ('N','N','N','3',0,800025,'N','N','N','L','3807419a-cdca-462c-9ca9-2d5977cdd8b4','Y','Y','LBR_CEST_NCMProd','CEST relations to NCM and products','Y',0,0,'N','N','LBR',0,0,TO_TIMESTAMP('2016-03-24 16:42:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2016-03-24 16:42:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:42:27 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,AD_Sequence_UU,IncrementNo,AD_Org_ID,CreatedBy,UpdatedBy,Updated,IsActive,StartNo,AD_Client_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800038,'Table LBR_CEST_NCMProd','LBR_CEST_NCMProd','0116e05c-4522-482b-ae4e-d797cdcee8b3',1,0,0,0,TO_TIMESTAMP('2016-03-24 16:42:27','YYYY-MM-DD HH24:MI:SS'),'Y',1000000,0,TO_TIMESTAMP('2016-03-24 16:42:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:43:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800783,'N','N','N',0,'N',22,'N','N','N','Y','252a4fac-9d50-4507-bfdb-56b51be8686c','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2016-03-24 16:43:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',102,19,800025,129,0,0,'LBR')
;

-- Mar 24, 2016 4:43:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800784,'N','N','N',0,'N',22,'N','N','N','Y','358b1249-de59-4ab8-8ba4-a5db341b0333','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2016-03-24 16:43:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',113,19,800025,104,0,0,'LBR')
;

-- Mar 24, 2016 4:43:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800785,'N','N','N',0,'N',7,'N','N','N','Y','bb531cfd-51a6-488b-80fe-0094dbc3742c','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2016-03-24 16:43:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',245,16,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800786,'N','N','N',0,'N',22,'N','N','N','Y','e2c60379-afa3-4a2c-acc7-cfa2f3895812','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2016-03-24 16:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',246,18,110,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800787,'N','N','N',0,'N',255,'Y','N','N','Y','7397e8fd-21ba-4313-970d-71b41dd7aa49','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_TIMESTAMP('2016-03-24 16:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',275,14,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800788,'N','N','N',0,'N',1,'N','N','N','Y','5e8447d0-6565-42ff-a337-d1401040a21a','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2016-03-24 16:43:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',348,20,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:17 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CEST_NCMProd_ID',800178,'CEST relations to NCM and products','CEST relations to NCM and products','fc6a30ca-8446-4ef7-925e-2adcf3006c11',TO_TIMESTAMP('2016-03-24 16:43:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2016-03-24 16:43:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:43:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800789,'Y','N','N',0,'N',10,'N','Y','N','Y','27d5fffd-6877-47fa-9f37-f39793a5c802','N','LBR_CEST_NCMProd_ID','CEST relations to NCM and products','N',TO_TIMESTAMP('2016-03-24 16:43:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800178,13,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:19 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CEST_NCMProd_UU',800179,'LBR_CEST_NCMProd_UU','LBR_CEST_NCMProd_UU','9e8a3319-e71c-4b7c-85ac-de37649060cc',TO_TIMESTAMP('2016-03-24 16:43:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2016-03-24 16:43:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:43:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800790,'N','N','N',0,'N',36,'N','N','N','Y','9d44e3d5-56df-482d-8831-f7c94c1a7e08','N','LBR_CEST_NCMProd_UU','LBR_CEST_NCMProd_UU','N',TO_TIMESTAMP('2016-03-24 16:43:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800179,10,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800791,'N','N','N',0,'N',7,'N','N','N','Y','2805905c-b9cf-434a-969d-4a5de3921c30','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2016-03-24 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',607,16,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:43:21 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800792,'N','N','N',0,'N',22,'N','N','N','Y','c10c7000-924e-4c46-b0af-c5de8a8f8a79','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2016-03-24 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',608,18,110,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:47:33 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800793,'N','N','N',0,'N',22,'N','N','N','Y','ba93c586-70ba-4191-873a-d29fabd1b20e','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_TIMESTAMP('2016-03-24 16:47:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:47:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',454,30,800025,231,0,0,'LBR')
;

-- Mar 24, 2016 4:47:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800794,'N','N','N',0,'N',22,'N','N','N','Y','c08915ec-abe4-47f0-85a7-58810d4fadc3','Y','LBR_NCM_ID','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','Y',TO_TIMESTAMP('2016-03-24 16:47:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:47:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',1000012,30,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:48:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800795,'N','N','N',0,'N',22,'N','N','N','Y','47116f44-87b1-4ca5-928a-1486184a7691','N','LBR_CEST_ID','CEST','Y',TO_TIMESTAMP('2016-03-24 16:48:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2016-03-24 16:48:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800176,30,800025,0,0,'LBR')
;

-- Mar 24, 2016 4:49:02 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCEST', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800772
;

-- Mar 24, 2016 4:49:02 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCEST', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800773
;

-- Mar 24, 2016 4:49:02 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCEST', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800775
;

-- Mar 24, 2016 4:49:02 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCEST', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800781
;

-- Mar 24, 2016 4:49:02 PM BRT
CREATE TABLE LBR_CEST (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_CEST_ID NUMERIC(10) NOT NULL, LBR_CEST_UU VARCHAR(36) DEFAULT NULL , Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , Value VARCHAR(5) NOT NULL, CONSTRAINT LBR_CEST_Key PRIMARY KEY (LBR_CEST_ID), CONSTRAINT LBR_CEST_UU_idx UNIQUE (LBR_CEST_UU))
;

-- Mar 24, 2016 4:49:02 PM BRT
ALTER TABLE LBR_CEST ADD CONSTRAINT ADClient_LBRCEST FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:02 PM BRT
ALTER TABLE LBR_CEST ADD CONSTRAINT ADOrg_LBRCEST FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:02 PM BRT
ALTER TABLE LBR_CEST ADD CONSTRAINT CreatedBy_LBRCEST FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:02 PM BRT
ALTER TABLE LBR_CEST ADD CONSTRAINT UpdatedBy_LBRCEST FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800783
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800784
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800786
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCEST_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800795
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNCM_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800794
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='MProduct_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800793
;

-- Mar 24, 2016 4:49:17 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCESTNCMProd', FKConstraintType='N',Updated=TO_TIMESTAMP('2016-03-24 16:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800792
;

-- Mar 24, 2016 4:49:17 PM BRT
CREATE TABLE LBR_CEST_NCMProd (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_CEST_ID NUMERIC(10) DEFAULT NULL , LBR_CEST_NCMProd_ID NUMERIC(10) NOT NULL, LBR_CEST_NCMProd_UU VARCHAR(36) DEFAULT NULL , LBR_NCM_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_CEST_NCMProd_Key PRIMARY KEY (LBR_CEST_NCMProd_ID), CONSTRAINT LBR_CEST_NCMProd_UU_idx UNIQUE (LBR_CEST_NCMProd_UU))
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT ADClient_LBRCESTNCMProd FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT ADOrg_LBRCESTNCMProd FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT CreatedBy_LBRCESTNCMProd FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT LBRCEST_LBRCESTNCMProd FOREIGN KEY (LBR_CEST_ID) REFERENCES lbr_cest(lbr_cest_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT LBRNCM_LBRCESTNCMProd FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT MProduct_LBRCESTNCMProd FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:49:17 PM BRT
ALTER TABLE LBR_CEST_NCMProd ADD CONSTRAINT UpdatedBy_LBRCESTNCMProd FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 24, 2016 4:51:11 PM BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2016-03-24 16:51:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800782
;

-- Mar 24, 2016 4:51:32 PM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2016-03-24 16:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800776
;

-- Mar 24, 2016 4:52:58 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,WinHeight,IsBetaFunctionality,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('N','M','Y','N',0,'N',0,'LBR','CEST','CEST',800007,'28f99013-5d50-47e8-a7ae-78a4a6472fad',TO_TIMESTAMP('2016-03-24 16:52:56','YYYY-MM-DD HH24:MI:SS'),'Y',0,0,0,0,TO_TIMESTAMP('2016-03-24 16:52:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:35 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,AD_Window_ID,IsSingleRow,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N',800007,'Y',10,'N','N','N','N','N','Y','N',0,'c343e619-0d79-4b53-9df6-c451418b8a3f','LBR','CEST',800020,0,0,TO_TIMESTAMP('2016-03-24 16:53:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800024,'B',TO_TIMESTAMP('2016-03-24 16:53:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,22,'N','N',10,'Y',800396,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','63370a4b-315b-4de0-8bb4-2c50b0604de4','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800772,0,TO_TIMESTAMP('2016-03-24 16:53:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,IsAllowCopy,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,22,'N','N',20,'Y',800397,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','6290ca65-784b-46a6-91dc-8bdb5550e5c8','Y','N','Y',0,0,TO_TIMESTAMP('2016-03-24 16:53:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800773,0,TO_TIMESTAMP('2016-03-24 16:53:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,5,'N','N',30,'Y',800398,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','b964aad7-e5e8-434e-a611-ec1670d9cb32','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,800782,0,TO_TIMESTAMP('2016-03-24 16:53:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,255,'N','N',40,'Y',800399,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','31afce97-1daf-4dd5-9a83-40d5dd9e6c4c','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,8,800776,0,TO_TIMESTAMP('2016-03-24 16:53:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,22,'N','N','Y',800400,'N','LBR','CEST','0fd43a4b-b8f8-4525-aa41-cc0d10d7faf9','N','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800778,0,TO_TIMESTAMP('2016-03-24 16:53:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,36,'N','N','Y',800401,'N','LBR','LBR_CEST_UU','8a6a0dae-5460-4c1c-abc1-6d1a42b83572','N','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800779,0,TO_TIMESTAMP('2016-03-24 16:53:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:53:52 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800020,1,'N','N',50,'Y',800402,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','f061df8c-d977-414d-8222-e9177034d74b','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:53:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,2,0,2,800777,0,TO_TIMESTAMP('2016-03-24 16:53:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:55:42 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,WinHeight,IsBetaFunctionality,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Updated,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('N','M','Y','N',0,'N',0,'LBR','CEST relations to NCM and products',800008,'41bed47c-0ec1-4224-ac92-b2a4edc295cd',TO_TIMESTAMP('2016-03-24 16:55:42','YYYY-MM-DD HH24:MI:SS'),'Y',0,0,0,0,TO_TIMESTAMP('2016-03-24 16:55:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:25 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,AD_Window_ID,IsSingleRow,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N',800008,'Y',10,'N','N','N','N','N','Y','N',0,'84b8043d-b3c3-4af7-950b-3913721ac1a9','LBR','CEST relations to NCM and products',800021,0,0,TO_TIMESTAMP('2016-03-24 16:56:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800025,'B',TO_TIMESTAMP('2016-03-24 16:56:25','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:42 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,22,'N','N',10,'Y',800403,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','bbec2db2-3415-423d-9eab-e46ff3e75fc9','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:42','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800783,0,TO_TIMESTAMP('2016-03-24 16:56:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,IsAllowCopy,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,22,'N','N',20,'Y',800404,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','bee772b5-5b27-465d-8225-daa7bb424ba9','Y','N','Y',0,0,TO_TIMESTAMP('2016-03-24 16:56:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800784,0,TO_TIMESTAMP('2016-03-24 16:56:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:44 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,255,'N','N',30,'Y',800405,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','1c4a5e1a-4267-4bf6-9b92-31583e266f4f','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,3,800787,0,TO_TIMESTAMP('2016-03-24 16:56:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:45 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,10,'N','N','Y',800406,'N','LBR','CEST relations to NCM and products','73539074-64fd-4f53-9171-4af63541b8b7','N','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800789,0,TO_TIMESTAMP('2016-03-24 16:56:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:45 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,36,'N','N','Y',800407,'N','LBR','LBR_CEST_NCMProd_UU','0e8b665a-6cb2-4e15-b69f-1e3eb607539b','N','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800790,0,TO_TIMESTAMP('2016-03-24 16:56:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,22,'N','N',40,'Y',800408,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','c1a253ed-edad-4252-91f2-d8e4059e45ed','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:45','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800793,0,TO_TIMESTAMP('2016-03-24 16:56:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,22,'N','N',50,'Y',800409,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','76a76932-a0f3-4129-be83-b18395cb06e2','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800794,0,TO_TIMESTAMP('2016-03-24 16:56:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,22,'N','N',60,'Y',800410,'N','LBR','CEST','932fa4fe-1234-48a0-a47f-d2cf8be48bb1','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800795,0,TO_TIMESTAMP('2016-03-24 16:56:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:56:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800021,1,'N','N',70,'Y',800411,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','3537b776-12a9-4193-b728-5823ec40cc93','Y','N',0,0,TO_TIMESTAMP('2016-03-24 16:56:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,2,0,2,800788,0,TO_TIMESTAMP('2016-03-24 16:56:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:59:36 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,IsCentrallyMaintained,Name,AD_Menu_UU,IsActive,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES (800020,'Y','N','N','N','CEST','2e712c88-1656-4c19-87ab-7609217a5cc7','Y',0,TO_TIMESTAMP('2016-03-24 16:59:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2016-03-24 16:59:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 4:59:36 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800020, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800020)
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800020
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- Mar 24, 2016 4:59:47 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- Mar 24, 2016 5:00:16 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,IsCentrallyMaintained,Name,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Client_ID,AD_Window_ID,EntityType,Created) VALUES (800021,'N','N','N','Y','CEST','43eba28e-7a24-48d8-8761-946c036c151d','W','Y',0,TO_TIMESTAMP('2016-03-24 17:00:15','YYYY-MM-DD HH24:MI:SS'),0,0,0,800007,'LBR',TO_TIMESTAMP('2016-03-24 17:00:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 5:00:16 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800021, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800021)
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Mar 24, 2016 5:00:28 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=800020, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800021
;

-- Mar 24, 2016 5:01:01 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,IsCentrallyMaintained,Name,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Client_ID,AD_Window_ID,EntityType,Created) VALUES (800022,'N','N','N','Y','CEST relations to NCM and Products','42c8688d-0814-4f6e-b01c-c976b36484e9','W','Y',0,TO_TIMESTAMP('2016-03-24 17:01:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,800008,'LBR',TO_TIMESTAMP('2016-03-24 17:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Mar 24, 2016 5:01:01 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800022, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800022)
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=800020, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800022
;

-- Mar 24, 2016 5:01:10 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=800020, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800021
;

SELECT lbr_register_migration_script('201603241701.sql') FROM dual;

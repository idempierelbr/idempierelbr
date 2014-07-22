SET SQLBLANKLINES ON
SET DEFINE OFF

-- 13/01/2014 9h56min46s BRST
-- Criação da Tabela e janela: NCM
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000000,'Y','N','N','LBR','L','362b9bb0-f594-409e-85e3-99c42175938f','Y','Y','LBR_NCM','NCM - Nomenclatura Comum do MERCOSUL','NCM','Y',0,0,TO_DATE('2014-01-13 09:56:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 09:56:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- 13/01/2014 9h56min46s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000004,'Table LBR_NCM','LBR_NCM',1,'24a0a0bd-f23b-4682-93c9-77d875b5e396',TO_DATE('2014-01-13 09:56:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 09:56:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- 13/01/2014 9h58min47s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000018,'Y','N','N',0,'N',22,'N','N','N','Y','70e39df2-f136-4e00-ba76-6258f8238fb8','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-13 09:58:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 09:58:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000000,129,0,'LBR')
;

-- 13/01/2014 9h58min51s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNCM', FKConstraintType='N',Updated=TO_DATE('2014-01-13 09:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000018
;

-- 13/01/2014 9h58min51s BRST
CREATE TABLE LBR_NCM (AD_Client_ID NUMBER(10) NOT NULL)
;

-- 13/01/2014 9h58min52s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT ADClient_LBRNCM FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/01/2014 9h59min55s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000019,'Y','N','N',0,'N',22,'N','N','N','Y','ecbe8c8d-f559-4b71-af7f-5d0fcf6b25a9','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-13 09:59:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 09:59:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000000,104,0,'LBR')
;

-- 13/01/2014 10h0min2s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNCM', FKConstraintType='N',Updated=TO_DATE('2014-01-13 10:00:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000019
;

-- 13/01/2014 10h0min2s BRST
ALTER TABLE LBR_NCM ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 13/01/2014 10h0min2s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT ADOrg_LBRNCM FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/01/2014 10h1min4s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000020,'Y','N','N',0,'N',7,'N','N','N','Y','216ac2d9-c454-4170-a39e-912b4ed4eb3c','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-13 10:01:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:01:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000000,0,'LBR')
;

-- 13/01/2014 10h1min10s BRST
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2014-01-13 10:01:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000020
;

-- 13/01/2014 10h1min14s BRST
ALTER TABLE LBR_NCM ADD Created DATE NOT NULL
;

-- 13/01/2014 10h1min48s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000021,'Y','N','N',0,'N',22,'N','N','N','Y','215d5ab3-4205-4707-8032-fefdb68b2012','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-13 10:01:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:01:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000000,0,'LBR')
;

-- 13/01/2014 10h1min59s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNCM', FKConstraintType='N',Updated=TO_DATE('2014-01-13 10:01:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000021
;

-- 13/01/2014 10h1min59s BRST
ALTER TABLE LBR_NCM ADD CreatedBy NUMBER(10) NOT NULL
;

-- 13/01/2014 10h1min59s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT CreatedBy_LBRNCM FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/01/2014 10h3min3s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000022,'N','N','N',0,'N',255,'Y','N','N','Y','fed81979-ffd6-45e2-81ce-ec6026b7b492','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-13 10:03:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:03:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000000,0,'LBR')
;

-- 13/01/2014 10h3min12s BRST
ALTER TABLE LBR_NCM MODIFY CreatedBy NUMBER(10)
;

-- 13/01/2014 10h3min12s BRST
ALTER TABLE LBR_NCM DROP CONSTRAINT createdby_lbrncm
;

-- 13/01/2014 10h3min12s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT CreatedBy_LBRNCM FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/01/2014 10h3min30s BRST
ALTER TABLE LBR_NCM ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 13/01/2014 10h4min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000023,'Y','N','N',0,'N',1,'N','N','N','Y','9c6c9128-5168-49fe-8cd4-e233d803e8f0','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-13 10:04:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:04:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000000,0,'LBR')
;

-- 13/01/2014 10h4min25s BRST
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2014-01-13 10:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000022
;

-- 13/01/2014 10h4min40s BRST
ALTER TABLE LBR_NCM ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 13/01/2014 10h8min14s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NCM_ID',1000012,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','17b475c9-2cc0-46b1-ba1d-303850be26a4',TO_DATE('2014-01-13 10:08:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-13 10:08:14','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 13/01/2014 10h9min36s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000024,'Y','N','N',0,'N',22,'N','Y','N','Y','76b6261e-38f1-44a3-b71a-78e32571be0d','N','LBR_NCM_ID','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','N',TO_DATE('2014-01-13 10:09:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:09:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000012,13,1000000,0,'LBR')
;

-- 13/01/2014 10h9min40s BRST
ALTER TABLE LBR_NCM ADD LBR_NCM_ID NUMBER(10) NOT NULL
;

-- 13/01/2014 10h9min40s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT LBR_NCM_Key PRIMARY KEY (LBR_NCM_ID)
;

-- 13/01/2014 10h10min29s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NCM_UU',1000013,'LBR_NCM_UU',NULL,'LBR_NCM_UU','f7ee0a08-71ef-472b-b850-96743d035883',TO_DATE('2014-01-13 10:10:29','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-13 10:10:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- 13/01/2014 10h11min34s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000025,'N','N','N',0,'N',36,'N','N','N','Y','e90d9655-f7cb-440a-b432-7610e958f0ea','Y','LBR_NCM_UU','LBR_NCM_UU','N',TO_DATE('2014-01-13 10:11:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:11:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000013,10,1000000,0,'LBR')
;

-- 13/01/2014 10h11min37s BRST
ALTER TABLE LBR_NCM ADD LBR_NCM_UU VARCHAR2(36) DEFAULT NULL 
;

-- 13/01/2014 10h11min37s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT LBR_NCM_UU_idx UNIQUE (LBR_NCM_UU)
;

-- 13/01/2014 10h12min17s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000026,'Y','N','N',0,'N',7,'N','N','N','Y','e5bd274e-8775-4904-a49e-2caee95c56a1','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-13 10:12:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:12:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000000,0,'LBR')
;

-- 13/01/2014 10h12min21s BRST
ALTER TABLE LBR_NCM ADD Updated DATE NOT NULL
;

-- 13/01/2014 10h12min51s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000027,'Y','N','N',0,'N',22,'N','N','N','Y','613d8e42-68af-4c9d-a1a6-d16bafcd6772','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-13 10:12:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:12:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000000,0,'LBR')
;

-- 13/01/2014 10h12min55s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNCM', FKConstraintType='N',Updated=TO_DATE('2014-01-13 10:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000027
;

-- 13/01/2014 10h12min55s BRST
ALTER TABLE LBR_NCM ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 13/01/2014 10h12min55s BRST
ALTER TABLE LBR_NCM ADD CONSTRAINT UpdatedBy_LBRNCM FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/01/2014 10h13min2s BRST
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2014-01-13 10:13:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000026
;

-- 13/01/2014 10h14min3s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000028,'Y','N','Y',0,'N',60,'Y','N','N','Y','0168d175-7c3b-4d84-88c9-7391b1e26129','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-01-13 10:14:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-13 10:14:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000000,0,'LBR')
;

-- 13/01/2014 10h14min8s BRST
ALTER TABLE LBR_NCM ADD Value VARCHAR2(60) NOT NULL
;

-- 13/01/2014 10h16min53s BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','NCM','NCM stands for Nomenclatura Comum do MERCOSUL',1000000,'68928e29-e04a-4d4d-92ee-d230e06891f7',TO_DATE('2014-01-13 10:16:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-13 10:16:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- 13/01/2014 10h18min0s BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID) VALUES ('N','N','N',1000000,10,'N','N','N','N','N','Y','N',0,'07721587-32fd-4a79-b306-94c8ed672f52','LBR','NCM',1000000,0,TO_DATE('2014-01-13 10:18:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000000)
;

-- 13/01/2014 10h18min20s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,22,'N','N',10,'Y',1000018,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','c027e755-344c-4be5-b90d-bec16c57a606','N','Y',0,0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000018)
;

-- 13/01/2014 10h18min20s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,22,'N','N',20,'Y',1000019,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','223f71f8-7ff1-4a51-9c42-6f6990e710d9','N','Y','Y',0,0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000019)
;

-- 13/01/2014 10h18min20s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,60,'N','N',30,'Y',1000020,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','2d35d1e6-43dd-413b-968b-811f02f420bb','N','Y',0,0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000028)
;

-- 13/01/2014 10h18min21s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000000,255,'N','N',40,'Y',1000021,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','80787e06-238a-48ac-a66f-e56a70116ed2','N','Y',0,0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000022)
;

-- 13/01/2014 10h18min21s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,22,'N','N',50,'Y',1000022,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','4899ff54-55eb-4c04-8c31-9c30f23dfdeb','N','N',0,0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000024)
;

-- 13/01/2014 10h18min21s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,36,'N','N',60,'Y',1000023,'N','LBR','LBR_NCM_UU','c72828c1-fadf-4aef-a4d6-e47eb4dd2d2b','N','N',0,0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000025)
;

-- 13/01/2014 10h18min21s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,1,'N','N',70,'Y',1000024,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','69785123-d2ec-4772-9fbb-a12caa9fbd3c','N','Y',0,0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-13 10:18:21','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000023)
;

-- 13/01/2014 10h20min33s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-13 10:20:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000019
;

-- 13/01/2014 10h35min30s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000000,'Y','Y','N','LBR','N','Fiscal Rules','d6c871b3-f6fa-4548-94d8-6e033d9e574e','Y',0,TO_DATE('2014-01-13 10:35:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-13 10:35:30','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- 13/01/2014 10h35min30s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000000, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000000)
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 13/01/2014 10h36min33s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 13/01/2014 10h36min45s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 13/01/2014 10h36min45s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 13/01/2014 10h36min45s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 13/01/2014 10h36min45s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 13/01/2014 10h36min46s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 13/01/2014 10h37min53s BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000000,1000001,'N','Y','N','LBR','Y','NCM','NCM stands for Nomenclatura Comum do MERCOSUL','2100f774-fa47-4fba-b5a6-05bb3c78533a','W','Y',0,TO_DATE('2014-01-13 10:37:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-13 10:37:53','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- 13/01/2014 10h37min53s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000001, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000001)
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 13/01/2014 10h38min2s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 13/01/2014 10h38min3s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 13/01/2014 10h38min3s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 13/01/2014 10h38min3s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- 13/01/2014 10h38min8s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 13/01/2014 10h46min24s BRST
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2014-01-13 10:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000020
;

-- 13/01/2014 10h46min57s BRST
UPDATE AD_Field SET NumLines=4,Updated=TO_DATE('2014-01-13 10:46:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000021
;

-- 13/01/2014 10h55min21s BRST
UPDATE AD_Table SET AD_Window_ID=1000000,Updated=TO_DATE('2014-01-13 10:55:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000000
;

SELECT lbr_register_migration_script('201401131038.sql') FROM dual
;
SET SQLBLANKLINES ON
SET DEFINE OFF

-- Aug 6, 2014 3:54:02 PM BRT
-- Adding Carteira and Convenio Tabs for Bank Window
-- Creating table / window Bank Collection Default
-- Creating tables / window Brazilian Bank Collection (Boleto)
-- Adding columns for Boleto Document Type 
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,1000050,'N','N','Y','LBR','L','b439460d-ef50-4d33-b906-61eab4e4190f','Y','Y','LBR_BankAccount_Convenio','Convênio (Bank)','Y',0,0,TO_DATE('2014-08-06 15:54:02','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-06 15:54:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 3:54:03 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000065,'Table LBR_BankAccount_Convenio','LBR_BankAccount_Convenio',1,'e06027e3-ac5a-41ec-9919-fbe0c02f245f',0,TO_DATE('2014-08-06 15:54:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-06 15:54:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 3:55:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000967,'Y','N','N',0,'N',22,'N','N','N','Y','f469b0b7-2b32-4bf0-a7ba-ef78fb7b9537','N','AD_Client_ID','Client/Tenant for this installation.','@AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000050,129,0,'LBR')
;

-- Aug 6, 2014 3:55:53 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBankAccountConveni', FKConstraintType='N',Updated=TO_DATE('2014-08-06 15:55:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000967
;

-- Aug 6, 2014 3:55:53 PM BRT
CREATE TABLE LBR_BankAccount_Convenio (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Aug 6, 2014 3:55:56 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT ADClient_LBRBankAccountConveni FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 3:56:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000968,'Y','N','N',0,'N',22,'N','N','N','Y','4a8dd000-ce3b-4726-b53a-9654589caa2e','N','AD_Org_ID','Organizational entity within client','@AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-06 15:56:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:56:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000050,104,0,'LBR')
;

-- Aug 6, 2014 3:56:17 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBankAccountConvenio', FKConstraintType='N',Updated=TO_DATE('2014-08-06 15:56:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000968
;

-- Aug 6, 2014 3:56:17 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Aug 6, 2014 3:56:17 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT ADOrg_LBRBankAccountConvenio FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 3:56:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000969,'Y','N','N',0,'N',1,'N','N','N','Y','84786b37-0544-4f22-949a-88adacad206c','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-06 15:56:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:56:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000050,0,'LBR')
;

-- Aug 6, 2014 3:56:40 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 6, 2014 3:56:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000970,'N','N','N',0,'N',7,'N','N','N','Y','79cf4473-af2e-4bcc-b94a-1e261085ef17','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000050,0,'LBR')
;

-- Aug 6, 2014 3:57:01 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD Created DATE DEFAULT SYSDATE
;

-- Aug 6, 2014 3:57:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000971,'N','N','N',0,'N',22,'N','N','N','Y','fd4b77f5-baae-40ae-a058-d597744e1baa','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-06 15:57:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:57:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000050,0,'LBR')
;

-- Aug 6, 2014 3:57:19 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBankAccountConven', FKConstraintType='N',Updated=TO_DATE('2014-08-06 15:57:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000971
;

-- Aug 6, 2014 3:57:19 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 3:57:19 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT CreatedBy_LBRBankAccountConven FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 3:57:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000972,'N','N','N',0,'N',7,'N','N','N','Y','12e4389e-2ba2-4dd1-996a-351bf1cf1cdf','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-06 15:57:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:57:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000050,0,'LBR')
;

-- Aug 6, 2014 3:57:36 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 6, 2014 3:57:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000973,'N','N','N',0,'N',22,'N','N','N','Y','c03a9f3a-889f-4be6-8b03-63ceebdc3679','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-06 15:57:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:57:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000050,0,'LBR')
;

-- Aug 6, 2014 3:57:52 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBankAccountConven', FKConstraintType='N',Updated=TO_DATE('2014-08-06 15:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000973
;

-- Aug 6, 2014 3:57:52 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 3:57:52 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT UpdatedBy_LBRBankAccountConven FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 3:58:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000974,'Y','N','N',0,'N',22,'N','N','N','Y','99a1241b-9e51-4751-855a-8e7b9effab73','N','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2014-08-06 15:58:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 15:58:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',836,19,1000050,0,'LBR')
;

-- Aug 6, 2014 3:59:00 PM BRT
UPDATE AD_Column SET FKConstraintName='CBankAccount_LBRBankAccountCon', FKConstraintType='N',Updated=TO_DATE('2014-08-06 15:59:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000974
;

-- Aug 6, 2014 3:59:00 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD C_BankAccount_ID NUMBER(10) NOT NULL
;

-- Aug 6, 2014 3:59:00 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT CBankAccount_LBRBankAccountCon FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:01:11 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAccount_Convenio_ID',1000284,'Defines the Convênio number for a specific bank account','Bank Account Convênio','Convênio','b640dc8a-fcf2-457c-8a78-a1771cb69497',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:01:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:01:16 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAccount_Convenio_UU',1000285,'Defines the Convênio number for a specific bank account','Bank Account Convênio','Convênio','f172222d-4571-4d92-8f28-8929392df524',0,0,0,'Y',0,'U',TO_DATE('2014-08-06 16:01:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:01:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:01:26 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2014-08-06 16:01:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000285
;

-- Aug 6, 2014 4:01:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000975,'N','N','N',0,'N',22,'N','Y','N','Y','4c95156b-32ee-4997-92fe-1c70bc33a452','N','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio','N',TO_DATE('2014-08-06 16:01:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:01:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000284,13,1000050,0,'LBR')
;

-- Aug 6, 2014 4:01:59 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD LBR_BankAccount_Convenio_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 4:01:59 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT LBR_BankAccount_Convenio_Key PRIMARY KEY (LBR_BankAccount_Convenio_ID)
;

-- Aug 6, 2014 4:02:11 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000976,'N','N','N',0,'N',36,'N','N','N','Y','c2bca85e-8d85-450b-81b3-d4787cf35d44','N','LBR_BankAccount_Convenio_UU','Defines the Convênio number for a specific bank account','Bank Account Convênio','N',TO_DATE('2014-08-06 16:02:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:02:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000285,10,1000050,0,'LBR')
;

-- Aug 6, 2014 4:02:15 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD LBR_BankAccount_Convenio_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 6, 2014 4:02:15 PM BRT
-- ALTER TABLE LBR_BankAccount_Convenio ADD CONSTRAINT LBR_BankAccount_Convenio_UU_uu_idx UNIQUE (LBR_BankAccount_Convenio_UU)
-- ;

-- Aug 6, 2014 4:04:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000977,'N','N','N',0,'N',255,'Y','N','N','Y','f6f43141-0d9b-448b-b984-f5ccf87e39d1','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-06 16:04:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:04:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000050,0,'LBR')
;

-- Aug 6, 2014 4:04:02 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Aug 6, 2014 4:05:24 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ConvenioNo',1000286,'Defines the Convênio number','Convênio No.','Convênio No.','8a762435-773c-439d-826e-41873edf4e96',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:05:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:05:24','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:06:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000978,'Y','N','N',0,'N',20,'N','N','N','Y','5a265635-4671-41e2-8181-e61f0b1d5292','Y','LBR_ConvenioNo','Defines the Convênio number','Convênio No.','Y',TO_DATE('2014-08-06 16:06:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:06:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000286,10,1000050,0,'LBR')
;

-- Aug 6, 2014 4:06:33 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD LBR_ConvenioNo NVARCHAR2(20) NOT NULL
;

-- Aug 6, 2014 4:09:58 PM BRT
INSERT INTO AD_Tab (Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','Y',158,25,'In this tab, you define the Convênios used for this bank account.','N','N','N','N','N','Y','N',2,'c7a5dbdb-aa1a-4e8a-bbd1-d3218f5b4de3','LBR','Convênio','Maintain Bank Account Convênio Numbers',1000093,0,0,TO_DATE('2014-08-06 16:09:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000974,1000050,'B',TO_DATE('2014-08-06 16:09:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:10:46 PM BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2014-08-06 16:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000974
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N',10,'Y',1001737,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ba7279cb-1122-4f7e-bf71-7cd354f59967','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000967,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N',20,'Y',1001738,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','d8ae854c-bc54-4f55-802a-493154c915b5','N','Y','Y',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1000968,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,255,'N','N',30,'Y',1001739,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','b045da43-00d4-4872-816b-3d7c40f86c8e','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1000977,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N',40,'Y',1001740,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','9240c782-5395-410d-8fe2-0bf6f1141061','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1000974,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,22,'N','N','Y',1001741,'N','Defines the Convênio number for a specific bank account','LBR','Bank Account Convênio','de7514d7-09dd-4f11-b468-08f32663859c','N','N',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000975,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:17 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,36,'N','N',50,'Y',1001742,'N','Defines the Convênio number for a specific bank account','LBR','Bank Account Convênio','031d4dcc-2d73-48e3-81b1-63453dbe8b6f','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1000976,TO_DATE('2014-08-06 16:13:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,20,'N','N',60,'Y',1001743,'N','Defines the Convênio number','LBR','Convênio No.','d91a0462-f599-41ed-a7c6-d41b1c11beb2','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1000978,TO_DATE('2014-08-06 16:13:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:13:18 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,1,'N','N',70,'Y',1001744,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','67f30520-142b-474d-82d5-b3a9e7cbf8cf','N','Y',0,0,0,TO_DATE('2014-08-06 16:13:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,2,0,2,1000969,TO_DATE('2014-08-06 16:13:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:14:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000979,'N','N','Y',0,'N',60,'Y','N','N','Y','f7a814d3-0fea-4c8c-b32a-25b456263ad1','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-06 16:14:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:14:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000050,0,'LBR')
;

-- Aug 6, 2014 4:14:10 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD Name NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 6, 2014 4:14:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,60,'N','N',80,'Y',1001745,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','6990337c-9838-4c2d-81ca-a2c4a5d33683','N','Y',0,0,0,TO_DATE('2014-08-06 16:14:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,5,1000979,TO_DATE('2014-08-06 16:14:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:15:01 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001742
;

-- Aug 6, 2014 4:15:01 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001740
;

-- Aug 6, 2014 4:15:01 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001745
;

-- Aug 6, 2014 4:15:01 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001739
;

-- Aug 6, 2014 4:15:01 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001744
;

-- Aug 6, 2014 4:15:27 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-08-06 16:15:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001738
;

-- Aug 6, 2014 4:15:37 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-06 16:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001737
;

-- Aug 6, 2014 4:15:41 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-06 16:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001738
;

-- Aug 6, 2014 4:16:07 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-08-06 16:16:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001739
;

-- Aug 6, 2014 4:30:09 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,1000051,'N','N','Y','LBR','L','30e8eb69-aa8e-4387-9697-06af2a4a5cb8','Y','Y','LBR_BankAccount_Carteira','Bank Account Carteira','Y',0,0,TO_DATE('2014-08-06 16:30:09','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-06 16:30:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:30:09 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000066,'Table LBR_BankAccount_Carteira','LBR_BankAccount_Carteira',1,'f808d403-3b4c-436d-bea7-d6648353547f',0,TO_DATE('2014-08-06 16:30:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-06 16:30:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:31:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000980,'Y','N','N',0,'N',22,'N','N','N','Y','4d4b137b-c686-46e2-81fd-be16ba42e107','N','AD_Client_ID','Client/Tenant for this installation.','@AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-06 16:31:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:31:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000051,129,0,'LBR')
;

-- Aug 6, 2014 4:31:11 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBankAccountCarteir', FKConstraintType='N',Updated=TO_DATE('2014-08-06 16:31:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000980
;

-- Aug 6, 2014 4:31:11 PM BRT
CREATE TABLE LBR_BankAccount_Carteira (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Aug 6, 2014 4:31:11 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT ADClient_LBRBankAccountCarteir FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:31:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000981,'Y','N','N',0,'N',22,'N','N','N','Y','33682292-7061-47ab-8c0e-876f3b84cc4d','N','AD_Org_ID','Organizational entity within client','@AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-06 16:31:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:31:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000051,104,0,'LBR')
;

-- Aug 6, 2014 4:31:27 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBankAccountCarteira', FKConstraintType='N',Updated=TO_DATE('2014-08-06 16:31:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000981
;

-- Aug 6, 2014 4:31:27 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Aug 6, 2014 4:31:27 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT ADOrg_LBRBankAccountCarteira FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:31:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000982,'Y','N','N',0,'N',1,'N','N','N','Y','f17a6292-0fee-463a-8693-40be33946cdf','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-06 16:31:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:31:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000051,0,'LBR')
;

-- Aug 6, 2014 4:31:51 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 6, 2014 4:32:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000983,'N','N','N',0,'N',7,'N','N','N','Y','6c2e2048-96a5-4bf0-88c5-82caa774bf58','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-06 16:32:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:32:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000051,0,'LBR')
;

-- Aug 6, 2014 4:32:10 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD Created DATE DEFAULT SYSDATE
;

-- Aug 6, 2014 4:32:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000984,'N','N','N',0,'N',22,'N','N','N','Y','d54d539a-28d1-4855-95e9-fad115e98fae','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-06 16:32:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:32:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000051,0,'LBR')
;

-- Aug 6, 2014 4:32:25 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBankAccountCartei', FKConstraintType='N',Updated=TO_DATE('2014-08-06 16:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000984
;

-- Aug 6, 2014 4:32:25 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 4:32:25 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT CreatedBy_LBRBankAccountCartei FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:32:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000985,'N','N','N',0,'N',7,'N','N','N','Y','e45841ba-07ee-4b86-a9a9-300b71a2c18d','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-06 16:32:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:32:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000051,0,'LBR')
;

-- Aug 6, 2014 4:32:45 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 6, 2014 4:32:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000986,'N','N','N',0,'N',22,'N','N','N','Y','1710b509-b209-4c83-aea7-babba729383b','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-06 16:32:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:32:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000051,0,'LBR')
;

-- Aug 6, 2014 4:33:01 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBankAccountCartei', FKConstraintType='N',Updated=TO_DATE('2014-08-06 16:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000986
;

-- Aug 6, 2014 4:33:01 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 4:33:01 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT UpdatedBy_LBRBankAccountCartei FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:34:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000987,'N','N','N',0,'N',255,'Y','N','N','Y','203968de-967c-42b9-9016-381769f8ca46','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-06 16:34:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:34:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000051,0,'LBR')
;

-- Aug 6, 2014 4:34:50 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Aug 6, 2014 4:35:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000988,'Y','N','N',0,'Y',22,'N','N','N','Y','3199824c-de91-4ded-8b88-0a848ecc6ed7','N','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio','Y',TO_DATE('2014-08-06 16:35:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:35:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000284,19,1000051,0,'LBR')
;

-- Aug 6, 2014 4:35:20 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRBankAccountConvenio_LBRBank', FKConstraintType='N',Updated=TO_DATE('2014-08-06 16:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000988
;

-- Aug 6, 2014 4:35:20 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD LBR_BankAccount_Convenio_ID NUMBER(10) NOT NULL
;

-- Aug 6, 2014 4:35:20 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBRBankAccountConvenio_LBRBank FOREIGN KEY (LBR_BankAccount_Convenio_ID) REFERENCES lbr_bankaccount_convenio(lbr_bankaccount_convenio_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 6, 2014 4:35:52 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000989,'N','N','Y',0,'N',60,'Y','N','N','Y','34b118b5-a966-46f4-a8d3-44c20f21f58e','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-06 16:35:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:35:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000051,0,'LBR')
;

-- Aug 6, 2014 4:35:54 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD Name NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 6, 2014 4:36:55 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAccount_Carteira_ID',1000287,'Defines the Carteira number for a specific bank account','Bank Account Carteira','Carteira','438364a5-397a-44a9-9ec2-35bd45cadad3',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:36:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:36:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:37:04 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAccount_Carteira_UU',1000288,'Defines the Carteira number for a specific bank account','Bank Account Carteira','Carteira','d54f01c0-cfe5-417b-bc50-d5be0af154bf',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:37:04','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:37:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:37:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000990,'N','N','N',0,'N',22,'N','Y','N','Y','501904e1-b3be-4540-8e69-fa2810ab23db','N','LBR_BankAccount_Carteira_ID','Defines the Carteira number for a specific bank account','Bank Account Carteira','N',TO_DATE('2014-08-06 16:37:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:37:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000287,13,1000051,0,'LBR')
;

-- Aug 6, 2014 4:37:45 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD LBR_BankAccount_Carteira_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 6, 2014 4:37:45 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBR_BankAccount_Carteira_Key PRIMARY KEY (LBR_BankAccount_Carteira_ID)
;

-- Aug 6, 2014 4:38:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000991,'N','N','N',0,'N',36,'N','N','N','Y','bcf3d86a-ccf5-4604-9b41-37d0a546f44a','N','LBR_BankAccount_Carteira_UU','Defines the Carteira number for a specific bank account','Bank Account Carteira','N',TO_DATE('2014-08-06 16:38:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:38:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000288,10,1000051,0,'LBR')
;

-- Aug 6, 2014 4:38:14 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD LBR_BankAccount_Carteira_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 6, 2014 4:38:14 PM BRT
-- ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBR_BankAccount_Carteira_UU_uu_idx UNIQUE (LBR_BankAccount_Carteira_UU)
-- ;

-- Aug 6, 2014 4:42:05 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CarteiraNo',1000289,'Defines the Carteira number','Carteira No.','Carteira No.','ba4fde44-0d9b-4b91-b479-32ad509df1ce',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:42:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:42:05','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:43:41 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000992,'Y','N','N',0,'N',20,'N','N','N','Y','c41061e6-3d9a-4f40-b4fd-96d176cad291','Y','LBR_CarteiraNo','Defines the Carteira number','Carteira No.','Y',TO_DATE('2014-08-06 16:43:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:43:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000289,10,1000051,0,'LBR')
;

-- Aug 6, 2014 4:43:43 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD LBR_CarteiraNo NVARCHAR2(20) NOT NULL
;

-- Aug 6, 2014 4:44:54 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000064,'LBR_CarteiraCode','LBR','200a2526-77e1-4f82-a24a-ae6d5ab3aa64','N','Bank Account Carteira Code (Febraban)','L',0,0,TO_DATE('2014-08-06 16:44:54','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-06 16:44:54','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 6, 2014 4:46:56 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000656,1000064,'59aa87ca-6ac8-4950-869f-d6b6cf3d5dab','1',TO_DATE('2014-08-06 16:46:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-06 16:46:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Simples')
;

-- Aug 6, 2014 4:47:09 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000657,1000064,'9f117df2-66f0-44ff-9f1a-a17d525d086d','2',TO_DATE('2014-08-06 16:47:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-06 16:47:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Vinculada')
;

-- Aug 6, 2014 4:47:22 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000658,1000064,'c224ca27-7379-4126-aa54-95d48b40e39c','3',TO_DATE('2014-08-06 16:47:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-06 16:47:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Caucionada')
;

-- Aug 6, 2014 4:47:33 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000659,1000064,'d0568d0d-0f50-400e-89a6-b8b834814291','4',TO_DATE('2014-08-06 16:47:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-06 16:47:33','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Descontada')
;

-- Aug 6, 2014 4:47:42 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000660,1000064,'06fc28d1-5a09-4272-902e-6f1597598188','5',TO_DATE('2014-08-06 16:47:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-06 16:47:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Vendor')
;

-- Aug 6, 2014 4:50:08 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CarteiraType',1000290,'Defines the Carteira type according to Febraban','Bank Account Carteira Type','Carteira Type','7e283696-df79-4494-8e25-a7f245b9e192',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-06 16:50:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-06 16:50:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:50:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000993,'N','N','N',0,'N',1,'N','N','N','Y','7eca289a-16e7-4d37-b138-1d6938673c79','Y','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type','Y',TO_DATE('2014-08-06 16:50:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-06 16:50:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000290,17,1000064,1000051,0,'LBR')
;

-- Aug 6, 2014 4:50:41 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD LBR_CarteiraType CHAR(1) DEFAULT NULL 
;

-- Aug 6, 2014 4:52:22 PM BRT
INSERT INTO AD_Tab (Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','Y',158,26,'In this tab, you define the Carteiras used for this bank account.','N','N','N','N','N','Y','N',3,'733b73be-9dba-49f0-9441-edd423363e40','LBR','Carteira','Maintain Bank Account Carteira Numbers',1000094,0,0,TO_DATE('2014-08-06 16:52:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000988,1000051,'B',TO_DATE('2014-08-06 16:52:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,22,'N','N',10,'Y',1001746,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','42b860ff-2e7a-42aa-a180-05d395b75997','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000980,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,22,'N','N',20,'Y',1001747,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','03f41b86-6662-4aea-8b04-391827a8de1f','N','Y','Y',0,0,0,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1000981,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,60,'N','N',30,'Y',1001748,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','e683788b-e8b0-48ec-bf04-aab788ccb6f6','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1000989,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,255,'N','N',40,'Y',1001749,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','586613dc-cab5-4af7-828d-01fba303e8d7','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,1000987,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,22,'N','N',50,'Y',1001750,'N','Defines the Convênio number for a specific bank account','LBR','Bank Account Convênio','c9728c16-7a9c-428d-9031-7939eeb67778','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1000988,TO_DATE('2014-08-06 16:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,22,'N','N','Y',1001751,'N','Defines the Carteira number for a specific bank account','LBR','Bank Account Carteira','fb01b456-34b6-47cd-976e-ee4eea66db3f','N','N',0,0,0,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000990,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,36,'N','N',60,'Y',1001752,'N','Defines the Carteira number for a specific bank account','LBR','Bank Account Carteira','e0cbfd96-7a37-4c96-89f5-9d7f01fdaf01','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1000991,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,20,'N','N',70,'Y',1001753,'N','Defines the Carteira number','LBR','Carteira No.','a890fd7f-4b08-4857-b37a-81ff4f48f793','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1000992,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,1,'N','N',80,'Y',1001754,'N','Defines the Carteira type according to Febraban','LBR','Bank Account Carteira Type','09d3aa8c-9ab5-43bb-8b44-6815899bd409','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,1000993,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:52:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,1,'N','N',90,'Y',1001755,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','cb34312c-ec44-4700-990b-7032229bf011','N','Y',0,0,0,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1000982,TO_DATE('2014-08-06 16:52:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 6, 2014 4:53:04 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001752
;

-- Aug 6, 2014 4:53:04 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001750
;

-- Aug 6, 2014 4:53:04 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001755
;

-- Aug 6, 2014 4:53:04 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001753
;

-- Aug 6, 2014 4:53:04 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001754
;

-- Aug 6, 2014 4:53:38 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-08-06 16:53:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001749
;

-- Aug 6, 2014 4:54:03 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-06 16:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001754
;

-- Aug 6, 2014 4:54:07 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-06 16:54:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001746
;

-- Aug 6, 2014 4:54:10 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-06 16:54:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001747
;

-- Aug 6, 2014 5:37:20 PM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintType='C',Updated=TO_DATE('2014-08-06 17:37:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000988
;

-- Aug 6, 2014 5:37:31 PM BRT
ALTER TABLE LBR_BankAccount_Carteira MODIFY LBR_BankAccount_Convenio_ID NUMBER(10)
;

-- Aug 6, 2014 5:37:31 PM BRT
ALTER TABLE LBR_BankAccount_Carteira DROP CONSTRAINT lbrbankaccountconvenio_lbrbank
;

-- Aug 6, 2014 5:37:31 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD CONSTRAINT LBRBankAccountConvenio_LBRBank FOREIGN KEY (LBR_BankAccount_Convenio_ID) REFERENCES lbr_bankaccount_convenio(lbr_bankaccount_convenio_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 7, 2014 9:26:30 AM BRT
UPDATE AD_Table SET AD_Window_ID=158,Updated=TO_DATE('2014-08-07 09:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000051
;

-- Aug 7, 2014 9:26:53 AM BRT
UPDATE AD_Table SET AD_Window_ID=158,Updated=TO_DATE('2014-08-07 09:26:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000050
;

-- Aug 7, 2014 9:27:26 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,1000052,'N','N','N','LBR','L','772937ea-4cb6-4fa1-9e91-dd92f5e77027','Y','Y','LBR_Collection_Default','Defines default values for bank collection','Bank Collection Defaults','Y',0,0,TO_DATE('2014-08-07 09:27:26','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-07 09:27:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:27:27 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000067,'Table LBR_Collection_Default','LBR_Collection_Default',1,'05472085-ebbf-4034-bdf9-c5cfb4205866',0,TO_DATE('2014-08-07 09:27:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-07 09:27:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:27:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000994,'Y','N','N',0,'N',22,'N','N','N','Y','2c683902-f8cc-41bc-bfe6-4d9bd72f62a5','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-07 09:27:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:27:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000052,129,0,'LBR')
;

-- Aug 7, 2014 9:27:58 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCollectionDefault', FKConstraintType='N',Updated=TO_DATE('2014-08-07 09:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000994
;

-- Aug 7, 2014 9:27:58 AM BRT
CREATE TABLE LBR_Collection_Default (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Aug 7, 2014 9:27:58 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT ADClient_LBRCollectionDefault FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 7, 2014 9:28:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000995,'Y','N','N',0,'N',22,'N','N','N','Y','45f373fb-9dbb-443a-8306-cdfda4c28368','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-07 09:28:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:28:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000052,104,0,'LBR')
;

-- Aug 7, 2014 9:28:18 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCollectionDefault', FKConstraintType='N',Updated=TO_DATE('2014-08-07 09:28:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000995
;

-- Aug 7, 2014 9:28:18 AM BRT
ALTER TABLE LBR_Collection_Default ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Aug 7, 2014 9:28:18 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT ADOrg_LBRCollectionDefault FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 7, 2014 9:28:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000996,'Y','N','N',0,'N',1,'N','N','N','Y','1da5965b-caad-4749-88c4-1519338f1837','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-07 09:28:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:28:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000052,0,'LBR')
;

-- Aug 7, 2014 9:28:35 AM BRT
ALTER TABLE LBR_Collection_Default ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 7, 2014 9:28:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000997,'N','N','N',0,'N',7,'N','N','N','Y','3565c848-3a80-4ad9-80fc-d18a8cc696fe','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-07 09:28:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:28:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000052,0,'LBR')
;

-- Aug 7, 2014 9:28:54 AM BRT
ALTER TABLE LBR_Collection_Default ADD Created DATE DEFAULT SYSDATE
;

-- Aug 7, 2014 9:29:24 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000998,'N','N','N',0,'N',22,'N','N','N','Y','97aa5099-583d-41c2-ab39-8db970b5d2d3','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-07 09:29:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:29:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000052,0,'LBR')
;

-- Aug 7, 2014 9:30:03 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCollectionDefault', FKConstraintType='N',Updated=TO_DATE('2014-08-07 09:30:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000998
;

-- Aug 7, 2014 9:30:03 AM BRT
ALTER TABLE LBR_Collection_Default ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 9:30:03 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT CreatedBy_LBRCollectionDefault FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 7, 2014 9:31:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000999,'N','N','N',0,'N',7,'N','N','N','Y','2e82e5cb-a4ae-490a-95af-ec62458f7f61','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-07 09:31:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:31:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000052,0,'LBR')
;

-- Aug 7, 2014 9:31:50 AM BRT
ALTER TABLE LBR_Collection_Default ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 7, 2014 9:32:12 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001000,'N','N','N',0,'N',22,'N','N','N','Y','658e76ec-39e9-445a-bb5e-b9ba5ac71e04','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-07 09:32:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:32:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000052,0,'LBR')
;

-- Aug 7, 2014 9:32:14 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCollectionDefault', FKConstraintType='N',Updated=TO_DATE('2014-08-07 09:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001000
;

-- Aug 7, 2014 9:32:14 AM BRT
ALTER TABLE LBR_Collection_Default ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 9:32:14 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT UpdatedBy_LBRCollectionDefault FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 7, 2014 9:33:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001001,'Y','N','Y',0,'N',60,'Y','N','N','Y','afabaec2-704f-4453-b1ad-90b91eb3cb8c','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-07 09:33:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:33:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000052,0,'LBR')
;

-- Aug 7, 2014 9:33:23 AM BRT
ALTER TABLE LBR_Collection_Default ADD Name NVARCHAR2(60) NOT NULL
;

-- Aug 7, 2014 9:34:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001002,'N','N','N',0,'N',255,'Y','N','N','Y','99a655fe-a1ff-41e2-a371-5196a368b980','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-07 09:34:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:34:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,1000052,0,'LBR')
;

-- Aug 7, 2014 9:34:08 AM BRT
ALTER TABLE LBR_Collection_Default ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Aug 7, 2014 9:37:16 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Collection_Default_ID',1000291,'Bank Collection Defaults','Bank Collection Defaults','8feebde0-4927-4ddb-a285-d3a65af6665e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 09:37:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 09:37:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:37:22 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Collection_Default_UU',1000292,'Bank Collection Defaults','Bank Collection Defaults','2977eb1f-fe13-4344-a0fc-b6f361352dca',0,0,0,'Y',0,'U',TO_DATE('2014-08-07 09:37:22','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 09:37:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:37:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001003,'N','N','N',0,'N',22,'N','Y','N','Y','f283c432-ff27-4e28-8ad0-62893a4aebb4','N','LBR_Collection_Default_ID','Bank Collection Defaults','N',TO_DATE('2014-08-07 09:37:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:37:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000291,13,1000052,0,'LBR')
;

-- Aug 7, 2014 9:37:45 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_Collection_Default_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 9:37:45 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT LBR_Collection_Default_Key PRIMARY KEY (LBR_Collection_Default_ID)
;

-- Aug 7, 2014 9:37:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001004,'N','N','N',0,'N',36,'N','N','N','Y','815bb668-5719-414a-b65d-fd5f9935e63b','N','LBR_Collection_Default_UU','Bank Collection Defaults','N',TO_DATE('2014-08-07 09:37:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:37:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000292,10,1000052,0,'LBR')
;

-- Aug 7, 2014 9:38:02 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_Collection_Default_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 7, 2014 9:38:02 AM BRT
ALTER TABLE LBR_Collection_Default ADD CONSTRAINT LBR_Collection_Default_UU_idx UNIQUE (LBR_Collection_Default_UU)
;

-- Aug 7, 2014 9:51:46 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ProtestCode',1000293,'Protest code according to Febraban','Protest Code','Protest Code','Protest Code','145b4569-d734-4b39-a13b-efb280e7ca5b',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 09:51:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 09:51:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:52:16 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000065,'LBR_ProtestType','LBR','1fcd5ce0-9659-4814-a126-11a8e3d523d5','N','L',0,0,TO_DATE('2014-08-07 09:52:16','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-07 09:52:16','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 7, 2014 9:52:47 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000661,1000065,'a1384b5c-baf9-4c0d-8007-98fe9536be77','1',TO_DATE('2014-08-07 09:52:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:52:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Protestar Dias Corridos')
;

-- Aug 7, 2014 9:53:01 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000662,1000065,'58ee85be-7b34-4040-8871-57b30feb2f18','2',TO_DATE('2014-08-07 09:53:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:53:01','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Protestar Dias Uteis')
;

-- Aug 7, 2014 9:53:19 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000663,1000065,'95abe954-fd47-4876-ab3a-f123bd5c5358','3',TO_DATE('2014-08-07 09:53:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:53:19','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Nao Protestar')
;

-- Aug 7, 2014 9:54:40 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000664,1000065,'5a52a9bb-4155-404e-a308-83639f1a348b','4',TO_DATE('2014-08-07 09:54:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:54:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'4 - Protestar Fim Falimentar - Dias Uteis')
;

-- Aug 7, 2014 9:54:54 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000665,1000065,'0e2d55c0-80e9-4f5f-9bf7-5d05fb4bd0aa','5',TO_DATE('2014-08-07 09:54:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:54:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'5 - Protestar Fim Falimentar - Dias Corridos')
;

-- Aug 7, 2014 9:55:22 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000666,1000065,'6c0eee54-4208-41f9-9af7-65b88bb81c8f','8',TO_DATE('2014-08-07 09:55:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:55:22','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'8 - Negativacao sem Protesto')
;

-- Aug 7, 2014 9:56:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000667,1000065,'e38bc250-8cdc-400b-83b5-df101311ccdf','9',TO_DATE('2014-08-07 09:56:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 09:56:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'9 - Cancelamento Protesto Automatico')
;

-- Aug 7, 2014 9:57:24 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001005,'N','N','N',0,'N',1,'N','N','N','Y','21c3751b-225a-4aa3-908f-39d66f8f58b3','Y','LBR_ProtestCode','Protest Code','Protest code according to Febraban','Protest Code','Y',TO_DATE('2014-08-07 09:57:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:57:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000293,17,1000065,1000052,0,'LBR')
;

-- Aug 7, 2014 9:57:26 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_ProtestCode CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 9:58:48 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ProtestDays',1000294,'Protest days after the due date according to Febraban','Protest Days','Protest Days','Protest Days','6735501c-b317-46cf-9451-bd95d1aca12e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 09:58:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 09:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 9:59:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001006,'N','N','N',0,'N',22,'N','N','N','Y','5197d067-83dc-4930-bcd9-c1b23e1475e3','Y','LBR_ProtestDays','Protest Days','Protest days after the due date according to Febraban','Protest Days','Y',TO_DATE('2014-08-07 09:59:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 09:59:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000294,11,1000052,0,'LBR')
;

-- Aug 7, 2014 9:59:52 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_ProtestDays NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 10:06:50 AM BRT
UPDATE AD_Reference SET Name='LBR_ProtestConfigType',Updated=TO_DATE('2014-08-07 10:06:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000065
;

-- Aug 7, 2014 10:08:23 AM BRT
UPDATE AD_Ref_List SET IsActive='N',Updated=TO_DATE('2014-08-07 10:08:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000667
;

-- Aug 7, 2014 10:17:58 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LatePaymentPenaltyCode',1000295,'Late payment penaulty code according to Febraban','Late Payment Penaulty Code',NULL,'Penaulty Code','b93849e9-6255-495d-9c23-f99c33a40944',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:17:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:17:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:18:51 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000066,'LBR_LatePaymentPenaltyType','LBR','dafacc4c-607a-4fb6-af56-1e2e526b9610','N','L',0,0,TO_DATE('2014-08-07 10:18:51','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-07 10:18:51','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 7, 2014 10:19:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000668,1000066,'6b587ed0-435d-432e-b877-594612c9e8d8','1',TO_DATE('2014-08-07 10:19:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:19:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Amount')
;

-- Aug 7, 2014 10:19:45 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000669,1000066,'d404ddd8-2276-4b9b-89cd-dcd3dac62d1a','2',TO_DATE('2014-08-07 10:19:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:19:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Percentage')
;

-- Aug 7, 2014 10:19:51 AM BRT
UPDATE AD_Ref_List SET Name='2 - Percentage',Updated=TO_DATE('2014-08-07 10:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000669
;

-- Aug 7, 2014 10:20:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001007,'N','N','N',0,'N',1,'N','N','N','Y','34913298-bc32-4f62-8306-71fd0c96a509','Y','LBR_LatePaymentPenaltyCode','Late payment penaulty code according to Febraban','Late Payment Penaulty Code','Y',TO_DATE('2014-08-07 10:20:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:20:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000295,17,1000066,1000052,0,'LBR')
;

-- Aug 7, 2014 10:20:44 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_LatePaymentPenaltyCode CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 10:27:29 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LatePaymentPenaltyDays',1000296,'Late payment penaulty days applied after the due date','Late Payment Penaulty Days','Penaulty Days','3f5d0a7b-a3fd-41e0-9521-8f1f43de0837',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:27:29','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:27:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:28:09 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001008,'N','N','N',0,'N',22,'N','N','N','Y','a9535dbc-18d4-4071-afcd-e6b01743b3ff','Y','LBR_LatePaymentPenaltyDays','Late payment penaulty days applied after the due date','Late Payment Penaulty Days','Y',TO_DATE('2014-08-07 10:28:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:28:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000296,11,1000052,0,'LBR')
;

-- Aug 7, 2014 10:28:11 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_LatePaymentPenaltyDays NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 10:30:09 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LatePaymentPenaltyAP',1000297,'Late payment penaulty amount or pencentage','Late Payment Penaulty Amount/Percentage','Penaulty Amount/Percentage','03e50d06-1bf9-4a22-a962-7d10c01f2355',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:30:09','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:30:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:30:38 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001009,'N','N','N',0,'N',22,'N','N','N','Y','383e5aa4-2291-4694-953f-f1608b065227','Y','LBR_LatePaymentPenaltyAP','Late payment penaulty amount or pencentage','Late Payment Penaulty Amount/Percentage','Y',TO_DATE('2014-08-07 10:30:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:30:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000297,12,1000052,0,'LBR')
;

-- Aug 7, 2014 10:30:40 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_LatePaymentPenaltyAP NUMBER DEFAULT NULL 
;

-- Aug 7, 2014 10:33:00 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_InterestCode',1000298,'Late payment interest code according to Febraban','Late Payment Interest Code','Interest Code','de86fd0f-ddd9-40e7-b610-b7e96387d31c',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:33:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:33:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:34:49 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000067,'LBR_InterestType','LBR','92cf9c0c-0f1a-4940-8d69-42f8ab46f524','N','L',0,0,TO_DATE('2014-08-07 10:34:49','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-07 10:34:49','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 7, 2014 10:40:06 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000670,1000067,'f25400f3-c82f-4430-a6df-46ef2ae2db43','1',TO_DATE('2014-08-07 10:40:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:40:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Valor por Dia')
;

-- Aug 7, 2014 10:40:36 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000671,1000067,'f93be3be-d9c7-47d4-a80a-719a812d67c4','2',TO_DATE('2014-08-07 10:40:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:40:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Taxa Mensal')
;

-- Aug 7, 2014 10:41:24 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000672,1000067,'5235607c-5b7e-41c8-b4b2-4b8491965ad3','3',TO_DATE('2014-08-07 10:41:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:41:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Isento')
;

-- Aug 7, 2014 10:43:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001010,'N','N','N',0,'N',1,'N','N','N','Y','b8c1daf1-a8fc-4d9c-8526-40fdfb0a5b9c','Y','LBR_InterestCode','Late payment interest code according to Febraban','Late Payment Interest Code','Y',TO_DATE('2014-08-07 10:43:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:43:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000298,17,1000067,1000052,0,'LBR')
;

-- Aug 7, 2014 10:43:22 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_InterestCode CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 10:47:18 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_InterestAP',1000299,'Late payment interest amount or pencentage','Interest Amount/Percentage','Interest Amount/Percentage','c59df82b-6b00-46c3-b0f6-de6d4e3643be',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:47:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:47:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:48:06 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_InterestDays',1000300,'Interest days applied after the due date','Interest Days','Interest Days','cd38c3e3-c0d1-4160-8bb6-a20c3856e14a',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:48:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:48:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:48:38 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001011,'N','N','N',0,'N',22,'N','N','N','Y','67c69b88-9c7e-4508-8b74-e7c8435ee2a5','Y','LBR_InterestDays','Interest days applied after the due date','Interest Days','Y',TO_DATE('2014-08-07 10:48:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:48:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000300,11,1000052,0,'LBR')
;

-- Aug 7, 2014 10:48:40 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_InterestDays NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 10:49:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001012,'N','N','N',0,'N',22,'N','N','N','Y','bab3dece-91db-4d05-935e-a99e1eb646bc','Y','LBR_InterestAP','Late payment interest amount or pencentage','Interest Amount/Percentage','Y',TO_DATE('2014-08-07 10:49:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:49:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000299,12,1000052,0,'LBR')
;

-- Aug 7, 2014 10:49:23 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_InterestAP NUMBER DEFAULT NULL 
;

-- Aug 7, 2014 10:53:59 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectionReturnCode',1000301,'Collection return code according to Febraban','Collection Return Code','Return Code','49862382-a4ae-4468-9de0-57ec60b6ea54',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:53:59','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:53:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:55:36 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000068,'LBR_CollecRetConfigType','LBR','39035e0c-fe53-4ee8-a4ca-90612b3ae014','N','Collection Return Configuration Type','L',0,0,TO_DATE('2014-08-07 10:55:36','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-07 10:55:36','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 7, 2014 10:56:00 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000673,1000068,'ed833db4-0d2a-4318-b225-f3999d07f4dc','1',TO_DATE('2014-08-07 10:56:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:56:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Baixar / Devolver')
;

-- Aug 7, 2014 10:56:21 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000674,1000068,'cc4b36fb-2533-4432-8abe-0e7792214b63','2',TO_DATE('2014-08-07 10:56:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 10:56:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Nao Baixar / Nao Devolver')
;

-- Aug 7, 2014 10:56:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001013,'N','N','N',0,'N',1,'N','N','N','Y','6a69008a-ca84-4022-a1bd-e3efd45f2b8b','Y','LBR_CollectionReturnCode','Collection return code according to Febraban','Collection Return Code','Y',TO_DATE('2014-08-07 10:56:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:56:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000301,17,1000068,1000052,0,'LBR')
;

-- Aug 7, 2014 10:56:58 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_CollectionReturnCode CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 10:58:11 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectionReturnDays',1000302,'Collection return days after due date, according to Febraban','Collection Return Days','Return Days','e18eca3d-4fbc-4e65-9a0a-bb3bf9e4d7ab',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 10:58:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 10:58:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 10:58:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001014,'N','N','N',0,'N',22,'N','N','N','Y','f2480ae7-a033-4d02-878a-c0de7a8f6fe5','Y','LBR_CollectionReturnDays','Collection return days after due date, according to Febraban','Collection Return Days','Y',TO_DATE('2014-08-07 10:58:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 10:58:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000302,11,1000052,0,'LBR')
;

-- Aug 7, 2014 10:58:46 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_CollectionReturnDays NUMBER(10) DEFAULT NULL 
;

-- Aug 7, 2014 11:00:05 AM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','M','Y','N','N',0,0,'LBR','Bank Collection Defaults','Maintain default values for bank collection',1000020,'730f3bf3-0df9-4c0a-89aa-1cda47e27d12',TO_DATE('2014-08-07 11:00:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_DATE('2014-08-07 11:00:05','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:00:51 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000020,10,'N','N','N','N','N','Y','N',0,'1663d186-fa8b-427c-9f67-e88476788c95','LBR','Collection Defaults',1000095,0,0,TO_DATE('2014-08-07 11:00:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000052,'B',TO_DATE('2014-08-07 11:00:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',10,'Y',1001756,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','d9d0dd7e-ecb6-4c69-8aaa-a3774c7fd04c','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000994,TO_DATE('2014-08-07 11:01:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',20,'Y',1001757,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b130d52a-847a-420a-b3bb-ad35e7256afb','N','Y','Y',0,0,0,TO_DATE('2014-08-07 11:01:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1000995,TO_DATE('2014-08-07 11:01:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,60,'N','N',30,'Y',1001758,'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBR','Alphanumeric identifier of the entity','Name','80c47c0b-98ff-432a-9ebb-13e650c902b4','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1001001,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,255,'N','N',40,'Y',1001759,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','0a0de38d-0fdc-4d20-be1f-4698d47dbf2c','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,5,1001002,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N','Y',1001760,'N','LBR','Bank Collection Defaults','931c7b6a-28a9-4325-b1e5-7cd6f899e922','N','N',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001003,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,36,'N','N',50,'Y',1001761,'N','LBR','Bank Collection Defaults','c386b4b6-7288-4d36-b3f3-f56caebdd5fd','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1001004,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',60,'Y',1001762,'N','Protest code according to Febraban','LBR','Protest Code','Protest Code','34bdf48d-97bf-4a9d-b11a-7087637a0545','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001005,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',70,'Y',1001763,'N','Protest days after the due date according to Febraban','LBR','Protest Days','Protest Days','08665669-cf17-412c-bb34-9ccb94204c9d','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1001006,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',80,'Y',1001764,'N','Late payment penaulty code according to Febraban','LBR','Late Payment Penaulty Code','1177d0f6-366b-455c-80eb-cdf5dd5ed50c','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,1001007,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',90,'Y',1001765,'N','Late payment penaulty days applied after the due date','LBR','Late Payment Penaulty Days','5875d9b1-0408-42e2-8880-1c4ce311534b','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1001008,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',100,'Y',1001766,'N','Late payment penaulty amount or pencentage','LBR','Late Payment Penaulty Amount/Percentage','5225c209-aab5-4a02-b826-352bb690a218','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1001009,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',110,'Y',1001767,'N','Late payment interest code according to Febraban','LBR','Late Payment Interest Code','1d1545ef-7cf7-42c2-aefa-660f24f605c5','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1001010,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',120,'Y',1001768,'N','Interest days applied after the due date','LBR','Interest Days','92c0a5a0-9809-4d12-94d4-cd0c9d17eb67','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1001011,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',130,'Y',1001769,'N','Late payment interest amount or pencentage','LBR','Interest Amount/Percentage','35efd7a9-b8e1-47d0-b9db-e0cd8e6be155','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1001012,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',140,'Y',1001770,'N','Collection return code according to Febraban','LBR','Collection Return Code','c08956ed-c601-4722-a599-b6c4d1ec8a1f','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1001013,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,22,'N','N',150,'Y',1001771,'N','Collection return days after due date, according to Febraban','LBR','Collection Return Days','79d7c86b-4cfa-4fc7-a90d-b2e48803c4ae','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1001014,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:01:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',160,'Y',1001772,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','337b9d17-f547-41e0-b670-c8be33b4f057','N','Y',0,0,0,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,2,0,2,1000996,TO_DATE('2014-08-07 11:01:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:02:14 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001761
;

-- Aug 7, 2014 11:02:14 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001772
;

-- Aug 7, 2014 11:03:37 AM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000020,1000026,'N','Y','N','LBR','Y','Bank Collection Defaults','Maintain Bank Collection Defaults','70912090-cf0d-49a2-834a-0652bead173f','W','Y',0,TO_DATE('2014-08-07 11:03:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-07 11:03:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 11:03:37 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000026, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000026)
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=441
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=149
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=50010
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200010
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=171
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200021
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=437
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=240
;

-- Aug 7, 2014 11:03:43 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=175, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=361
;

-- Aug 7, 2014 1:12:15 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message1',1000303,'Message 1','Message 1',NULL,'Message 1','007bce4e-d0c6-4129-b2df-c702f323563d',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:12:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:12:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:12:27 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message2',1000304,'Message 2','Message 2','Message 2','5da9edd1-99f8-4786-b861-c7028aa5720b',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:12:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:12:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:13:11 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001015,'N','N','N',0,'N',40,'N','N','N','Y','9600395f-4b73-484f-921b-47f00b6c7c26','Y','LBR_Message1','Message 1','Message 1','Y',TO_DATE('2014-08-07 13:13:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:13:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000303,10,1000052,0,'LBR')
;

-- Aug 7, 2014 1:13:12 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_Message1 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 7, 2014 1:13:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001016,'N','N','N',0,'N',40,'N','N','N','Y','98aa8832-9522-4bb7-bf5b-cf5ebe3d3b91','Y','LBR_Message2','Message 2','Message 2','Y',TO_DATE('2014-08-07 13:13:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:13:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000304,10,1000052,0,'LBR')
;

-- Aug 7, 2014 1:13:32 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_Message2 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 7, 2014 1:17:04 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000069,'LBR_CollectionType','LBR','1f372b76-15da-41ed-8d8f-94c9aa040f2d','N','L',0,0,TO_DATE('2014-08-07 13:17:04','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-07 13:17:04','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 7, 2014 1:17:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000675,1000069,'e064d3e9-2353-4ad4-8fec-182897c01c5b','01',TO_DATE('2014-08-07 13:17:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:17:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'01 - CH Cheque')
;

-- Aug 7, 2014 1:18:00 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000676,1000069,'314949dd-d619-42a8-a4cf-b0687eaa3d3c','02',TO_DATE('2014-08-07 13:18:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:18:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'02 - DM Duplicata Mercantil')
;

-- Aug 7, 2014 1:18:27 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000677,1000069,'c778b198-72ba-45fe-943e-3fa8462cbb75','03',TO_DATE('2014-08-07 13:18:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:18:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'03 - DMI Duplicata Mercantil p/ Indicacao')
;

-- Aug 7, 2014 1:18:51 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000678,1000069,'529a2469-5080-44f6-adc4-69da91df3bed','04',TO_DATE('2014-08-07 13:18:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:18:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'04 - DS Duplicata de Servico')
;

-- Aug 7, 2014 1:19:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000679,1000069,'e1eff272-3e89-4b8f-8cf0-442533b53467','05',TO_DATE('2014-08-07 13:19:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:19:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'05 - DSI Duplicata de Servico p/ Indicacao')
;

-- Aug 7, 2014 1:19:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000680,1000069,'b7ddc9d4-06a0-4044-a269-1df4373b73df','06',TO_DATE('2014-08-07 13:19:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:19:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'06 - DR Duplicata Rural')
;

-- Aug 7, 2014 1:19:44 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000681,1000069,'9828fd0d-8132-4e5b-acd0-b9108ae79207','07',TO_DATE('2014-08-07 13:19:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:19:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'07 - LC Letra de Cambio')
;

-- Aug 7, 2014 1:20:05 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000682,1000069,'b7fd0d21-1af4-4cd2-996e-732a8b75320b','08',TO_DATE('2014-08-07 13:20:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:20:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'08 - NCC Nota de Credito Comercial')
;

-- Aug 7, 2014 1:20:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000683,1000069,'ea076016-0fc3-4658-b408-fa82f3dd442c','09',TO_DATE('2014-08-07 13:20:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:20:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'09 - NCE Nota de Credito a Exportacao')
;

-- Aug 7, 2014 1:21:12 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000684,1000069,'934f1b14-f67a-469d-9df7-b4a38642522e','10',TO_DATE('2014-08-07 13:21:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:21:12','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'10 - NCI Nota de Credito Industrial')
;

-- Aug 7, 2014 1:21:53 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000685,1000069,'eb12e7a0-e699-4608-a995-3b17b04fc834','11',TO_DATE('2014-08-07 13:21:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:21:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'11 - NCR Nota de Credito Rural')
;

-- Aug 7, 2014 1:22:08 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000686,1000069,'69beaef1-055b-441d-89a9-b50d69b8ded8','12',TO_DATE('2014-08-07 13:22:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:22:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'12 - NP Nota Promissoria')
;

-- Aug 7, 2014 1:22:31 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000687,1000069,'d398ce80-080d-445c-a29a-da3235c3a41e','13',TO_DATE('2014-08-07 13:22:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:22:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'13 - NPR Nota Promissoria Rural')
;

-- Aug 7, 2014 1:22:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000688,1000069,'c424d7d3-edbd-4b86-856c-4a0ed924dfc2','14',TO_DATE('2014-08-07 13:22:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:22:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'14 - TM Triplicata Mercantil')
;

-- Aug 7, 2014 1:23:05 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000689,1000069,'5fee59ea-d832-480d-b7be-1d843351c20d','15',TO_DATE('2014-08-07 13:23:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:23:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'15 - TS Triplicata de Servico')
;

-- Aug 7, 2014 1:23:21 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000690,1000069,'6f1c44bd-7be6-499b-926e-307bf127f4a4','16',TO_DATE('2014-08-07 13:23:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:23:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'16 - NS Nota de Seguro')
;

-- Aug 7, 2014 1:23:33 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000691,1000069,'176fc534-70e5-4d34-a1b3-7c3d7456650d','17',TO_DATE('2014-08-07 13:23:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:23:33','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'17 - RC Recibo')
;

-- Aug 7, 2014 1:23:45 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000692,1000069,'a3bf3b44-3b9f-456d-b54b-6e8c00d026b2','18',TO_DATE('2014-08-07 13:23:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:23:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'18 - FAT Fatura')
;

-- Aug 7, 2014 1:24:03 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000693,1000069,'4833a8ad-6481-4625-909d-bdf7ad1ba5a4','19',TO_DATE('2014-08-07 13:24:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:24:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'19 - ND Nota de Debito')
;

-- Aug 7, 2014 1:24:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000694,1000069,'10265af2-b804-4e1a-bf96-ce96a9c59de4','20',TO_DATE('2014-08-07 13:24:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:24:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'20 - AP Apolice de Seguro')
;

-- Aug 7, 2014 1:24:45 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000695,1000069,'abf984a0-c8c3-46ec-984f-91b2f9d15dac','21',TO_DATE('2014-08-07 13:24:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:24:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'21 - ME Mensalidade Escolar')
;

-- Aug 7, 2014 1:25:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000696,1000069,'fd7fc3a8-d2ee-4f3e-b2af-93ce3eaccdb7','22',TO_DATE('2014-08-07 13:25:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:25:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'22 - PC Parcela de Consorcio')
;

-- Aug 7, 2014 1:25:28 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000697,1000069,'a74d6845-3e6d-49e0-84ff-fa35a5efc4fa','23',TO_DATE('2014-08-07 13:25:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:25:28','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'23 - NF Nota Fiscal')
;

-- Aug 7, 2014 1:25:55 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000698,1000069,'98895985-c35a-4577-ad99-da1ddbc70e80','24',TO_DATE('2014-08-07 13:25:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:25:55','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'24 - DD Documento de Divida')
;

-- Aug 7, 2014 1:26:10 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000699,1000069,'e62e994e-448e-4d5b-a4ad-67586b43b793','25',TO_DATE('2014-08-07 13:26:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:26:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'25 - Cedula de Produto Rural')
;

-- Aug 7, 2014 1:26:27 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000700,1000069,'4573eb9a-900f-43b1-8d9a-fdabfc45f813','26',TO_DATE('2014-08-07 13:26:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:26:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'26 - Warrant')
;

-- Aug 7, 2014 1:26:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000701,1000069,'0902a47e-c5d8-4ccd-9e14-19d138a3a4af','27',TO_DATE('2014-08-07 13:26:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:26:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'27 - Divida Ativa de Estado')
;

-- Aug 7, 2014 1:27:06 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000702,1000069,'d682ffed-0522-44d8-9fa8-c23e38004a0e','28',TO_DATE('2014-08-07 13:27:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:27:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'28 - Divida Ativa de Municipio')
;

-- Aug 7, 2014 1:27:26 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000703,1000069,'9947f691-7e05-4a6e-9d07-2000f1aa824c','29',TO_DATE('2014-08-07 13:27:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:27:26','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'29 - Divida Ativa da Uniao')
;

-- Aug 7, 2014 1:27:48 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000704,1000069,'36a4f35d-b04c-47c3-ad0b-2f9070b36285','30',TO_DATE('2014-08-07 13:27:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:27:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'30 - Encargos Condominiais')
;

-- Aug 7, 2014 1:28:04 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000705,1000069,'dabfa322-6078-4db8-b3e5-c7251ed2fefd','31',TO_DATE('2014-08-07 13:28:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:28:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'31 - CC Cartao de Credito')
;

-- Aug 7, 2014 1:28:18 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000706,1000069,'42aaa435-16fb-4242-a8f6-43a4f65fc148','99',TO_DATE('2014-08-07 13:28:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-07 13:28:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'99 - Outros')
;

-- Aug 7, 2014 1:35:18 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectionType',1000305,'Collection Type','Collection Type','1ba05ac1-df8d-4600-accd-59d6c81a2597',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:35:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:35:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:35:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001017,'N','N','N',0,'N',2,'N','N','N','Y','479c9424-1fad-4cbd-8ea9-e6147a118642','Y','LBR_CollectionType','Collection Type','Y',TO_DATE('2014-08-07 13:35:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:35:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000305,17,1000069,1000052,0,'LBR')
;

-- Aug 7, 2014 1:35:44 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_CollectionType NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 7, 2014 1:37:19 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Accepted',1000306,'Accepted','Accepted','62e9fbd6-ada2-4147-9b8f-aa7ec8b52b7f',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:37:19','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:37:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:38:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001018,'N','N','N',0,'N',1,'N','N','N','Y','9d37d4ac-bb2f-423e-9d97-96ff4ab90014','Y','LBR_Accepted','Accepted','Y',TO_DATE('2014-08-07 13:38:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:38:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000306,17,319,1000052,0,'LBR')
;

-- Aug 7, 2014 1:38:31 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_Accepted CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 1:40:30 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_PartialPayment',1000307,'Authorize Partial Payment','Partial Payment','67b90a2d-12a1-46df-806d-369b09e94412',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:40:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:40:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:41:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001019,'N','N','N',0,'N',1,'N','N','N','Y','6fca6184-b367-4579-a64b-e235386c92ba','Y','LBR_PartialPayment','Authorize Partial Payment','Y',TO_DATE('2014-08-07 13:41:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:41:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000307,17,319,1000052,0,'LBR')
;

-- Aug 7, 2014 1:41:05 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_PartialPayment CHAR(1) DEFAULT NULL 
;

-- Aug 7, 2014 1:44:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DirectDebitNotice',1000308,'Direct Debit Notice','Direct Debit Notice','c1fbc8c6-6eb4-4151-8b02-42117fa109df',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-07 13:44:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-07 13:44:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 7, 2014 1:44:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001020,'N','N','N',0,'N',1,'N','N','N','Y','f6625445-fea4-4334-b2be-bbd37c73aee3','Y','LBR_DirectDebitNotice','Direct Debit Notice','Y',TO_DATE('2014-08-07 13:44:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-07 13:44:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000308,17,319,1000052,0,'LBR')
;

-- Aug 7, 2014 1:44:25 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_DirectDebitNotice CHAR(1) DEFAULT NULL 
;

-- 07/08/2014 14h27min19s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,40,'N','N',160,'Y',1001773,'N','Message 1','LBR','Message 1','c2fa0076-011b-410f-983a-1fcb4a81554c','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1001015,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 07/08/2014 14h27min19s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,40,'N','N',170,'Y',1001774,'N','Message 2','LBR','Message 2','fc68ba8e-6279-46da-a522-179b979bde72','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1001016,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 07/08/2014 14h27min19s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,2,'N','N',180,'Y',1001775,'N','LBR','Collection Type','ee5879ea-11c9-4f9a-9a09-439fb47e3df7','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1001017,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 07/08/2014 14h27min20s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',190,'Y',1001776,'N','LBR','Accepted','012e5d4b-8a6a-458d-a587-61097b91da13','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1001018,TO_DATE('2014-08-07 14:27:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 07/08/2014 14h27min20s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',200,'Y',1001777,'N','LBR','Authorize Partial Payment','b5217ece-e1ca-4ab0-9e91-fe2b18aab096','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1001019,TO_DATE('2014-08-07 14:27:20','YYYY-MM-DD HH24:MI:SS'))
;

-- 07/08/2014 14h27min20s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',210,'Y',1001778,'N','LBR','Direct Debit Notice','18ea5c00-01cb-40ee-8823-1f3f6ce6cea9','N','Y',0,0,0,TO_DATE('2014-08-07 14:27:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,0,2,1001020,TO_DATE('2014-08-07 14:27:20','YYYY-MM-DD HH24:MI:SS'))
;
-- 07/08/2014 14h34min35s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-07 14:34:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001756
;

-- 07/08/2014 14h35min2s BRT
UPDATE AD_Field SET IsSameLine='Y', NumLines=3,Updated=TO_DATE('2014-08-07 14:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001759
;

-- 07/08/2014 14h35min23s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:35:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001763
;

-- 07/08/2014 14h35min40s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001765
;

-- 07/08/2014 14h35min57s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:35:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001768
;

-- 07/08/2014 14h36min11s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001771
;

-- 07/08/2014 14h36min34s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:36:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001774
;

-- 07/08/2014 14h36min48s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001776
;

-- 07/08/2014 14h37min0s BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-07 14:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001778
;

-- Aug 8, 2014 8:30:30 AM BRT
UPDATE AD_Table SET AD_Window_ID=1000020,Updated=TO_DATE('2014-08-08 08:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000052
;

-- Aug 8, 2014 8:31:05 AM BRT
UPDATE AD_Table SET IsHighVolume='Y',Updated=TO_DATE('2014-08-08 08:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000033
;

-- Aug 8, 2014 8:31:12 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000053,'Y','N','Y','LBR','L','30f3ce91-7393-45f8-bc81-26abcadbc8f3','Y','Y','LBR_Boleto','Boleto Identifier','Brazilian Bank Collection (Boleto)','Y',0,0,TO_DATE('2014-08-08 08:31:12','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-08 08:31:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 8:31:13 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000068,'Table LBR_Boleto','LBR_Boleto',1,'1cb6ac7d-b4e5-4a35-a9ce-0c702e711743',0,TO_DATE('2014-08-08 08:31:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-08 08:31:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 8:32:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001021,'Y','N','N',0,'N',22,'N','N','N','Y','9db8cbb4-f41d-4135-9e6e-30f4c6376c76','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-08 08:32:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:32:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000053,129,0,'LBR')
;

-- Aug 8, 2014 8:32:19 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 08:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001021
;

-- Aug 8, 2014 8:32:19 AM BRT
CREATE TABLE LBR_Boleto (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Aug 8, 2014 8:32:21 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT ADClient_LBRBoleto FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 8:32:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001022,'Y','N','N',0,'N',22,'N','N','N','Y','7465cc42-334e-4bcb-93c1-97761f4cec77','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-08 08:32:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:32:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000053,104,0,'LBR')
;

-- Aug 8, 2014 8:32:46 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 08:32:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001022
;

-- Aug 8, 2014 8:32:46 AM BRT
ALTER TABLE LBR_Boleto ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 8:32:46 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT ADOrg_LBRBoleto FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 8:34:08 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001023,'Y','N','N',0,'N',22,'N','N','N','Y','de968c8d-0831-4a74-a9f9-44a37f22e2f6','N','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type','Y',TO_DATE('2014-08-08 08:34:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:34:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',196,19,1000053,0,'LBR')
;

-- Aug 8, 2014 8:34:10 AM BRT
UPDATE AD_Column SET FKConstraintName='CDocType_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 08:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001023
;

-- Aug 8, 2014 8:34:10 AM BRT
ALTER TABLE LBR_Boleto ADD C_DocType_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 8:34:10 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CDocType_LBRBoleto FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 8:34:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001024,'N','N','N',0,'N',7,'N','N','N','Y','db60d8de-aa6c-4430-b3a3-6fac11d6e3fe','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-08 08:34:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:34:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000053,0,'LBR')
;

-- Aug 8, 2014 8:34:34 AM BRT
ALTER TABLE LBR_Boleto ADD Created DATE DEFAULT SYSDATE
;

-- Aug 8, 2014 8:34:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001025,'N','N','N',0,'N',22,'N','N','N','Y','c71e0ec8-6c75-4bd6-ad74-f7c6bf7c814c','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-08 08:34:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:34:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000053,0,'LBR')
;

-- Aug 8, 2014 8:34:50 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 08:34:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001025
;

-- Aug 8, 2014 8:34:50 AM BRT
ALTER TABLE LBR_Boleto ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 8:34:50 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CreatedBy_LBRBoleto FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 8:36:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001026,'Y','N','N',0,'N',7,'N','N','N','Y','dfab739a-feb3-4df1-9aad-a558db07452b','Y','DateAcct','Accounting Date','@#Date@','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date','Y',TO_DATE('2014-08-08 08:36:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:36:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',263,15,1000053,0,'LBR')
;

-- Aug 8, 2014 8:36:09 AM BRT
ALTER TABLE LBR_Boleto ADD DateAcct DATE NOT NULL
;

-- Aug 8, 2014 8:37:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001027,'Y','N','N',0,'N',7,'N','N','N','Y','c2e7ad33-2fc8-4ca3-8061-992acac1c58d','Y','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date','Y',TO_DATE('2014-08-08 08:37:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:37:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',265,15,1000053,0,'LBR')
;

-- Aug 8, 2014 8:37:13 AM BRT
ALTER TABLE LBR_Boleto ADD DateDoc DATE NOT NULL
;

-- Aug 8, 2014 8:37:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001028,'N','N','N',0,'N',255,'Y','N','N','Y','4916ec37-aae4-4cac-a4a2-8aa32cb96e05','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-08-08 08:37:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:37:42','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',275,10,1000053,0,'LBR')
;

-- Aug 8, 2014 8:37:45 AM BRT
ALTER TABLE LBR_Boleto ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Aug 8, 2014 8:38:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001029,'Y','N','N',0,'N',2,'N','N','N','Y','4c62b8a2-9ddc-414d-a7d8-e0e778272da8','Y','DocAction','The targeted status of the document','CO','You find the current status in the Document Status field. The options are listed in a popup','Document Action','Y',TO_DATE('2014-08-08 08:38:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:38:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',287,28,135,1000053,0,'LBR')
;

-- Aug 8, 2014 8:38:21 AM BRT
ALTER TABLE LBR_Boleto ADD DocAction CHAR(2) DEFAULT 'CO' NOT NULL
;

-- Aug 8, 2014 8:39:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001030,'Y','N','N',0,'N',2,'N','N','N','Y','f336a25e-2d4f-4264-81fa-fe9db776f21a','Y','DocStatus','The current status of the document','DR','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status','Y',TO_DATE('2014-08-08 08:39:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:39:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',289,17,131,1000053,0,'LBR')
;

-- Aug 8, 2014 8:39:25 AM BRT
ALTER TABLE LBR_Boleto ADD DocStatus NVARCHAR2(2) DEFAULT 'DR' NOT NULL
;

-- Aug 8, 2014 8:40:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001031,'Y','N','N',0,'N',30,'Y','N','N','Y','8594e83e-858b-46e6-9b16-7e198e6753e7','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_DATE('2014-08-08 08:40:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:40:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000053,0,'LBR')
;

-- Aug 8, 2014 8:40:04 AM BRT
ALTER TABLE LBR_Boleto ADD DocumentNo NVARCHAR2(30) NOT NULL
;

-- Aug 8, 2014 8:40:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001032,'N','N','N',0,'N',22,'N','N','N','Y','c1f94702-fcfd-46cf-bb21-fcfbb88947ac','Y','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total','Y',TO_DATE('2014-08-08 08:40:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:40:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',316,12,1000053,0,'LBR')
;

-- Aug 8, 2014 8:40:30 AM BRT
ALTER TABLE LBR_Boleto ADD GrandTotal NUMBER DEFAULT NULL 
;

-- Aug 8, 2014 8:40:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001033,'Y','N','N',0,'N',1,'N','N','N','Y','ee5c924c-cd20-4e83-a4a7-44af8ab55421','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-08 08:40:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:40:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000053,0,'LBR')
;

-- Aug 8, 2014 8:40:47 AM BRT
ALTER TABLE LBR_Boleto ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 8, 2014 8:42:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001034,'Y','N','N',0,'N',1,'N','N','N','Y','a7a4a69c-5cb7-4181-9516-f5b6f5d17bf7','Y','Posted','Posting status','N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Posted','Y',TO_DATE('2014-08-08 08:42:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:42:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1308,28,234,1000053,0,'LBR')
;

-- Aug 8, 2014 8:42:31 AM BRT
ALTER TABLE LBR_Boleto ADD Posted CHAR(1) DEFAULT 'N' NOT NULL
;

-- Aug 8, 2014 8:42:40 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-08 08:42:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001034
;

-- Aug 8, 2014 8:42:46 AM BRT
ALTER TABLE LBR_Boleto MODIFY Posted CHAR(1) DEFAULT 'N'
;

-- Aug 8, 2014 8:42:51 AM BRT
UPDATE LBR_Boleto SET Posted='N' WHERE Posted IS NULL
;

-- Aug 8, 2014 8:44:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001035,'Y','N','N',0,'N',1,'N','N','N','Y','033c4491-d74f-49f8-b6c1-5ced98bbb40b','Y','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed','Y',TO_DATE('2014-08-08 08:44:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:44:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000053,0,'LBR')
;

-- Aug 8, 2014 8:44:08 AM BRT
ALTER TABLE LBR_Boleto ADD Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL
;

-- Aug 8, 2014 8:44:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001036,'N','N','N',0,'N',20,'N','N','N','Y','0ccbf42d-c48c-4991-a050-ac4a7a631bed','Y','ProcessedOn','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Processed On','Y',TO_DATE('2014-08-08 08:44:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:44:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',54128,22,1000053,0,'LBR')
;

-- Aug 8, 2014 8:44:39 AM BRT
ALTER TABLE LBR_Boleto ADD ProcessedOn NUMBER DEFAULT NULL 
;

-- Aug 8, 2014 8:45:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001037,'N','N','N',0,'N',1,'N','N','N','Y','c729e53d-f780-4687-9076-027c9197a683','Y','Processing','Process Now','N',TO_DATE('2014-08-08 08:45:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:45:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',524,28,1000053,0,'LBR')
;

-- Aug 8, 2014 8:45:13 AM BRT
ALTER TABLE LBR_Boleto ADD Processing CHAR(1) DEFAULT NULL 
;

-- Aug 8, 2014 8:50:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001038,'N','N','N',0,'N',7,'N','N','N','Y','51c393f7-180b-42b0-b400-57d6997f67b8','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-08 08:50:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:50:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000053,0,'LBR')
;

-- Aug 8, 2014 8:50:01 AM BRT
ALTER TABLE LBR_Boleto ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 8, 2014 8:50:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001039,'N','N','N',0,'N',22,'N','N','N','Y','bc32a526-9894-4972-bdcf-1dfcf720b6bf','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-08 08:50:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:50:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000053,0,'LBR')
;

-- Aug 8, 2014 8:50:16 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 08:50:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001039
;

-- Aug 8, 2014 8:50:16 AM BRT
ALTER TABLE LBR_Boleto ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 8:50:16 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT UpdatedBy_LBRBoleto FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 8:52:27 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Boleto_ID',1000309,'The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Brazilian Bank Collection (Boleto) Identifier','Boleto','be790746-07bf-4c70-8e32-819d89800f39',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 08:52:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 08:52:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 8:52:38 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Boleto_UU',1000310,'The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Brazilian Bank Collection (Boleto) Identifier','Boleto','ff75ca4a-3089-4ca3-a8cb-b08227ffb507',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 08:52:38','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 08:52:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 8:58:26 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001040,'N','N','N',0,'N',22,'N','Y','N','Y','defa5bc6-8df3-4091-9e19-b25a05fcf0bc','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','N',TO_DATE('2014-08-08 08:58:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:58:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000309,13,1000053,0,'LBR')
;

-- Aug 8, 2014 8:58:27 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_Boleto_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 8:58:27 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBR_Boleto_Key PRIMARY KEY (LBR_Boleto_ID)
;

-- Aug 8, 2014 8:58:44 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001041,'N','N','N',0,'N',36,'N','N','N','Y','bf517c2c-fbdc-48b4-9066-9a086f46556a','N','LBR_Boleto_UU','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','N',TO_DATE('2014-08-08 08:58:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 08:58:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000310,10,1000053,0,'LBR')
;

-- Aug 8, 2014 8:58:45 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_Boleto_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 8, 2014 8:58:46 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBR_Boleto_UU_idx UNIQUE (LBR_Boleto_UU)
;

-- Aug 8, 2014 12:40:50 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000070,'LBR_Accepted','LBR','6e47f3eb-8897-4fe7-bf28-9488c998bcf3','N','L',0,0,TO_DATE('2014-08-08 12:40:50','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-08 12:40:50','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 8, 2014 12:41:14 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000707,1000070,'c2d119c1-df41-4df6-bdca-93b952f21c3f','A',TO_DATE('2014-08-08 12:41:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:41:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'A - Accepted')
;

-- Aug 8, 2014 12:41:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000708,1000070,'69f0a8c7-fe6c-4fc3-b7ff-96ea58cc86cd','N',TO_DATE('2014-08-08 12:41:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:41:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'N - Not Accepted')
;

-- Aug 8, 2014 12:41:40 PM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000070,Updated=TO_DATE('2014-08-08 12:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001018
;

-- Aug 8, 2014 12:53:14 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000071,'LBR_PartialPayment','LBR','5780e092-0e2c-46f1-9414-ea7f008c883e','N','L',0,0,TO_DATE('2014-08-08 12:53:14','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-08 12:53:14','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 8, 2014 12:53:40 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000709,1000071,'23b54d13-937f-4c40-9418-d2622362c2e4','1',TO_DATE('2014-08-08 12:53:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:53:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Nao Autoriza Pagamento Parcial')
;

-- Aug 8, 2014 12:53:57 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000710,1000071,'fc6f292e-3908-417d-9a62-42278142b0cd','2',TO_DATE('2014-08-08 12:53:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:53:57','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Autoriza Pagamentos Parciais')
;

-- Aug 8, 2014 12:54:33 PM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000071,Updated=TO_DATE('2014-08-08 12:54:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001019
;

-- Aug 8, 2014 12:56:17 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000072,'LBR_DirectDebitNotice','LBR','57bb793d-4bdc-4bca-a265-0faaef7ab7e0','N','L',0,0,TO_DATE('2014-08-08 12:56:17','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-08 12:56:17','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 8, 2014 12:57:18 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000711,1000072,'5721fbf1-eb23-4830-8882-85fb9ee7e2e2','1',TO_DATE('2014-08-08 12:57:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:57:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Emite com Endereco do Arquivo Remessa')
;

-- Aug 8, 2014 12:57:44 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000712,1000072,'f16cdc81-1461-4c08-9283-15bac90ad78c','2',TO_DATE('2014-08-08 12:57:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:57:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Nao Emite Aviso ao Sacado')
;

-- Aug 8, 2014 12:58:13 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000713,1000072,'b5ca8a86-4b89-4b4a-9dc9-af9afd21f8a1','3',TO_DATE('2014-08-08 12:58:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-08 12:58:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Emite com Endereco do Cadastro no Banco')
;

-- Aug 8, 2014 12:59:20 PM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000072,Updated=TO_DATE('2014-08-08 12:59:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001020
;

-- Aug 8, 2014 2:30:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001042,'Y','N','N',0,'N',7,'N','N','N','Y','05c663d7-14cf-4f62-91ad-caab3ff1b4f8','Y','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date','Y',TO_DATE('2014-08-08 14:30:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 14:30:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2000,15,1000053,0,'LBR')
;

-- Aug 8, 2014 2:30:27 PM BRT
ALTER TABLE LBR_Boleto ADD DueDate DATE NOT NULL
;

-- Aug 8, 2014 2:32:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001043,'Y','N','N',0,'N',22,'Y','N','N','Y','3417b515-f3cb-4a37-9eb8-4fc303913ed7','Y','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ','Y',TO_DATE('2014-08-08 14:32:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 14:32:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',187,30,1000053,0,'LBR')
;

-- Aug 8, 2014 2:32:12 PM BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 14:32:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001043
;

-- Aug 8, 2014 2:32:12 PM BRT
ALTER TABLE LBR_Boleto ADD C_BPartner_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 2:32:12 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBPartner_LBRBoleto FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 2:33:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001044,'Y','N','N',0,'N',10,'N','N','N','Y','1bb03479-59c3-48a9-b6a9-4e9b8fd51415','Y','C_BPartner_Location_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Y',TO_DATE('2014-08-08 14:33:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 14:33:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',189,19,1000053,0,'LBR')
;

-- Aug 8, 2014 2:34:00 PM BRT
UPDATE AD_Column SET FKConstraintName='CBPartnerLocation_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 14:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001044
;

-- Aug 8, 2014 2:34:00 PM BRT
ALTER TABLE LBR_Boleto ADD C_BPartner_Location_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 2:34:00 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBPartnerLocation_LBRBoleto FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 2:39:52 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Guarantor_Location_ID',1000311,'The Guarantor (Partner) address indicates the location of a Business Partner','Guarantor (Partner) Location','Identifies the address for this guarantor (Business Partner)','Guarantor (Partner) Location','002b2e9a-daa4-42d0-8743-9b489d9e09c4',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 14:39:52','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 14:39:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 2:41:10 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Guarantor_ID',1000312,NULL,'Guarantor (Business Partner)','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)','1d2657da-4ebc-4f1f-9f20-1306c23471fe',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 14:41:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 14:41:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 2:44:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001045,'N','N','N',0,'N',22,'Y','N','N','Y','d615ed90-5f0d-42af-8bfe-8b09fc0161ae','Y','LBR_Guarantor_ID','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)','Y',TO_DATE('2014-08-08 14:44:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 14:44:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000312,30,138,1000053,0,'LBR')
;

-- Aug 8, 2014 2:44:06 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRGuarantor_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 14:44:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001045
;

-- Aug 8, 2014 2:44:06 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Guarantor_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 2:44:06 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBRGuarantor_LBRBoleto FOREIGN KEY (LBR_Guarantor_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 2:52:08 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BPartner_Location.C_BPartner_ID=@LBR_Guarantor_ID@ AND C_BPartner_Location.IsPayFrom=''Y'' AND C_BPartner_Location.IsActive=''Y''',1000009,'LBR','LBR_Guarantor_Location Pay From','S','98bc611b-2357-4c33-9979-842ffb15de8a',0,0,TO_DATE('2014-08-08 14:52:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 14:52:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 8, 2014 2:53:25 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,MandatoryLogic,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001046,'N','N','N',0,'N',22,'N','N','N','Y','@LBR_Guarantor_ID@ > 0','95c23b80-3db5-4008-803e-84ec42a3a304','Y','LBR_Guarantor_Location_ID','Identifies the address for this guarantor (Business Partner)','The Guarantor (Partner) address indicates the location of a Business Partner','Guarantor (Partner) Location','Y',TO_DATE('2014-08-08 14:53:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 14:53:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000311,18,159,1000053,1000009,0,'LBR')
;

-- Aug 8, 2014 2:53:31 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRGuarantorLocation_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 14:53:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001046
;

-- Aug 8, 2014 2:53:31 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Guarantor_Location_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 2:53:31 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBRGuarantorLocation_LBRBoleto FOREIGN KEY (LBR_Guarantor_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 2:56:14 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BPartner_Location.C_BPartner_ID=@C_BPartner_ID@ AND C_BPartner_Location.IsPayFrom=''Y'' AND C_BPartner_Location.IsActive=''Y''',1000010,'LBR','LBR_C_BPartner Pay From','S','284c2713-8959-40ab-a3d1-4ee92db6f3bd',0,0,TO_DATE('2014-08-08 14:56:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 14:56:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 8, 2014 2:56:34 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000010,Updated=TO_DATE('2014-08-08 14:56:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001044
;

-- Aug 8, 2014 3:03:15 PM BRT
INSERT INTO AD_Window (Processing,WindowType,Help,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,Created) VALUES ('N','T','The Brazilian Bank Collection (Boleto) Window allows you to display and enter collections.','Y','N','N',0,0,'LBR','Brazilian Bank Collection (LBR)','Brazilian Bank Collection (Boleto) Entry',1000021,'59d90b71-f14f-4c6d-bcbb-0dfb5f92c848',TO_DATE('2014-08-08 15:03:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0,TO_DATE('2014-08-08 15:03:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:22 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000021,10,'N','N','N','N','N','Y','N',0,'9dfe2d9c-a11f-49a1-b509-40d5d3ad4df9','LBR','Bank Collection','Brazilian Bank Collection',1000096,0,0,TO_DATE('2014-08-08 15:05:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000053,'B',TO_DATE('2014-08-08 15:05:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:34 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',10,'Y',1001779,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','a3f0500c-f935-46ed-b63b-a7271c313b1b','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001021,TO_DATE('2014-08-08 15:05:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',20,'Y',1001780,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','da7b2b55-6f6b-4267-b80c-f990c4f93909','N','Y','Y',0,0,0,TO_DATE('2014-08-08 15:05:34','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1001022,TO_DATE('2014-08-08 15:05:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,255,'N','N',30,'Y',1001781,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','3aa4b18c-3f7a-496c-88b2-c4ee38f171fc','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,1001028,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',40,'Y',1001782,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','8f0b4d28-7003-485b-8131-45fc0c2cd126','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1001023,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,7,'N','N',50,'Y',1001783,'N','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','LBR','Accounting Date','Account Date','d71331eb-89c2-4025-a9af-6c7499428325','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1001026,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,7,'N','N',60,'Y',1001784,'N','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','LBR','Date of the Document','Document Date','c5265b44-e530-4dbf-8c82-3fcaa4bccf6c','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001027,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,2,'N','N',70,'Y',1001785,'N','You find the current status in the Document Status field. The options are listed in a popup','LBR','The targeted status of the document','Document Action','01d4b4dd-dcba-4606-85da-7e83ab54b05a','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,2,0,2,1001029,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,2,'N','N',80,'Y',1001786,'N','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','LBR','The current status of the document','Document Status','c4cb825b-f775-476f-9234-a42f7d8dad85','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,1001030,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,30,'N','N',90,'Y',1001787,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','77881f46-f561-431b-8aa2-55309cf743f4','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1001031,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',100,'Y',1001788,'N','The Grand Total displays the total amount including Tax and Freight in document currency','LBR','Total amount of document','Grand Total','ec6ce2b5-2c4f-46cb-8736-ff4880e280fd','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1001032,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',110,'Y',1001789,'N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','LBR','Posting status','Posted','33633697-1998-4ae7-ac13-d5b41fe2db53','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,2,0,2,1001034,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',120,'Y',1001790,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','efe98f2b-d86a-46d3-9e48-aeb748bc9156','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,2,0,2,1001035,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,20,'N','N',130,'Y',1001791,'N','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','LBR','The date+time (expressed in decimal format) when the document has been processed','Processed On','6ff36d76-c8ff-4d9f-be5d-c9e859e925d7','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1001036,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',140,'Y',1001792,'N','LBR','Process Now','994af9a1-4220-4451-a330-2ea0f9492757','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,2,0,2,1001037,TO_DATE('2014-08-08 15:05:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N','Y',1001793,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','6c6e6d9f-9b69-4f81-9951-0046366f5792','N','N',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001040,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,36,'N','N',150,'Y',1001794,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','65929e90-3d05-48c6-9661-23ac30eb098b','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1001041,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,7,'N','N',160,'Y',1001795,'N','Date when the payment is due without deductions or discount','LBR','Date when the payment is due','Due Date','6b80d2fb-72dc-4a37-ab08-be3625405b94','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1001042,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',170,'Y',1001796,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','d22c2779-52cb-45d2-875c-7c2ed997e2a0','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1001043,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,10,'N','N',180,'Y',1001797,'N','The Partner address indicates the location of a Business Partner','LBR','Identifies the (ship to) address for this Business Partner','Partner Location','816170a9-d209-434e-9e3f-0b4895505807','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1001044,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',190,'Y',1001798,'N','LBR','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)','843bb517-ae7b-40aa-9230-98976e2707d1','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1001045,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',200,'Y',1001799,'N','The Guarantor (Partner) address indicates the location of a Business Partner','LBR','Identifies the address for this guarantor (Business Partner)','Guarantor (Partner) Location','9c8c9c28-3493-4e4e-b022-764cf9174687','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1001046,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:05:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',210,'Y',1001800,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','b3bf235c-68bb-47a3-8f61-3e458880668d','N','Y',0,0,0,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,2,0,2,1001033,TO_DATE('2014-08-08 15:05:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001800
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001794
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001792
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001791
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001790
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001787
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001781
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001782
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001783
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001795
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001796
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001797
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001798
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001799
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 8, 2014 3:08:06 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 8, 2014 3:11:02 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-08 15:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001787
;

-- Aug 8, 2014 3:11:47 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-08-08 15:11:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001781
;

-- Aug 8, 2014 3:12:14 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-08 15:12:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001784
;

-- Aug 8, 2014 3:12:55 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-08 15:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001783
;

-- Aug 8, 2014 3:13:55 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-08 15:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001796
;

-- Aug 8, 2014 3:14:07 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsCentrallyMaintained='N', XPosition=4,Updated=TO_DATE('2014-08-08 15:14:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001797
;

-- Aug 8, 2014 3:14:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-08 15:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001799
;

-- Aug 8, 2014 3:30:35 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000027,'Y','N','N','LBR','N','Bank Collections','7f120301-866b-498f-a699-932faba2224b','Y',0,TO_DATE('2014-08-08 15:30:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-08 15:30:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:30:35 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000027, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000027)
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 8, 2014 3:30:43 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 8, 2014 3:30:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 8, 2014 3:30:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 8, 2014 3:31:47 PM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000021,1000028,'N','Y','N','LBR','Y','Brazilian Bank Collection',NULL,'e8ac3f11-a5ab-410c-8246-a1a46628ecde','W','Y',0,TO_DATE('2014-08-08 15:31:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-08 15:31:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:31:47 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000028, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000028)
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 8, 2014 3:31:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 8, 2014 3:31:59 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 8, 2014 3:35:59 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-08-08 15:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001788
;

-- Aug 8, 2014 3:38:18 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-08 15:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001786
;

-- Aug 8, 2014 3:42:39 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_Guarantor_ID@ > 0',Updated=TO_DATE('2014-08-08 15:42:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001799
;

-- Aug 8, 2014 3:49:17 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001047,'Y','N','N',0,'N',22,'Y','N','N','Y','18f51ed7-99e0-4cfc-a1cd-3e659226ade9','Y','C_Invoice_ID','Invoice Identifier','The Invoice Document.','Invoice','Y',TO_DATE('2014-08-08 15:49:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 15:49:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1008,30,1000053,0,'LBR')
;

-- Aug 8, 2014 3:49:24 PM BRT
UPDATE AD_Column SET FKConstraintName='CInvoice_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 15:49:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001047
;

-- Aug 8, 2014 3:49:24 PM BRT
ALTER TABLE LBR_Boleto ADD C_Invoice_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 3:49:24 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CInvoice_LBRBoleto FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 3:53:15 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_InvoicePaySchedule.C_Invoice_ID=@C_Invoice_ID@ AND C_C_InvoicePaySchedule.IsActive=''Y''',1000011,'LBR','LBR_C_InvoicePaySchedule of Invoice','S','5026a5a1-0c12-4eec-86ab-773a77001ac6',0,0,TO_DATE('2014-08-08 15:53:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 15:53:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 8, 2014 3:54:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001048,'N','N','N',0,'N',10,'N','N','N','Y','e714417d-36f8-4789-9a87-1f9b17556dd2','Y','C_InvoicePaySchedule_ID','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.','Invoice Payment Schedule','Y',TO_DATE('2014-08-08 15:54:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 15:54:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1995,19,1000053,1000011,0,'LBR')
;

-- Aug 8, 2014 3:54:13 PM BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 15:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001048
;

-- Aug 8, 2014 3:54:13 PM BRT
ALTER TABLE LBR_Boleto ADD C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 3:54:13 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CInvoicePaySchedule_LBRBoleto FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 3:55:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',170,'Y',1001801,'N','The Invoice Document.','LBR','Invoice Identifier','Invoice','7ba534c4-cf19-4e0e-b30e-93bdb3f6f28c','N','Y',0,0,0,TO_DATE('2014-08-08 15:55:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,0,2,1001047,TO_DATE('2014-08-08 15:55:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:55:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,10,'N','N',180,'Y',1001802,'N','The Invoice Payment Schedule determines when partial payments are due.','LBR','Invoice Payment Schedule','Invoice Payment Schedule','ce012a43-b045-47b2-985a-02c8acc7ea8b','N','Y',0,0,0,TO_DATE('2014-08-08 15:55:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,1001048,TO_DATE('2014-08-08 15:55:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001801
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001802
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 8, 2014 3:55:59 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 8, 2014 3:56:29 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-08-08 15:56:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001801
;

-- Aug 8, 2014 3:56:50 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=104,Updated=TO_DATE('2014-08-08 15:56:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001802
;

-- Aug 8, 2014 4:00:32 PM BRT
UPDATE AD_Column SET FKConstraintType='S',Updated=TO_DATE('2014-08-08 16:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001048
;

-- Aug 8, 2014 4:00:38 PM BRT
ALTER TABLE LBR_Boleto MODIFY C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 4:00:38 PM BRT
ALTER TABLE LBR_Boleto DROP CONSTRAINT cinvoicepayschedule_lbrboleto
;

-- Aug 8, 2014 4:00:38 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CInvoicePaySchedule_LBRBoleto FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 4:02:08 PM BRT
UPDATE AD_Val_Rule SET Code='C_InvoicePaySchedule.C_Invoice_ID=@C_Invoice_ID@ AND C_InvoicePaySchedule.IsActive=''Y''',Updated=TO_DATE('2014-08-08 16:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000011
;

-- Aug 8, 2014 4:18:30 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='Y',Updated=TO_DATE('2014-08-08 16:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001787
;

-- Aug 8, 2014 4:23:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001049,'Y','N','Y',0,'N',22,'N','N','N','Y','b430c2a6-ca4d-4af2-8812-66c070be79b6','Y','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank','Y',TO_DATE('2014-08-08 16:23:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:23:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',835,19,1000053,0,'LBR')
;

-- Aug 8, 2014 4:23:44 PM BRT
UPDATE AD_Column SET FKConstraintName='CBank_LBRBoleto', FKConstraintType='C',Updated=TO_DATE('2014-08-08 16:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001049
;

-- Aug 8, 2014 4:23:44 PM BRT
ALTER TABLE LBR_Boleto ADD C_Bank_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 4:23:44 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBank_LBRBoleto FOREIGN KEY (C_Bank_ID) REFERENCES c_bank(c_bank_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 4:26:19 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BankAccount.C_Bank_ID=@C_Bank_ID@ AND C_BankAccount.IsActive=''Y''',1000012,'LBR','LBR_C_BankAccount of Bank','S','70c2bad3-ea00-4e5f-94de-0a53d0a143e0',0,0,TO_DATE('2014-08-08 16:26:19','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 16:26:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 8, 2014 4:26:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001050,'Y','N','N',0,'N',22,'N','N','N','Y','8266f009-e4f0-4848-9185-3da0f70251eb','Y','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2014-08-08 16:26:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:26:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',836,19,1000053,1000012,0,'LBR')
;

-- Aug 8, 2014 4:26:38 PM BRT
UPDATE AD_Column SET FKConstraintName='CBankAccount_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 16:26:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001050
;

-- Aug 8, 2014 4:26:38 PM BRT
ALTER TABLE LBR_Boleto ADD C_BankAccount_ID NUMBER(10) NOT NULL
;

-- Aug 8, 2014 4:26:38 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBankAccount_LBRBoleto FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 4:30:19 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CorrespBank_ID',1000313,'The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank','Correspondent Bank','Correspondent Bank','1fa325b2-18be-4416-98aa-026e1e6f8078',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 16:30:19','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 16:30:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:31:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001051,'N','N','N',0,'N',22,'N','N','N','Y','a35c4634-1d22-4e32-9e54-3ee252edec7f','Y','LBR_CorrespBank_ID','Correspondent Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank','Y',TO_DATE('2014-08-08 16:31:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:31:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000313,18,52001,1000053,0,'LBR')
;

-- Aug 8, 2014 4:31:51 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCorrespBank_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2014-08-08 16:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001051
;

-- Aug 8, 2014 4:31:51 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_CorrespBank_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2014 4:31:51 PM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBRCorrespBank_LBRBoleto FOREIGN KEY (LBR_CorrespBank_ID) REFERENCES c_bank(c_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 8, 2014 4:36:15 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NumberInBank',1000314,'Number in the Bank','Number in the Bank','7c0d141d-347c-4780-8939-4d68e20a6078',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 16:36:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 16:36:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:36:50 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NumberInCorrespBank',1000315,'Number in the Correspondent Bank','Number in the Correspondent Bank','d897d9b0-b014-47f0-9e01-1e2767f18dfc',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 16:36:50','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 16:36:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:38:09 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001052,'N','N','N',0,'N',20,'N','N','N','Y','8d7c86fb-c914-41e6-8fd0-3e59162992b1','Y','LBR_NumberInBank','Number in the Bank','Y',TO_DATE('2014-08-08 16:38:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:38:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000314,10,1000053,0,'LBR')
;

-- Aug 8, 2014 4:38:12 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_NumberInBank NVARCHAR2(20) DEFAULT NULL 
;

-- Aug 8, 2014 4:38:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001053,'N','N','N',0,'N',20,'N','N','N','Y','ceb9c790-eaa4-44e9-aeee-8aa51d507d7e','Y','LBR_NumberInCorrespBank','Number in the Correspondent Bank','Y',TO_DATE('2014-08-08 16:38:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:38:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000315,10,1000053,0,'LBR')
;

-- Aug 8, 2014 4:38:46 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_NumberInCorrespBank NVARCHAR2(20) DEFAULT NULL 
;

-- Aug 8, 2014 4:39:12 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NumberInOrg',1000316,'Number in the Org','Number in the Org','54416fa1-1488-49ec-9fc9-ed59089c045e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-08 16:39:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-08 16:39:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:39:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001054,'Y','N','N',0,'N',15,'N','N','N','Y','a585d5f9-576d-4745-bff9-592d2a26f1ac','Y','LBR_NumberInOrg','Number in the Org','Y',TO_DATE('2014-08-08 16:39:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-08 16:39:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000316,10,1000053,0,'LBR')
;

-- Aug 8, 2014 4:39:54 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_NumberInOrg NVARCHAR2(15) NOT NULL
;

-- Aug 8, 2014 4:42:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',190,'Y',1001803,'N','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','LBR','Bank','Bank','debab8c0-be27-4532-bec9-b37d6e2a1fe7','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,0,2,1001049,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:42:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',200,'Y',1001804,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','2d2ab62b-ed25-47d0-bad5-f17934020eb4','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,0,2,1001050,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:42:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',210,'Y',1001805,'N','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','LBR','Correspondent Bank','Correspondent Bank','aa6c016f-2613-4510-afab-8a1098955251','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,0,2,1001051,TO_DATE('2014-08-08 16:42:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:42:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,20,'N','N',220,'Y',1001806,'N','LBR','Number in the Bank','93bd3c0d-4944-46aa-9081-af596388371f','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,0,2,1001052,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:42:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,20,'N','N',230,'Y',1001807,'N','LBR','Number in the Correspondent Bank','5aba3d0e-c55a-4c73-9b75-4aeaef0b68a6','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,0,2,1001053,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:42:14 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,15,'N','N',240,'Y',1001808,'N','LBR','Number in the Org','c782ab75-1b71-4b90-99e1-f52c8e7bde46','N','Y',0,0,0,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,0,2,1001054,TO_DATE('2014-08-08 16:42:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001801
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001802
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001799
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001803
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001804
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001806
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001808
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001805
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001807
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 8, 2014 4:43:50 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 8, 2014 4:45:38 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Bank (LBR)','f165a339-91c1-4af9-8381-0b39b364c605',1000018,0,TO_DATE('2014-08-08 16:45:38','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-08 16:45:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 8, 2014 4:45:54 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:45:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001803
;

-- Aug 8, 2014 4:46:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:46:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001804
;

-- Aug 8, 2014 4:46:46 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001806
;

-- Aug 8, 2014 4:46:59 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:46:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001808
;

-- Aug 8, 2014 4:47:14 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001805
;

-- Aug 8, 2014 4:47:28 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-08 16:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001807
;

-- Aug 8, 2014 5:00:13 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-08 17:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001788
;

-- Aug 8, 2014 5:00:23 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-08 17:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001786
;

-- Aug 8, 2014 5:00:29 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-08 17:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001785
;

-- Aug 8, 2014 5:00:38 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-08 17:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001789
;

-- Aug 8, 2014 5:09:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_CorrespBank_ID@ > 0',Updated=TO_DATE('2014-08-08 17:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001807
;

-- Aug 11, 2014 11:14:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001055,'N','N','N',0,'N',22,'N','N','N','Y','84714c39-c617-4b37-94be-23636ca13085','Y','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio','Y',TO_DATE('2014-08-11 11:14:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 11:14:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000284,19,1000053,0,'LBR')
;

-- Aug 11, 2014 11:14:33 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBankAccountConvenio_LBRBole', FKConstraintType='N',Updated=TO_DATE('2014-08-11 11:14:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001055
;

-- Aug 11, 2014 11:14:33 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_BankAccount_Convenio_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 11, 2014 11:14:33 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBRBankAccountConvenio_LBRBole FOREIGN KEY (LBR_BankAccount_Convenio_ID) REFERENCES lbr_bankaccount_convenio(lbr_bankaccount_convenio_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 11, 2014 11:15:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001056,'N','N','N',0,'N',22,'N','N','N','Y','163b1a25-fdcf-496b-9a46-84e2067fdf23','Y','LBR_BankAccount_Carteira_ID','Defines the Carteira number for a specific bank account','Bank Account Carteira','Y',TO_DATE('2014-08-11 11:15:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 11:15:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000287,19,1000053,0,'LBR')
;

-- Aug 11, 2014 11:15:16 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBankAccountCarteira_LBRBole', FKConstraintType='N',Updated=TO_DATE('2014-08-11 11:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001056
;

-- Aug 11, 2014 11:15:16 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_BankAccount_Carteira_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 11, 2014 11:15:16 AM BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBRBankAccountCarteira_LBRBole FOREIGN KEY (LBR_BankAccount_Carteira_ID) REFERENCES lbr_bankaccount_carteira(lbr_bankaccount_carteira_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 11, 2014 11:15:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001057,'N','N','N',0,'N',1,'N','N','N','Y','872a1468-6f9c-433a-9093-5169fbc0e0c1','Y','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type','Y',TO_DATE('2014-08-11 11:15:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 11:15:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000290,17,1000064,1000053,0,'LBR')
;

-- Aug 11, 2014 11:15:50 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_CarteiraType CHAR(1) DEFAULT NULL 
;

-- Aug 11, 2014 11:20:12 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000073,'LBR_CNAB240Currency','LBR','ec5f7d8c-e50d-41b5-8497-5ae8f4d5dc66','N','L',0,0,TO_DATE('2014-08-11 11:20:12','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-11 11:20:12','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 11, 2014 11:20:31 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000714,1000073,'7895cfe1-45af-43af-8d8d-2b936a948e14','01',TO_DATE('2014-08-11 11:20:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:20:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'01 - Reservado para Uso Futuro')
;

-- Aug 11, 2014 11:20:51 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000715,1000073,'32b0f2d7-289c-438b-b5fa-6aa8db805509','02',TO_DATE('2014-08-11 11:20:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:20:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'02 - Dolar Americano Comercial (Venda)')
;

-- Aug 11, 2014 11:21:07 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000716,1000073,'b7ac12a3-8d79-4def-b86a-c22d5b21fc84','03',TO_DATE('2014-08-11 11:21:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:21:07','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'03 - Dolar Americano Turismo (Venda)')
;

-- Aug 11, 2014 11:21:23 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000717,1000073,'6f26e131-ae45-4840-9415-ad83c41f7c4d','04',TO_DATE('2014-08-11 11:21:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:21:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'04 - ITRD')
;

-- Aug 11, 2014 11:21:37 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000718,1000073,'1ff27e4d-8392-4273-bf8f-37e84e749e5f','05',TO_DATE('2014-08-11 11:21:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:21:37','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'05 - IDTR')
;

-- Aug 11, 2014 11:21:56 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000719,1000073,'93723e6a-ea30-4c91-b7e5-3b2cd0be2a83','06',TO_DATE('2014-08-11 11:21:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:21:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'06 - UFIR Diaria')
;

-- Aug 11, 2014 11:22:10 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000720,1000073,'1a9798fc-ffb8-460c-8471-4b037262dcf2','07',TO_DATE('2014-08-11 11:22:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:22:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'07 - UFIR Mensal')
;

-- Aug 11, 2014 11:22:30 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000721,1000073,'51bb749c-0f49-4d6a-aa19-5a8a90e943c8','08',TO_DATE('2014-08-11 11:22:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:22:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'08 - FAJ-TR')
;

-- Aug 11, 2014 11:22:41 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000722,1000073,'a7b409a8-93d5-48d3-8b9a-ea4893de9bfe','09',TO_DATE('2014-08-11 11:22:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:22:41','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'09 - Real')
;

-- Aug 11, 2014 11:22:54 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000723,1000073,'22ef8fab-d700-40f3-8514-26bc9291865f','10',TO_DATE('2014-08-11 11:22:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:22:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'10 - TR')
;

-- Aug 11, 2014 11:23:09 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000724,1000073,'1bf53aba-b328-41d4-abb2-5e3208855e79','11',TO_DATE('2014-08-11 11:23:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:23:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'11 - IGPM')
;

-- Aug 11, 2014 11:23:21 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000725,1000073,'4e2b1154-570f-437d-a70a-d913cb6acb9b','12',TO_DATE('2014-08-11 11:23:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:23:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'12 - CDI')
;

-- Aug 11, 2014 11:23:40 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000726,1000073,'1e7daff8-acc0-46d5-8299-797e02c52174','13',TO_DATE('2014-08-11 11:23:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:23:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'13 - Percentual do CDI')
;

-- Aug 11, 2014 11:23:50 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000727,1000073,'8817c720-841b-488c-93bb-864324f60ba9','14',TO_DATE('2014-08-11 11:23:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 11:23:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'14 - Euro')
;

-- Aug 11, 2014 11:26:49 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNAB240Currency',1000317,'Currency used for CNAB 240','Currency','Currency','85b4696f-02a5-48ff-b79c-6e7d409e9de6',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 11:26:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 11:26:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 11:27:38 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001058,'N','N','N',0,'N',2,'N','N','N','Y','d2e47aa9-41d8-4747-9dcf-1abe1efe5c71','Y','LBR_CNAB240Currency','Currency used for CNAB 240','Currency','Y',TO_DATE('2014-08-11 11:27:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 11:27:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000317,17,1000073,1000053,0,'LBR')
;

-- Aug 11, 2014 11:27:39 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_CNAB240Currency NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 11, 2014 11:30:53 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LoanContractNo',1000318,'Loan Contract No.','Loan Contract No.','0122be00-b50b-4d61-adb0-48a85b8a4ec1',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 11:30:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 11:30:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 11:32:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001059,'N','N','N',0,'N',10,'N','N','N','Y','12e86296-c736-4d5f-8901-d6b405b94141','Y','LBR_LoanContractNo','Loan Contract No.','Y',TO_DATE('2014-08-11 11:32:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 11:32:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000318,10,1000053,0,'LBR')
;

-- Aug 11, 2014 11:32:53 AM BRT
ALTER TABLE LBR_Boleto ADD LBR_LoanContractNo NVARCHAR2(10) DEFAULT NULL 
;

-- Aug 11, 2014 12:01:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',250,'Y',1001809,'N','Defines the Convênio number for a specific bank account','LBR','Bank Account Convênio','a4fb33f6-1e16-4c81-a12c-ca2bea4278f2','N','Y',0,0,0,TO_DATE('2014-08-11 12:01:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,0,2,1001055,TO_DATE('2014-08-11 12:01:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:01:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',260,'Y',1001810,'N','Defines the Carteira number for a specific bank account','LBR','Bank Account Carteira','7162969a-8861-4649-998c-b475055bc99a','N','Y',0,0,0,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,0,2,1001056,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:01:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',270,'Y',1001811,'N','Defines the Carteira type according to Febraban','LBR','Bank Account Carteira Type','870f48e5-03a7-4cf1-b035-a2ecace7ed2c','N','Y',0,0,0,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',310,0,2,1001057,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:01:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,2,'N','N',280,'Y',1001812,'N','Currency used for CNAB 240','LBR','Currency','5b1658a5-8966-436e-a3e7-5b218d62a834','N','Y',0,0,0,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',320,0,2,1001058,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:01:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,10,'N','N',290,'Y',1001813,'N','LBR','Loan Contract No.','93b519b1-0263-4b46-a7d7-37e809eba9dd','N','Y',0,0,0,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',330,0,2,1001059,TO_DATE('2014-08-11 12:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001812
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001813
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001809
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001810
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001811
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 11, 2014 12:02:29 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 11, 2014 12:03:17 PM BRT
UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', XPosition=4,Updated=TO_DATE('2014-08-11 12:03:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001813
;

-- Aug 11, 2014 12:03:29 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-11 12:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001809
;

-- Aug 11, 2014 12:03:56 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:03:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001812
;

-- Aug 11, 2014 12:04:00 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:04:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001813
;

-- Aug 11, 2014 12:04:05 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:04:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001809
;

-- Aug 11, 2014 12:04:12 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:04:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001810
;

-- Aug 11, 2014 12:04:22 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001811
;

-- Aug 11, 2014 12:05:54 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-11 12:05:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001811
;

-- Aug 11, 2014 12:05:58 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-11 12:05:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001810
;

-- Aug 11, 2014 12:20:11 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-08-11 12:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001058
;

-- Aug 11, 2014 12:20:13 PM BRT
ALTER TABLE LBR_Boleto MODIFY LBR_CNAB240Currency NVARCHAR2(2)
;

-- Aug 11, 2014 12:20:13 PM BRT
ALTER TABLE LBR_Boleto MODIFY LBR_CNAB240Currency NOT NULL
;

-- Aug 11, 2014 12:20:41 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-08-11 12:20:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001032
;

-- Aug 11, 2014 12:20:42 PM BRT
ALTER TABLE LBR_Boleto MODIFY GrandTotal NUMBER
;

-- Aug 11, 2014 12:20:42 PM BRT
ALTER TABLE LBR_Boleto MODIFY GrandTotal NOT NULL
;

-- Aug 11, 2014 12:33:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001060,'Y','N','N',0,'N',2,'N','N','N','Y','c4457eaf-79cd-40e2-8d7c-a84e3ddf0672','Y','LBR_CollectionType','Collection Type','Y',TO_DATE('2014-08-11 12:33:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 12:33:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000305,17,1000069,1000053,0,'LBR')
;

-- Aug 11, 2014 12:33:53 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_CollectionType NVARCHAR2(2) NOT NULL
;

-- Aug 11, 2014 12:35:17 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000074,'LBR_CNAB240DocType','LBR','2e65a8a0-6a13-4f4d-be5d-946747a4a1f8','N','L',0,0,TO_DATE('2014-08-11 12:35:17','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-11 12:35:17','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 11, 2014 12:35:31 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000728,1000074,'6b9ff5e6-0884-4240-b494-e9502abaf19e','1',TO_DATE('2014-08-11 12:35:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 12:35:31','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Tradicional')
;

-- Aug 11, 2014 12:35:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000729,1000074,'db911e61-d4d9-4f1c-9c74-89d15649b4a9','2',TO_DATE('2014-08-11 12:35:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 12:35:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Escritural')
;

-- Aug 11, 2014 12:36:58 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNAB240DocType',1000319,'Collection document type, according to Febraban.','Febraban Document Type','Febraban Doc. Type','72e7281b-d16a-42df-abb2-91bfaec42450',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 12:36:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 12:36:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:38:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001061,'Y','N','N',0,'N',1,'N','N','N','Y','06b6df35-0a3d-4800-ab19-da348ba0bdf7','Y','LBR_CNAB240DocType','Collection document type, according to Febraban.','Febraban Document Type','Y',TO_DATE('2014-08-11 12:38:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 12:38:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000319,17,1000074,1000053,0,'LBR')
;

-- Aug 11, 2014 12:38:43 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_CNAB240DocType CHAR(1) NOT NULL
;

-- Aug 11, 2014 12:39:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,2,'N','N',300,'Y',1001814,'N','LBR','Collection Type','3a3116c7-ca6c-4760-99a9-9c2fc87c1f4a','N','Y',0,0,0,TO_DATE('2014-08-11 12:39:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',340,0,2,1001060,TO_DATE('2014-08-11 12:39:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:39:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',310,'Y',1001815,'N','Collection document type, according to Febraban.','LBR','Febraban Document Type','a276ccfb-74a9-49fe-80bf-32451291fade','N','Y',0,0,0,TO_DATE('2014-08-11 12:39:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',350,0,2,1001061,TO_DATE('2014-08-11 12:39:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001814
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001815
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001805
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001807
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001812
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001813
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001809
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001810
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001811
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 11, 2014 12:39:41 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 11, 2014 12:40:04 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:40:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001814
;

-- Aug 11, 2014 12:40:20 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 12:40:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001815
;

-- Aug 11, 2014 12:52:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectionRegType',1000320,'Collection Registration yype in the Bank','Registration Type','Collection Registration Type','Registration Type','871832c8-63f4-4377-9eea-bdb04b8a432c',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 12:52:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 12:52:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:53:20 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000075,'LBR_CollectionRegType','LBR','79d98470-ef14-41a4-b9d8-6fe831b24b37','N','L',0,0,TO_DATE('2014-08-11 12:53:20','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-11 12:53:20','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 11, 2014 12:53:52 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000730,1000075,'42eab788-e5d1-4e48-813d-0bd564824207','1',TO_DATE('2014-08-11 12:53:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 12:53:52','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Com Cadastramento (Cobranca Registrada)')
;

-- Aug 11, 2014 12:54:18 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000731,1000075,'860775c4-b120-41cb-b394-11c8bb9b154a','2',TO_DATE('2014-08-11 12:54:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 12:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Sem Cadastramento (Cobranca sem Registro)')
;

-- Aug 11, 2014 12:55:07 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000732,1000075,'68f18501-ff0f-44a3-91a1-7958fdd09dbe','3',TO_DATE('2014-08-11 12:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 12:55:07','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Com Cadastramento / Recusa Debito Automatico')
;

-- Aug 11, 2014 12:56:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001062,'Y','N','N',0,'N',1,'N','N','N','Y','1dcaab96-caf6-4f37-925a-8f98f80ff794','Y','LBR_CollectionRegType','Collection Registration Type','Collection Registration yype in the Bank','Registration Type','Y',TO_DATE('2014-08-11 12:56:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 12:56:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000320,17,1000075,1000053,0,'LBR')
;

-- Aug 11, 2014 12:56:04 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_CollectionRegType CHAR(1) NOT NULL
;

-- Aug 11, 2014 12:58:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IssueType',1000321,'Responsible for issuing the collection, according to Febraban.','Issue Type','Issue Type','f6350e32-a861-4ea5-8fac-039973a007af',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 12:58:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 12:58:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 12:59:54 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000076,'LBR_CollectionIssueType','LBR','10b3acb6-874b-47c7-baf4-04d75c293451','N','L',0,0,TO_DATE('2014-08-11 12:59:54','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-11 12:59:54','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 11, 2014 1:00:16 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000733,1000076,'5bff3613-d26a-48a4-9e58-6d218c8608bc','1',TO_DATE('2014-08-11 13:00:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:00:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Banco Emite')
;

-- Aug 11, 2014 1:00:35 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000734,1000076,'528bc924-bfb8-417f-99d1-68a5e1ba39c7','2',TO_DATE('2014-08-11 13:00:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:00:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Cliente Emite')
;

-- Aug 11, 2014 1:01:11 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000735,1000076,'266ecd8f-ad17-4faf-ac10-f0bcab323b60','3',TO_DATE('2014-08-11 13:01:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:01:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Banco Pre-emite e Cliente Complementa')
;

-- Aug 11, 2014 1:01:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000736,1000076,'d1b56fb8-ee16-48ca-8c6d-9f3e40d03771','4',TO_DATE('2014-08-11 13:01:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:01:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'4 - Banco Reemite')
;

-- Aug 11, 2014 1:01:48 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000737,1000076,'d735172d-1c8f-4198-8e00-03f752e9a6ab','5',TO_DATE('2014-08-11 13:01:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:01:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'5 - Banco nao Reemite')
;

-- Aug 11, 2014 1:02:09 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000738,1000076,'1f607109-eeb6-4bd4-bb43-261b12c8050b','7',TO_DATE('2014-08-11 13:02:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:02:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'7 - Banco Emitente - Aberta')
;

-- Aug 11, 2014 1:02:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000739,1000076,'29d842a6-f9a9-4a36-9bd4-82e66b2e25e9','8',TO_DATE('2014-08-11 13:02:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:02:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'8 - Banco Emitente - Auto-envelopavel')
;

-- Aug 11, 2014 1:05:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001063,'Y','N','N',0,'N',1,'N','N','N','Y','04dd1df3-b756-4bf6-8ca2-9cfca9f86334','Y','LBR_IssueType','Responsible for issuing the collection, according to Febraban.','Issue Type','Y',TO_DATE('2014-08-11 13:05:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:05:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000321,17,1000076,1000053,0,'LBR')
;

-- Aug 11, 2014 1:05:12 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_IssueType CHAR(1) NOT NULL
;

-- Aug 11, 2014 1:07:17 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DistributionType',1000322,'Responsible for distributing the collection, according to Febraban.','Distribution Type','Distribution Type','7ab4ee45-439e-4073-b290-c11618253a35',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-11 13:07:17','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 13:07:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:07:48 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000077,'LBR_CollectionDistribType','LBR','0a16c309-cfd5-412d-89b0-c51dea993d54','N','L',0,0,TO_DATE('2014-08-11 13:07:48','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-11 13:07:48','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 11, 2014 1:08:08 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000740,1000077,'faf7c936-fd9f-4a94-96bb-339a82f2a0f7','1',TO_DATE('2014-08-11 13:08:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:08:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Banco Distribui')
;

-- Aug 11, 2014 1:08:21 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000741,1000077,'0fc3121f-6067-49e7-9d53-001ff47402dd','2',TO_DATE('2014-08-11 13:08:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:08:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Cliente Distribui')
;

-- Aug 11, 2014 1:08:42 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000742,1000077,'8a87f802-410f-45eb-b42a-5b3f46187c2d','3',TO_DATE('2014-08-11 13:08:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:08:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Banco Envia E-mail')
;

-- Aug 11, 2014 1:08:56 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000743,1000077,'0f6cce31-ccf3-4c04-97e9-7573e3141ed3','4',TO_DATE('2014-08-11 13:08:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 13:08:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'4 - Banco Envia SMS')
;

-- Aug 11, 2014 1:09:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001064,'Y','N','N',0,'N',1,'N','N','N','Y','f6c1e8f5-3dd1-4c60-a505-0800fb3e7344','Y','LBR_DistributionType','Responsible for distributing the collection, according to Febraban.','Distribution Type','Y',TO_DATE('2014-08-11 13:09:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:09:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000322,17,1000077,1000053,0,'LBR')
;

-- Aug 11, 2014 1:09:17 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_DistributionType CHAR(1) NOT NULL
;

-- Aug 11, 2014 1:10:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001065,'Y','N','N',0,'N',1,'N','N','N','Y','ba0ef032-cc78-418a-824b-f429b97d4483','Y','LBR_Accepted','Accepted','Y',TO_DATE('2014-08-11 13:10:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:10:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000306,17,1000070,1000053,0,'LBR')
;

-- Aug 11, 2014 1:10:34 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Accepted CHAR(1) NOT NULL
;

-- Aug 11, 2014 1:11:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001066,'Y','N','N',0,'N',1,'N','N','N','Y','291db370-cdfe-429c-b5df-4fec69053d98','Y','LBR_PartialPayment','Authorize Partial Payment','Y',TO_DATE('2014-08-11 13:11:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:11:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000307,17,1000071,1000053,0,'LBR')
;

-- Aug 11, 2014 1:11:05 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_PartialPayment CHAR(1) NOT NULL
;

-- Aug 11, 2014 1:11:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001067,'N','N','N',0,'N',1,'N','N','N','Y','cfb79a42-c86d-4acb-955c-2cbbc704622e','Y','LBR_DirectDebitNotice','Direct Debit Notice','Y',TO_DATE('2014-08-11 13:11:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:11:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000308,17,1000072,1000053,0,'LBR')
;

-- Aug 11, 2014 1:11:52 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_DirectDebitNotice CHAR(1) DEFAULT NULL 
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',320,'Y',1001816,'N','Collection Registration yype in the Bank','LBR','Collection Registration Type','Registration Type','4ffc8be1-6186-48e5-8eb3-918f1e6fc3e6','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,0,2,1001062,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',330,'Y',1001817,'N','Responsible for issuing the collection, according to Febraban.','LBR','Issue Type','cf0757c9-d876-43db-857d-4f625d250468','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,0,2,1001063,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',340,'Y',1001818,'N','Responsible for distributing the collection, according to Febraban.','LBR','Distribution Type','917dd76b-a6c0-4b13-940c-97defd0c7fa8','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,0,2,1001064,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',350,'Y',1001819,'N','LBR','Accepted','213b1d1e-1434-44a9-ad29-ef192e05ddc4','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,0,2,1001065,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',360,'Y',1001820,'N','LBR','Authorize Partial Payment','d9472943-d907-49ad-8894-ab37ac87338c','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,0,2,1001066,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:12:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',370,'Y',1001821,'N','LBR','Direct Debit Notice','28b7e911-3d6b-4b0e-8c8f-5863828b2217','N','Y',0,0,0,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,0,2,1001067,TO_DATE('2014-08-11 13:12:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001816
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001817
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001818
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001819
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001820
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001821
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001805
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001807
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001812
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001813
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001809
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001810
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001811
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 11, 2014 1:14:35 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 11, 2014 1:15:03 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001816
;

-- Aug 11, 2014 1:15:15 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001817
;

-- Aug 11, 2014 1:15:23 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001818
;

-- Aug 11, 2014 1:15:35 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001819
;

-- Aug 11, 2014 1:15:45 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001820
;

-- Aug 11, 2014 1:15:56 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000018,Updated=TO_DATE('2014-08-11 13:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001821
;

-- Aug 11, 2014 1:26:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001068,'N','N','N',0,'N',22,'N','N','N','Y','4b9d3aaf-5fe7-45d5-be04-3395b868ebfe','Y','WriteOffAmt','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.','Write-off Amount','Y',TO_DATE('2014-08-11 13:26:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:26:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1450,12,1000053,0,'LBR')
;

-- Aug 11, 2014 1:26:32 PM BRT
ALTER TABLE LBR_Boleto ADD WriteOffAmt NUMBER DEFAULT NULL 
;

-- Aug 11, 2014 1:27:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001069,'N','N','N',0,'N',10,'N','N','N','Y','6271ffbb-94aa-4e03-8202-f24e1b9b9f40','Y','LBR_IOFAmt','Defines the IOF Amount','IOF Amount','Y',TO_DATE('2014-08-11 13:27:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 13:27:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000164,12,1000053,0,'LBR')
;

-- Aug 11, 2014 1:27:06 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_IOFAmt NUMBER DEFAULT NULL 
;

-- Aug 11, 2014 1:27:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',380,'Y',1001822,'N','The Write Off Amount indicates the amount to be written off as uncollectible.','LBR','Amount to write-off','Write-off Amount','f9690542-8de0-4899-adbd-630511ec6e8a','N','Y',0,0,0,TO_DATE('2014-08-11 13:27:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',420,0,2,1001068,TO_DATE('2014-08-11 13:27:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:27:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,10,'N','N',390,'Y',1001823,'N','LBR','Defines the IOF Amount','IOF Amount','f044d13d-0b7d-459b-8fdf-79bec6bb601d','N','Y',0,0,0,TO_DATE('2014-08-11 13:27:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,0,2,1001069,TO_DATE('2014-08-11 13:27:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001822
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001823
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- Aug 11, 2014 1:27:50 PM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- Aug 11, 2014 1:28:39 PM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-11 13:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001822
;

-- Aug 11, 2014 1:28:55 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-11 13:28:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001823
;

-- Aug 11, 2014 2:07:30 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000744,183,'e407467a-d521-4c6f-a208-b4b9d945eb97','BBB',TO_DATE('2014-08-11 14:07:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-11 14:07:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Boleto Bancario Brasil')
;

-- Aug 11, 2014 2:08:49 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Description,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_DocType.DocBaseType=''BBB''',1000013,'LBR','C_DocType Boleto','Document Type for Boleto','S','9b524ba6-fccd-45c7-8b1c-2e484b369439',0,0,TO_DATE('2014-08-11 14:08:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 14:08:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 11, 2014 2:09:30 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000013,Updated=TO_DATE('2014-08-11 14:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001023
;

-- Aug 11, 2014 2:33:31 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001070,'N','N','N',0,'N',22,'N','N','N','Y','80fabbba-e8aa-498e-9fa3-929ff7196b83','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Y',TO_DATE('2014-08-11 14:33:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-11 14:33:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000309,19,335,0,'LBR')
;

-- Aug 11, 2014 2:33:34 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRBoleto_CPayment', FKConstraintType='N',Updated=TO_DATE('2014-08-11 14:33:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001070
;

-- Aug 11, 2014 2:33:34 PM BRT
ALTER TABLE C_Payment ADD LBR_Boleto_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 11, 2014 2:33:35 PM BRT
ALTER TABLE C_Payment ADD CONSTRAINT LBRBoleto_CPayment FOREIGN KEY (LBR_Boleto_ID) REFERENCES lbr_boleto(lbr_boleto_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 11, 2014 2:36:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',330,22,'N','N',740,'Y',1001824,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','d7dc314b-72ee-4c06-881e-ab0e2e3b4d4a','N','Y',0,0,0,TO_DATE('2014-08-11 14:36:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',740,0,2,1001070,TO_DATE('2014-08-11 14:36:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001824
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=4133
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=4129
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=8651
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=4131
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=5117
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=5736
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=5737
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=4056
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=200472
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=4363
;

-- Aug 11, 2014 2:38:12 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=4054
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=4027
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=4032
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=4041
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=4036
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=4057
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=4035
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=4037
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=4033
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=4034
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=4023
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=4025
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=4019
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=4026
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=4024
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=6299
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=4021
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=4022
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=4020
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=4055
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=4043
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=4058
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=4042
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=4258
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=4039
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=4053
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=4052
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=200631
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=200630
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=4051
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=4047
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=4049
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=4048
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=200627
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=200625
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=200626
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=200624
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=4362
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=4361
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=6552
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=4044
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=4266
;

-- Aug 11, 2014 2:38:13 PM BRT
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=4040
;

-- Aug 11, 2014 2:43:22 PM BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-08-11 14:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001070
;

-- Aug 11, 2014 2:46:33 PM BRT
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_DATE('2014-08-11 14:46:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001070
;

-- Aug 11, 2014 2:46:46 PM BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-08-11 14:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001070
;

-- Aug 11, 2014 2:55:46 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_Boleto.C_Invoice_ID=@C_Invoice_ID@',1000014,'LBR','LBR_Boleto of Invoice','S','0b8234a7-05c2-486e-ba27-dc79bbdb84a0',0,0,TO_DATE('2014-08-11 14:55:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 14:55:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 11, 2014 2:55:58 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000014,Updated=TO_DATE('2014-08-11 14:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001070
;

-- Aug 11, 2014 3:52:37 PM BRT
INSERT INTO AD_Workflow (Cost,WaitingTime,WorkingTime,AccessLevel,Duration,DurationUnit,IsDefault,IsValid,PublishStatus,Version,QtyBatchSize,IsBetaFunctionality,Yield,WorkflowType,Value,Name,Description,AD_Workflow_UU,Author,DocumentNo,AD_Workflow_ID,UpdatedBy,Updated,Created,CreatedBy,IsActive,AD_Client_ID,EntityType,AD_Table_ID,AD_WF_Node_ID,AD_Org_ID) VALUES (0,0,0,'1',1,'D','N','Y','R',0,1,'N',100,'P','Process_Boleto','Process_Boleto','(Standard Process Boleto)','2e858aff-d17e-4840-aba5-40cc854fd5a9','iDempiereLBR','10000000',1000001,0,TO_DATE('2014-08-11 15:52:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:52:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,'LBR',1000053,1000003,0)
;

-- Aug 11, 2014 3:53:51 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,Limit,WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,Action,Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType,Created,Updated) VALUES (1000004,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocAuto)','(DocAuto)','f817d319-ac9a-4a27-a713-c9834b70d0c7',0,1000001,0,0,0,'Y','--',0,'LBR',TO_DATE('2014-08-11 15:53:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:53:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:55:04 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,Limit,WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,Action,Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType,Created,Updated) VALUES (1000005,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocComplete)','(DocComplete)','c9de7e6e-7ff7-4942-933f-7513021fcaf5',0,1000001,0,0,0,'Y','CO',0,'LBR',TO_DATE('2014-08-11 15:55:04','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:55:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:55:46 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,Limit,WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,Action,Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType,Created,Updated) VALUES (1000006,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','D','(Standard Node)','(DocPrepare)','(DocPrepare)','7e9d3a95-c3c5-4817-9c0b-2e7efea158ac',0,1000001,0,0,0,'Y','PR',0,'LBR',TO_DATE('2014-08-11 15:55:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:55:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:56:20 PM BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Cost,YPosition,OverlapUnits,UnitsCycles,Yield,IsMilestone,WaitTime,Priority,Duration,IsCentrallyMaintained,JoinElement,Limit,WorkingTime,XPosition,WaitingTime,IsSubcontracting,SplitElement,Action,Description,Value,Name,AD_WF_Node_UU,DynPriorityChange,AD_Workflow_ID,CreatedBy,AD_Org_ID,UpdatedBy,IsActive,DocAction,AD_Client_ID,EntityType,Created,Updated) VALUES (1000007,0,0,0,0,100,'N',0,0,0,'Y','X',0,0,0,0,'N','X','Z','(Standard Node)','(Start)','(Start)','411896ee-e17b-4092-892e-878e6af4e0df',0,1000001,0,0,0,'Y','CO',0,'LBR',TO_DATE('2014-08-11 15:56:20','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:56:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:57:30 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,IsActive,AD_Client_ID,EntityType,AD_Org_ID,Created,Updated) VALUES (10,'Y',1000007,1000003,1000006,'(Standard Approval)','3090ea1e-41d9-4a5c-a3ef-81a2307d18f3',0,0,'Y',0,'LBR',0,TO_DATE('2014-08-11 15:57:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:57:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:57:56 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,IsActive,AD_Client_ID,EntityType,AD_Org_ID,Created,Updated) VALUES (100,'N',1000007,1000004,1000004,'(Standard Transition)','3bb6f1f1-26d0-4b23-8391-7c3ef6d97a31',0,0,'Y',0,'LBR',0,TO_DATE('2014-08-11 15:57:56','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:57:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:58:47 PM BRT
INSERT INTO AD_WF_NodeNext (SeqNo,IsStdUserWorkflow,AD_WF_Node_ID,AD_WF_NodeNext_ID,AD_WF_Next_ID,Description,AD_WF_NodeNext_UU,UpdatedBy,CreatedBy,IsActive,AD_Client_ID,EntityType,AD_Org_ID,Created,Updated) VALUES (100,'N',1000006,1000005,1000005,'(Standard Transition)','a14e1c49-02ea-44d7-b345-a78882d77ee1',0,0,'Y',0,'LBR',0,TO_DATE('2014-08-11 15:58:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 15:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 11, 2014 3:59:25 PM BRT
UPDATE AD_Workflow SET IsValid='N', AD_WF_Node_ID=NULL,Updated=TO_DATE('2014-08-11 15:59:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=1000001
;

-- Aug 11, 2014 3:59:30 PM BRT
UPDATE AD_Workflow SET IsValid='Y', AD_WF_Node_ID=1000007,Updated=TO_DATE('2014-08-11 15:59:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=1000001
;

-- Aug 11, 2014 4:01:11 PM BRT
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Name,AD_Workflow_ID,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000010,'N','N','b2285060-9f5a-4690-ad8e-3cc074cabf9d','1','N','N',0,0,'Y','LBR','Process Boleto',1000001,0,0,'Y',0,'LBR_Boleto Process',0,TO_DATE('2014-08-11 16:01:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-11 16:01:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:51:26 AM BRT
UPDATE AD_Table SET AD_Window_ID=1000021,Updated=TO_DATE('2014-08-12 08:51:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000053
;

-- Aug 12, 2014 8:57:06 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,WhereClause,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000021,20,'N','N','N','N','C_Payment.LBR_Boleto_ID=@LBR_Boleto_ID@','Y','N','N',1,'6380c355-6e4d-44b1-99c6-86cc2409dcde','LBR','Payments','Brazilian Bank Collection Payments',1000097,0,0,TO_DATE('2014-08-12 08:57:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,335,'B',TO_DATE('2014-08-12 08:57:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001825,'N','The user defined element displays the optional elements that have been defined for this account combination.','LBR','User defined list element #2','User Element List 2','fd47af6b-7075-40d4-91d0-54df93e3bfe0','N','N',0,0,0,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',9567,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001826,'N','The Authorization Code indicates the code returned from the electronic transmission.','LBR','Authorization Code Delayed Capture returned','Authorization Code (DC)','a5d285ef-78fc-45ab-9331-016251e6313e','N','N',0,0,0,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',8981,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001827,'N','The Credit Card number indicates the number on the credit card, without blanks or spaces.','LBR','Credit Card Number ','Number','dc55f349-6cf3-472c-8631-5e5908ac59f0','N','N',0,0,0,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3870,TO_DATE('2014-08-12 08:58:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001828,'N','The Social Security number being used as identification.','LBR','Payment Identification - Social Security No','Social Security No','a64123ab-7eeb-40ab-b998-a422d26bf4cd','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5028,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,11,'N','N',0,'Y',1001829,'N','The Expiry Month indicates the expiry month for this credit card.','LBR','Expiry Month','Exp. Month','17789f2a-fae3-4ad0-ac27-d334cbd1d349','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3871,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001830,'N','Activities indicate tasks that are performed and used to utilize Activity based Costing','LBR','Business Activity','Activity','f1371087-7207-411e-bf8f-c39278a4aa70','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',9566,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001831,'N','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','LBR','Bank Routing Number','Routing No','97fcf21f-69eb-4897-b41e-488da5a27bbe','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3873,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'N','N',0,'Y',1001832,'N','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','LBR','Order','Order','48e27103-115a-4670-898e-7114830b9024','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',12925,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:45 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001833,'N','The Tender Type indicates the method of payment (ACH or Direct Deposit, Credit Card, Check, Direct Debit)','LBR','Method of Payment','Tender type','a01a24e5-e804-4821-838e-e11d3a23a0e6','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5046,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001834,'N','The Voice Authorization Code indicates the code received from the Credit Card Company.','LBR','Voice Authorization Code from credit card company','Voice authorization code','86fecd33-86f8-4280-a79a-883f2428d484','N','N',0,0,0,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5030,TO_DATE('2014-08-12 08:58:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001835,'N','A Project allows you to track and control internal or external activities.','LBR','Financial Project','Project','0f406c70-ab2f-49f7-953f-59ad9a5c4463','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',8554,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001836,'N','The Transaction Type indicates the type of transaction to be submitted to the Credit Card Company.','LBR','Type of credit card transaction','Transaction Type','62792516-2df7-448e-b599-cb5f2e2102c3','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5044,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,11,'N','N',0,'Y',1001837,'N','The Expiry Year indicates the expiry year for this credit card.','LBR','Expiry Year','Exp. Year','ba573e35-bc65-4862-9897-b82442b78569','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3872,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001838,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','4e0be82f-b3bf-49e3-9e09-2277e06f4c15','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',3864,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001839,'N','LBR','This is a sales transaction (receipt)','Receipt','69cd0690-d4e9-4bf6-ae93-17e01c703788','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',6216,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001840,'N','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','LBR','Over-Payment (unallocated) or Under-Payment (partial payment)','Over/Under Payment','0d95ccbc-4687-4df1-a1a1-6c1b33b6f64d','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',7035,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001841,'N','The Approved checkbox indicates if this document requires approval before it can be processed.','LBR','Indicates if this document requires approval','Approved','751f91cf-1de2-42b0-88be-6809cb4519b9','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',3875,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001842,'N','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','LBR','Indicates if the payment has been allocated','Allocated','25bbb84d-cf3e-4cc6-9997-737334af95b2','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',5400,TO_DATE('2014-08-12 08:58:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,23,'N','N',0,'Y',1001843,'N','The Online Processing indicates if the payment can be processed online.','LBR','This payment can be processed online','Online Processing','f07b5957-5e38-4555-a69d-73925ca939c2','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',5356,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,23,'N','N',0,'Y',1001844,'N','You find the current status in the Document Status field. The options are listed in a popup','LBR','The targeted status of the document','Document Action','aee6b1c1-1772-4ffd-9d76-228e88f1b9f6','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',5497,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001845,'N','The user defined element displays the optional elements that have been defined for this account combination.','LBR','User defined list element #1','User Element List 1','b93754d8-b155-4e3f-b00f-808ce8cbcf5e','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',9563,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,23,'N','N',0,'Y',1001846,'N','LBR','Process Now','dd651c53-968e-44e4-8440-18f208b0877c','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',3877,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001847,'N','The Credit Card Verification Code was matched','LBR','Credit Card Verification Code Match','CVV Match','be26b31c-2e34-434f-ace3-210eb39d82d8','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',8982,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001848,'N','Swiped information for Credit Card Presence Transactions','LBR','Track 1 and 2 of the Credit Card','Swipe','64c0de67-d1ac-4ca4-b5c3-ed92b5ce4459','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',8985,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:47 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001849,'N','The Address Verified indicates if the address has been verified by the Credit Card Company.','LBR','This address has been verified','Address verified','da0d0a94-0240-4c29-a2bb-6f40d21cca5a','N','N',0,0,0,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5039,TO_DATE('2014-08-12 08:58:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'N','N',0,'Y',1001850,'N','The Tax Amount displays the total tax amount for a document.','LBR','Tax Amount for a document','Tax Amount','9b5e121f-ae4c-46a1-9a3d-6df33e52438c','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5034,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001851,'N','The Info indicates any response information returned from the Credit Card Company.','LBR','Response info','Info','72c54694-174e-48b2-b1fb-bce58c64d3df','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5041,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001852,'N','The Response Result indicates the result of the transmission to the Credit Card Company.','LBR','Result of transmission','Result','4977f1a4-7114-4eb3-b9cb-554394ac650c','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5036,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,40,'N','N',0,'Y',1001853,'N','The State of the Credit Card or Account holder','LBR','State of the Credit Card or Account holder','Account State','30c92c6d-4a91-45ff-ad1e-5118634da9d5','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5053,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,5,'N','N',0,'Y',1001854,'N','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','LBR','Credit Card Verification code on credit card','Verification Code','c65f5186-4be5-4d34-aebf-59368cd3af17','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5047,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001855,'N','Electronic Fund Transfer Payment Batch.','LBR','Payment batch for EFT','Payment Batch','dd19934d-0bfa-45e9-8a65-4fbacea85570','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5300,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:48 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001856,'N','The Zip Verified indicates if the zip code has been verified by the Credit Card Company.','LBR','The Zip Code has been verified','Zip verified','48af2ce8-d025-43c4-9af5-f9010ad04496','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5040,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001857,'N','The Street Address of the Credit Card or Account holder.','LBR','Street address of the Credit Card or Account holder','Account Street','2e902f4e-8e30-45ef-8566-2a057bcad6c9','N','N',0,0,0,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5051,TO_DATE('2014-08-12 08:58:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001858,'N','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','LBR','Marketing Campaign','Campaign','add6ea38-55af-4b5e-88ce-d5f231375737','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',9564,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001859,'N','The Zip Code of the Credit Card or Account Holder.','LBR','Zip Code of the Credit Card or Account Holder','Account Zip/Postal','78061741-2138-4524-890b-6de2058a3fba','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5026,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001860,'N','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','LBR','Accounting Date','Account Date','f574ec2a-571a-4159-9635-fd1a509714a8','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',12128,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001861,'N','The Micr number is the combination of the bank routing number, account number and check number','LBR','Combination of routing no, account and check no','Micr','434f8317-3b8b-4ad0-ac9f-6a298220e863','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5048,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001862,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','afc9d9e9-dd1c-4555-8256-fafcdf4dd19a','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',12127,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001863,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','9774209f-dc0b-4b49-97a8-ffaf7670fb53','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',3878,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',0,'Y',1001864,'N','LBR','Payment is reconciled with bank statement','Reconciled','792ed61d-52b2-4932-bb2d-caae7f51446f','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',3879,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,23,'N','N',0,'Y',1001865,'N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','LBR','Posting status','Posted','ac02825c-053a-486e-a992-0bb704a9b0c6','N','N','N',0,0,0,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',5042,TO_DATE('2014-08-12 08:58:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,40,'N','N',0,'Y',1001866,'N','Account Country Name','LBR','Country','Account Country','bda070bc-06b8-4473-9ef6-e8d82b5ea0a2','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',8213,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001867,'N','The Account City indicates the City of the Credit Card or Account holder','LBR','City or the Credit Card or Account Holder','Account City','5cf1e64b-664b-4fe5-9a81-5a2c9c4e1310','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5052,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,40,'N','N',0,'Y',1001868,'N','The EMail Address indicates the EMail address off the Credit Card or Account holder.','LBR','Email Address','Account EMail','16072d11-02f7-47f7-b063-08868a1a4410','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5029,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001869,'N','The Name of the Credit Card or Account holder.','LBR','Name on Credit Card or Account holder','Account Name','6d6c1426-57ad-4281-a946-581b64f7d0cc','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5050,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001870,'N','The PO Number indicates the number assigned to a purchase order','LBR','Purchase Order Number','PO Number','866476a7-2372-4cb4-a013-00d80b4c64f4','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5032,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,60,'N','N',0,'Y',1001871,'N','The Response Message indicates the message returned from the Credit Card Company as the result of a transmission','LBR','Response message','Response Message','b3de8edb-cdc6-4c0b-a090-61f799737669','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,5,1,'N','N',5037,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001872,'N','The Original Transaction ID is used for reversing transactions and indicates the transaction that has been reversed.','LBR','Original Transaction ID','Original Transaction ID','f6f3176d-5d97-44dd-9b26-826d4f612c69','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5031,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001873,'N','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','LBR','Additional document charges','Charge','e634bca9-5cd6-4153-b3db-3e50ff134908','N','N',0,0,0,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',8984,TO_DATE('2014-08-12 08:58:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001874,'N','The Account Number indicates the Number assigned to this bank account. ','LBR','Account Number','Account No','f90cb6f3-a117-4747-9b88-7b9a2a673bfa','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3874,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001875,'N','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','LBR','Performing or initiating organization','Trx Organization','5d5ab850-c4b0-4935-ac43-96a48345fe31','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',9565,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001876,'N','The Driver''s License being used as identification.','LBR','Payment Identification - Driver License','Driver License','14982998-cab0-4544-b9da-c9724ab1d936','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5027,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001877,'N','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','LBR','Payment reference','Reference','a206cb6d-ebb8-41e9-80d0-25b5567b1c17','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5035,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'N','N',0,'Y',1001878,'N','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','LBR','Over-Payment (unallocated) or Under-Payment (partial payment) Amount','Over/Under Payment','f77b3b28-0bb4-4f1f-8ddf-2853bfd42af2','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',7034,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001879,'N','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','LBR','Credit Card (Visa, MC, AmEx)','Credit Card','4bd647a6-a799-44e2-9429-fd0237c90d70','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',3869,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001880,'N','The Partner Bank Account identifies the bank account to be used for this Business Partner','LBR','Bank Account of the Business Partner','Partner Bank Account','2baafd98-75fb-4b78-8518-aaf71d1f62dd','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5298,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'N','N',0,'Y',1001881,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','781db6f4-06db-4cb1-a5a7-e1ceba376433','N','N',0,0,0,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5398,TO_DATE('2014-08-12 08:58:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',0,'Y',1001882,'N','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','LBR','Currency Conversion Rate Type','Currency Type','fdef8c65-8de9-4b26-b76b-889afeeec69c','N','N',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',10265,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,11,'N','N',0,'Y',1001883,'N','The Charge Amount indicates the amount for an additional charge.','LBR','Charge Amount','Charge amount','61da3699-3867-4a23-8a47-40e36a233053','N','N',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',8980,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001884,'N','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','LBR','Payment Reference Delayed Capture','Reference (DC)','35e64595-12e0-4be5-9a10-afc0ce4329a1','N','N',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',8983,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001885,'N','The Authorization Code indicates the code returned from the electronic transmission.','LBR','Authorization Code returned','Authorization Code','97c70cba-c31e-4b29-a875-4ae7e947e486','N','N',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5038,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,20,'N','N',0,'Y',1001886,'N','The Check Number indicates the number on the check.','LBR','Check Number','Check No','043cfb46-2630-4c9c-894c-9bdc89da31aa','N','N',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',5049,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',10,'Y',1001887,'N','Payments not allocated to an invoice with a charge are posted to Unallocated Payments. When setting this flag, the payment is posted to the Customer or Vendor Prepayment account.','LBR','The Payment/Receipt is a Prepayment','Prepayment','bd4602c4-daec-44bf-bcec-374258473031','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,2,'N',0,2,1,'N','N',13045,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:52 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',20,'Y',1001888,'Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','57647633-2a78-4fa8-8d06-a86f7dc70228','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',20,1,'N',0,2,1,'N','N',3862,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'Y','N',30,'Y',1001889,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','77e87d3b-8f5e-4405-af1f-fa9675036e8c','N','Y','Y',0,0,0,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,4,'N',0,2,1,'N','N',3863,TO_DATE('2014-08-12 08:58:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (1,'N',1000097,14,'N','N',40,'Y',1001890,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','6e164915-27be-4094-9823-357a0019457a','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',5302,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (2,'N',1000097,20,'Y','N',50,'Y',1001891,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','a593bdaa-eb72-477f-a337-1896808f910e','N','Y','N',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',5401,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',60,'Y',1001892,'N','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','LBR','The current status of the document','Document Status','fb6e38e3-d841-43b3-ae6b-1f858fb2ee37','N','Y','N',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',5496,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'Y','N',70,'Y',1001893,'N','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.','LBR','This is a Self-Service entry or this entry can be changed via Self-Service','Self-Service','ce9beb0f-0db4-4264-b5d1-b07019ca3eee','N','Y','N',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,5,'N',0,2,1,'N','N',8775,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',80,'Y',1001894,'N','The Transaction Date indicates the date of the transaction.','LBR','Transaction Date','Transaction Date','f70f4c58-9f39-44a8-8eec-4b4006929297','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',5399,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',90,'Y',1001895,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','82e2195b-6474-4047-b4eb-d9aa9c7b2c50','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',3880,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'Y','N',100,'Y',1001896,'N','The Online Access check box indicates if the application can be accessed via the web. ','LBR','Can be accessed online ','Online Access','5549eec1-73a3-4852-be04-4cd206b77637','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,5,'N',0,2,1,'N','N',5495,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:53 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',110,'Y',1001897,'N','Indicates the Currency to be used when processing or reporting on this record','LBR','The Currency for this record','Currency','4e8ec09b-b511-4422-8173-121369418be8','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',5299,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'Y','N',120,'Y',1001898,'N','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','LBR','Amount being paid','Payment amount','d7108571-a140-489d-9116-b1396377b7ea','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',5303,TO_DATE('2014-08-12 08:58:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'N','N',130,'Y',1001899,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','d8897e91-b5bf-4f7c-bc85-97d59f1c5b46','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',5301,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,26,'Y','N',140,'Y',1001900,'N','The Write Off Amount indicates the amount to be written off as uncollectible.','LBR','Amount to write-off','Write-off Amount','97bf2f84-f428-4bcd-ad05-b9034770b197','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',6475,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,1,'N','N',150,'Y',1001901,'N','Delayed Capture is required, if you ship products.  The first credit card transaction is the Authorization, the second is the actual transaction after the shipment of the product.','LBR','Charge after Shipment','Delayed Capture','162dc91d-a019-4b1e-84d7-8d0bc10b12e6','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,2,'N',0,2,1,'N','N',8979,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,Created) VALUES ('N',1000097,26,'N','N',160,'Y',1001902,'N','The Invoice Document.','LBR','Invoice Identifier','Invoice','0994b89d-2d6b-4574-bc50-e0d4f22a2a52','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',5355,104,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 8:58:54 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES ('N',1000097,14,'N','N',170,'Y',1001903,'N','The Payment is a unique identifier of this payment.','1=2','LBR','Payment identifier','Payment','40ff2feb-e669-44c6-aa50-7621dfc44463','N','Y',0,0,0,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',5043,TO_DATE('2014-08-12 08:58:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:00:07 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001901
;

-- Aug 12, 2014 9:00:07 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001896
;

-- Aug 12, 2014 9:00:07 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001893
;

-- Aug 12, 2014 9:00:07 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001887
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1001888
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1001889
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001890
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001891
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001892
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001894
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001895
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001897
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001898
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001899
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001900
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001902
;

-- Aug 12, 2014 9:00:08 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001903
;

-- Aug 12, 2014 9:06:29 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001901
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001896
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001893
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001887
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001888
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001889
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001890
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001891
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001892
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001894
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001895
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001897
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001898
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001899
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001900
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001902
;

-- Aug 12, 2014 9:06:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001903
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001873
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001897
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001898
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001899
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001900
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001902
;

-- Aug 12, 2014 9:08:17 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001903
;

-- Aug 12, 2014 9:08:42 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:08:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001873
;

-- Aug 12, 2014 9:15:21 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000021,1000054,'Y','N','Y','LBR','L','ccbe7e2a-4216-4fbc-91a4-8645fab7d1e0','Y','Y','LBR_BoletoDetails','Boleto Details','Boleto Details','Y',0,0,TO_DATE('2014-08-12 09:15:21','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-12 09:15:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:15:21 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000069,'Table LBR_BoletoDetails','LBR_BoletoDetails',1,'8b4c8b01-7398-4b90-9309-8c5d91325602',0,TO_DATE('2014-08-12 09:15:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-12 09:15:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:16:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001071,'Y','N','N',0,'N',22,'N','N','N','Y','d3293f15-f3da-40cb-b0de-b3babc477762','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-12 09:16:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:16:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000054,129,0,'LBR')
;

-- Aug 12, 2014 9:16:30 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBoletoDetails', FKConstraintType='N',Updated=TO_DATE('2014-08-12 09:16:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001071
;

-- Aug 12, 2014 9:16:30 AM BRT
CREATE TABLE LBR_BoletoDetails (AD_Client_ID NUMBER(10) NOT NULL)
;

-- Aug 12, 2014 9:16:30 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT ADClient_LBRBoletoDetails FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 12, 2014 9:16:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001072,'Y','N','N',0,'N',22,'N','N','N','Y','e2ba0a18-80be-4c4a-82db-8cf65e37b713','N','AD_Org_ID','Organizational entity within client','@AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-12 09:16:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:16:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000054,104,0,'LBR')
;

-- Aug 12, 2014 9:17:02 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBoletoDetails', FKConstraintType='N',Updated=TO_DATE('2014-08-12 09:17:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001072
;

-- Aug 12, 2014 9:17:02 AM BRT
ALTER TABLE LBR_BoletoDetails ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- Aug 12, 2014 9:17:02 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT ADOrg_LBRBoletoDetails FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 12, 2014 9:17:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001073,'Y','N','N',0,'N',1,'N','N','N','Y','4f8003a5-88e4-483d-9ec2-0f014e10e86b','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-12 09:17:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:17:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000054,0,'LBR')
;

-- Aug 12, 2014 9:17:21 AM BRT
ALTER TABLE LBR_BoletoDetails ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 12, 2014 9:17:40 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001074,'N','N','N',0,'N',7,'N','N','N','Y','4ee24655-424f-4035-8c78-57328a588a01','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-12 09:17:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:17:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000054,0,'LBR')
;

-- Aug 12, 2014 9:17:42 AM BRT
ALTER TABLE LBR_BoletoDetails ADD Created DATE DEFAULT SYSDATE
;

-- Aug 12, 2014 9:17:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001075,'N','N','N',0,'N',22,'N','N','N','Y','7a1ad234-7974-42c1-b308-5034e1e8397e','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-12 09:17:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:17:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000054,0,'LBR')
;

-- Aug 12, 2014 9:17:57 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBoletoDetails', FKConstraintType='N',Updated=TO_DATE('2014-08-12 09:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001075
;

-- Aug 12, 2014 9:17:57 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 12, 2014 9:17:57 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT CreatedBy_LBRBoletoDetails FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 12, 2014 9:18:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001076,'N','N','N',0,'N',7,'N','N','N','Y','795165a1-bfb9-4155-93a6-8682de80037f','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-12 09:18:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:18:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000054,0,'LBR')
;

-- Aug 12, 2014 9:18:19 AM BRT
ALTER TABLE LBR_BoletoDetails ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 12, 2014 9:18:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001077,'N','N','N',0,'N',22,'N','N','N','Y','6a6456bc-fd19-4b32-b2c5-6db12e67cb72','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-12 09:18:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:18:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000054,0,'LBR')
;

-- Aug 12, 2014 9:18:35 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBoletoDetails', FKConstraintType='N',Updated=TO_DATE('2014-08-12 09:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001077
;

-- Aug 12, 2014 9:18:35 AM BRT
ALTER TABLE LBR_BoletoDetails ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 12, 2014 9:18:35 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT UpdatedBy_LBRBoletoDetails FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 12, 2014 9:19:18 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoDetails_ID',1000323,'The Brazilian Bank Collection (Boleto) Details.','Boleto Details','Brazilian Bank Collection (Boleto) Details','Boleto Details','8813958b-3df2-4888-bec8-1a049a89b37b',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:19:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:19:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:19:27 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoDetails_UU',1000324,'The Brazilian Bank Collection (Boleto) Details.','Boleto Details','Brazilian Bank Collection (Boleto) Details','Boleto Details','4880268d-6bff-4686-be5c-ff9f0a8098b7',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:19:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:19:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:19:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001078,'N','N','N',0,'N',22,'N','Y','N','Y','e5c6a0b8-1347-42e9-a6da-a06ae80ae71f','N','LBR_BoletoDetails_ID','Brazilian Bank Collection (Boleto) Details','The Brazilian Bank Collection (Boleto) Details.','Boleto Details','N',TO_DATE('2014-08-12 09:19:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:19:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000323,13,1000054,0,'LBR')
;

-- Aug 12, 2014 9:19:47 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_BoletoDetails_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 12, 2014 9:19:47 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT LBR_BoletoDetails_Key PRIMARY KEY (LBR_BoletoDetails_ID)
;

-- Aug 12, 2014 9:20:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001079,'N','N','N',0,'N',36,'N','N','N','Y','3418cfa1-fb5a-4930-8d08-2bc77b88f179','N','LBR_BoletoDetails_UU','Brazilian Bank Collection (Boleto) Details','The Brazilian Bank Collection (Boleto) Details.','Boleto Details','N',TO_DATE('2014-08-12 09:20:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:20:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000324,10,1000054,0,'LBR')
;

-- Aug 12, 2014 9:20:02 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_BoletoDetails_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 12, 2014 9:20:02 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT LBR_BoletoDetails_UU_idx UNIQUE (LBR_BoletoDetails_UU)
;

-- Aug 12, 2014 9:20:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001080,'Y','N','N',0,'Y',22,'N','N','N','Y','0242b759-4178-41c9-b299-a6bf598a1c6b','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Y',TO_DATE('2014-08-12 09:20:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:20:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000309,19,1000054,0,'LBR')
;

-- Aug 12, 2014 9:20:45 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRBoleto_LBRBoletoDetails', FKConstraintType='C',Updated=TO_DATE('2014-08-12 09:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001080
;

-- Aug 12, 2014 9:20:45 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Boleto_ID NUMBER(10) NOT NULL
;

-- Aug 12, 2014 9:20:45 AM BRT
ALTER TABLE LBR_BoletoDetails ADD CONSTRAINT LBRBoleto_LBRBoletoDetails FOREIGN KEY (LBR_Boleto_ID) REFERENCES lbr_boleto(lbr_boleto_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 12, 2014 9:23:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001081,'N','N','N',0,'N',1,'N','N','N','Y','d8f518f0-4dc1-4d35-bc84-e7bb8c774b0b','Y','LBR_ProtestCode','Protest Code','Protest code according to Febraban','Protest Code','Y',TO_DATE('2014-08-12 09:23:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:23:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000293,17,1000065,1000054,0,'LBR')
;

-- Aug 12, 2014 9:23:30 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_ProtestCode CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:24:26 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001082,'N','N','N',0,'N',22,'N','N','N','Y','2e1f78bf-6754-484e-8584-5dfd51aec922','Y','LBR_ProtestDays','Protest Days','Protest days after the due date according to Febraban','Protest Days','Y',TO_DATE('2014-08-12 09:24:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:24:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000294,11,1000054,0,'LBR')
;

-- Aug 12, 2014 9:24:27 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_ProtestDays NUMBER(10) DEFAULT NULL 
;

-- Aug 12, 2014 9:26:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001083,'N','N','N',0,'N',1,'N','N','N','Y','e91d6988-67a8-42d7-9988-ef37cec1b4d7','Y','LBR_LatePaymentPenaltyCode','Late payment penaulty code according to Febraban','Late Payment Penaulty Code','Y',TO_DATE('2014-08-12 09:26:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:26:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000295,17,1000066,1000054,0,'LBR')
;

-- Aug 12, 2014 9:26:43 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_LatePaymentPenaltyCode CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:28:30 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_LatePaymentPenaltyDate',1000325,'Late payment penaulty date.','Late Payment Penaulty Date','Penaulty Date','43954401-c1fd-41d0-8a49-1f74444473c1',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:28:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:28:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:29:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001084,'N','N','N',0,'N',7,'N','N','N','Y','0c97e014-e66a-422b-8cba-e5501e999ba3','Y','LBR_LatePaymentPenaltyDate','Late payment penaulty date.','Late Payment Penaulty Date','Y',TO_DATE('2014-08-12 09:29:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:29:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000325,15,1000054,0,'LBR')
;

-- Aug 12, 2014 9:29:59 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_LatePaymentPenaltyDate DATE DEFAULT NULL 
;

-- Aug 12, 2014 9:30:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001085,'N','N','N',0,'N',22,'N','N','N','Y','2c997d69-703e-46ec-a932-1128d0fd8b02','Y','LBR_LatePaymentPenaltyAP','Late payment penaulty amount or pencentage','Late Payment Penaulty Amount/Percentage','Y',TO_DATE('2014-08-12 09:30:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:30:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000297,12,1000054,0,'LBR')
;

-- Aug 12, 2014 9:30:50 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_LatePaymentPenaltyAP NUMBER DEFAULT NULL 
;

-- Aug 12, 2014 9:31:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001086,'N','N','N',0,'N',1,'N','N','N','Y','6a9b513c-56c4-49ec-ae19-090b1dc61391','Y','LBR_InterestCode','Late payment interest code according to Febraban','Late Payment Interest Code','Y',TO_DATE('2014-08-12 09:31:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:31:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000298,17,1000067,1000054,0,'LBR')
;

-- Aug 12, 2014 9:31:34 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_InterestCode CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:32:39 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_InterestDate',1000326,'Interest date.','Interest Date','Interest Date','65e67b5f-59a7-49c8-a8a1-a58415d5796f',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:32:38','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:32:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:32:54 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001087,'N','N','N',0,'N',7,'N','N','N','Y','e6e6141f-0912-43ee-931d-00d85c42ca0d','Y','LBR_InterestDate','Interest date.','Interest Date','Y',TO_DATE('2014-08-12 09:32:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:32:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000326,15,1000054,0,'LBR')
;

-- Aug 12, 2014 9:32:56 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_InterestDate DATE DEFAULT NULL 
;

-- Aug 12, 2014 9:33:27 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001088,'N','N','N',0,'N',22,'N','N','N','Y','fd35077e-3359-4798-845f-17ecaa457b96','Y','LBR_InterestAP','Late payment interest amount or pencentage','Interest Amount/Percentage','Y',TO_DATE('2014-08-12 09:33:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:33:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000299,12,1000054,0,'LBR')
;

-- Aug 12, 2014 9:33:28 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_InterestAP NUMBER DEFAULT NULL 
;

-- Aug 12, 2014 9:34:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001089,'N','N','N',0,'N',1,'N','N','N','Y','a4337811-9da7-467c-a58e-ba7eb27bc1c3','Y','LBR_CollectionReturnCode','Collection return code according to Febraban','Collection Return Code','Y',TO_DATE('2014-08-12 09:34:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:34:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000301,17,1000068,1000054,0,'LBR')
;

-- Aug 12, 2014 9:34:16 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CollectionReturnCode CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:34:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001090,'N','N','N',0,'N',22,'N','N','N','Y','e4c7128e-856e-4c8f-b344-714137b20039','Y','LBR_CollectionReturnDays','Collection return days after due date, according to Febraban','Collection Return Days','Y',TO_DATE('2014-08-12 09:34:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:34:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000302,11,1000054,0,'LBR')
;

-- Aug 12, 2014 9:34:48 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CollectionReturnDays NUMBER(10) DEFAULT NULL 
;

-- Aug 12, 2014 9:37:57 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount1Code',1000327,'Discount 1 Code','Discount 1 Code used for CNAB 240','Discount 1 Code','b0361e3f-4b0e-40fc-b014-138eb1dcde0a',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:37:57','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:37:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:38:15 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount2Code',1000328,'Discount 2 Code','Discount 2 Code used for CNAB 240','Discount 2 Code','64b69060-4732-4576-ad27-db9e85256045',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:38:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:38:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:38:31 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount3Code',1000329,'Discount 3 Code','Discount 3 Code used for CNAB 240','Discount 3 Code','975e02c9-51a5-4b93-9ae3-81d6698955e1',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:38:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:38:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:39:15 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount1Date',1000330,'Discount 1 Date','Discount 1 Date used for CNAB 240','Discount 1 Date','f06f79be-3488-4a98-9586-b1099ac47022',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:39:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:39:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:39:33 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount2Date',1000331,'Discount 2 Date','Discount 2 Date used for CNAB 240','Discount 2 Date','cac98f57-c366-4e52-aa4f-79c2024c372c',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:39:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:39:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:39:48 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount3Date',1000332,'Discount 3 Date','Discount 3 Date used for CNAB 240','Discount 3 Date','64d59df0-ddba-4121-a2fe-0f2c0b9ff1d4',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:39:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:39:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:41:33 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount1AP',1000333,'Discount 1 Amount/%','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','b5486a49-9981-42c0-b45b-a2c3fe3e7241',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:41:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:41:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:41:49 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount2AP',1000334,'Discount 2 Amount/%','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','617fd248-1fa4-45d2-a59e-f632b952668e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:41:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:41:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:42:06 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABDiscount3AP',1000335,'Discount 3 Amount/%','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','35a060c9-289f-4fc1-a619-58e20f4b09f7',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-12 09:42:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-12 09:42:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:42:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001091,'N','N','N',0,'N',22,'N','N','N','Y','8f1e670f-7423-4d9c-a43a-15bf072e0ff8','Y','LBR_CNABDiscount1AP','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','Y',TO_DATE('2014-08-12 09:42:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:42:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000333,12,1000054,0,'LBR')
;

-- Aug 12, 2014 9:43:00 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount1AP NUMBER DEFAULT NULL 
;

-- Aug 12, 2014 9:43:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001092,'N','N','N',0,'N',7,'N','N','N','Y','05c1a1da-8f7f-4d15-8da6-5aaf6ce28937','Y','LBR_CNABDiscount1Date','Discount 1 Date used for CNAB 240','Discount 1 Date','Y',TO_DATE('2014-08-12 09:43:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:43:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000330,15,1000054,0,'LBR')
;

-- Aug 12, 2014 9:43:43 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount1Date DATE DEFAULT NULL 
;

-- Aug 12, 2014 9:44:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001093,'N','N','N',0,'N',22,'N','N','N','Y','d44fa272-3065-438e-b77b-fcc5bc7bc96e','Y','LBR_CNABDiscount2AP','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','Y',TO_DATE('2014-08-12 09:44:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:44:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000334,12,1000054,0,'LBR')
;

-- Aug 12, 2014 9:44:08 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount2AP NUMBER DEFAULT NULL 
;

-- Aug 12, 2014 9:44:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001094,'N','N','N',0,'N',7,'N','N','N','Y','126ce76c-6acc-4e82-b2bf-f2e11c0629c6','Y','LBR_CNABDiscount2Date','Discount 2 Date used for CNAB 240','Discount 2 Date','Y',TO_DATE('2014-08-12 09:44:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:44:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000331,15,1000054,0,'LBR')
;

-- Aug 12, 2014 9:44:38 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount2Date DATE DEFAULT NULL 
;

-- Aug 12, 2014 9:45:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001095,'N','N','N',0,'N',22,'N','N','N','Y','2b5dd8af-83d8-4957-8391-eac2fbc7279c','Y','LBR_CNABDiscount3AP','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','Y',TO_DATE('2014-08-12 09:45:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:45:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000335,12,1000054,0,'LBR')
;

-- Aug 12, 2014 9:45:06 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount3AP NUMBER DEFAULT NULL 
;

-- Aug 12, 2014 9:45:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001096,'N','N','N',0,'N',7,'N','N','N','Y','f10a15a0-961d-4997-bbe5-57205d899a5b','Y','LBR_CNABDiscount3Date','Discount 3 Date used for CNAB 240','Discount 3 Date','Y',TO_DATE('2014-08-12 09:45:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:45:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000332,15,1000054,0,'LBR')
;

-- Aug 12, 2014 9:45:32 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount3Date DATE DEFAULT NULL 
;

-- Aug 12, 2014 9:47:54 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000078,'LBR_CNABDiscountType','LBR','7b84e51b-de34-4912-9395-d9b871b47c56','N','L',0,0,TO_DATE('2014-08-12 09:47:54','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-12 09:47:54','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 12, 2014 9:48:25 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000745,1000078,'d97d951f-80ac-4ca2-9eaa-7702f4893580','1',TO_DATE('2014-08-12 09:48:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:48:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - Valor Fixo ate a Data Informada')
;

-- Aug 12, 2014 9:48:50 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000746,1000078,'663b5264-3566-4aba-8d3d-527ae84b35a9','2',TO_DATE('2014-08-12 09:48:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:48:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - Percentual ate a Data Informada')
;

-- Aug 12, 2014 9:49:14 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000747,1000078,'d1c46c01-dfbe-439e-9387-2ad5f5cd0257','3',TO_DATE('2014-08-12 09:49:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:49:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - Valor por Antecipacao Dia Corrido')
;

-- Aug 12, 2014 9:49:29 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000748,1000078,'f3dd7095-5cc4-4d8f-9e9b-2555e7689f6a','4',TO_DATE('2014-08-12 09:49:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:49:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'4 - Valor por Antecipacao Dia Util')
;

-- Aug 12, 2014 9:49:58 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000749,1000078,'13dd7059-a081-4e52-8aef-a6073f608ce0','5',TO_DATE('2014-08-12 09:49:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:49:58','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'5 - Percentual sobre o Valor Nominal Dia Corrido')
;

-- Aug 12, 2014 9:50:14 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000750,1000078,'83997e93-17b4-4f19-9d7d-64d7ebc35870','6',TO_DATE('2014-08-12 09:50:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:50:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'6 - Percentual sobre o Valor Nominal Dia Util')
;

-- Aug 12, 2014 9:50:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000751,1000078,'bf0214e4-986c-42d9-b8db-7ed44d54d6d4','7',TO_DATE('2014-08-12 09:50:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-12 09:50:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'7 - Cancelamento de Desconto')
;

-- Aug 12, 2014 9:52:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001097,'N','N','N',0,'N',1,'N','N','N','Y','81053b01-5ec3-4fb9-8499-60f7061b1a47','Y','LBR_CNABDiscount1Code','Discount 1 Code used for CNAB 240','Discount 1 Code','Y',TO_DATE('2014-08-12 09:52:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:52:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000327,17,1000078,1000054,0,'LBR')
;

-- Aug 12, 2014 9:53:00 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount1Code CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:53:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001098,'N','N','N',0,'N',1,'N','N','N','Y','7b668d71-9adc-4f00-8f40-5df8332b599e','Y','LBR_CNABDiscount2Code','Discount 2 Code used for CNAB 240','Discount 2 Code','Y',TO_DATE('2014-08-12 09:53:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:53:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000328,17,1000078,1000054,0,'LBR')
;

-- Aug 12, 2014 9:53:45 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount2Code CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:54:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001099,'N','N','N',0,'N',1,'N','N','N','Y','bdca98c8-c1dc-4a16-ac22-d8defa71fbac','Y','LBR_CNABDiscount3Code','Discount 3 Code used for CNAB 240','Discount 3 Code','Y',TO_DATE('2014-08-12 09:54:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-12 09:54:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000329,17,1000078,1000054,0,'LBR')
;

-- Aug 12, 2014 9:54:22 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_CNABDiscount3Code CHAR(1) DEFAULT NULL 
;

-- Aug 12, 2014 9:56:13 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N','Y',1000021,15,'N','N','N','N','N','N','N',1,'e6418bde-83af-4d2b-bd3e-e12f15dbe744','LBR','Details',1000098,0,0,TO_DATE('2014-08-12 09:56:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000054,'B',TO_DATE('2014-08-12 09:56:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',10,'Y',1001904,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','06281eae-9776-4696-af9f-3dd4a77a84be','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:22','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001071,TO_DATE('2014-08-12 09:56:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:22 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',20,'Y',1001905,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','4bc5371c-80d7-401a-aa30-6b0136615ae4','N','Y','Y',0,0,0,TO_DATE('2014-08-12 09:56:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,1001072,TO_DATE('2014-08-12 09:56:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N','Y',1001906,'N','The Brazilian Bank Collection (Boleto) Details.','LBR','Brazilian Bank Collection (Boleto) Details','Boleto Details','f47b8a03-a9e6-45bf-8465-4af0ab882bca','N','N',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1001078,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,36,'N','N',30,'Y',1001907,'N','The Brazilian Bank Collection (Boleto) Details.','LBR','Brazilian Bank Collection (Boleto) Details','Boleto Details','f73db921-6209-4933-bedd-d66423e626a5','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,2,1001079,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',40,'Y',1001908,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','28b7b34d-098a-4107-8431-f653bce07290','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,1001080,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',50,'Y',1001909,'N','Protest code according to Febraban','LBR','Protest Code','Protest Code','eba37ad4-f2a8-4ebd-be50-f1bcf7982c45','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,1001081,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',60,'Y',1001910,'N','Protest days after the due date according to Febraban','LBR','Protest Days','Protest Days','5b02fbbc-3f09-48fb-abf7-785b5b962cf2','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,1001082,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',70,'Y',1001911,'N','Late payment penaulty code according to Febraban','LBR','Late Payment Penaulty Code','33210964-6488-4e18-8c5d-4979dbd74047','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,1001083,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,7,'N','N',80,'Y',1001912,'N','Late payment penaulty date.','LBR','Late Payment Penaulty Date','693fa498-8121-4464-9e03-cc076f4a939a','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,1001084,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',90,'Y',1001913,'N','Late payment penaulty amount or pencentage','LBR','Late Payment Penaulty Amount/Percentage','184b35ee-fb54-4058-bb70-e9c39259d84b','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,0,2,1001085,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',100,'Y',1001914,'N','Late payment interest code according to Febraban','LBR','Late Payment Interest Code','df176ca1-a327-41ac-ae58-cd6ad6f8919a','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1001086,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,7,'N','N',110,'Y',1001915,'N','Interest date.','LBR','Interest Date','6046e7d7-32a5-4df3-a5dd-cf0f3b60b395','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1001087,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',120,'Y',1001916,'N','Late payment interest amount or pencentage','LBR','Interest Amount/Percentage','156960d4-3866-4445-a706-8a55568e570f','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,0,2,1001088,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',130,'Y',1001917,'N','Collection return code according to Febraban','LBR','Collection Return Code','12461b47-181b-4102-9403-386145a4b1bc','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,0,2,1001089,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',140,'Y',1001918,'N','Collection return days after due date, according to Febraban','LBR','Collection Return Days','00f1c0bc-cd69-4681-844e-e70f70ebc030','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,1001090,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',150,'Y',1001919,'N','LBR','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','034e0499-6843-49c2-a342-4360e4417208','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,0,2,1001091,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,7,'N','N',160,'Y',1001920,'N','LBR','Discount 1 Date used for CNAB 240','Discount 1 Date','f2c026c1-ab5a-4069-a04b-7112153d2c4b','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,1001092,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',170,'Y',1001921,'N','LBR','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','a35b16e6-b2a6-4c31-ad6b-6bec8f40d5b4','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,0,2,1001093,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,7,'N','N',180,'Y',1001922,'N','LBR','Discount 2 Date used for CNAB 240','Discount 2 Date','9ea334bf-b9e8-4e39-8f12-2bf6759a61ed','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,0,2,1001094,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,22,'N','N',190,'Y',1001923,'N','LBR','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','8b501e7c-fcb7-41d4-bb02-4eb674613d46','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1001095,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,7,'N','N',200,'Y',1001924,'N','LBR','Discount 3 Date used for CNAB 240','Discount 3 Date','c5566ae0-52d2-46d3-a9d6-7d0641d73bad','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1001096,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',210,'Y',1001925,'N','LBR','Discount 1 Code used for CNAB 240','Discount 1 Code','5a29cb2f-9644-4e78-af91-77a591a99a0e','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1001097,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',220,'Y',1001926,'N','LBR','Discount 2 Code used for CNAB 240','Discount 2 Code','4eee4cef-ca40-49c3-be25-e837a069d3b7','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,0,2,1001098,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',230,'Y',1001927,'N','LBR','Discount 3 Code used for CNAB 240','Discount 3 Code','bfd67baa-1a4b-414f-b7cc-223e625e2d98','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,1001099,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:56:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,1,'N','N',240,'Y',1001928,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','79f5b318-f850-4244-b4e1-b631b51b8e7b','N','Y',0,0,0,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,2,0,2,1001073,TO_DATE('2014-08-12 09:56:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001908
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001907
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001909
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001910
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001911
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001912
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001913
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001914
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001915
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001916
;

-- Aug 12, 2014 9:57:46 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001917
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001918
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001925
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001920
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001926
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001922
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001921
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001927
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001923
;

-- Aug 12, 2014 9:57:47 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001928
;

-- Aug 12, 2014 9:58:24 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-12 09:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001905
;

-- Aug 12, 2014 9:58:26 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-08-12 09:58:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001904
;

-- Aug 12, 2014 9:58:46 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001910
;

-- Aug 12, 2014 9:58:59 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:58:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001912
;

-- Aug 12, 2014 9:59:19 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001915
;

-- Aug 12, 2014 9:59:34 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:59:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001918
;

-- Aug 12, 2014 9:59:50 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 09:59:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001920
;

-- Aug 12, 2014 10:00:00 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 10:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001922
;

-- Aug 12, 2014 10:00:11 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-12 10:00:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001924
;

-- Aug 12, 2014 10:00:25 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001928
;

-- Aug 12, 2014 10:16:41 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Protest (LBR)','030f9e47-c40a-422c-9887-681484569565',1000019,0,TO_DATE('2014-08-12 10:16:41','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-12 10:16:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 10:17:00 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000019,Updated=TO_DATE('2014-08-12 10:17:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001909
;

-- Aug 12, 2014 10:17:03 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000019,Updated=TO_DATE('2014-08-12 10:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001910
;

-- Aug 12, 2014 10:17:19 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Late Payment Penaulty (LBR)','358ccb56-f383-473e-9bcc-7e179e277c06',1000020,0,TO_DATE('2014-08-12 10:17:19','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-12 10:17:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 10:17:36 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001911
;

-- Aug 12, 2014 10:17:39 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:17:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001912
;

-- Aug 12, 2014 10:17:42 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:17:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001913
;

-- Aug 12, 2014 10:18:04 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Interest (LBR)','fb35477b-0c6a-4d43-8676-e72eb14f1fe4',1000021,0,TO_DATE('2014-08-12 10:18:04','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-12 10:18:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 10:18:20 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001914
;

-- Aug 12, 2014 10:18:23 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001915
;

-- Aug 12, 2014 10:18:26 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001916
;

-- Aug 12, 2014 10:18:47 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Collection Return (LBR)','1f1cc65e-de9f-4e36-a041-b526ad77ac7d',1000022,0,TO_DATE('2014-08-12 10:18:47','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-12 10:18:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 10:19:08 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000022,Updated=TO_DATE('2014-08-12 10:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001917
;

-- Aug 12, 2014 10:19:11 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000022,Updated=TO_DATE('2014-08-12 10:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001918
;

-- Aug 12, 2014 10:19:25 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID,Created) VALUES ('C','LBR','N','Discount (LBR)','f9a26c82-cbb8-407b-afae-c5a8bfa0f95f',1000023,0,TO_DATE('2014-08-12 10:19:25','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,TO_DATE('2014-08-12 10:19:25','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 12, 2014 10:19:38 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001925
;

-- Aug 12, 2014 10:19:41 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001920
;

-- Aug 12, 2014 10:19:43 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001919
;

-- Aug 12, 2014 10:19:46 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001926
;

-- Aug 12, 2014 10:19:49 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001922
;

-- Aug 12, 2014 10:19:52 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001921
;

-- Aug 12, 2014 10:19:54 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001927
;

-- Aug 12, 2014 10:19:57 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:19:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001924
;

-- Aug 12, 2014 10:20:00 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000023,Updated=TO_DATE('2014-08-12 10:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001923
;

-- Aug 12, 2014 10:22:40 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000019,Updated=TO_DATE('2014-08-12 10:22:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001762
;

-- Aug 12, 2014 10:22:43 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000019,Updated=TO_DATE('2014-08-12 10:22:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001763
;

-- Aug 12, 2014 10:22:52 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:22:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001764
;

-- Aug 12, 2014 10:22:55 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:22:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001765
;

-- Aug 12, 2014 10:22:58 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000020,Updated=TO_DATE('2014-08-12 10:22:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001766
;

-- Aug 12, 2014 10:23:05 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001767
;

-- Aug 12, 2014 10:23:08 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001768
;

-- Aug 12, 2014 10:23:10 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000021,Updated=TO_DATE('2014-08-12 10:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001769
;

-- Aug 12, 2014 10:23:19 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000022,Updated=TO_DATE('2014-08-12 10:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001770
;

-- Aug 12, 2014 10:23:22 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000022,Updated=TO_DATE('2014-08-12 10:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001771
;

-- Aug 12, 2014 10:23:53 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001773
;

-- Aug 12, 2014 10:23:56 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001774
;

-- Aug 12, 2014 10:23:58 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:23:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001775
;

-- Aug 12, 2014 10:24:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:24:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001776
;

-- Aug 12, 2014 10:24:03 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001777
;

-- Aug 12, 2014 10:24:06 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-12 10:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001778
;

-- Aug 12, 2014 10:58:20 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001029
;

-- Aug 12, 2014 10:58:25 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001030
;

-- Aug 12, 2014 10:58:29 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001031
;

-- Aug 12, 2014 10:59:00 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:59:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001056
;

-- Aug 12, 2014 10:59:05 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:59:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001055
;

-- Aug 12, 2014 10:59:14 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:59:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001057
;

-- Aug 12, 2014 10:59:54 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 10:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001059
;

-- Aug 12, 2014 11:00:01 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 11:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001052
;

-- Aug 12, 2014 11:00:10 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 11:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001054
;

-- Aug 12, 2014 11:00:24 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 11:00:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001035
;

-- Aug 12, 2014 11:00:29 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 11:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001036
;

-- Aug 12, 2014 11:00:40 AM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-08-12 11:00:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001068
;

-- Aug 12, 2014 11:05:12 AM BRT
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2014-08-12 11:05:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001049
;

-- Aug 12, 2014 11:06:52 AM BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2014-08-12 11:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001042
;

-- Aug 12, 2014 11:07:11 AM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_DATE('2014-08-12 11:07:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001032
;

-- Aug 12, 2014 11:08:34 AM BRT
UPDATE AD_Column SET SeqNo=2,Updated=TO_DATE('2014-08-12 11:08:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001032
;

-- Aug 12, 2014 11:08:38 AM BRT
UPDATE AD_Column SET SeqNo=1,Updated=TO_DATE('2014-08-12 11:08:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001042
;

-- Aug 12, 2014 11:08:54 AM BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2014-08-12 11:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001031
;

-- Aug 12, 2014 1:14:49 PM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_DATE('2014-08-12 13:14:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000098
;

-- Aug 13, 2014 9:55:55 AM BRT
--INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message3',1000336,'Message 3','Message 3','Message 3','092f54e8-f14e-43e0-9b6b-85084db49d1d',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:55:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:55:55','YYYY-MM-DD HH24:MI:SS'))
--;

-- Aug 13, 2014 9:56:20 AM BRT
--INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message4',1000337,'Message 4','Message 4','Message 4','6779afa2-d90e-4187-95f6-8aa43d008c5f',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:56:20','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:56:20','YYYY-MM-DD HH24:MI:SS'))
--;

-- Aug 13, 2014 9:56:46 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message5',1000338,'Message 5','Message 5','Message 5','e0a34e7d-2914-4785-b7dc-ba5107f98831',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:56:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:56:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 9:57:41 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message6',1000339,'Message 6','Message 6','Message 6','cc5ff8d7-3f27-4fb3-b811-2e29d8987fe0',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:57:41','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:57:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 9:58:06 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message7',1000340,'Message 7','Message 7','Message 7','9aa12ee4-c7e2-4216-b590-80609ca122c2',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:58:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:58:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 9:58:32 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message8',1000341,'Message 8','Message 8','Message 8','1ca4ef98-90f2-4c80-a20b-9c4cb8231258',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:58:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:58:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 9:58:55 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message9',1000342,'Message 9','Message 9','Message 9','1e467195-9a9b-4fc4-ad19-f715dd87b451',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 09:58:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 09:58:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:00:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001100,'N','N','N',0,'N',40,'N','N','N','Y','a291b9c2-7e15-4135-a2d7-fff48adbdc86','Y','LBR_Message5','Message 5','Message 5','Y',TO_DATE('2014-08-13 10:00:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:00:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000338,10,1000054,0,'LBR')
;

-- Aug 13, 2014 10:00:38 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Message5 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:01:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001101,'N','N','N',0,'N',40,'N','N','N','Y','497b218e-02e2-40a4-a656-a0505a43fda4','Y','LBR_Message6','Message 6','Message 6','Y',TO_DATE('2014-08-13 10:01:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:01:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000339,10,1000054,0,'LBR')
;

-- Aug 13, 2014 10:01:05 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Message6 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:01:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001102,'N','N','N',0,'N',40,'N','N','N','Y','6031a620-30e7-4d67-9084-1812366469c9','Y','LBR_Message7','Message 7','Message 7','Y',TO_DATE('2014-08-13 10:01:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:01:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000340,10,1000054,0,'LBR')
;

-- Aug 13, 2014 10:01:21 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Message7 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:01:35 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001103,'N','N','N',0,'N',40,'N','N','N','Y','e4fe3d10-32fe-4772-a895-75d793152b74','Y','LBR_Message8','Message 8','Message 8','Y',TO_DATE('2014-08-13 10:01:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:01:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000341,10,1000054,0,'LBR')
;

-- Aug 13, 2014 10:01:37 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Message8 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:01:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001104,'N','N','N',0,'N',40,'N','N','N','Y','11d11dce-eb93-4ad7-bffc-a21c5585c6cc','Y','LBR_Message9','Message 9','Message 9','Y',TO_DATE('2014-08-13 10:01:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:01:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000342,10,1000054,0,'LBR')
;

-- Aug 13, 2014 10:01:53 AM BRT
ALTER TABLE LBR_BoletoDetails ADD LBR_Message9 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:04:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,40,'N','N',220,'Y',1001929,'N','Message 5','LBR','Message 5','9ebbe62f-3984-4304-a122-3675456f2339','N','Y',0,0,0,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,0,2,1001100,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:04:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,40,'N','N',230,'Y',1001930,'N','Message 6','LBR','Message 6','d5db43a6-c853-4cfd-92f9-4fdb6bc4965d','N','Y',0,0,0,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,0,2,1001101,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:04:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,40,'N','N',240,'Y',1001931,'N','Message 7','LBR','Message 7','0c37d93a-1219-4118-a062-8ebf4fc9d5ca','N','Y',0,0,0,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,0,2,1001102,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:04:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,40,'N','N',250,'Y',1001932,'N','Message 8','LBR','Message 8','36537cbd-0ad6-4324-b3b7-c88e79bcf52b','N','Y',0,0,0,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,0,2,1001103,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:04:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000098,40,'N','N',260,'Y',1001933,'N','Message 9','LBR','Message 9','d3117d09-8723-4052-9eb2-09d8d8785c13','N','Y',0,0,0,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,0,2,1001104,TO_DATE('2014-08-13 10:04:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:05:45 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 10:05:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001929
;

-- Aug 13, 2014 10:05:57 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 10:05:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001930
;

-- Aug 13, 2014 10:06:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 10:06:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001931
;

-- Aug 13, 2014 10:06:10 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 10:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001932
;

-- Aug 13, 2014 10:06:14 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 10:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001933
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001908
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001907
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001909
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001910
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001911
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001912
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001913
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001914
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001915
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001916
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001917
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001918
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001919
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001920
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001921
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001922
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001923
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001924
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001925
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001926
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001927
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001928
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001929
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001930
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001931
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001932
;

-- Aug 13, 2014 10:11:38 AM BRT
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001933
;

-- Aug 13, 2014 10:15:26 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','1',0,1000021,1000055,'Y','N','Y','LBR','L','9d3cb960-1a3f-4c97-954e-01d0996c647a','Y','Y','LBR_BoletoSD','Boleto Static Data','Boleto Static Data','Y',0,0,TO_DATE('2014-08-13 10:15:26','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2014-08-13 10:15:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:15:26 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',1000071,'Table LBR_BoletoSD','LBR_BoletoSD',1,'e73d214d-370a-4d0b-a83c-b27df769a9c2',0,TO_DATE('2014-08-13 10:15:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2014-08-13 10:15:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:16:33 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoSD_ID',1000343,'The Boleto Static Data Document.','Boleto Static Data','Boleto Static Data Identifier','Boleto Static Data','7fe87006-6003-4be0-a5a9-ef3b6fba7472',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 10:16:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 10:16:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:16:41 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoSD_UU',1000344,'The Boleto Static Data Document.','Boleto Static Data','Boleto Static Data Identifier','Boleto Static Data','2fc08b82-fbd2-41e9-8154-b8c6bcd7a618',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 10:16:41','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 10:16:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:17:24 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001105,'N','N','N',0,'N',22,'N','N','N','Y','a3b64323-7ea9-4311-99b4-679048a92327','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-08-13 10:17:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:17:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000055,129,0,'LBR')
;

-- Aug 13, 2014 10:17:26 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRBoletoSD', FKConstraintType='N',Updated=TO_DATE('2014-08-13 10:17:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001105
;

-- Aug 13, 2014 10:17:26 AM BRT
CREATE TABLE LBR_BoletoSD (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Aug 13, 2014 10:17:26 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT ADClient_LBRBoletoSD FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 10:17:44 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001106,'N','N','N',0,'N',22,'N','N','N','Y','c96879de-42fa-45b0-89a4-8a609ac57b6c','N','AD_Org_ID','Organizational entity within client','@AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-08-13 10:17:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:17:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000055,104,0,'LBR')
;

-- Aug 13, 2014 10:17:45 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRBoletoSD', FKConstraintType='N',Updated=TO_DATE('2014-08-13 10:17:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001106
;

-- Aug 13, 2014 10:17:45 AM BRT
ALTER TABLE LBR_BoletoSD ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 13, 2014 10:17:45 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT ADOrg_LBRBoletoSD FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 10:18:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001107,'Y','N','N',0,'N',1,'N','N','N','Y','55ffe275-c25a-44b9-a046-caf389645a54','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-08-13 10:18:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:18:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000055,0,'LBR')
;

-- Aug 13, 2014 10:18:04 AM BRT
ALTER TABLE LBR_BoletoSD ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Aug 13, 2014 10:18:26 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001108,'N','N','N',0,'N',7,'N','N','N','Y','8cc959dc-45c5-41e4-9d90-c3e0c8f4d7f1','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-08-13 10:18:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:18:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000055,0,'LBR')
;

-- Aug 13, 2014 10:18:27 AM BRT
ALTER TABLE LBR_BoletoSD ADD Created DATE DEFAULT SYSDATE
;

-- Aug 13, 2014 10:18:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001109,'N','N','N',0,'N',22,'N','N','N','Y','a18e1694-6b8d-4fe9-9190-b790fdfa674f','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-08-13 10:18:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:18:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000055,0,'LBR')
;

-- Aug 13, 2014 10:18:41 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRBoletoSD', FKConstraintType='N',Updated=TO_DATE('2014-08-13 10:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001109
;

-- Aug 13, 2014 10:18:41 AM BRT
ALTER TABLE LBR_BoletoSD ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 13, 2014 10:18:41 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT CreatedBy_LBRBoletoSD FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 10:18:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001110,'N','N','N',0,'N',7,'N','N','N','Y','eb94d0dc-6fd9-4c83-b2fb-494d7fc4dd1b','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-08-13 10:18:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:18:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000055,0,'LBR')
;

-- Aug 13, 2014 10:18:55 AM BRT
ALTER TABLE LBR_BoletoSD ADD Updated DATE DEFAULT SYSDATE
;

-- Aug 13, 2014 10:19:08 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001111,'N','N','N',0,'N',22,'N','N','N','Y','5220fc8d-7739-4cf0-99d5-05211f2acca7','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-08-13 10:19:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:19:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000055,0,'LBR')
;

-- Aug 13, 2014 10:19:09 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRBoletoSD', FKConstraintType='N',Updated=TO_DATE('2014-08-13 10:19:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001111
;

-- Aug 13, 2014 10:19:09 AM BRT
ALTER TABLE LBR_BoletoSD ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Aug 13, 2014 10:19:09 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT UpdatedBy_LBRBoletoSD FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 10:19:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001112,'N','N','N',0,'N',22,'N','Y','N','Y','3fafef89-3825-4863-a3c5-eaa44ff2be66','N','LBR_BoletoSD_ID','Boleto Static Data Identifier','The Boleto Static Data Document.','Boleto Static Data','N',TO_DATE('2014-08-13 10:19:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:19:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000343,13,1000055,0,'LBR')
;

-- Aug 13, 2014 10:19:41 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_BoletoSD_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 13, 2014 10:19:41 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT LBR_BoletoSD_Key PRIMARY KEY (LBR_BoletoSD_ID)
;

-- Aug 13, 2014 10:19:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001113,'N','N','N',0,'N',36,'N','N','N','Y','e229f133-de8a-4927-ac7c-f6a49d84f821','N','LBR_BoletoSD_UU','Boleto Static Data Identifier','The Boleto Static Data Document.','Boleto Static Data','N',TO_DATE('2014-08-13 10:19:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:19:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000344,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:19:56 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_BoletoSD_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Aug 13, 2014 10:19:56 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT LBR_BoletoSD_UU_idx UNIQUE (LBR_BoletoSD_UU)
;

-- Aug 13, 2014 10:20:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001114,'Y','N','N',0,'Y',22,'N','N','N','Y','92cd752c-e3b9-4623-b8fb-0fb42e0e3815','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)','Y',TO_DATE('2014-08-13 10:20:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:20:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000309,19,1000055,0,'LBR')
;

-- Aug 13, 2014 10:20:18 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRBoleto_LBRBoletoSD', FKConstraintType='C',Updated=TO_DATE('2014-08-13 10:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001114
;

-- Aug 13, 2014 10:20:18 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_Boleto_ID NUMBER(10) NOT NULL
;

-- Aug 13, 2014 10:20:18 AM BRT
ALTER TABLE LBR_BoletoSD ADD CONSTRAINT LBRBoleto_LBRBoletoSD FOREIGN KEY (LBR_Boleto_ID) REFERENCES lbr_boleto(lbr_boleto_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 10:38:27 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001115,'N','N','Y',0,'N',60,'Y','N','N','Y','15595023-fd8c-475e-8665-87e10bdc8f49','Y','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name','Y',TO_DATE('2014-08-13 10:38:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:38:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',469,10,1000055,0,'U')
;

-- Aug 13, 2014 10:38:30 AM BRT
ALTER TABLE LBR_BoletoSD ADD Name NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:38:41 AM BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2014-08-13 10:38:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001115
;

-- Aug 13, 2014 10:39:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001116,'N','N','N',0,'N',60,'N','N','N','Y','206a01dd-3546-4e09-8dfc-4e1c00eab3a8','Y','Address1','Address line 1 for this location','The Address 1 identifies the address for an entity''s location','Address 1','Y',TO_DATE('2014-08-13 10:39:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:39:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',156,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:39:03 AM BRT
ALTER TABLE LBR_BoletoSD ADD Address1 NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:39:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001117,'N','N','N',0,'N',60,'N','N','N','Y','8bc4e2cf-f2ab-4eac-bfb7-3a509980e379','Y','Address2','Address line 2 for this location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 2','Y',TO_DATE('2014-08-13 10:39:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:39:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',157,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:39:34 AM BRT
ALTER TABLE LBR_BoletoSD ADD Address2 NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:39:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001118,'N','N','N',0,'N',60,'N','N','N','Y','30625e6e-a7b2-4cca-b015-f8946bd40f8a','Y','Address3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 3','Y',TO_DATE('2014-08-13 10:39:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:39:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2555,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:39:52 AM BRT
ALTER TABLE LBR_BoletoSD ADD Address3 NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:40:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001119,'N','N','N',0,'N',60,'N','N','N','Y','695d8371-3612-493c-b39d-42cdbcb05853','Y','Address4','Address Line 4 for the location','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 4','Y',TO_DATE('2014-08-13 10:40:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:40:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2556,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:40:12 AM BRT
ALTER TABLE LBR_BoletoSD ADD Address4 NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:40:31 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001120,'N','N','N',0,'N',10,'N','N','N','Y','7f4f9f24-b013-4b2b-9172-8863124415e8','Y','Postal','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.','ZIP','Y',TO_DATE('2014-08-13 10:40:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:40:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',512,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:40:33 AM BRT
ALTER TABLE LBR_BoletoSD ADD Postal NVARCHAR2(10) DEFAULT NULL 
;

-- Aug 13, 2014 10:40:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001121,'N','N','N',0,'N',60,'N','N','N','Y','c5a3d3d9-00f7-4a14-9abc-a40cf0d1671e','Y','City','Identifies a City','The City identifies a unique City for this Country or Region.','City','Y',TO_DATE('2014-08-13 10:40:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:40:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',225,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:40:55 AM BRT
ALTER TABLE LBR_BoletoSD ADD City NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 13, 2014 10:41:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001122,'N','N','N',0,'N',40,'Y','N','N','Y','427b3121-58d7-41f8-87bd-1849e6b21314','Y','RegionName','Name of the Region','The Region Name defines the name that will print when this region is used in a document.','Region','Y',TO_DATE('2014-08-13 10:41:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:41:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',541,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:41:12 AM BRT
ALTER TABLE LBR_BoletoSD ADD RegionName NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 10:42:07 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000079,'LBR_BoletoSDType','LBR','82569aaa-3db7-430d-92af-7a674304216d','N','Boleto Static Data Type','L',0,0,TO_DATE('2014-08-13 10:42:07','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-13 10:42:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 13, 2014 10:44:09 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000752,1000079,'3f4fc8e3-a3f3-44b3-821f-d47da8ae41a6','PAG',TO_DATE('2014-08-13 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Pagador (Sacado)')
;

-- Aug 13, 2014 10:45:38 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000753,1000079,'72b594aa-be4d-4955-879b-337557803417','AVA',TO_DATE('2014-08-13 10:45:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:45:38','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Sacador / Avalista')
;

-- Aug 13, 2014 10:46:55 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_StaticDataType',1000345,'Static Data Type','Static Data Type','80cd5765-21a5-4a9f-810c-250cab035781',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 10:46:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 10:46:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:47:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001123,'Y','N','N',0,'N',3,'N','N','N','Y','66573165-674e-48b2-8c9f-459e4efa4232','Y','LBR_StaticDataType','Static Data Type','Y',TO_DATE('2014-08-13 10:47:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:47:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000345,17,1000079,1000055,0,'LBR')
;

-- Aug 13, 2014 10:47:52 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_StaticDataType NVARCHAR2(3) NOT NULL
;

-- Aug 13, 2014 10:50:53 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000080,'LBR_CNABInscEmpType','LBR','fd5bbece-ad85-4181-80ff-e862b3235f00','N','L',0,0,TO_DATE('2014-08-13 10:50:53','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-13 10:50:53','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 13, 2014 10:51:19 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000754,1000080,'19213e53-f6f7-4933-8705-817faa65549f','0',TO_DATE('2014-08-13 10:51:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:51:19','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'0 - Isento / Nao Informado')
;

-- Aug 13, 2014 10:51:45 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000755,1000080,'f8e2497f-d0d4-487b-9ac2-00cc1e07906c','1',TO_DATE('2014-08-13 10:51:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:51:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'1 - CPF')
;

-- Aug 13, 2014 10:52:08 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000756,1000080,'650bdaac-dfda-4060-b45f-8cc08aa3a617','2',TO_DATE('2014-08-13 10:52:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:52:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2 - CGC / CNPJ')
;

-- Aug 13, 2014 10:52:32 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000757,1000080,'a1e75d92-a9a6-4c52-839a-666d9e98e279','3',TO_DATE('2014-08-13 10:52:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:52:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'3 - PIS / PASEP')
;

-- Aug 13, 2014 10:52:54 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000758,1000080,'7524d342-4c2b-4c4d-9266-fea84c420e02','9',TO_DATE('2014-08-13 10:52:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-13 10:52:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'9 - Outros')
;

-- Aug 13, 2014 10:54:07 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABInscEmpType',1000346,'Company Number Type, according to Febraban','Company Number Type','Company Number Type','95addd8a-1e8d-4f9d-9fb9-853ecda0995a',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 10:54:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 10:54:07','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:54:44 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001124,'N','N','N',0,'N',1,'N','N','N','Y','a13fc62f-9ba5-4d78-80dc-87bc26b266bf','Y','LBR_CNABInscEmpType','Company Number Type, according to Febraban','Company Number Type','Y',TO_DATE('2014-08-13 10:54:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:54:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000346,17,1000080,1000055,0,'LBR')
;

-- Aug 13, 2014 10:54:46 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_CNABInscEmpType CHAR(1) DEFAULT NULL 
;

-- Aug 13, 2014 10:55:25 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CNABInscEmpNo',1000347,'Company Number Number, according to Febraban','Company Number','Company Number','c99a2aa2-60a5-4219-af6c-6b617b0fa89f',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 10:55:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 10:55:24','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 10:55:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001125,'N','N','N',0,'N',15,'N','N','N','Y','b1b5b621-cd4f-440d-bebe-6477435f3676','Y','LBR_CNABInscEmpNo','Company Number Number, according to Febraban','Company Number','Y',TO_DATE('2014-08-13 10:55:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 10:55:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000347,10,1000055,0,'LBR')
;

-- Aug 13, 2014 10:55:52 AM BRT
ALTER TABLE LBR_BoletoSD ADD LBR_CNABInscEmpNo NVARCHAR2(15) DEFAULT NULL 
;

-- Aug 13, 2014 11:14:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001126,'N','N','N',0,'N',1,'N','N','N','Y','8e47e747-af63-4e36-9ac7-0808c08508c5','Y','LBR_CollectionRegType','Collection Registration Type','Collection Registration yype in the Bank','Registration Type','Y',TO_DATE('2014-08-13 11:14:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:14:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000320,17,1000075,1000052,0,'LBR')
;

-- Aug 13, 2014 11:14:23 AM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_CollectionRegType CHAR(1) DEFAULT NULL 
;

-- Aug 13, 2014 11:15:06 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',220,'Y',1001934,'N','Collection Registration yype in the Bank','LBR','Collection Registration Type','Registration Type','6df12c68-cfe4-417b-b5b2-57b707af6b4a','N','Y',0,0,0,TO_DATE('2014-08-13 11:15:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,1001126,TO_DATE('2014-08-13 11:15:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:15:30 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-13 11:15:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001934
;

-- Aug 13, 2014 11:24:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001127,'N','N','N',0,'N',22,'N','N','N','Y','372f8711-f23f-4a92-b936-1e0da2490ae2','Y','LBR_Collection_Default_ID','Bank Collection Defaults','Y',TO_DATE('2014-08-13 11:24:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:24:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000291,19,217,0,'LBR')
;

-- Aug 13, 2014 11:24:27 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCollectionDefault_CDocType', FKConstraintType='N',Updated=TO_DATE('2014-08-13 11:24:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001127
;

-- Aug 13, 2014 11:24:27 AM BRT
ALTER TABLE C_DocType ADD LBR_Collection_Default_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 13, 2014 11:24:27 AM BRT
ALTER TABLE C_DocType ADD CONSTRAINT LBRCollectionDefault_CDocType FOREIGN KEY (LBR_Collection_Default_ID) REFERENCES lbr_collection_default(lbr_collection_default_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 13, 2014 11:27:32 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message3',1000348,'Message 3','Message 3','Message 3','d252bf10-9bb7-4e30-9673-c2b9d27b90e8',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 11:27:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 11:27:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:28:07 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Message4',1000349,'Message 4','Message 4','Message 4','6fa74bc4-754b-4a67-876f-49af9ac186ae',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-13 11:28:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-13 11:28:07','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:29:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001128,'N','N','N',0,'N',40,'N','N','N','Y','3a32f630-cc0f-462e-8b0e-cb97dff6ebd0','Y','LBR_Message3','Message 3','Message 3','Y',TO_DATE('2014-08-13 11:29:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:29:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000348,10,217,0,'LBR')
;

-- Aug 13, 2014 11:29:02 AM BRT
ALTER TABLE C_DocType ADD LBR_Message3 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 11:29:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001129,'N','N','N',0,'N',40,'N','N','N','Y','0f3303e6-bf66-4ad6-893a-81f0f37de28f','Y','LBR_Message4','Message 4','Message 4','Y',TO_DATE('2014-08-13 11:29:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:29:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000349,10,217,0,'LBR')
;

-- Aug 13, 2014 11:29:24 AM BRT
ALTER TABLE C_DocType ADD LBR_Message4 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 11:29:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001130,'N','N','N',0,'N',40,'N','N','N','Y','8fb52ea2-2e17-4913-b73e-9df7ac33803c','Y','LBR_Message7','Message 7','Message 7','Y',TO_DATE('2014-08-13 11:29:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:29:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000340,10,217,0,'LBR')
;

-- Aug 13, 2014 11:29:44 AM BRT
ALTER TABLE C_DocType ADD LBR_Message7 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 11:30:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001131,'N','N','N',0,'N',40,'N','N','N','Y','8978479a-89a1-409e-9f6e-63cef4340666','Y','LBR_Message8','Message 8','Message 8','Y',TO_DATE('2014-08-13 11:30:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-13 11:30:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000341,10,217,0,'LBR')
;

-- Aug 13, 2014 11:30:03 AM BRT
ALTER TABLE C_DocType ADD LBR_Message8 NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 13, 2014 11:30:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,22,'N','N',410,'Y',1001935,'N','LBR','Bank Collection Defaults','cbcab854-2afd-4b62-b1c3-0c53cbd924c0','N','Y',0,0,0,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,0,2,1001127,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:30:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,40,'N','N',420,'Y',1001936,'N','Message 3','LBR','Message 3','d4c4110a-3cca-4a33-a66d-6a7039951e60','N','Y',0,0,0,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,0,2,1001128,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:30:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,40,'N','N',430,'Y',1001937,'N','Message 4','LBR','Message 4','bc243458-2141-4c54-bb7e-f1dc9d9b984e','N','Y',0,0,0,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,0,2,1001129,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:30:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,40,'N','N',440,'Y',1001938,'N','Message 7','LBR','Message 7','5f01425d-8768-4731-880f-c0d2dd30eae2','N','Y',0,0,0,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,0,2,1001130,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:30:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,40,'N','N',450,'Y',1001939,'N','Message 8','LBR','Message 8','ebea5c35-2581-4f54-9d3e-008aa4de11a6','N','Y',0,0,0,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,0,2,1001131,TO_DATE('2014-08-13 11:30:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 13, 2014 11:32:12 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''BBB''',Updated=TO_DATE('2014-08-13 11:32:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001935
;

-- Aug 13, 2014 11:32:21 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''BBB''',Updated=TO_DATE('2014-08-13 11:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001936
;

-- Aug 13, 2014 11:32:33 AM BRT
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@DocBaseType@=''BBB''', XPosition=4,Updated=TO_DATE('2014-08-13 11:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001937
;

-- Aug 13, 2014 11:32:39 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''BBB''',Updated=TO_DATE('2014-08-13 11:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001938
;

-- Aug 13, 2014 11:32:49 AM BRT
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@DocBaseType@=''BBB''', XPosition=4,Updated=TO_DATE('2014-08-13 11:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001939
;

-- Aug 14, 2014 9:09:31 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000081,'LBR_CollectionIssueDistrib','LBR','e373be03-74f3-43f0-8a32-bc9c8c19d1b9','N','L',0,0,TO_DATE('2014-08-14 09:09:31','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-14 09:09:31','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 14, 2014 9:10:50 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000759,1000081,'2ff85828-7dbf-4f84-85fc-b0ac14700de0','ORG',TO_DATE('2014-08-14 09:10:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-14 09:10:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Organization')
;

-- Aug 14, 2014 9:11:13 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000760,1000081,'0fb6f9ef-ee9a-4d46-a675-8898c72bfe78','BAN',TO_DATE('2014-08-14 09:11:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-14 09:11:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Bank')
;

-- Aug 14, 2014 9:13:37 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000082,'LBR_PayInstrument','LBR','ab303b7a-b896-4e13-866d-c5f2a3b95718','N','L',0,0,TO_DATE('2014-08-14 09:13:37','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-08-14 09:13:37','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Aug 14, 2014 9:14:20 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000761,1000082,'90edb0b3-3a5a-4edf-863d-e179c6fdc5a1','BC',TO_DATE('2014-08-14 09:14:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-08-14 09:14:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Bank Collection')
;

-- Aug 14, 2014 9:17:12 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_PayInstrument',1000350,'Payment Instrument','Pay Instrument','a7e14773-095d-496e-9e3e-f1020c745c49',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 09:17:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 09:17:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:18:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001132,'N','N','N',0,'N',2,'N','N','N','Y','33cab36b-5f54-4037-b970-bf47d68a1679','Y','LBR_PayInstrument','Payment Instrument','Y',TO_DATE('2014-08-14 09:18:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 09:18:46','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000350,17,1000082,291,0,'LBR')
;

-- Aug 14, 2014 9:18:48 AM BRT
ALTER TABLE C_BPartner ADD LBR_PayInstrument NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 14, 2014 9:20:44 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CollectionIssueDistrib',1000351,'Issue / Distribution','Issue / Distrib.','8b4880cb-6491-4316-ad1d-8507f389fc9e',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 09:20:44','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 09:20:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:22:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001133,'N','N','N',0,'N',3,'N','N','N','Y','b06ff800-914a-43b5-ba38-198768391923','Y','LBR_CollectionIssueDistrib','Issue / Distribution','Y',TO_DATE('2014-08-14 09:22:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 09:22:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000351,17,1000081,291,0,'LBR')
;

-- Aug 14, 2014 9:22:09 AM BRT
ALTER TABLE C_BPartner ADD LBR_CollectionIssueDistrib NVARCHAR2(3) DEFAULT NULL 
;

-- Aug 14, 2014 9:23:51 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAccount_ID',1000352,'The Bank Account identifies an account at this Bank.','Bank Account','Account at the Bank','Bank Account','c52db3d3-ec4d-40c3-9e29-04514e70c881',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 09:23:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 09:23:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:26:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001134,'N','N','N',0,'N',22,'N','N','N','Y','08f7d25c-fcb7-44b1-aa12-8214f8c05624','Y','LBR_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2014-08-14 09:26:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 09:26:15','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000352,18,53283,291,0,'LBR')
;

-- Aug 14, 2014 9:26:19 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBankAccount_CBPartner', FKConstraintType='N',Updated=TO_DATE('2014-08-14 09:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001134
;

-- Aug 14, 2014 9:26:19 AM BRT
ALTER TABLE C_BPartner ADD LBR_BankAccount_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 9:26:20 AM BRT
ALTER TABLE C_BPartner ADD CONSTRAINT LBRBankAccount_CBPartner FOREIGN KEY (LBR_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 9:27:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',220,2,'N','N',780,'Y',1001940,'N','LBR','Payment Instrument','d114b780-6511-4ed6-954b-6ce46d395141','N','Y',0,0,0,TO_DATE('2014-08-14 09:27:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',510,0,2,1001132,TO_DATE('2014-08-14 09:27:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:27:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',220,3,'N','N',790,'Y',1001941,'N','LBR','Issue / Distribution','cefcd41f-da20-48cb-a2e8-917fcce289bd','N','Y',0,0,0,TO_DATE('2014-08-14 09:27:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',520,0,2,1001133,TO_DATE('2014-08-14 09:27:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:27:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',220,22,'N','N',800,'Y',1001942,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','83b17fdc-1207-426e-9e6c-ec9d8f0f9be3','N','Y',0,0,0,TO_DATE('2014-08-14 09:27:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',530,0,2,1001134,TO_DATE('2014-08-14 09:27:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001940
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001941
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001942
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=9612
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=9607
;

-- Aug 14, 2014 9:29:39 AM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=9622
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=9611
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=10470
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=9628
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=54556
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=9619
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000070
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000071
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000072
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=9610
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=9603
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=200622
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=9621
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=9608
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=201865
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=201866
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000073
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000074
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000075
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=9609
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=2124
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=3261
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=9604
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=9618
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=9625
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=9613
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=2154
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=2132
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=2144
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=2127
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=2146
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=2153
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=2148
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=2128
;

-- Aug 14, 2014 9:29:40 AM BRT
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=2135
;

-- Aug 14, 2014 9:31:15 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-08-14 09:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001940
;

-- Aug 14, 2014 9:31:23 AM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-08-14 09:31:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001941
;

-- Aug 14, 2014 9:31:30 AM BRT
UPDATE AD_Field SET XPosition=7, AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-08-14 09:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001942
;

-- Aug 14, 2014 9:31:43 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-08-14 09:31:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001942
;

-- Aug 14, 2014 9:31:45 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-08-14 09:31:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001941
;

-- Aug 14, 2014 9:31:48 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-08-14 09:31:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001940
;

-- Aug 14, 2014 9:38:48 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y & @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 09:38:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001941
;

-- Aug 14, 2014 9:38:53 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y & @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 09:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001942
;

-- Aug 14, 2014 9:51:33 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_AllowBankCollection',1000353,'Allow Bank Collection','A flag to allow the issue of bank collection (boleto)','Allow Bank Collection','ea076478-b4b2-4840-8f2f-261f81de25cc',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 09:51:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 09:51:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:56:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001135,'Y','N','N',0,'N',1,'N','N','N','Y','a2c9b264-da97-48ab-b946-3e4d6fb8f2db','Y','LBR_AllowBankCollection','A flag to allow the issue of bank collection (boleto)','N','Allow Bank Collection','Y',TO_DATE('2014-08-14 09:56:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 09:56:25','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000353,20,297,0,'LBR')
;

-- Aug 14, 2014 9:56:28 AM BRT
ALTER TABLE C_BankAccount ADD LBR_AllowBankCollection CHAR(1) DEFAULT 'N' CHECK (LBR_AllowBankCollection IN ('Y','N')) NOT NULL
;

-- Aug 14, 2014 9:56:46 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,1,'N','N',170,'Y',1001943,'N','LBR','A flag to allow the issue of bank collection (boleto)','Allow Bank Collection','18e02646-55f1-441a-8c85-621f85c84763','N','Y',0,0,0,TO_DATE('2014-08-14 09:56:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,2,0,2,1001135,TO_DATE('2014-08-14 09:56:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 9:57:25 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001943
;

-- Aug 14, 2014 9:57:25 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2220
;

-- Aug 14, 2014 9:57:25 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=60881
;

-- Aug 14, 2014 9:57:25 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2221
;

-- Aug 14, 2014 10:02:22 AM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BankAccount.LBR_AllowBankCollection = ''Y''',1000015,'LBR','LBR_C_BankAccount Only Issue Collection','S','1f16bcb0-a6d9-414d-bd50-f512661f4cb1',0,0,TO_DATE('2014-08-14 10:02:22','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 10:02:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 14, 2014 10:02:43 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000015,Updated=TO_DATE('2014-08-14 10:02:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001134
;

-- Aug 14, 2014 10:05:03 AM BRT
UPDATE AD_Val_Rule SET Code='C_BankAccount.C_Bank_ID=@C_Bank_ID@ AND C_BankAccount.IsActive=''Y'' AND C_BankAccount.LBR_AllowBankCollection=''Y''', Name='LBR_C_BankAccount of Bank (w/ Issue Collection)',Updated=TO_DATE('2014-08-14 10:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000012
;

-- Aug 14, 2014 10:13:33 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y & @PaymentRule@=P',Updated=TO_DATE('2014-08-14 10:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001940
;

-- Aug 14, 2014 10:13:47 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y & @PaymentRule@=P & @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 10:13:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001941
;

-- Aug 14, 2014 10:13:54 AM BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y & @PaymentRule@=P & @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 10:13:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001942
;

-- Aug 14, 2014 10:19:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001136,'N','N','N',0,'N',2,'N','N','N','Y','69c3f845-6925-4083-b790-552ff4cc49bd','Y','LBR_PayInstrument','Payment Instrument','Y',TO_DATE('2014-08-14 10:19:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:19:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000350,17,1000082,259,0,'LBR')
;

-- Aug 14, 2014 10:19:39 AM BRT
ALTER TABLE C_Order ADD LBR_PayInstrument NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 14, 2014 10:20:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001137,'N','N','N',0,'N',3,'N','N','N','Y','39317f52-d64b-4e7a-b12f-990e75e45088','Y','LBR_CollectionIssueDistrib','Issue / Distribution','Y',TO_DATE('2014-08-14 10:20:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:20:16','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000351,17,1000081,259,0,'LBR')
;

-- Aug 14, 2014 10:20:19 AM BRT
ALTER TABLE C_Order ADD LBR_CollectionIssueDistrib NVARCHAR2(3) DEFAULT NULL 
;

-- Aug 14, 2014 10:20:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001138,'N','N','N',0,'N',22,'N','N','N','Y','c9dc4a1f-8c7b-4e85-97a1-91a4c0c82824','Y','LBR_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2014-08-14 10:20:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:20:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000352,18,53283,259,1000015,0,'LBR')
;

-- Aug 14, 2014 10:20:52 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBankAccount_COrder', FKConstraintType='N',Updated=TO_DATE('2014-08-14 10:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001138
;

-- Aug 14, 2014 10:20:52 AM BRT
ALTER TABLE C_Order ADD LBR_BankAccount_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 10:20:52 AM BRT
ALTER TABLE C_Order ADD CONSTRAINT LBRBankAccount_COrder FOREIGN KEY (LBR_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 10:21:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',186,2,'N','N',580,'Y',1001944,'N','LBR','Payment Instrument','51569094-d364-4ece-b49a-81ef2b7ee956','N','Y',0,0,0,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',590,0,2,1001136,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:21:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',186,3,'N','N',590,'Y',1001945,'N','LBR','Issue / Distribution','6b127691-91e8-4ae1-b7c9-a13f94794f4b','N','Y',0,0,0,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',600,0,2,1001137,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:21:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',186,22,'N','N',600,'Y',1001946,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','8964ae80-a839-42e6-b258-5f368bb7a042','N','Y',0,0,0,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',610,0,2,1001138,TO_DATE('2014-08-14 10:21:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:22:28 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=52014
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000301
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2877
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1110
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=10124
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=55410
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=55411
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=55412
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1108
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1109
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2878
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=56446
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1107
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=201827
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=201613
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1104
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1077
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1103
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=8653
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1098
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3272
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=2112
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2109
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3113
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1099
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001944
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001945
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001946
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=56906
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=2593
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=2589
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1324
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=7038
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=7826
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=7825
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1112
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1113
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1082
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1084
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=60922
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=6560
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1083
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=58037
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=3660
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=60972
;

-- Aug 14, 2014 10:22:29 AM BRT
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1001703
;

-- Aug 14, 2014 10:23:58 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P''',Updated=TO_DATE('2014-08-14 10:23:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001944
;

-- Aug 14, 2014 10:25:05 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' &  @LBR_PayInstrument@=BC', XPosition=4,Updated=TO_DATE('2014-08-14 10:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001945
;

-- Aug 14, 2014 10:25:17 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' &  @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 10:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001946
;

-- Aug 14, 2014 10:32:35 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001139,'N','N','N',0,'N',2,'N','N','N','Y','2261063e-f2ce-47c5-9a16-afd1cea893df','Y','LBR_PayInstrument','Payment Instrument','Y',TO_DATE('2014-08-14 10:32:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:32:35','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000350,17,1000082,318,0,'LBR')
;

-- Aug 14, 2014 10:32:38 AM BRT
ALTER TABLE C_Invoice ADD LBR_PayInstrument NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 14, 2014 10:34:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001140,'N','N','N',0,'N',3,'N','N','N','Y','74f484ff-a2ec-4f4c-a92c-dbbaeefbbefd','Y','LBR_CollectionIssueDistrib','Issue / Distribution','Y',TO_DATE('2014-08-14 10:34:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:34:19','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000351,17,1000081,318,0,'LBR')
;

-- Aug 14, 2014 10:34:21 AM BRT
ALTER TABLE C_Invoice ADD LBR_CollectionIssueDistrib NVARCHAR2(3) DEFAULT NULL 
;

-- Aug 14, 2014 10:35:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001141,'N','N','N',0,'N',22,'N','N','N','Y','d3c5a030-5741-4720-ae09-8c11de67eac2','Y','LBR_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2014-08-14 10:35:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 10:35:16','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N','N',1000352,18,53283,318,1000015,0,'LBR')
;

-- Aug 14, 2014 10:35:18 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRBankAccount_CInvoice', FKConstraintType='N',Updated=TO_DATE('2014-08-14 10:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001141
;

-- Aug 14, 2014 10:35:18 AM BRT
ALTER TABLE C_Invoice ADD LBR_BankAccount_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 10:35:18 AM BRT
ALTER TABLE C_Invoice ADD CONSTRAINT LBRBankAccount_CInvoice FOREIGN KEY (LBR_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 10:36:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',263,2,'N','N',470,'Y',1001947,'N','LBR','Payment Instrument','c152bd20-9557-4395-b2d3-0353b2b74aa4','N','Y',0,0,0,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',470,0,2,1001139,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:36:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',263,3,'N','N',480,'Y',1001948,'N','LBR','Issue / Distribution','ee807d72-67e3-4164-90fb-49b374384482','N','Y',0,0,0,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',480,0,2,1001140,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:36:49 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',263,22,'N','N',490,'Y',1001949,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','96a84502-6cff-4f3d-a4b1-f33dcf9dcb52','N','Y',0,0,0,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',490,0,2,1001141,TO_DATE('2014-08-14 10:36:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001947
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001948
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001949
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4244
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- Aug 14, 2014 10:38:07 AM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=60970
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=200050
;

-- Aug 14, 2014 10:38:08 AM BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1001704
;

-- Aug 14, 2014 10:39:29 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P''',Updated=TO_DATE('2014-08-14 10:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001947
;

-- Aug 14, 2014 10:39:48 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' &  @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 10:39:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001948
;

-- Aug 14, 2014 10:39:51 AM BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' &  @LBR_PayInstrument@=BC',Updated=TO_DATE('2014-08-14 10:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001949
;

-- Aug 14, 2014 10:40:00 AM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-08-14 10:40:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001948
;

-- Aug 14, 2014 12:09:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001142,'N','N','N',0,'N',22,'N','N','N','Y','add93957-5ea5-4a42-8469-758151716fdc','Y','LBR_CorrespBank_ID','Correspondent Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank','Y',TO_DATE('2014-08-14 12:09:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 12:09:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000313,18,52001,297,0,'LBR')
;

-- Aug 14, 2014 12:09:02 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCorrespBank_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2014-08-14 12:09:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001142
;

-- Aug 14, 2014 12:09:02 PM BRT
ALTER TABLE C_BankAccount ADD LBR_CorrespBank_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 12:09:02 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRCorrespBank_CBankAccount FOREIGN KEY (LBR_CorrespBank_ID) REFERENCES c_bank(c_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 12:14:34 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_SeqNumberInBank_ID',1000354,'The Sequence for Number in Bank defines the numbering sequence to be used for documents that use Number in Bank.','Sequence for Number in Bank','Sequence for Number in Bank','Sequence Number in Bank','eef2af3c-ead0-4179-8c22-21eddf650fdd',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 12:14:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 12:14:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:17:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001143,'N','N','N',0,'N',22,'N','N','N','Y','a5daa831-5117-46c4-912a-8baccad09c17','Y','LBR_SeqNumberInBank_ID','Sequence for Number in Bank','The Sequence for Number in Bank defines the numbering sequence to be used for documents that use Number in Bank.','Sequence for Number in Bank','Y',TO_DATE('2014-08-14 12:17:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 12:17:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000354,18,128,297,0,'LBR')
;

-- Aug 14, 2014 12:17:41 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRSeqNumberInBank_CBankAccoun', FKConstraintType='N',Updated=TO_DATE('2014-08-14 12:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001143
;

-- Aug 14, 2014 12:17:41 PM BRT
ALTER TABLE C_BankAccount ADD LBR_SeqNumberInBank_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 12:17:41 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRSeqNumberInBank_CBankAccoun FOREIGN KEY (LBR_SeqNumberInBank_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 12:19:48 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_SeqCNAB240Lot_ID',1000355,'The Sequence for Lot (CNAB) defines the numbering sequence to be used for Lot entries in the generated file destinated to banks.','Sequence for Lot (CNAB)','Sequence for Lot (CNAB)','Sequence Lot','aff7ff72-495a-4b3c-aeeb-f3db06adc596',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 12:19:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 12:19:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:23:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_SeqCNAB240File_ID',1000356,'The Sequence for File (CNAB) defines the numbering sequence to be used for files in the generated file destinated to banks.','Sequence for File (CNAB)','Sequence for File (CNAB)','Sequence File','8f542bcd-7671-42a7-8a91-77b845056a60',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-14 12:23:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-14 12:23:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:26:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001144,'N','N','N',0,'N',22,'N','N','N','Y','5a4f096b-5023-4427-a14c-70d4187de88e','Y','LBR_SeqCNAB240Lot_ID','Sequence for Lot (CNAB)','The Sequence for Lot (CNAB) defines the numbering sequence to be used for Lot entries in the generated file destinated to banks.','Sequence for Lot (CNAB)','Y',TO_DATE('2014-08-14 12:26:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 12:26:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000355,18,128,297,0,'LBR')
;

-- Aug 14, 2014 12:26:25 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRSeqCNAB240Lot_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2014-08-14 12:26:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001144
;

-- Aug 14, 2014 12:26:25 PM BRT
ALTER TABLE C_BankAccount ADD LBR_SeqCNAB240Lot_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 12:26:25 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRSeqCNAB240Lot_CBankAccount FOREIGN KEY (LBR_SeqCNAB240Lot_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 12:26:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001145,'N','N','N',0,'N',22,'N','N','N','Y','67a08dab-10d4-400a-9f6a-9c54b8963f87','Y','LBR_SeqCNAB240File_ID','Sequence for File (CNAB)','The Sequence for File (CNAB) defines the numbering sequence to be used for files in the generated file destinated to banks.','Sequence for File (CNAB)','Y',TO_DATE('2014-08-14 12:26:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 12:26:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000356,18,128,297,0,'LBR')
;

-- Aug 14, 2014 12:26:57 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRSeqCNAB240File_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2014-08-14 12:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001145
;

-- Aug 14, 2014 12:26:57 PM BRT
ALTER TABLE C_BankAccount ADD LBR_SeqCNAB240File_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 14, 2014 12:26:57 PM BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRSeqCNAB240File_CBankAccount FOREIGN KEY (LBR_SeqCNAB240File_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- Aug 14, 2014 12:27:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,22,'N','N',180,'Y',1001950,'N','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','LBR','Correspondent Bank','Correspondent Bank','7f08e550-2e96-4adf-898e-930ef4158b4b','N','Y',0,0,0,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,0,2,1001142,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:27:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,22,'N','N',190,'Y',1001951,'N','The Sequence for Number in Bank defines the numbering sequence to be used for documents that use Number in Bank.','LBR','Sequence for Number in Bank','Sequence for Number in Bank','9c6c5bc3-bce6-479f-bc7c-f661ec3b0d0c','N','Y',0,0,0,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,0,2,1001143,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:27:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,22,'N','N',200,'Y',1001952,'N','The Sequence for Lot (CNAB) defines the numbering sequence to be used for Lot entries in the generated file destinated to banks.','LBR','Sequence for Lot (CNAB)','Sequence for Lot (CNAB)','58f11509-e502-4ae8-89b7-b4f8d92cfd96','N','Y',0,0,0,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,0,2,1001144,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:27:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,22,'N','N',210,'Y',1001953,'N','The Sequence for File (CNAB) defines the numbering sequence to be used for files in the generated file destinated to banks.','LBR','Sequence for File (CNAB)','Sequence for File (CNAB)','9adf9de3-bebf-4d9a-85d1-6f27ae7b5aaf','N','Y',0,0,0,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,0,2,1001145,TO_DATE('2014-08-14 12:27:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 12:28:17 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001951
;

-- Aug 14, 2014 12:28:17 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001950
;

-- Aug 14, 2014 12:28:17 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001953
;

-- Aug 14, 2014 12:28:17 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001952
;

-- Aug 14, 2014 12:30:13 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=200015,Updated=TO_DATE('2014-08-14 12:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001951
;

-- Aug 14, 2014 12:30:20 PM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=200015,Updated=TO_DATE('2014-08-14 12:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001950
;

-- Aug 14, 2014 12:30:24 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=200015,Updated=TO_DATE('2014-08-14 12:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001953
;

-- Aug 14, 2014 12:30:31 PM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=200015,Updated=TO_DATE('2014-08-14 12:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001952
;

-- Aug 14, 2014 12:36:01 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2014-08-14 12:36:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001951
;

-- Aug 14, 2014 12:36:05 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2014-08-14 12:36:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001950
;

-- Aug 14, 2014 12:36:08 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2014-08-14 12:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001953
;

-- Aug 14, 2014 12:36:11 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y',Updated=TO_DATE('2014-08-14 12:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001952
;

-- Aug 14, 2014 1:06:56 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000010,Updated=TO_DATE('2014-08-14 13:06:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001029
;

-- Aug 14, 2014 1:07:35 PM BRT
UPDATE AD_Column SET IsToolbarButton='N',Updated=TO_DATE('2014-08-14 13:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001029
;

-- Aug 14, 2014 1:11:37 PM BRT
UPDATE AD_Field SET XPosition=5,Updated=TO_DATE('2014-08-14 13:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001785
;

-- Aug 14, 2014 1:12:04 PM BRT
UPDATE AD_Field SET DisplayLogic='@Processed@=Y & @#ShowAcct@=Y', XPosition=5,Updated=TO_DATE('2014-08-14 13:12:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001789
;

-- Aug 14, 2014 5:19:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001146,'N','N','N',0,'N',20,'N','N','N','Y','8a6b267f-79af-4aee-a6d8-f6f67c44fa11','Y','LBR_NumberInCorrespBank','Number in the Correspondent Bank','Y',TO_DATE('2014-08-14 17:19:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 17:19:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000315,10,297,0,'LBR')
;

-- Aug 14, 2014 5:19:15 PM BRT
ALTER TABLE C_BankAccount ADD LBR_NumberInCorrespBank NVARCHAR2(20) DEFAULT NULL 
;

-- Aug 14, 2014 5:20:13 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,20,'N','N',220,'Y',1001954,'N','LBR','Number in the Correspondent Bank','5fa1f360-2133-4069-a626-a51f6559748a','N','Y',0,0,0,TO_DATE('2014-08-14 17:20:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,1001146,TO_DATE('2014-08-14 17:20:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 5:20:38 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001953
;

-- Aug 14, 2014 5:20:38 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001952
;

-- Aug 14, 2014 5:20:38 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001950
;

-- Aug 14, 2014 5:21:18 PM BRT
UPDATE AD_Field SET XPosition=1,Updated=TO_DATE('2014-08-14 17:21:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001950
;

-- Aug 14, 2014 5:21:32 PM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=200015,Updated=TO_DATE('2014-08-14 17:21:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001954
;

-- Aug 14, 2014 5:22:33 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AllowBankCollection@=Y & @LBR_CorrespBank_ID@>0',Updated=TO_DATE('2014-08-14 17:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001954
;

-- Aug 14, 2014 5:27:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001147,'N','N','N',0,'N',1,'N','N','N','Y','6edc7d69-f83b-42d8-acc9-1ceb3b4fc015','Y','LBR_CNAB240DocType','Collection document type, according to Febraban.','Febraban Document Type','Y',TO_DATE('2014-08-14 17:27:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-14 17:27:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000319,17,1000074,1000052,0,'LBR')
;

-- Aug 14, 2014 5:27:54 PM BRT
ALTER TABLE LBR_Collection_Default ADD LBR_CNAB240DocType CHAR(1) DEFAULT NULL 
;

-- Aug 14, 2014 5:28:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000095,1,'N','N',230,'Y',1001955,'N','Collection document type, according to Febraban.','LBR','Febraban Document Type','8483cdda-6ecc-4853-8492-fd9eaa4de8d8','N','Y',0,0,0,TO_DATE('2014-08-14 17:28:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,0,2,1001147,TO_DATE('2014-08-14 17:28:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 14, 2014 5:29:05 PM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-14 17:29:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001955
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001801
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001802
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001796
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001797
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001798
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001799
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001803
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001804
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001806
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001808
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001814
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001815
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001816
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001817
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001818
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001819
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001820
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001821
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001805
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001807
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001812
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001813
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001809
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001810
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001811
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001822
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001823
;

-- Aug 15, 2014 9:22:52 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001795
;

-- Aug 15, 2014 9:23:31 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2014-08-15 09:23:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001801
;

-- Aug 15, 2014 9:23:37 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2014-08-15 09:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001802
;

-- Aug 15, 2014 9:24:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-08-15 09:24:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001795
;

-- Aug 15, 2014 9:24:08 AM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-08-15 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001788
;

SELECT lbr_register_migration_script('201408061739.sql') FROM dual
;

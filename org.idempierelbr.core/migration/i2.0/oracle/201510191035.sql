SET SQLBLANKLINES ON
SET DEFINE OFF

-- Oct 16, 2015 3:44:28 PM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,CreatedBy,UpdatedBy,Processing,DatabaseViewDrop,EntityType,AD_Org_ID,AD_Client_ID,Created,Updated) VALUES ('N','N','N','3',0,800012,'N','N','N','L','e5e73ada-1628-4dd4-8b95-536cc953095e','Y','N','LBR_CNAB','Brasilian bank integration files','CNAB Files','Y',0,0,'N','N','LBR',0,0,TO_DATE('2015-10-16 15:44:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-10-16 15:44:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 3:44:29 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,AD_Sequence_UU,IncrementNo,AD_Org_ID,CreatedBy,UpdatedBy,Updated,IsActive,StartNo,AD_Client_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800020,'Table LBR_CNAB','LBR_CNAB','9506e2a9-b981-4e41-9702-70d4e5261ecd',1,0,0,0,TO_DATE('2015-10-16 15:44:28','YYYY-MM-DD HH24:MI:SS'),'Y',1000000,0,TO_DATE('2015-10-16 15:44:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 3:54:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800619,'N','N','N',0,'N',22,'N','N','N','Y','676d2399-d085-4064-bd39-dc8a036b0326','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2015-10-16 15:54:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',102,19,800012,129,0,0,'LBR')
;

-- Oct 16, 2015 3:54:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800620,'N','N','N',0,'N',22,'N','N','N','Y','1e31ab8e-f279-4090-9bcf-d28861f065c6','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2015-10-16 15:54:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',113,19,800012,104,0,0,'LBR')
;

-- Oct 16, 2015 3:54:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800621,'N','N','N',0,'N',7,'N','N','N','Y','3c08984e-3ae2-417d-a585-2840d7c9504b','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2015-10-16 15:54:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',245,16,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800622,'N','N','N',0,'N',22,'N','N','N','Y','496e756c-944a-4e1b-9463-2a5a54666841','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2015-10-16 15:54:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',246,18,110,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800623,'N','N','N',0,'N',255,'Y','N','N','Y','b2c26cf3-b2f1-4a48-8ff8-2bfc3d2bd3a0','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2015-10-16 15:54:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',275,14,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800624,'N','N','N',0,'N',1,'N','N','N','Y','82719d96-ac7a-4b59-8660-d27a5cebc98e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2015-10-16 15:54:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',348,20,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:40 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CNAB_ID',800141,'CNAB Files','CNAB Files','f7ca4bc5-2e01-4d3e-b38b-5eddb1505bab',TO_DATE('2015-10-16 15:54:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-10-16 15:54:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 3:54:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800625,'Y','N','N',0,'N',10,'N','Y','N','Y','19d2bb21-a86d-4313-898e-995483ff796a','N','LBR_CNAB_ID','CNAB Files','N',TO_DATE('2015-10-16 15:54:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800141,13,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:41 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_CNAB_UU',800142,'LBR_CNAB_UU','LBR_CNAB_UU','d4eea626-b211-4715-99df-3bb267bae62f',TO_DATE('2015-10-16 15:54:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_DATE('2015-10-16 15:54:40','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 3:54:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800626,'N','N','N',0,'N',36,'N','N','N','Y','1c6fdf0c-62ab-458c-bb62-6f174fa4d80d','N','LBR_CNAB_UU','LBR_CNAB_UU','N',TO_DATE('2015-10-16 15:54:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800142,10,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800627,'N','N','N',0,'N',7,'N','N','N','Y','ae71fce9-ada4-4f7c-945b-59e94aa00a1c','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2015-10-16 15:54:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',607,16,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:54:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800628,'N','N','N',0,'N',22,'N','N','N','Y','977e779a-dd56-46a7-ab3d-83fddaa9a1aa','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2015-10-16 15:54:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:54:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',608,18,110,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:59:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800629,'N','N','N',0,'N',10,'N','N','N','Y','c22fa26d-2848-4acb-9c44-d2eeeb53031c','N','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank','Y',TO_DATE('2015-10-16 15:59:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:59:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','C',835,19,800012,0,0,'LBR')
;

-- Oct 16, 2015 3:59:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800630,'N','N','N',0,'N',22,'N','N','N','Y','69d14d68-4b68-4bd0-9f2e-df9d30ebab82','Y','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account','Y',TO_DATE('2015-10-16 15:59:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 15:59:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',836,19,800012,0,0,'LBR')
;

-- Oct 16, 2015 4:00:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800631,'N','N','N',0,'N',29,'N','N','N','Y','024718ab-ed17-401b-b81b-44b25acd7815','N','LBR_FileGeneratingDate','Indicates when the file was generated','File Generating Date','Y',TO_DATE('2015-10-16 16:00:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 16:00:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',1000366,15,800012,0,0,'LBR')
;

-- Oct 16, 2015 4:01:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800632,'N','N','N',0,'N',22,'N','N','N','Y','2589dc31-10d9-458f-8126-c22a79360b77','Y','LBR_CNAB240SeqNo','Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','CNAB 240 Sequence No.','Y',TO_DATE('2015-10-16 16:01:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 16:01:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',1000367,11,800012,0,0,'LBR')
;

-- Oct 16, 2015 4:05:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800633,'N','N','N',0,'N',1,'N','N','N','Y','c51129ac-d23d-4b3b-8793-238fd9096577','N','LBR_CNAB240MovementType','Movement Type','Y',TO_DATE('2015-10-16 16:05:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 16:05:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',1000363,17,1000083,800012,0,0,'LBR')
;

-- Oct 16, 2015 4:07:26 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCNAB', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800619
;

-- Oct 16, 2015 4:07:26 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCNAB', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800620
;

-- Oct 16, 2015 4:07:26 PM BRT
UPDATE AD_Column SET FKConstraintName='CBankAccount_LBRCNAB', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800630
;

-- Oct 16, 2015 4:07:26 PM BRT
UPDATE AD_Column SET FKConstraintName='CBank_LBRCNAB', FKConstraintType='C',Updated=TO_DATE('2015-10-16 16:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800629
;

-- Oct 16, 2015 4:07:26 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCNAB', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800622
;

-- Oct 16, 2015 4:07:27 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCNAB', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:07:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800628
;

-- Oct 16, 2015 4:07:27 PM BRT
CREATE TABLE LBR_CNAB (AD_Client_ID NUMBER(10) DEFAULT NULL , AD_Org_ID NUMBER(10) DEFAULT NULL , C_BankAccount_ID NUMBER(10) DEFAULT NULL , C_Bank_ID NUMBER(10) DEFAULT NULL , Created DATE DEFAULT NULL , CreatedBy NUMBER(10) DEFAULT NULL , Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_CNAB240MovementType CHAR(1) DEFAULT NULL , LBR_CNAB240SeqNo NUMBER(10) DEFAULT NULL , LBR_CNAB_ID NUMBER(10) NOT NULL, LBR_CNAB_UU NVARCHAR2(36) DEFAULT NULL , LBR_FileGeneratingDate DATE DEFAULT NULL , Updated DATE DEFAULT NULL , UpdatedBy NUMBER(10) DEFAULT NULL , CONSTRAINT LBR_CNAB_Key PRIMARY KEY (LBR_CNAB_ID), CONSTRAINT LBR_CNAB_UU_idx UNIQUE (LBR_CNAB_UU))
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT ADClient_LBRCNAB FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT ADOrg_LBRCNAB FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT CBankAccount_LBRCNAB FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT CBank_LBRCNAB FOREIGN KEY (C_Bank_ID) REFERENCES c_bank(c_bank_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT CreatedBy_LBRCNAB FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:07:27 PM BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT UpdatedBy_LBRCNAB FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:09:42 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800634,'N','N','N',0,'N',10,'N','N','N','Y','78086d66-5424-4201-8ba4-713c9f4c0651','N','LBR_CNAB_ID','CNAB Files','Y',TO_DATE('2015-10-16 16:09:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-16 16:09:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N',800141,19,1000059,0,0,'LBR')
;

-- Oct 16, 2015 4:09:52 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCNAB_LBRBoletoMovement', FKConstraintType='N',Updated=TO_DATE('2015-10-16 16:09:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800634
;

-- Oct 16, 2015 4:09:52 PM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNAB_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 16, 2015 4:09:52 PM BRT
ALTER TABLE LBR_BoletoMovement ADD CONSTRAINT LBRCNAB_LBRBoletoMovement FOREIGN KEY (LBR_CNAB_ID) REFERENCES lbr_cnab(lbr_cnab_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 16, 2015 4:11:00 PM BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-10-16 16:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800630
;

-- Oct 16, 2015 4:12:49 PM BRT
UPDATE AD_Column SET SeqNo=1,Updated=TO_DATE('2015-10-16 16:12:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800630
;

-- Oct 16, 2015 4:12:58 PM BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-10-16 16:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800629
;

-- Oct 16, 2015 4:13:36 PM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_DATE('2015-10-16 16:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800631
;

-- Oct 16, 2015 4:13:48 PM BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=3,Updated=TO_DATE('2015-10-16 16:13:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800633
;

-- Oct 16, 2015 4:15:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000102,10,'N','N',560,'Y',800167,'N','LBR','CNAB Files','e3677c1a-723f-4dd3-ba63-8a7f259552ab','Y','N',0,0,TO_DATE('2015-10-16 16:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',560,0,2,800634,0,TO_DATE('2015-10-16 16:14:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:16:35 PM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,WinHeight,IsBetaFunctionality,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Updated,IsActive,UpdatedBy,CreatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('N','M','Y','N',0,'N',0,'LBR','CNAB Files','Brazilian bank integration files',800004,'4c04214b-0224-4ec7-a763-871a4e6b0ec7',TO_DATE('2015-10-16 16:16:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,0,0,0,TO_DATE('2015-10-16 16:16:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:14 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,AD_Window_ID,IsSingleRow,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N',800004,'Y',10,'N','N','N','N','Y','N','N',0,'986f2b9c-65cc-47aa-b9de-dd7e92a8cebc','LBR','CNAB Files','Brazilian bank integration files',800010,0,0,TO_DATE('2015-10-16 16:18:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,800012,'B',TO_DATE('2015-10-16 16:18:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:31 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,22,'N','N',10,'Y',800168,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f8693325-bb97-427a-b5a8-8d3ad082a980','Y','N',0,0,TO_DATE('2015-10-16 16:18:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800619,0,TO_DATE('2015-10-16 16:18:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,IsAllowCopy,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,22,'N','N',20,'Y',800169,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','2bb4572f-b70f-4edb-81ab-7fb8c4d1d311','Y','N','Y',0,0,TO_DATE('2015-10-16 16:18:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,0,2,800620,0,TO_DATE('2015-10-16 16:18:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:33 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,255,'N','N',30,'Y',800170,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','8100dab8-cf2d-48e5-98a7-c35c47a0c4c0','Y','N',0,0,TO_DATE('2015-10-16 16:18:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,0,5,3,800623,0,TO_DATE('2015-10-16 16:18:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:33 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,10,'N','N','Y',800171,'N','LBR','CNAB Files','890e264a-eb80-4af7-b7f1-930636326a88','N','N',0,0,TO_DATE('2015-10-16 16:18:33','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800625,0,TO_DATE('2015-10-16 16:18:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:34 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,36,'N','N','Y',800172,'N','LBR','LBR_CNAB_UU','649c22a3-d8a6-4804-89b2-1641519a9fd2','N','N',0,0,TO_DATE('2015-10-16 16:18:33','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,800626,0,TO_DATE('2015-10-16 16:18:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:35 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,10,'N','N',40,'Y',800173,'N','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','LBR','Bank','Bank','f0b76e78-2c71-403e-9fe2-58bfa3f67fd7','Y','N',0,0,TO_DATE('2015-10-16 16:18:34','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,0,2,800629,0,TO_DATE('2015-10-16 16:18:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:36 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,22,'N','N',50,'Y',800174,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','5a3f9d1d-8683-4d4a-ad0e-25738e7ca20c','Y','N',0,0,TO_DATE('2015-10-16 16:18:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,0,2,800630,0,TO_DATE('2015-10-16 16:18:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,29,'N','N',60,'Y',800175,'N','Indicates when the file was generated','LBR','File Generating Date','c8b12cc0-f9f4-45b9-b9d3-aea50229114a','Y','N',0,0,TO_DATE('2015-10-16 16:18:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,0,2,800631,0,TO_DATE('2015-10-16 16:18:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,22,'N','N',70,'Y',800176,'N','Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','LBR','CNAB 240 Sequence No.','9ce15dd2-03fc-43e0-95d2-c1fcd9c808e2','Y','N',0,0,TO_DATE('2015-10-16 16:18:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,0,2,800632,0,TO_DATE('2015-10-16 16:18:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,1,'N','N',80,'Y',800177,'N','LBR','Movement Type','c124a545-4415-4bb6-8e0a-98ff2fcdb590','Y','N',0,0,TO_DATE('2015-10-16 16:18:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,0,2,800633,0,TO_DATE('2015-10-16 16:18:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:18:40 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800010,1,'N','N',90,'Y',800178,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','1a39d144-2ecf-4ee7-9de9-e7b1a4ad0c4b','Y','N',0,0,TO_DATE('2015-10-16 16:18:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,800624,0,TO_DATE('2015-10-16 16:18:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:20:57 PM BRT
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-10-16 16:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800174
;

-- Oct 16, 2015 4:20:57 PM BRT
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-10-16 16:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800176
;

-- Oct 16, 2015 4:20:57 PM BRT
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', XPosition=1,Updated=TO_DATE('2015-10-16 16:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800178
;

-- Oct 16, 2015 4:20:57 PM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_DATE('2015-10-16 16:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800171
;

-- Oct 16, 2015 4:20:57 PM BRT
UPDATE AD_Field SET SeqNo=0,Updated=TO_DATE('2015-10-16 16:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800172
;

-- Oct 16, 2015 4:22:44 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,AD_Window_ID,IsSingleRow,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn,Created) VALUES ('N','N',800004,'N',20,'N','N','N','N','N','Y','N',1,'7b46546d-c405-4a0e-af68-8b5d01e88c6f','LBR','Movements',800011,0,0,TO_DATE('2015-10-16 16:22:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000059,'B',TO_DATE('2015-10-16 16:22:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:23:30 PM BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N', Parent_Column_ID=800625, AD_Column_ID=800634,Updated=TO_DATE('2015-10-16 16:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800011
;



-- Oct 16, 2015 4:27:56 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Client_ID,AD_Window_ID,EntityType,Created) VALUES (800010,'N','N','N','Y','CNAB Files','Brazilian bank integration files','d05c84de-863b-4717-b6ed-edb8fa78edc7','W','Y',0,TO_DATE('2015-10-16 16:27:55','YYYY-MM-DD HH24:MI:SS'),0,0,0,800004,'LBR',TO_DATE('2015-10-16 16:27:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 16, 2015 4:27:56 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800010, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800010)
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Oct 16, 2015 4:28:22 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800010
;

-- Oct 19, 2015 10:03:57 AM BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2015-10-19 10:03:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800629
;

-- Oct 19, 2015 10:04:09 AM BRST
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2015-10-19 10:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800633
;

-- Oct 19, 2015 10:05:04 AM BRST
UPDATE AD_Table SET AD_Window_ID=800004,Updated=TO_DATE('2015-10-19 10:05:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800012
;

-- Oct 19, 2015 10:05:16 AM BRST
UPDATE AD_Table SET IsHighVolume='Y',Updated=TO_DATE('2015-10-19 10:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800012
;

-- Oct 19, 2015 10:06:37 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,ColumnSQL,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800635,'N','N','N',0,'N',22,'N','N','N','Y','58965b41-b4af-49b0-82de-119db98eac61','N','C_BPartner_ID','Identifies a Business Partner','(SELECT C_BPartner_ID FROM LBR_Boleto b WHERE b.LBR_Boleto_ID=LBR_BoletoMovement.LBR_Boleto_ID)','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ','N',TO_DATE('2015-10-19 10:06:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-10-19 10:06:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',187,19,1000059,0,0,'LBR')
;

-- Oct 19, 2015 10:07:10 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,36,'N','N',0,'Y',800237,'N','LBR','Boleto Movement','33da0568-a0dd-4519-89a5-d8447a6e961c','N','N',0,0,TO_DATE('2015-10-19 10:07:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1001195,0,TO_DATE('2015-10-19 10:07:09','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:11 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',10,'Y',800238,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','709dceb6-99ed-43e3-b1b0-3803b2d93274','Y','N',0,0,TO_DATE('2015-10-19 10:07:10','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1001187,0,TO_DATE('2015-10-19 10:07:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:11 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,IsAllowCopy,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',20,'Y',800239,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','5c79a38d-3c7d-4be1-9242-4a7af521348f','Y','N','Y',0,0,TO_DATE('2015-10-19 10:07:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,4,'N',0,2,1,'N','N',1001188,0,TO_DATE('2015-10-19 10:07:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:12 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,255,'N','N',30,'Y',800240,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','eb30e2a0-84df-4ec1-9259-c1ed81c508a0','Y','N',0,0,TO_DATE('2015-10-19 10:07:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,5,1,'N','N',1001198,0,TO_DATE('2015-10-19 10:07:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:13 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',40,'Y',800241,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','65f4c4cb-2e11-47be-bba4-a1541d7ea106','Y','N',0,0,TO_DATE('2015-10-19 10:07:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,2,'N',0,2,1,'N','N',1001193,0,TO_DATE('2015-10-19 10:07:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:14 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',50,'Y',800242,'N','The Brazilian Bank Collection (Boleto) Document.','LBR','Brazilian Bank Collection (Boleto) Identifier','Brazilian Bank Collection (Boleto)','34dc19ce-dc01-48f4-b4c1-de917f1eabb2','Y','N',0,0,TO_DATE('2015-10-19 10:07:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1001196,0,TO_DATE('2015-10-19 10:07:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:15 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',60,'Y',800243,'N','The Sequence indicates the order of records','LBR','Method of ordering records; lowest number comes first','Sequence','e967ab17-0f07-43dd-8361-c10ea3156352','Y','N',0,0,TO_DATE('2015-10-19 10:07:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1001199,0,TO_DATE('2015-10-19 10:07:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:16 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',70,'Y',800244,'N','LBR','Collection Movement','d8228f3e-c072-4161-9ae9-8c10497772ae','Y','N',0,0,TO_DATE('2015-10-19 10:07:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,1,'N',0,2,1,'N','N',1001232,0,TO_DATE('2015-10-19 10:07:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:16 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'Y','N',80,'Y',800245,'N','LBR','Movement Type','d3ddcc71-2b52-442b-b8c4-80b49f2188ad','Y','N',0,0,TO_DATE('2015-10-19 10:07:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1001197,0,TO_DATE('2015-10-19 10:07:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:17 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',90,'Y',800246,'N','Indicates when the file was generated','@LBR_FileGeneratingDate@!''''','LBR','File Generating Date','364442c0-7490-4558-b475-55f60a1d8ee8','Y','N',0,0,TO_DATE('2015-10-19 10:07:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1001200,1000015,0,TO_DATE('2015-10-19 10:07:16','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:18 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',100,'Y',800247,'N','Indicates the sequence number that identifies the file/lot of a CNAB 240 file.','@LBR_CNAB240SeqNo@!''''','LBR','CNAB 240 Sequence No.','4186571b-c164-43f7-ad22-d14c6e7ef7da','Y','N',0,0,TO_DATE('2015-10-19 10:07:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,4,'N',0,2,1,'N','N',1001201,1000015,0,TO_DATE('2015-10-19 10:07:17','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:19 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,20,'N','N',110,'Y',800248,'N','@LBR_NumberInBank@!''''','LBR','Number in the Bank','8e2dc7d6-638f-48be-9be8-19e8dcee5a3c','Y','N',0,0,TO_DATE('2015-10-19 10:07:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1001202,1000015,0,TO_DATE('2015-10-19 10:07:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:20 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,15,'Y','N',120,'Y',800249,'N','@LBR_NumberInOrg@!''''','LBR','Number in the Org','b5210935-fa63-4325-856f-29d5fe8146e5','Y','N',0,0,TO_DATE('2015-10-19 10:07:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,4,'N',0,2,1,'N','N',1001204,1000015,0,TO_DATE('2015-10-19 10:07:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:21 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',130,'Y',800250,'N','Defines the Carteira type according to Febraban','@LBR_CarteiraType@!''''','LBR','Bank Account Carteira Type','6c525d4e-5890-4e84-ad10-6782dbcc93cb','Y','N',0,0,TO_DATE('2015-10-19 10:07:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1001203,1000015,0,TO_DATE('2015-10-19 10:07:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:21 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,20,'Y','N',140,'Y',800251,'N','Defines the Convênio number','@LBR_ConvenioNo@!''''','LBR','Convênio No.','87c79750-5c94-4d19-aec8-da913bf17d98','Y','N',0,0,TO_DATE('2015-10-19 10:07:21','YYYY-MM-DD HH24:MI:SS'),'Y','Y',370,4,'N',0,2,1,'N','N',1001230,1000015,0,TO_DATE('2015-10-19 10:07:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:23 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',150,'Y',800252,'N','Date when the payment is due without deductions or discount','@DueDate@!''''','LBR','Date when the payment is due','Due Date','1a3173e5-18e9-4537-a42d-60e0e9808a8b','Y','N',0,0,TO_DATE('2015-10-19 10:07:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1001205,1000015,0,TO_DATE('2015-10-19 10:07:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:24 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',160,'N',800253,'N','The Grand Total displays the total amount including Tax and Freight in document currency','@GrandTotal@!''''','LBR','Total amount of document','Grand Total','158b03c9-904d-44e2-ba56-3d42d5a05645','Y','N',0,0,TO_DATE('2015-10-19 10:07:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,4,'N',0,2,1,'N','N',1001206,1000015,0,TO_DATE('2015-10-19 10:07:23','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:25 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',170,'Y',800254,'N','Indicates the collecting bank number.','@LBR_CollectBankNo@!''''','LBR','Collecting Bank No.','b007b517-a156-4078-a1f4-1dc76baf54ca','Y','N',0,0,TO_DATE('2015-10-19 10:07:24','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1001207,1000015,0,TO_DATE('2015-10-19 10:07:24','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:26 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'Y','N',180,'Y',800255,'N','Indicates the collecting bank agency number.','@LBR_CollectBankAgencyNo@!''''','LBR','Collecting Bank Agency No.','c4340c1a-6a5e-4b66-b842-8d9f017ed280','Y','N',0,0,TO_DATE('2015-10-19 10:07:25','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,4,'N',0,2,1,'N','N',1001208,1000015,0,TO_DATE('2015-10-19 10:07:25','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:27 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',190,'Y',800256,'N','@LBR_CorrespBankNo@!''''','LBR','Correspondente Bank Number','b6c1c5e4-5eb1-47a6-9f59-e1c2996e81a2','Y','N',0,0,TO_DATE('2015-10-19 10:07:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',350,1,'N',0,2,1,'N','N',1001228,1000015,0,TO_DATE('2015-10-19 10:07:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:27 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,20,'Y','N',200,'Y',800257,'N','@LBR_NumberInCorrespBank@!''''','LBR','Number in the Correspondent Bank','63902e72-84cd-4081-a3c5-8fe2118db030','Y','N',0,0,TO_DATE('2015-10-19 10:07:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',360,4,'N',0,2,1,'N','N',1001229,1000015,0,TO_DATE('2015-10-19 10:07:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:28 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,30,'N','N',210,'Y',800258,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','@LBR_DocumentNo@!''''','LBR','Document sequence number of the document','Document No','0020a6ae-fa98-4bf9-aa3c-4569681d92e9','Y','N',0,0,TO_DATE('2015-10-19 10:07:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',1001209,1000015,0,TO_DATE('2015-10-19 10:07:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:29 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,2,'Y','N',220,'Y',800259,'N','@LBR_CollectionType@!''''','LBR','Collection Type','d7949388-0628-46c7-82e3-6ed5a483e55e','Y','N',0,0,TO_DATE('2015-10-19 10:07:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',380,4,'N',0,2,1,'N','N',1001231,1000015,0,TO_DATE('2015-10-19 10:07:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:30 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,2,'N','N',230,'Y',800260,'N','Currency used for CNAB 240','@LBR_CNAB240Currency@!''''','LBR','Currency','8ac3611c-409a-4238-946a-6f7327b69982','Y','N',0,0,TO_DATE('2015-10-19 10:07:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1001210,1000015,0,TO_DATE('2015-10-19 10:07:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:31 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,10,'Y','N',240,'Y',800261,'N','@LBR_LoanContractNo@!''''','LBR','Loan Contract No.','db125a3b-9e9f-4ff1-a3c5-120f4eff5800','Y','N',0,0,TO_DATE('2015-10-19 10:07:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,4,'N',0,2,1,'N','N',1001211,1000015,0,TO_DATE('2015-10-19 10:07:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:32 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',250,'Y',800262,'N','@LBR_Cob_Ocorrencia1_ID@>0','LBR','Collection Occurrence 1','e2ef59c4-1d1b-45b8-ab7e-c4dac106fe80','Y','N',0,0,TO_DATE('2015-10-19 10:07:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,1,'N',0,2,1,'N','N',1001213,1000015,0,TO_DATE('2015-10-19 10:07:31','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:33 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',260,'Y',800263,'N','@LBR_Cob_Ocorrencia2_ID@>0','LBR','Collection Occurrence 2','9ce674e2-ae54-41c6-8565-bab58d1fd89e','Y','N',0,0,TO_DATE('2015-10-19 10:07:32','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,4,'N',0,2,1,'N','N',1001214,1000015,0,TO_DATE('2015-10-19 10:07:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:33 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',270,'Y',800264,'N','@LBR_Cob_Ocorrencia3_ID@>0','LBR','Collection Occurrence 3','6652890f-e8f9-4929-b510-ffb9e4382d72','Y','N',0,0,TO_DATE('2015-10-19 10:07:33','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,1,'N',0,2,1,'N','N',1001215,1000015,0,TO_DATE('2015-10-19 10:07:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:34 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',280,'Y',800265,'N','@LBR_Cob_Ocorrencia4_ID@>0','LBR','Collection Occurrence 4','46c4152d-ad48-4312-a153-20cfd9343cd3','Y','N',0,0,TO_DATE('2015-10-19 10:07:33','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,4,'N',0,2,1,'N','N',1001216,1000015,0,TO_DATE('2015-10-19 10:07:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:35 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',290,'Y',800266,'N','@LBR_Cob_Ocorrencia5_ID@>0','LBR','Collection Occurrence 5','910ac887-61ed-4c02-952e-b47dbebd1003','Y','N',0,0,TO_DATE('2015-10-19 10:07:34','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,1,'N',0,2,1,'N','N',1001217,1000015,0,TO_DATE('2015-10-19 10:07:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:36 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',300,'N',800267,'N','The Fee Amount indicates the charge amount on a dunning letter for overdue invoices.  This field will only display if the charge fee checkbox has been selected.','@FeeAmt@!''''','LBR','Fee amount in invoice currency','Fee Amount','d16f7dc3-7acc-4f5a-994e-848a3a68b67e','Y','N',0,0,TO_DATE('2015-10-19 10:07:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1001212,1000015,0,TO_DATE('2015-10-19 10:07:35','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:37 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',310,'N',800268,'N','The Interest Amount indicates any interest charged or received on a Bank Statement.','@InterestAmt@!''''','LBR','Interest Amount','Interest Amount','6cace060-0c9e-4fdc-b31e-f6d5db3c2d00','Y','N',0,0,TO_DATE('2015-10-19 10:07:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1001218,1000015,0,TO_DATE('2015-10-19 10:07:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:38 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',320,'Y',800269,'N','The Discount Amount indicates the discount amount for a document or line.','@DiscountAmt@!''''','LBR','Calculated amount of discount','Discount Amount','42682d1b-5655-4996-be45-892e5510272e','Y','N',0,0,TO_DATE('2015-10-19 10:07:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1001219,1000015,0,TO_DATE('2015-10-19 10:07:37','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:39 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',330,'Y',800270,'N','The Write Off Amount indicates the amount to be written off as uncollectible.','@WriteOffAmt@!''''','LBR','Amount to write-off','Write-off Amount','2c15ef27-4607-424b-83a9-f8ccc8246240','Y','N',0,0,TO_DATE('2015-10-19 10:07:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1001220,1000015,0,TO_DATE('2015-10-19 10:07:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:40 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,10,'Y','N',340,'Y',800271,'N','@LBR_IOFAmt@!''''','LBR','Defines the IOF Amount','IOF Amount','1f002fd8-78f5-45a6-8c2d-5f83f92c1645','Y','N',0,0,TO_DATE('2015-10-19 10:07:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,4,'N',0,2,1,'N','N',1001221,1000015,0,TO_DATE('2015-10-19 10:07:39','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:41 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',350,'N',800272,'N','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','@PayAmt@!''''','LBR','Amount being paid','Payment amount','de414668-2802-473c-abe0-0e1f9f570f20','Y','N',0,0,TO_DATE('2015-10-19 10:07:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,2,1,'N','N',1001222,1000015,0,TO_DATE('2015-10-19 10:07:40','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:42 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',360,'N',800273,'N','@AvailableAmt@!''''','LBR','Amount available for allocation for this document','Available Amount','e660762b-1ee0-406c-852a-9ee4f70f047a','Y','N',0,0,TO_DATE('2015-10-19 10:07:41','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,4,'N',0,2,1,'N','N',1001223,1000015,0,TO_DATE('2015-10-19 10:07:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:42 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',370,'Y',800274,'N','Other expenses amount in currency','@LBR_OtherExpensesAmt@!''''','LBR','Amount for other expenses','Other Expenses Amount','7e3830b7-b9bc-4047-b8cd-7e6bfdf319b3','Y','N',0,0,TO_DATE('2015-10-19 10:07:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',310,1,'N',0,2,1,'N','N',1001224,1000015,0,TO_DATE('2015-10-19 10:07:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:43 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'Y','N',380,'Y',800275,'N','Other incomes amount in currency','@LBR_OtherIncomesAmt@!''''','LBR','Amount for other incomes','Other Incomes Amount','f5d08521-48ab-4e2b-ab9c-476f40242956','Y','N',0,0,TO_DATE('2015-10-19 10:07:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',320,4,'N',0,2,1,'N','N',1001225,1000015,0,TO_DATE('2015-10-19 10:07:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:44 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',390,'Y',800276,'N','@LBR_Cob_OcorrenciaDate@!''''','LBR','Collection Occurrence Date','e440d2f3-1047-4009-813d-c80fc75f192a','Y','N',0,0,TO_DATE('2015-10-19 10:07:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',330,1,'N',0,2,1,'N','N',1001226,1000015,0,TO_DATE('2015-10-19 10:07:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:45 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'Y','N',400,'Y',800277,'N','@LBR_CreditDate@!''''','LBR','Credit Date','dd496157-8283-4142-99ef-e8c70a6ad58f','Y','N',0,0,TO_DATE('2015-10-19 10:07:44','YYYY-MM-DD HH24:MI:SS'),'Y','Y',340,4,'N',0,2,1,'N','N',1001227,1000015,0,TO_DATE('2015-10-19 10:07:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:46 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',410,'Y',800278,'N','Late payment interest code according to Febraban','@LBR_InterestCode@!''''','LBR','Late Payment Interest Code','e72fd09e-6ee4-46f5-9875-2e7b9cb31549','Y','N',0,0,TO_DATE('2015-10-19 10:07:45','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,1,'N',0,2,1,'N','N',1001234,1000015,0,TO_DATE('2015-10-19 10:07:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:47 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',420,'Y',800279,'N','Interest date.','@LBR_InterestDate@!''''','LBR','Interest Date','e303fcbc-01c2-43bc-b1fd-27a0553026b5','Y','N',0,0,TO_DATE('2015-10-19 10:07:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',420,4,'N',0,2,1,'N','N',1001235,1000015,0,TO_DATE('2015-10-19 10:07:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:47 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',430,'Y',800280,'N','Late payment interest amount or pencentage','@LBR_InterestAP@!''''','LBR','Interest Amount/Percentage','e8597839-61ed-4d3b-8ef7-3f35b3ff3bf3','Y','N',0,0,TO_DATE('2015-10-19 10:07:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,1,'N',0,2,1,'N','N',1001236,1000015,0,TO_DATE('2015-10-19 10:07:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:48 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',440,'Y',800281,'N','@CNABDiscount1Code@!''''','LBR','Discount 1 Code used for CNAB 240','Discount 1 Code','a004c234-6356-426b-ab2f-1cb34f401e47','Y','N',0,0,TO_DATE('2015-10-19 10:07:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',470,1,'N',0,2,1,'N','N',1001240,1000015,0,TO_DATE('2015-10-19 10:07:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:49 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',450,'Y',800282,'N','@CNABDiscount1Date@!''''','LBR','Discount 1 Date used for CNAB 240','Discount 1 Date','a35ffc71-1232-4ef8-867d-2ff08f02cac8','Y','N',0,0,TO_DATE('2015-10-19 10:07:48','YYYY-MM-DD HH24:MI:SS'),'Y','Y',500,4,'N',0,2,1,'N','N',1001243,1000015,0,TO_DATE('2015-10-19 10:07:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:50 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',460,'Y',800283,'N','@CNABDiscount1AP@!''''','LBR','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','cbbc5925-eec3-4559-91c6-5154be449840','Y','N',0,0,TO_DATE('2015-10-19 10:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',440,1,'N',0,2,1,'N','N',1001237,1000015,0,TO_DATE('2015-10-19 10:07:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:51 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',470,'Y',800284,'N','@CNABDiscount2Code@!''''','LBR','Discount 2 Code used for CNAB 240','Discount 2 Code','44742c44-f552-4e88-83db-edae0706c639','Y','N',0,0,TO_DATE('2015-10-19 10:07:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',480,1,'N',0,2,1,'N','N',1001241,1000015,0,TO_DATE('2015-10-19 10:07:50','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:52 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',480,'Y',800285,'N','@CNABDiscount2Date@!''''','LBR','Discount 2 Date used for CNAB 240','Discount 2 Date','79e3ccaf-7f57-4d55-be44-ccca7cca17b3','Y','N',0,0,TO_DATE('2015-10-19 10:07:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',510,4,'N',0,2,1,'N','N',1001244,1000015,0,TO_DATE('2015-10-19 10:07:51','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:53 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',490,'Y',800286,'N','@CNABDiscount2AP@!''''','LBR','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','5cffc00c-da07-4e7b-8315-1b0ba06fd6bc','Y','N',0,0,TO_DATE('2015-10-19 10:07:52','YYYY-MM-DD HH24:MI:SS'),'Y','Y',450,1,'N',0,2,1,'N','N',1001238,1000015,0,TO_DATE('2015-10-19 10:07:52','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:54 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',500,'Y',800287,'N','@CNABDiscount3Code@!''''','LBR','Discount 3 Code used for CNAB 240','Discount 3 Code','90b175cc-9a86-49d7-9a2e-4381fde1a5ba','Y','N',0,0,TO_DATE('2015-10-19 10:07:53','YYYY-MM-DD HH24:MI:SS'),'Y','Y',490,1,'N',0,2,1,'N','N',1001242,1000015,0,TO_DATE('2015-10-19 10:07:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:54 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',510,'Y',800288,'N','@CNABDiscount3Date@!''''','LBR','Discount 3 Date used for CNAB 240','Discount 3 Date','dd6937da-4981-4aa0-ace3-0c0806bfd0b3','Y','N',0,0,TO_DATE('2015-10-19 10:07:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',520,4,'N',0,2,1,'N','N',1001245,1000015,0,TO_DATE('2015-10-19 10:07:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:55 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',520,'Y',800289,'N','@CNABDiscount3AP@!''''','LBR','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','8c513cfb-29b1-45cf-a559-b28f4db6e360','Y','N',0,0,TO_DATE('2015-10-19 10:07:54','YYYY-MM-DD HH24:MI:SS'),'Y','Y',460,1,'N',0,2,1,'N','N',1001239,1000015,0,TO_DATE('2015-10-19 10:07:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:56 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,1,'N','N',530,'Y',800290,'N','Late payment penaulty code according to Febraban','@LBR_LatePaymentPenaltyCode@!''''','LBR','Late Payment Penaulty Code','0044abb3-fc0c-4e8e-9923-9a34552ad60f','Y','N',0,0,TO_DATE('2015-10-19 10:07:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',540,1,'N',0,2,1,'N','N',1001247,1000015,0,TO_DATE('2015-10-19 10:07:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:57 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,7,'N','N',540,'Y',800291,'N','Late payment penaulty date.','@LBR_LatePaymentPenaltyDate@!''''','LBR','Late Payment Penaulty Date','12b5adbe-10fc-4af1-95fc-01ef17020286','Y','N',0,0,TO_DATE('2015-10-19 10:07:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',550,4,'N',0,2,1,'N','N',1001248,1000015,0,TO_DATE('2015-10-19 10:07:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:58 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',550,'Y',800292,'N','Late payment penaulty amount or pencentage','@LBR_LatePaymentPenaltyAP@!''''','LBR','Late Payment Penaulty Amount/Percentage','3972eed8-012a-4537-8371-4d197956fb42','Y','N',0,0,TO_DATE('2015-10-19 10:07:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',530,1,'N',0,2,1,'N','N',1001246,1000015,0,TO_DATE('2015-10-19 10:07:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:07:59 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,10,'N','N',560,'Y',800293,'N','LBR','CNAB Files','7bba107b-d642-4052-8c42-c664db27b082','Y','N',0,0,TO_DATE('2015-10-19 10:07:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',560,1,'N',0,2,1,'N','N',800634,0,TO_DATE('2015-10-19 10:07:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:08:00 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N','Y',800294,'N','LBR','Boleto Movement','04168e29-7ae4-4cfd-bf86-6a0846a1bee6','N','N',0,0,TO_DATE('2015-10-19 10:07:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1001194,0,TO_DATE('2015-10-19 10:07:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:08:19 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',800011,22,'N','N',570,'Y',800295,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','79273316-b443-45b5-989c-b231efb45b55','Y','N',0,0,TO_DATE('2015-10-19 10:08:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',570,0,2,800635,0,TO_DATE('2015-10-19 10:08:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', XPosition=1, ColumnSpan=5,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800295
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', XPosition=1,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800244
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', XPosition=4,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800245
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', XPosition=1,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800293
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=110,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800246
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=120,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800247
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=130,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800248
;

-- Oct 19, 2015 10:10:09 AM BRST
UPDATE AD_Field SET SeqNo=140,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800249
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=150,Updated=TO_DATE('2015-10-19 10:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800250
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=160,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800251
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=170,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800252
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=180,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800253
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=190,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800254
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=200,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800255
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=210,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800256
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=220,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800257
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=230,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800258
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=240,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800259
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=250,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800260
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=260,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800261
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=270,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800262
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=280,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800263
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=290,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800264
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=300,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800265
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=310,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800266
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=320,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800267
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=330,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800268
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=340,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800269
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=350,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800270
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=360,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800271
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=370,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800272
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=380,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800273
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=390,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800274
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=400,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800275
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=410,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800276
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=420,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800277
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=430,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800278
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=440,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800279
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=450,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800280
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=460,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800281
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=470,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800282
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=480,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800283
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=490,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800284
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=500,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800285
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=510,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800286
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=520,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800287
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=530,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800288
;

-- Oct 19, 2015 10:10:10 AM BRST
UPDATE AD_Field SET SeqNo=540,Updated=TO_DATE('2015-10-19 10:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800289
;

-- Oct 19, 2015 10:10:11 AM BRST
UPDATE AD_Field SET SeqNo=550,Updated=TO_DATE('2015-10-19 10:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800290
;

-- Oct 19, 2015 10:10:11 AM BRST
UPDATE AD_Field SET SeqNo=560,Updated=TO_DATE('2015-10-19 10:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800291
;

-- Oct 19, 2015 10:10:11 AM BRST
UPDATE AD_Field SET SeqNo=570,Updated=TO_DATE('2015-10-19 10:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800292
;

-- Oct 19, 2015 10:10:11 AM BRST
UPDATE AD_Field SET SeqNo=0,Updated=TO_DATE('2015-10-19 10:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800294
;

-- Oct 19, 2015 10:14:06 AM BRST
UPDATE AD_Field SET SeqNoGrid=11,Updated=TO_DATE('2015-10-19 10:14:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800242
;

-- Oct 19, 2015 10:16:08 AM BRST
UPDATE AD_Field SET SeqNoGrid=12,Updated=TO_DATE('2015-10-19 10:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800244
;

-- Oct 19, 2015 10:16:35 AM BRST
UPDATE AD_Field SET SeqNoGrid=13,Updated=TO_DATE('2015-10-19 10:16:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800272
;

-- Oct 19, 2015 10:34:18 AM BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNoGrid=14,Updated=TO_DATE('2015-10-19 10:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800295
;

SELECT lbr_register_migration_script('201510191035.sql') FROM dual;

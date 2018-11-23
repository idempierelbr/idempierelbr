SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 28, 2014 4:37:59 PM BRST
-- New DataType Reference: LBR_Taxes; Tax Columns/Fields in several tables/tabs
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000010,'Brazilian Taxes','LBR','3c69aac5-12e9-4577-9735-2c8c41e3cab6','N','Brazilian Taxes','D',0,0,TO_DATE('2014-01-28 16:37:59','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-01-28 16:37:59','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 29, 2014 11:05:27 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000212,'N','N','N',0,'N',10,'N','N','N','Y','636e2bce-36ea-4f38-8ae4-e9bead888c72','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-01-29 11:05:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 11:05:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000000,0,'LBR')
;

-- Jan 29, 2014 11:05:32 AM BRST
ALTER TABLE LBR_NCM ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 11:07:08 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_HasSubstitution',1000063,'Has Substitution','Defines if the record has Substituion','Has Substitution','e3263f7e-e45b-4cb1-8128-97a5e2edc76a',TO_DATE('2014-01-29 11:07:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 11:07:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 11:07:30 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000213,'Y','N','N',0,'N',1,'N','N','N','Y','7966d4ba-8cc8-4483-9223-0cf2dd320120','Y','LBR_HasSubstitution','Defines if the record has Substituion','N','Has Substitution','Y',TO_DATE('2014-01-29 11:07:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 11:07:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000063,20,1000000,0,'LBR')
;

-- Jan 29, 2014 11:07:34 AM BRST
ALTER TABLE LBR_NCM ADD LBR_HasSubstitution CHAR(1) DEFAULT 'N' CHECK (LBR_HasSubstitution IN ('Y','N')) NOT NULL
;

-- Jan 29, 2014 11:08:18 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,10,'N','N',80,'Y',1000132,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','616731e7-e793-479b-8eaa-4c255e971cd6','N','Y',0,0,TO_DATE('2014-01-29 11:08:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 11:08:18','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000212)
;

-- Jan 29, 2014 11:08:18 AM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000000,1,'N','N',90,'Y',1000133,'N','LBR','Defines if the record has Substituion','Has Substitution','daeab387-a4b9-4f05-8246-e120bb185312','N','Y',0,0,TO_DATE('2014-01-29 11:08:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 11:08:18','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000213)
;

-- Jan 29, 2014 11:09:39 AM BRST
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Tax','9fb757cc-e889-4009-aacd-f5a39d050a40',1000002,TO_DATE('2014-01-29 11:09:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 11:09:39','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Jan 29, 2014 11:10:06 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:10:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000106
;

-- Jan 29, 2014 11:10:21 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:10:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000107
;

-- Jan 29, 2014 11:10:33 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:10:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000099
;

-- Jan 29, 2014 11:10:44 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000102
;

-- Jan 29, 2014 11:11:00 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000100
;

-- Jan 29, 2014 11:11:13 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:11:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000101
;

-- Jan 29, 2014 11:11:25 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000098
;

-- Jan 29, 2014 11:11:47 AM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:11:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000132
;

-- Jan 29, 2014 11:12:02 AM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 11:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000133
;

ALTER TABLE LBR_NCM ADD CONSTRAINT LBRTax_LBRNCM FOREIGN KEY (LBR_Tax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:22:51 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000000,1000014,'N','N','N','LBR','L','c74ec636-7b46-45f5-aaa7-df5cfcfe9dbe','Y','Y','LBR_NCMTax','Maintain Taxes for NCM','NCM Tax','Y',0,0,TO_DATE('2014-01-29 12:22:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:22:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 29, 2014 12:22:52 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000018,'Table LBR_NCMTax','LBR_NCMTax',1,'88fc998a-6188-4e0e-bc62-118855bb7e60',TO_DATE('2014-01-29 12:22:52','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:22:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 29, 2014 12:23:33 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000214,'N','N','N',0,'N',22,'N','N','N','Y','72c1d7b0-2683-429e-bd53-de9fac3d570d','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-29 12:23:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:23:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000014,129,0,'LBR')
;

-- Jan 29, 2014 12:23:37 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000214
;

-- Jan 29, 2014 12:23:37 PM BRST
CREATE TABLE LBR_NCMTax (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 29, 2014 12:23:38 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT ADClient_LBRNCMTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:23:54 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000215,'N','N','N',0,'N',22,'N','N','N','Y','84062646-8369-4129-817c-5a8fb84c2a52','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-29 12:23:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:23:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000014,104,0,'LBR')
;

-- Jan 29, 2014 12:23:59 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000215
;

-- Jan 29, 2014 12:23:59 PM BRST
ALTER TABLE LBR_NCMTax ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 12:23:59 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT ADOrg_LBRNCMTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:24:22 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000216,'N','N','N',0,'N',7,'N','N','N','Y','6758c0bf-a802-4187-bb42-2e5a0c78dd97','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-29 12:24:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:24:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000014,0,'LBR')
;

-- Jan 29, 2014 12:24:25 PM BRST
ALTER TABLE LBR_NCMTax ADD Created DATE DEFAULT NULL 
;

-- Jan 29, 2014 12:24:37 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000217,'N','N','N',0,'N',22,'N','N','N','Y','d749447c-c7b0-45f9-b770-e29cd4cc409f','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-29 12:24:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:24:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000014,0,'LBR')
;

-- Jan 29, 2014 12:24:39 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000217
;

-- Jan 29, 2014 12:24:39 PM BRST
ALTER TABLE LBR_NCMTax ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 12:24:39 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT CreatedBy_LBRNCMTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:24:59 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000218,'N','N','N',0,'N',7,'N','N','N','Y','b109e0d8-ea1d-4255-9f01-7194614b578e','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-29 12:24:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:24:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000014,0,'LBR')
;

-- Jan 29, 2014 12:25:03 PM BRST
ALTER TABLE LBR_NCMTax ADD Updated DATE DEFAULT NULL 
;

-- Jan 29, 2014 12:25:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000219,'N','N','N',0,'N',22,'N','N','N','Y','83d8655b-d4aa-4b8c-b3de-b1ae8e5fe901','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-29 12:25:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:25:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000014,0,'LBR')
;

-- Jan 29, 2014 12:25:27 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:25:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000219
;

-- Jan 29, 2014 12:25:27 PM BRST
ALTER TABLE LBR_NCMTax ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 12:25:27 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT UpdatedBy_LBRNCMTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:25:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000220,'N','N','N',0,'N',1,'N','N','N','Y','c2298ca2-3cbf-48b2-86ef-02ce1a84fb84','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-29 12:25:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:25:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000014,0,'LBR')
;

-- Jan 29, 2014 12:25:58 PM BRST
ALTER TABLE LBR_NCMTax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 29, 2014 12:27:17 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000221,'Y','N','N',0,'N',22,'N','N','N','Y','8fda5edb-7375-475a-b374-a51a5a3b7437','Y','LBR_NCM_ID','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','Y',TO_DATE('2014-01-29 12:27:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:27:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000012,19,1000014,0,'LBR')
;

-- Jan 29, 2014 12:27:20 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRNCM_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:27:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000221
;

-- Jan 29, 2014 12:27:20 PM BRST
ALTER TABLE LBR_NCMTax ADD LBR_NCM_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 12:27:20 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT LBRNCM_LBRNCMTax FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:28:45 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NCMTax_ID',1000064,'NCM Tax','Defines NCM Tax','NCM Tax','0c0cb8ee-8958-41d8-a807-21a3ffd91beb',TO_DATE('2014-01-29 12:28:45','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 12:28:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 12:29:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000222,'Y','N','N',0,'N',10,'N','Y','N','Y','6e01be4e-c27d-4293-81bc-8151a7741e20','N','LBR_NCMTax_ID','Defines NCM Tax','NCM Tax','N',TO_DATE('2014-01-29 12:29:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:29:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000064,13,1000014,0,'LBR')
;

-- Jan 29, 2014 12:29:15 PM BRST
ALTER TABLE LBR_NCMTax ADD LBR_NCMTax_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 12:29:15 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT LBR_NCMTax_Key PRIMARY KEY (LBR_NCMTax_ID)
;

-- Jan 29, 2014 12:29:33 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NCMTax_UU',1000065,'LBR_NCMTax_UU',NULL,'LBR_NCMTax_UU','68be99b2-c630-4fb1-b2c0-a567a84f8012',TO_DATE('2014-01-29 12:29:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 12:29:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 12:29:58 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000223,'N','N','N',0,'N',36,'N','N','N','Y','6baea117-7d4e-4b61-96a6-226bf69332ca','N','LBR_NCMTax_UU','LBR_NCMTax_UU','N',TO_DATE('2014-01-29 12:29:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:29:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000065,10,1000014,0,'LBR')
;

-- Jan 29, 2014 12:30:02 PM BRST
ALTER TABLE LBR_NCMTax ADD LBR_NCMTax_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 29, 2014 12:30:02 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT LBR_NCMTax_UU_idx UNIQUE (LBR_NCMTax_UU)
;

-- Jan 29, 2014 12:32:14 PM BRST
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_Region.C_Country_ID=139',1000001,'LBR','C_Region (Brazil)','S','a22f6a1d-701c-4f58-871a-047e5154f02c',0,0,TO_DATE('2014-01-29 12:32:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 12:32:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Jan 29, 2014 12:32:45 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000224,'N','N','N',0,'N',10,'N','N','N','Y','c743e762-e5d8-486e-8ab4-12baf77a98ae','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-01-29 12:32:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:32:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',209,18,157,1000014,1000001,0,'LBR')
;

-- Jan 29, 2014 12:32:51 PM BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNCMTax', FKConstraintType='N',Updated=TO_DATE('2014-01-29 12:32:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000224
;

-- Jan 29, 2014 12:32:51 PM BRST
ALTER TABLE LBR_NCMTax ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 12:32:51 PM BRST
ALTER TABLE LBR_NCMTax ADD CONSTRAINT CRegion_LBRNCMTax FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 12:33:38 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000225,'N','N','N',0,'N',255,'Y','N','N','Y','e82166cb-9ccf-4157-8393-c669b1e3e527','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-29 12:33:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:33:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000014,0,'LBR')
;

-- Jan 29, 2014 12:33:42 PM BRST
ALTER TABLE LBR_NCMTax ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jan 29, 2014 12:34:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000226,'Y','N','N',0,'N',7,'N','N','N','Y','3f471750-64d3-44b6-abfe-1d45e08595e4','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-01-29 12:34:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:34:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000014,0,'LBR')
;

-- Jan 29, 2014 12:34:30 PM BRST
ALTER TABLE LBR_NCMTax ADD ValidFrom DATE NOT NULL
;

-- Jan 29, 2014 12:35:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000227,'Y','N','N',0,'N',1,'N','N','N','Y','87e67df1-b08f-4fb3-bd6d-3696574bb91a','Y','LBR_HasSubstitution','Defines if the record has Substituion','N','Has Substitution','Y',TO_DATE('2014-01-29 12:35:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:35:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000063,20,1000014,0,'LBR')
;

-- Jan 29, 2014 12:35:16 PM BRST
ALTER TABLE LBR_NCMTax ADD LBR_HasSubstitution CHAR(1) DEFAULT 'N' CHECK (LBR_HasSubstitution IN ('Y','N')) NOT NULL
;

-- Jan 29, 2014 12:36:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000228,'N','N','Y',1,'N',10,'N','N','N','Y','272a1dfb-0795-4253-86f4-e2b83e9e03c9','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-01-29 12:36:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 12:36:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000014,0,'LBR')
;

-- Jan 29, 2014 12:36:55 PM BRST
ALTER TABLE LBR_NCMTax ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 12:38:54 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,OrderByClause,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000000,20,'N','N','N','N','N','Y','N',1,'84d06b55-40f5-4c82-868b-9df7615fffc5','LBR','NCM Tax','ValidFrom DESC',1000012,0,TO_DATE('2014-01-29 12:38:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:38:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000221,1000014,'B')
;

-- Jan 29, 2014 12:39:28 PM BRST
UPDATE AD_Tab SET Description='Taxes for the NCM ',Updated=TO_DATE('2014-01-29 12:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000012
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,22,'N','N',10,'Y',1000134,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','e3a5e527-e48c-47ab-95b2-28981ffee8de','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000214)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,22,'N','N',20,'Y',1000135,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','eca5aede-5b90-468c-a9d9-eee4d59f6bf8','N','Y','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000215)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000012,255,'N','N',30,'Y',1000136,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','48cf82b9-601a-46a9-a8fe-e4a8e4adfaf8','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000225)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,22,'N','N',40,'Y',1000137,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','5638583a-4475-43f9-b615-05d377c22592','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000221)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,10,'N','N',50,'Y',1000138,'N','LBR','Defines NCM Tax','NCM Tax','17f41372-ac62-40a0-90d0-c3f8cfc60ea8','N','N',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000222)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,36,'N','N',60,'Y',1000139,'N','LBR','LBR_NCMTax_UU','0d2a0015-da92-41a0-906b-874701d6b810','N','N',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000223)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,10,'N','N',70,'Y',1000140,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','6b5e2ea1-d9f5-4cd1-aae7-d90c738684d9','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000224)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,7,'N','N',80,'Y',1000141,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','4341afb9-a14c-47bd-a934-46ef93af15a6','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000226)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,1,'N','N',90,'Y',1000142,'N','LBR','Defines if the record has Substituion','Has Substitution','a1dc452b-3155-498b-948f-e10bd2ad267a','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000227)
;

-- Jan 29, 2014 12:39:34 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,10,'N','N',100,'Y',1000143,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','977c27ab-714e-4fc5-9f14-a1b10992eeab','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000228)
;

-- Jan 29, 2014 12:39:35 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000012,1,'N','N',110,'Y',1000144,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8dcdf28f-478e-4c10-a42d-9f13cec57550','N','Y',0,0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 12:39:34','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000220)
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000139
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000138
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000137
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000144
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000136
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000140
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000142
;

-- Jan 29, 2014 12:40:55 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000143
;

-- Jan 29, 2014 12:48:42 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-29 12:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000135
;

-- Jan 29, 2014 12:49:07 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-01-29 12:49:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000144
;

-- Jan 29, 2014 12:49:39 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 12:49:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000136
;

-- Jan 29, 2014 12:49:55 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 12:49:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000140
;

-- Jan 29, 2014 12:50:15 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 12:50:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000142
;

-- Jan 29, 2014 12:50:31 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 12:50:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000141
;

-- Jan 29, 2014 12:50:49 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 12:50:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000143
;

ALTER TABLE LBR_NCMTax ADD CONSTRAINT LBRTax_LBRNCMTax FOREIGN KEY (LBR_Tax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:00:23 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000015,'N','N','N','LBR','L','15e268dd-fef3-45f2-8b0e-af145337afb4','Y','Y','LBR_ICMSMatrix','ICMS Matrix','Y',0,0,TO_DATE('2014-01-29 14:00:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:00:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 29, 2014 2:00:23 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000019,'Table LBR_ICMSMatrix','LBR_ICMSMatrix',1,'5d8f2a42-4ecb-40fe-9c24-a0abc394bd0c',TO_DATE('2014-01-29 14:00:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:00:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 29, 2014 2:01:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000229,'N','N','N',0,'N',22,'N','N','N','Y','7ab1826a-269b-4d94-8dc6-d021821a5322','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-29 14:01:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:01:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000015,129,0,'LBR')
;

-- Jan 29, 2014 2:01:07 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000229
;

-- Jan 29, 2014 2:01:07 PM BRST
CREATE TABLE LBR_ICMSMatrix (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 29, 2014 2:01:07 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT ADClient_LBRICMSMatrix FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:01:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000230,'N','N','N',0,'N',22,'N','N','N','Y','8aefa830-5d8e-489d-8f1e-31bf5a3c6f0d','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-29 14:01:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:01:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000015,104,0,'LBR')
;

-- Jan 29, 2014 2:01:29 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:01:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000230
;

-- Jan 29, 2014 2:01:29 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 2:01:30 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT ADOrg_LBRICMSMatrix FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:02:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000231,'Y','N','N',0,'N',10,'N','N','N','Y','78b65d74-42db-4748-8598-88722f8801ed','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-01-29 14:02:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:02:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',209,18,157,1000015,1000001,0,'LBR')
;

-- Jan 29, 2014 2:02:30 PM BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:02:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000231
;

-- Jan 29, 2014 2:02:30 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD C_Region_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 2:02:30 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT CRegion_LBRICMSMatrix FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:02:47 PM BRST
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2014-01-29 14:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000231
;

-- Jan 29, 2014 2:03:07 PM BRST
ALTER TABLE LBR_ICMSMatrix MODIFY C_Region_ID NUMBER(10)
;

-- Jan 29, 2014 2:03:07 PM BRST
ALTER TABLE LBR_ICMSMatrix DROP CONSTRAINT cregion_lbricmsmatrix
;

-- Jan 29, 2014 2:03:07 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT CRegion_LBRICMSMatrix FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:03:42 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000232,'N','N','N',0,'N',7,'N','N','N','Y','1c5c8df3-11b1-4ed6-8595-cf21ef2d11b4','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-29 14:03:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:03:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000015,0,'LBR')
;

-- Jan 29, 2014 2:03:46 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD Created DATE DEFAULT NULL 
;

-- Jan 29, 2014 2:03:56 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000233,'N','N','N',0,'N',22,'N','N','N','Y','d0db29b5-1cf8-4012-bede-a714c638d420','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-29 14:03:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:03:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000015,0,'LBR')
;

-- Jan 29, 2014 2:03:59 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000233
;

-- Jan 29, 2014 2:03:59 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 2:03:59 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT CreatedBy_LBRICMSMatrix FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:04:34 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000234,'N','N','N',0,'N',255,'Y','N','N','Y','f0192d55-d8dc-42aa-8be3-a4b89b3cf058','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-01-29 14:04:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:04:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000015,0,'LBR')
;

-- Jan 29, 2014 2:04:38 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Jan 29, 2014 2:04:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000235,'N','N','N',0,'N',1,'N','N','N','Y','eadbf20c-7716-4138-a280-d9cd4037a4f9','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-29 14:04:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:04:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000015,0,'LBR')
;

-- Jan 29, 2014 2:04:59 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 29, 2014 2:05:43 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSMatrix_ID',1000066,'ICMS Matrix','Identifies ICMS Matriz','ICMS Matrix','51551535-58f4-4cdf-bbd9-2867d42e84b2',TO_DATE('2014-01-29 14:05:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 14:05:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 2:06:05 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000236,'Y','N','N',0,'N',10,'N','Y','N','Y','7842c38a-359c-48fd-bb9d-758c9ffe7909','N','LBR_ICMSMatrix_ID','Identifies ICMS Matriz','ICMS Matrix','N',TO_DATE('2014-01-29 14:06:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:06:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000066,13,1000015,0,'LBR')
;

-- Jan 29, 2014 2:06:10 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD LBR_ICMSMatrix_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 2:06:10 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBR_ICMSMatrix_Key PRIMARY KEY (LBR_ICMSMatrix_ID)
;

-- Jan 29, 2014 2:06:24 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ICMSMatrix_UU',1000067,'LBR_ICMSMatrix_UU',NULL,'LBR_ICMSMatrix_UU','78525e9e-3174-4293-8ceb-f46e9964b8cc',TO_DATE('2014-01-29 14:06:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 14:06:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 2:06:39 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000237,'N','N','N',0,'N',36,'N','N','N','Y','0010336d-8f2d-41c0-bf6e-df5cad24f7a4','N','LBR_ICMSMatrix_UU','LBR_ICMSMatrix_UU','N',TO_DATE('2014-01-29 14:06:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:06:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000067,10,1000015,0,'LBR')
;

-- Jan 29, 2014 2:06:44 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD LBR_ICMSMatrix_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 29, 2014 2:06:44 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBR_ICMSMatrix_UU_idx UNIQUE (LBR_ICMSMatrix_UU)
;

-- Jan 29, 2014 2:07:51 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_STTax_ID',1000068,'ST Tax','ST Tax','df107316-d153-4935-af8a-391d8ca82ebc',TO_DATE('2014-01-29 14:07:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 14:07:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 2:09:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000238,'N','N','N',0,'N',10,'N','N','N','Y','d3e09528-8d89-47fb-8e38-649d8e329d97','Y','LBR_STTax_ID','ST Tax','Y',TO_DATE('2014-01-29 14:09:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:09:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000068,1000010,1000015,0,'LBR')
;

-- Jan 29, 2014 2:09:30 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD LBR_STTax_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 2:10:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000239,'N','N','N',0,'N',10,'N','N','N','Y','a538feeb-2f3d-4158-8a92-de9ce72eb534','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-01-29 14:10:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:10:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000015,0,'LBR')
;

-- Jan 29, 2014 2:10:22 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 2:11:21 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000240,'Y','N','N',0,'N',22,'N','N','N','Y','21aee585-4c2d-4c8f-819f-354f7fbab03f','Y','To_Region_ID','Receiving Region','The To Region indicates the receiving region on a document','To','Y',TO_DATE('2014-01-29 14:11:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:11:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',595,18,157,1000015,1000001,0,'LBR')
;

-- Jan 29, 2014 2:11:25 PM BRST
UPDATE AD_Column SET FKConstraintName='ToRegion_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000240
;

-- Jan 29, 2014 2:11:25 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD To_Region_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 2:11:25 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT ToRegion_LBRICMSMatrix FOREIGN KEY (To_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:11:53 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000241,'N','N','N',0,'N',7,'N','N','N','Y','39e499a9-fc5f-4b3c-ac66-2d239e1e46dc','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-29 14:11:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:11:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000015,0,'LBR')
;

-- Jan 29, 2014 2:11:56 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD Updated DATE DEFAULT NULL 
;

-- Jan 29, 2014 2:12:07 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000242,'N','N','N',0,'N',22,'N','N','N','Y','5a0c8d98-3bd3-474b-8193-71c320fdace4','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-29 14:12:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:12:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000015,0,'LBR')
;

-- Jan 29, 2014 2:12:11 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRICMSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 14:12:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000242
;

-- Jan 29, 2014 2:12:11 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 2:12:11 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT UpdatedBy_LBRICMSMatrix FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 2:12:37 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000243,'N','N','N',0,'N',7,'N','N','N','Y','9cf6615e-ac53-445c-a6b4-65705eb9168e','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-01-29 14:12:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 14:12:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000015,0,'LBR')
;

-- Jan 29, 2014 2:12:40 PM BRST
ALTER TABLE LBR_ICMSMatrix ADD ValidFrom DATE DEFAULT NULL 
;

-- Jan 29, 2014 2:13:31 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','ICMS Matrix','Maintain ICMS Matriz',1000009,'e4d5080b-c2ed-4386-af10-3db53ae1bb73',TO_DATE('2014-01-29 14:13:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 14:13:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 29, 2014 2:14:37 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','N',1000009,10,'N','N','N','N','N','Y','N',0,'f6f3cb12-bcfc-4bfc-b7b0-452892ea7170','LBR','ICMS Matrix','Maintain ICMS Matrix',1000013,0,TO_DATE('2014-01-29 14:14:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000015,'B')
;

-- Jan 29, 2014 2:14:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,22,'N','N',10,'Y',1000145,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','8e3e8ffa-b09c-4778-9e2c-2c79a167b6b7','N','Y',0,0,TO_DATE('2014-01-29 14:14:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000229)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,22,'N','N',20,'Y',1000146,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b0318851-631b-454a-9b58-5c7f0109f195','N','Y','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000230)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000013,255,'N','N',30,'Y',1000147,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','468ecd75-ce35-4e73-9b23-071692942b53','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000234)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,10,'N','N',40,'Y',1000148,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','a2e0408c-c08b-45c8-b0d8-909c876b2d83','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000231)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,10,'N','N',50,'Y',1000149,'N','LBR','Identifies ICMS Matriz','ICMS Matrix','46116526-c850-4df1-9f37-d36fd65fd2b9','N','N',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000236)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,36,'N','N',60,'Y',1000150,'N','LBR','LBR_ICMSMatrix_UU','646f2430-233c-488b-93ea-cf81c3b4e691','N','N',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000237)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,10,'N','N',70,'Y',1000151,'N','LBR','ST Tax','a3c489ef-d057-4697-b24b-de28f7a4615a','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000238)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,10,'N','N',80,'Y',1000152,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','7c226b90-2a46-451b-b586-bd2370ab37f4','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000239)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,22,'N','N',90,'Y',1000153,'N','The To Region indicates the receiving region on a document','LBR','Receiving Region','To','2a9449de-4fb1-48eb-ad3e-54252c36b6a8','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000240)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,7,'N','N',100,'Y',1000154,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','a58030d7-40b0-4b34-b9e8-5d037cb2e924','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000243)
;

-- Jan 29, 2014 2:14:44 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000013,1,'N','N',110,'Y',1000155,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','81fd30af-fa1d-46d8-a8ba-175ac60371c6','N','Y',0,0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 14:14:44','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000235)
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000149
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000150
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000154
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000155
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000147
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000148
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000153
;

-- Jan 29, 2014 2:17:02 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000151
;

-- Jan 29, 2014 2:17:29 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-29 14:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000146
;

-- Jan 29, 2014 2:17:59 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-01-29 14:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000155
;

-- Jan 29, 2014 2:18:28 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 14:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000148
;

-- Jan 29, 2014 2:18:48 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 14:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000153
;

-- Jan 29, 2014 2:19:10 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 14:19:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000152
;

-- Jan 29, 2014 2:19:24 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 14:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000151
;

-- Jan 29, 2014 2:20:34 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000009,1000012,'N','Y','N','LBR','Y','ICMS Matrix','Maintain ICMS Matrix','e107be16-1fd6-4be3-9bae-10408ebddab2','W','Y',0,TO_DATE('2014-01-29 14:20:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 14:20:34','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 29, 2014 2:20:34 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000012, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000012)
;

-- Jan 29, 2014 2:20:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 29, 2014 2:20:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 29, 2014 2:20:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 29, 2014 2:20:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 29, 2014 2:20:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 29, 2014 2:20:42 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 29, 2014 2:20:54 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jan 29, 2014 2:21:14 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000009,Updated=TO_DATE('2014-01-29 14:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000015
;

ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBRTax_LBRICMSMatrix FOREIGN KEY (LBR_Tax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBRSTTax_LBRICMSMatrix FOREIGN KEY (LBR_STTax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 8:49:26 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000016,'N','N','N','LBR','L','609db96c-8d14-4544-87b9-7745ed7d7c9b','Y','Y','LBR_ISSMatrix','ISS (Services) Matrix','ISS Matrix','Y',0,0,TO_DATE('2014-01-29 20:49:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 20:49:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 29, 2014 8:49:27 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000020,'Table LBR_ISSMatrix','LBR_ISSMatrix',1,'f54fffb5-5d97-445d-983d-d6bbaab17cea',TO_DATE('2014-01-29 20:49:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 20:49:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 29, 2014 8:50:08 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000244,'N','N','N',0,'N',22,'N','N','N','Y','ec50f998-c5f2-4071-9575-3b3e29b89792','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-29 20:50:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 20:50:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000016,129,0,'LBR')
;

-- Jan 29, 2014 8:50:14 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 20:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000244
;

-- Jan 29, 2014 8:50:14 PM BRST
CREATE TABLE LBR_ISSMatrix (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 29, 2014 8:50:15 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT ADClient_LBRISSMatrix FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 8:50:45 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000245,'N','N','N',0,'N',22,'N','N','N','Y','5e7de7cb-f62e-453b-acba-c37bdcf1ec54','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-29 20:50:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 20:50:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000016,104,0,'LBR')
;

-- Jan 29, 2014 8:50:51 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 20:50:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000245
;

-- Jan 29, 2014 8:50:51 PM BRST
ALTER TABLE LBR_ISSMatrix ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 8:50:51 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT ADOrg_LBRISSMatrix FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 8:52:26 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000011,'C_City','LBR','8ec2c866-a1d6-4139-94ff-98087a5331ab','N','T',0,0,TO_DATE('2014-01-29 20:52:26','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-01-29 20:52:26','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 29, 2014 8:53:03 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','fd3b1606-01e5-4b15-9a5b-1e1b6dd82f8d',0,TO_DATE('2014-01-29 20:53:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 20:53:03','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1233,7052,1000011,186,'LBR')
;

-- Jan 29, 2014 8:57:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000246,'Y','N','N',0,'N',10,'N','N','N','Y','5eb5f8d1-49a6-40af-8138-147edaf93471','Y','C_City_ID','City','City in a country','City','Y',TO_DATE('2014-01-29 20:57:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 20:57:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1830,30,1000011,1000016,52045,0,'LBR')
;

-- Jan 29, 2014 8:57:30 PM BRST
UPDATE AD_Column SET FKConstraintName='CCity_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 20:57:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000246
;

-- Jan 29, 2014 8:57:30 PM BRST
ALTER TABLE LBR_ISSMatrix ADD C_City_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 8:57:30 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT CCity_LBRISSMatrix FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 9:00:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000247,'Y','N','N',0,'N',10,'N','N','N','Y','1618c724-fff9-472f-9228-0a369646ac00','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-01-29 21:00:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:00:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',209,18,157,1000016,1000001,0,'LBR')
;

-- Jan 29, 2014 9:00:18 PM BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 21:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000247
;

-- Jan 29, 2014 9:00:18 PM BRST
ALTER TABLE LBR_ISSMatrix ADD C_Region_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 9:00:18 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT CRegion_LBRISSMatrix FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 9:00:54 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000248,'N','N','N',0,'N',7,'N','N','N','Y','ce7e0de9-998b-4107-9b8d-3d7b99fca81e','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-29 21:00:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:00:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000016,0,'LBR')
;

-- Jan 29, 2014 9:00:59 PM BRST
ALTER TABLE LBR_ISSMatrix ADD Created DATE DEFAULT NULL 
;

-- Jan 29, 2014 9:01:15 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000249,'N','N','N',0,'N',22,'N','N','N','Y','a5f9541a-727c-4d03-9be8-d883757a9150','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-29 21:01:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:01:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000016,0,'LBR')
;

-- Jan 29, 2014 9:01:19 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 21:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000249
;

-- Jan 29, 2014 9:01:19 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 9:01:19 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT CreatedBy_LBRISSMatrix FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 9:01:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000250,'Y','N','N',0,'N',1,'N','N','N','Y','f34a1429-ffa5-451d-8f22-3fa52399b193','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-29 21:01:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:01:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000016,0,'LBR')
;

-- Jan 29, 2014 9:01:55 PM BRST
ALTER TABLE LBR_ISSMatrix ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Jan 29, 2014 9:03:54 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ISSMatrix_ID',1000069,'ISS (Services) Matris','Indicates the ISS Matrix','ISS (Services) s','90081618-1e9a-4406-949a-4341639ed966',TO_DATE('2014-01-29 21:03:54','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 21:03:54','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 9:04:15 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000251,'Y','N','N',0,'N',22,'N','Y','N','Y','933bf217-da0b-4830-8e07-e7189bbe7071','N','LBR_ISSMatrix_ID','Indicates the ISS Matrix','ISS (Services) Matris','N',TO_DATE('2014-01-29 21:04:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:04:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000069,13,1000016,0,'LBR')
;

-- Jan 29, 2014 9:04:20 PM BRST
ALTER TABLE LBR_ISSMatrix ADD LBR_ISSMatrix_ID NUMBER(10) NOT NULL
;

-- Jan 29, 2014 9:04:20 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT LBR_ISSMatrix_Key PRIMARY KEY (LBR_ISSMatrix_ID)
;

-- Jan 29, 2014 9:27:14 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ISSMatrix_UU',1000070,'LBR_ISSMatrix_UU',NULL,'LBR_ISSMatrix_UU','9b6ccd06-ef4c-4771-91af-11f1716144ee',TO_DATE('2014-01-29 21:27:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 21:27:14','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 29, 2014 9:27:37 PM BRST
UPDATE AD_Element SET Name='ISS (Services) Matrix', PrintName='ISS (Services) Matrix',Updated=TO_DATE('2014-01-29 21:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000069
;

-- Jan 29, 2014 9:27:37 PM BRST
UPDATE AD_Column SET ColumnName='LBR_ISSMatrix_ID', Name='ISS (Services) Matrix', Description='Indicates the ISS Matrix', Help=NULL WHERE AD_Element_ID=1000069
;

-- Jan 29, 2014 9:27:38 PM BRST
UPDATE AD_Process_Para SET ColumnName='LBR_ISSMatrix_ID', Name='ISS (Services) Matrix', Description='Indicates the ISS Matrix', Help=NULL, AD_Element_ID=1000069 WHERE UPPER(ColumnName)='LBR_ISSMATRIX_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 29, 2014 9:27:38 PM BRST
UPDATE AD_Process_Para SET ColumnName='LBR_ISSMatrix_ID', Name='ISS (Services) Matrix', Description='Indicates the ISS Matrix', Help=NULL WHERE AD_Element_ID=1000069 AND IsCentrallyMaintained='Y'
;

-- Jan 29, 2014 9:27:38 PM BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_ISSMatrix_ID', Name='ISS (Services) Matrix', Description='Indicates the ISS Matrix', Help=NULL WHERE AD_Element_ID=1000069 AND IsCentrallyMaintained='Y'
;

-- Jan 29, 2014 9:27:38 PM BRST
UPDATE AD_Field SET Name='ISS (Services) Matrix', Description='Indicates the ISS Matrix', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000069) AND IsCentrallyMaintained='Y'
;

-- Jan 29, 2014 9:27:38 PM BRST
UPDATE AD_PrintFormatItem SET PrintName='ISS (Services) Matrix', Name='ISS (Services) Matrix' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000069)
;

-- Jan 29, 2014 9:28:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000252,'N','N','N',0,'N',36,'N','N','N','Y','f27f7d3a-f562-46a9-9099-a3c184191ca7','N','LBR_ISSMatrix_UU','LBR_ISSMatrix_UU','N',TO_DATE('2014-01-29 21:28:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:28:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000070,10,1000016,0,'LBR')
;

-- Jan 29, 2014 9:28:19 PM BRST
ALTER TABLE LBR_ISSMatrix ADD LBR_ISSMatrix_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 29, 2014 9:28:19 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT LBR_ISSMatrix_UU_idx UNIQUE (LBR_ISSMatrix_UU)
;

-- Jan 29, 2014 9:28:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000253,'N','N','N',0,'N',10,'N','N','N','Y','dbecbf88-b114-4e54-a0e9-258f4e407c85','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-01-29 21:28:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:28:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000016,0,'LBR')
;

-- Jan 29, 2014 9:29:00 PM BRST
ALTER TABLE LBR_ISSMatrix ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 9:31:14 PM BRST
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('M_Product.ProductType = ''S''',1000002,'LBR','MProduct (Service)','S','4a93344d-057f-4f38-958c-6094ab5c2409',0,0,TO_DATE('2014-01-29 21:31:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 21:31:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Jan 29, 2014 9:31:43 PM BRST
UPDATE AD_Val_Rule SET Name='M_Product (Service)',Updated=TO_DATE('2014-01-29 21:31:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000002
;

-- Jan 29, 2014 9:32:49 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000254,'N','N','N',0,'N',22,'N','N','N','Y','d8431d5d-ea4c-4482-be09-8bd19df784f4','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_DATE('2014-01-29 21:32:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:32:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,30,162,1000016,1000002,0,'LBR')
;

-- Jan 29, 2014 9:32:56 PM BRST
UPDATE AD_Column SET FKConstraintName='MProduct_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 21:32:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000254
;

-- Jan 29, 2014 9:32:56 PM BRST
ALTER TABLE LBR_ISSMatrix ADD M_Product_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 9:32:56 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT MProduct_LBRISSMatrix FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 9:33:29 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000255,'N','N','N',0,'N',7,'N','N','N','Y','f06f604a-3158-4414-b140-458a1e439193','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-29 21:33:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:33:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000016,0,'LBR')
;

-- Jan 29, 2014 9:33:34 PM BRST
ALTER TABLE LBR_ISSMatrix ADD Updated DATE DEFAULT NULL 
;

-- Jan 29, 2014 9:33:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000256,'N','N','N',0,'N',22,'N','N','N','Y','cae85f5a-648f-44db-b18a-cbb53e257c1f','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-29 21:33:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-29 21:33:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000016,0,'LBR')
;

-- Jan 29, 2014 9:33:53 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRISSMatrix', FKConstraintType='N',Updated=TO_DATE('2014-01-29 21:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000256
;

-- Jan 29, 2014 9:33:53 PM BRST
ALTER TABLE LBR_ISSMatrix ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 29, 2014 9:33:53 PM BRST
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT UpdatedBy_LBRISSMatrix FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 29, 2014 9:34:58 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','ISS Matrix','Maintain ISS (Services) Matrix',1000010,'340b974e-1739-4f26-87a4-6fa6a30d56c9',TO_DATE('2014-01-29 21:34:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 21:34:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Jan 29, 2014 9:36:05 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','N',1000010,10,'N','N','N','N','N','Y','N',0,'905b342a-fe76-43a2-8e3f-a571073c1323','LBR','ISS Matrix','Maintain ISS (Services) Matrix',1000014,0,TO_DATE('2014-01-29 21:36:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000016,'B')
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,22,'N','N',10,'Y',1000156,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','dd7eaa96-7f3b-442f-9f78-07c112014987','N','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000244)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,22,'N','N',20,'Y',1000157,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b7676d11-5078-4504-acfd-ed879ed6fde9','N','Y','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000245)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,10,'N','N',30,'Y',1000158,'N','City in a country','LBR','City','City','2ed5f2dc-af0a-4961-99ef-a0ce3395d926','N','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000246)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,10,'N','N',40,'Y',1000159,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','0fa7617e-6327-4948-b980-7cbbd5805b7b','N','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000247)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,22,'N','N',50,'Y',1000160,'N','LBR','Indicates the ISS Matrix','ISS (Services) Matrix','67d6314a-0e62-4ab2-bf64-ad170e182f9d','N','N',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000251)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,36,'N','N',60,'Y',1000161,'N','LBR','LBR_ISSMatrix_UU','56968515-9e5f-44be-82e1-189e41bdd47b','N','N',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000252)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,10,'N','N',70,'Y',1000162,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','21195563-f416-4df8-8fc0-7906b895c7ca','N','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000253)
;

-- Jan 29, 2014 9:36:13 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,22,'N','N',80,'Y',1000163,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','8b209747-e28d-45a9-968c-1247b53d0e64','N','Y',0,0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:13','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000254)
;

-- Jan 29, 2014 9:36:14 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,1,'N','N',90,'Y',1000164,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','6befa535-5c1b-42ef-b306-88c9b253d3c1','N','Y',0,0,TO_DATE('2014-01-29 21:36:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-29 21:36:14','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000250)
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000160
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000161
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000164
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000163
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000159
;

-- Jan 29, 2014 9:37:27 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000158
;

-- Jan 29, 2014 9:39:17 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-29 21:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000157
;

-- Jan 29, 2014 9:40:32 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-01-29 21:40:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000163
;

-- Jan 29, 2014 9:41:01 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-01-29 21:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000159
;

-- Jan 29, 2014 9:41:35 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-01-29 21:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000158
;

-- Jan 29, 2014 9:41:57 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-01-29 21:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000162
;

-- Jan 29, 2014 9:43:15 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000010,Updated=TO_DATE('2014-01-29 21:43:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000016
;

-- Jan 29, 2014 9:43:30 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000010,1000013,'N','Y','N','LBR','Y','ISS Matrix','Maintain ISS Matrix','8eb51ebd-e2b2-42c9-9669-95e94e653b45','W','Y',0,TO_DATE('2014-01-29 21:43:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-29 21:43:30','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Jan 29, 2014 9:43:30 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000013, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000013)
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 29, 2014 9:43:37 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 29, 2014 9:43:49 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Jan 29, 2014 9:43:52 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT LBRTax_LBRISSMatrix FOREIGN KEY (LBR_Tax_ID) REFERENCES lbr_tax(lbr_tax_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT lbr_register_migration_script('201401290832.sql') FROM dual
;

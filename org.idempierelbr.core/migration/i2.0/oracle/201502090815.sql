SET SQLBLANKLINES ON
SET DEFINE OFF

-- 09/02/2015 7h48min5s BRST
-- IBPTax Table
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Exception',800094,'Exception','Exception','3d7af89b-a5af-4bfe-a8ab-4f71f3a0d3cb',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:47:57','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:47:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h49min15s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_DomesticFederalTax',800095,'Federal Tax (Domestic Products)','Federal Tax (Domestic)','7582fc77-4732-43a5-bc40-bb891b484351',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:49:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:49:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h49min43s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ImportedFederalTax',800096,'Federal Tax (Imported Products)','Federal Tax (Imported)','b3f18f69-17a7-4d5e-95fd-76faeff85f04',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:49:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:49:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h50min16s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_StateTax',800097,'State Tax','State Tax','6000eaf9-af9e-4e6f-bcb8-2db02f684569',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:50:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:50:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h50min43s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_MunicipalTax',800098,'Municipal Tax','Municipal Tax','fccfdf74-d8dc-454c-a745-8d9f14aed07f',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:50:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:50:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h51min32s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IBPTax_ID',800099,'IBPTax','IBPTax','a864ceb5-92b4-499c-b805-36c5095492b1',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:51:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:51:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h51min41s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IBPTax_UU',800100,'IBPTax','IBPTax','4b2bed1d-e1c8-49b3-8c0f-2c367f4e5616',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:51:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:51:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h52min0s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IBPTaxKey',800101,'IBPTax Key','IBPTax Key','d2543acb-3e6d-4e91-82c6-e270b3330480',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:51:59','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:51:59','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h52min19s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Source',800102,'Source','Source','1ca918e6-bf6e-4eba-bb7b-d4479e54edcb',0,0,0,'Y',0,'LBR',TO_DATE('2015-02-09 07:52:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 07:52:18','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h53min38s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,800007,'Y','N','N','LBR','L','02522478-5999-4f94-8085-c69809a884a1','Y','Y','LBR_IBPTax','IBPTax','Y',0,0,TO_DATE('2015-02-09 07:53:37','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_DATE('2015-02-09 07:53:37','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h53min40s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800014,'Table LBR_IBPTax','LBR_IBPTax',1,'a393d517-9936-40d1-bbe3-1f4fe2015150',0,TO_DATE('2015-02-09 07:53:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_DATE('2015-02-09 07:53:39','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 7h53min56s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800500,'N','N','N',0,'N',22,'N','N','N','Y','f641821d-08c1-43c5-947c-a097a8a343f4','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2015-02-09 07:53:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:53:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,800007,129,0,'LBR')
;

-- 09/02/2015 7h53min59s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRIBPTax', FKConstraintType='N',Updated=TO_DATE('2015-02-09 07:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800500
;

-- 09/02/2015 7h53min59s BRST
CREATE TABLE LBR_IBPTax (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- 09/02/2015 7h54min1s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT ADClient_LBRIBPTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 09/02/2015 7h54min19s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800501,'N','N','N',0,'N',22,'N','N','N','Y','548bfc40-ab60-4a34-8d85-09401b2658b0','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2015-02-09 07:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:54:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,800007,104,0,'LBR')
;

-- 09/02/2015 7h54min21s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRIBPTax', FKConstraintType='N',Updated=TO_DATE('2015-02-09 07:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800501
;

-- 09/02/2015 7h54min21s BRST
ALTER TABLE LBR_IBPTax ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- 09/02/2015 7h54min22s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT ADOrg_LBRIBPTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 09/02/2015 7h54min45s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800502,'N','N','N',0,'N',7,'N','N','N','Y','f4a04188-72bf-43a1-b896-a754696283fe','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2015-02-09 07:54:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:54:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,800007,0,'LBR')
;

-- 09/02/2015 7h54min46s BRST
ALTER TABLE LBR_IBPTax ADD Created DATE DEFAULT SYSDATE
;

-- 09/02/2015 7h54min57s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800503,'N','N','N',0,'N',22,'N','N','N','Y','28627dd3-92c9-4559-95b2-e035fbeaa295','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2015-02-09 07:54:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:54:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,800007,0,'LBR')
;

-- 09/02/2015 7h54min59s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRIBPTax', FKConstraintType='N',Updated=TO_DATE('2015-02-09 07:54:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800503
;

-- 09/02/2015 7h54min59s BRST
ALTER TABLE LBR_IBPTax ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- 09/02/2015 7h54min59s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT CreatedBy_LBRIBPTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 09/02/2015 7h55min18s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800504,'N','N','N',0,'N',7,'N','N','N','Y','b4fc4df6-95e0-4fe5-8312-670d2a0d2fa9','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2015-02-09 07:55:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:55:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,800007,0,'LBR')
;

-- 09/02/2015 7h55min21s BRST
ALTER TABLE LBR_IBPTax ADD Updated DATE DEFAULT SYSDATE
;

-- 09/02/2015 7h55min34s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800505,'N','N','N',0,'N',22,'N','N','N','Y','083ffcef-6e89-443b-ae34-04ce9e9b322b','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2015-02-09 07:55:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:55:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,800007,0,'LBR')
;

-- 09/02/2015 7h55min36s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRIBPTax', FKConstraintType='N',Updated=TO_DATE('2015-02-09 07:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800505
;

-- 09/02/2015 7h55min36s BRST
ALTER TABLE LBR_IBPTax ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- 09/02/2015 7h55min36s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT UpdatedBy_LBRIBPTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 09/02/2015 7h56min3s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800506,'N','N','N',0,'N',22,'N','Y','N','Y','6464c9f6-f117-46b8-bf89-2869ff9f64b4','N','LBR_IBPTax_ID','IBPTax','N',TO_DATE('2015-02-09 07:56:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:56:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800099,13,800007,0,'LBR')
;

-- 09/02/2015 7h56min4s BRST
ALTER TABLE LBR_IBPTax ADD LBR_IBPTax_ID NUMBER(10) DEFAULT NULL 
;

-- 09/02/2015 7h56min5s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT LBR_IBPTax_Key PRIMARY KEY (LBR_IBPTax_ID)
;

-- 09/02/2015 7h56min21s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800507,'N','N','N',0,'N',36,'N','N','N','Y','68c66773-7234-407d-9067-02374b803b5d','N','LBR_IBPTax_UU','IBPTax','N',TO_DATE('2015-02-09 07:56:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:56:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800100,10,800007,0,'LBR')
;

-- 09/02/2015 7h56min22s BRST
ALTER TABLE LBR_IBPTax ADD LBR_IBPTax_UU VARCHAR2(36) DEFAULT NULL 
;

-- 09/02/2015 7h56min22s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT LBR_IBPTax_UU_idx UNIQUE (LBR_IBPTax_UU)
;

-- 09/02/2015 7h57min33s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800508,'N','N','N',0,'N',10,'N','N','N','Y','e134d789-25eb-4078-a6a4-0cba0fe09827','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2015-02-09 07:57:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:57:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,800007,1000001,0,'LBR')
;

-- 09/02/2015 7h57min35s BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRIBPTax', FKConstraintType='N',Updated=TO_DATE('2015-02-09 07:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800508
;

-- 09/02/2015 7h57min35s BRST
ALTER TABLE LBR_IBPTax ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- 09/02/2015 7h57min35s BRST
ALTER TABLE LBR_IBPTax ADD CONSTRAINT CRegion_LBRIBPTax FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 09/02/2015 7h58min33s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800509,'N','N','N',0,'N',20,'N','N','N','Y','6c4a66d0-733b-4df5-b719-acae7090766b','Y','Code','Validation Code','The Validation Code displays the date, time and message of the error.','Validation code','Y',TO_DATE('2015-02-09 07:58:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:58:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',227,10,800007,0,'LBR')
;

-- 09/02/2015 7h58min35s BRST
ALTER TABLE LBR_IBPTax ADD Code VARCHAR2(20) DEFAULT NULL 
;

-- 09/02/2015 7h59min19s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800510,'N','N','N',0,'N',20,'N','N','N','Y','3d6ee64b-7e43-4f1f-bb30-0dae283d3e8d','Y','LBR_Exception','Exception','Y',TO_DATE('2015-02-09 07:59:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:59:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800094,10,800007,0,'LBR')
;

-- 09/02/2015 7h59min20s BRST
ALTER TABLE LBR_IBPTax ADD LBR_Exception VARCHAR2(20) DEFAULT NULL 
;

-- 09/02/2015 7h59min59s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800511,'N','N','N',0,'N',20,'N','N','N','Y','6a7271f7-70dc-4f02-8059-e411dd9bf72d','Y','Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Type','Y',TO_DATE('2015-02-09 07:59:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 07:59:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',600,10,800007,0,'U')
;

-- 09/02/2015 8h0min2s BRST
ALTER TABLE LBR_IBPTax ADD Type VARCHAR2(20) DEFAULT NULL 
;

-- 09/02/2015 8h0min32s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800512,'N','N','N',0,'N',500,'Y','N','N','Y','e05ede18-d017-40e0-a75e-bdb60748b172','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2015-02-09 08:00:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:00:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,10,800007,0,'LBR')
;

-- 09/02/2015 8h0min35s BRST
ALTER TABLE LBR_IBPTax ADD Description VARCHAR2(500) DEFAULT NULL 
;

-- 09/02/2015 8h1min57s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800513,'N','N','N',0,'N',22,'N','N','N','Y','108e0a46-b9e6-4a38-b39d-e365bec477ef','Y','LBR_DomesticFederalTax','Federal Tax (Domestic Products)','Y',TO_DATE('2015-02-09 08:01:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:01:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800095,12,800007,0,'LBR')
;

-- 09/02/2015 8h1min59s BRST
ALTER TABLE LBR_IBPTax ADD LBR_DomesticFederalTax NUMBER DEFAULT NULL 
;

-- 09/02/2015 8h2min23s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800514,'N','N','N',0,'N',22,'N','N','N','Y','633ee484-74da-455e-ad36-0e6588083d7e','Y','LBR_ImportedFederalTax','Federal Tax (Imported Products)','Y',TO_DATE('2015-02-09 08:02:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:02:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800096,12,800007,0,'LBR')
;

-- 09/02/2015 8h2min24s BRST
ALTER TABLE LBR_IBPTax ADD LBR_ImportedFederalTax NUMBER DEFAULT NULL 
;

-- 09/02/2015 8h2min42s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800515,'N','N','N',0,'N',22,'N','N','N','Y','7af32c0d-b128-440e-8aac-de6e5f1205c2','Y','LBR_StateTax','State Tax','Y',TO_DATE('2015-02-09 08:02:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:02:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800097,12,800007,0,'LBR')
;

-- 09/02/2015 8h2min44s BRST
ALTER TABLE LBR_IBPTax ADD LBR_StateTax NUMBER DEFAULT NULL 
;

-- 09/02/2015 8h3min6s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800516,'N','N','N',0,'N',22,'N','N','N','Y','32119525-b624-43fb-a02d-3eb613cb5aad','Y','LBR_MunicipalTax','Municipal Tax','Y',TO_DATE('2015-02-09 08:03:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:03:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800098,12,800007,0,'LBR')
;

-- 09/02/2015 8h3min8s BRST
ALTER TABLE LBR_IBPTax ADD LBR_MunicipalTax NUMBER DEFAULT NULL 
;

-- 09/02/2015 8h3min32s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800517,'N','N','N',0,'N',7,'N','N','N','Y','2594f7c0-fc24-4264-b3cd-cc9d4497d4be','Y','StartDate','First effective day (inclusive)','The Start Date indicates the first or starting date','Start Date','Y',TO_DATE('2015-02-09 08:03:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:03:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',574,15,800007,0,'LBR')
;

-- 09/02/2015 8h3min33s BRST
ALTER TABLE LBR_IBPTax ADD StartDate DATE DEFAULT NULL 
;

-- 09/02/2015 8h3min44s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800518,'N','N','N',0,'N',7,'N','N','N','Y','02ede863-73b9-42d4-86f0-619fb633e5c0','Y','EndDate','Last effective date (inclusive)','The End Date indicates the last date in this range.','End Date','Y',TO_DATE('2015-02-09 08:03:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:03:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',294,15,800007,0,'LBR')
;

-- 09/02/2015 8h3min46s BRST
ALTER TABLE LBR_IBPTax ADD EndDate DATE DEFAULT NULL 
;

-- 09/02/2015 8h4min16s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800519,'N','N','N',0,'N',20,'N','N','N','Y','6d7b532f-92da-4be1-91cc-67f62adc040e','Y','LBR_IBPTaxKey','IBPTax Key','Y',TO_DATE('2015-02-09 08:04:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:04:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800101,10,800007,0,'LBR')
;

-- 09/02/2015 8h4min18s BRST
ALTER TABLE LBR_IBPTax ADD LBR_IBPTaxKey VARCHAR2(20) DEFAULT NULL 
;

-- 09/02/2015 8h4min50s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800520,'N','N','N',0,'N',20,'N','N','N','Y','258f778a-ffd5-4650-b562-fcc085367275','N','VersionNo','Version Number','Version No','Y',TO_DATE('2015-02-09 08:04:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:04:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1949,10,800007,0,'LBR')
;

-- 09/02/2015 8h4min51s BRST
ALTER TABLE LBR_IBPTax ADD VersionNo VARCHAR2(20) DEFAULT NULL 
;

-- 09/02/2015 8h5min18s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800521,'N','N','N',0,'N',50,'N','N','N','Y','8d620b07-6001-45ef-9d8f-e224f999e0e2','Y','LBR_Source','Source','Y',TO_DATE('2015-02-09 08:05:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2015-02-09 08:05:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800102,10,800007,0,'LBR')
;

-- 09/02/2015 8h5min20s BRST
ALTER TABLE LBR_IBPTax ADD LBR_Source VARCHAR2(50) DEFAULT NULL 
;

-- 09/02/2015 8h8min48s BRST
INSERT INTO AD_Process (Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('This process allows to import a tax file provided by IBPT.',800007,'N','N','8663d65a-653f-4ae0-8c9f-ceebd877220f','3','N','N',1,1,'Y','LBR','Import IBPTax file provided by IBPT','Import IBPTax',0,0,'Y',0,'org.idempierelbr.tax.process.IBPTaxImport','LBR_IBPTax_Import',0,TO_DATE('2015-02-09 08:08:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2015-02-09 08:08:47','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 8h12min14s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,800052,'6df2f680-7793-4b43-9a60-c0c577d54691','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800007,18,'N','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'Y',0,TO_DATE('2015-02-09 08:12:13','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,276,'LBR',TO_DATE('2015-02-09 08:12:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 8h12min26s BRST
UPDATE AD_Process_Para SET IsMandatory='Y', DefaultValue='-1',Updated=TO_DATE('2015-02-09 08:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800052
;

-- 09/02/2015 8h13min41s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',2295,800053,'5be8f24b-e03c-44dc-a226-5e69a8d76bd1','Name of a file in the local directory space - or URL (file://.., http://.., ftp://..)',800007,39,'Y','File Name','FileName','Name of the local file or URL',0,'Y',20,'Y',0,TO_DATE('2015-02-09 08:13:40','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2015-02-09 08:13:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 8h15min14s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800005,'N','Y','N',800007,'LBR','Y','Import IBPTax','Import IBPTax file provided by IBPT','9a3599fc-eb53-4a4b-b63e-1db518deb2c3','P','Y',0,TO_DATE('2015-02-09 08:15:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2015-02-09 08:15:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/02/2015 8h15min14s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800005, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800005)
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800005
;

-- 09/02/2015 8h15min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 09/02/2015 8h15min29s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800005
;

SELECT lbr_register_migration_script('201502090815.sql') FROM dual
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Apr 2, 2014 11:11:44 AM BRT
-- Table/Tab/Fields for LBR_DocLine_COFINS (Order)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COF_TaxStatus',1000153,'COFINS Tax Status','Identifies a COFINS Tax Status','COFINS Tax Status','50ea3ca6-c39c-481f-b310-870ccb7c8784',TO_DATE('2014-04-02 11:11:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:11:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:13:08 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_CalcType',1000154,'Calculation','Calculation','5be30288-1a00-4fc4-abbd-986cce2cd41e',TO_DATE('2014-04-02 11:13:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:13:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'C')
;

-- Apr 2, 2014 11:14:37 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_TaxBaseAmt',1000155,'COFINS-ST Tax Base Amount','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','3e2a5b44-932e-46d5-b745-43ea16ed92d9',TO_DATE('2014-04-02 11:14:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:14:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:16:23 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_TaxRate',1000156,'COFINS-ST Tax Rate','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','3a3f1280-3802-425c-a453-511b8975eed9',TO_DATE('2014-04-02 11:16:23','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:16:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:17:39 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_TaxRateInAmt',1000157,'COFINS-ST Tax Rate in Amount','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','632f6740-1568-4e11-8dc8-c7b4d9861038',TO_DATE('2014-04-02 11:17:39','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:17:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:19:03 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_TotalQty',1000158,'COFINS-ST Total Quantity','COFINS-ST Total Quantity','COFINS-ST Total Qty','f9b2f130-447b-499c-83d9-98a53d7a0a4c',TO_DATE('2014-04-02 11:19:03','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:19:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:20:32 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COFST_TaxAmt',1000159,'COFINS-ST Tax Amount','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','b5f6bfc1-da7a-46f0-a39b-1a5db94ef0f7',TO_DATE('2014-04-02 11:20:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:20:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:22:18 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_COFINS_ID',1000160,'The Doc Line COFINS is a unique identifier for a doc line details.','Doc Line COFINS','Doc Line COFINS','Doc Line COFINS','d4f0df7d-f331-422c-9db8-4e4d2d6a93e6',TO_DATE('2014-04-02 11:22:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:22:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:22:27 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_COFINS_UU',1000161,'The Doc Line COFINS is a unique identifier for a doc line details.','Doc Line COFINS','Doc Line COFINS','Doc Line COFINS','804d8807-e87c-42a7-a1c9-7cc8c9f6301c',TO_DATE('2014-04-02 11:22:27','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-02 11:22:27','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Apr 2, 2014 11:23:53 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000030,'Y','N','Y','LBR','L','8766d14e-4fa7-464f-ae78-ef7da5c65829','Y','Y','LBR_DocLine_COFINS','Doc Line COFINS','Y',0,0,TO_DATE('2014-04-02 11:23:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:23:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Apr 2, 2014 11:23:53 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000034,'Table LBR_DocLine_COFINS','LBR_DocLine_COFINS',1,'c88e9bd7-96ef-4e1a-84ad-107e3574d18c',TO_DATE('2014-04-02 11:23:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:23:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Apr 2, 2014 11:24:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000537,'N','N','N',0,'N',22,'N','N','N','Y','61860e06-5e9c-4f6b-b6d6-23953b69b3c2','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-04-02 11:24:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:24:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000030,129,0,'LBR')
;

-- Apr 2, 2014 11:24:43 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineCOFINS', FKConstraintType='N',Updated=TO_DATE('2014-04-02 11:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000537
;

-- Apr 2, 2014 11:24:43 AM BRT
CREATE TABLE LBR_DocLine_COFINS (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Apr 2, 2014 11:24:43 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT ADClient_LBRDocLineCOFINS FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 11:25:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000538,'N','N','N',0,'N',22,'N','N','N','Y','30ffabd6-22bd-4e58-a721-860cd31f064d','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-04-02 11:25:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:25:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000030,104,0,'LBR')
;

-- Apr 2, 2014 11:25:18 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineCOFINS', FKConstraintType='N',Updated=TO_DATE('2014-04-02 11:25:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000538
;

-- Apr 2, 2014 11:25:18 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 11:25:18 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT ADOrg_LBRDocLineCOFINS FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 11:28:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000539,'N','N','N',0,'N',3,'N','N','N','Y','18872f77-afab-4fe8-a011-45097b8b8832','Y','CalculationType',NULL,'Calculation','Y',TO_DATE('2014-04-02 11:28:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:28:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1605,17,1000030,1000030,0,'LBR')
;

-- Apr 2, 2014 11:28:10 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CalculationType NVARCHAR2(3) DEFAULT NULL 
;

-- Apr 2, 2014 11:35:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000540,'N','N','N',0,'N',7,'N','N','N','Y','9ded30c7-989f-43de-bc87-d62a9ce7a3c6','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-04-02 11:35:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:35:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000030,0,'LBR')
;

-- Apr 2, 2014 11:35:25 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD Created DATE DEFAULT NULL 
;

-- Apr 2, 2014 11:35:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000541,'N','N','N',0,'N',22,'N','N','N','Y','dfb0b71e-4382-4d14-b22c-a4d46da1b192','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-04-02 11:35:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:35:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000030,0,'LBR')
;

-- Apr 2, 2014 11:35:43 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineCOFINS', FKConstraintType='N',Updated=TO_DATE('2014-04-02 11:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000541
;

-- Apr 2, 2014 11:35:43 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 11:35:43 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT CreatedBy_LBRDocLineCOFINS FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 11:36:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000542,'N','N','N',0,'N',1,'N','N','N','Y','e0dc461f-5fa5-43af-9ef4-2a1eca959b35','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-04-02 11:36:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:36:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000030,0,'LBR')
;

-- Apr 2, 2014 11:36:04 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Apr 2, 2014 11:36:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000543,'N','N','N',0,'N',22,'N','N','N','Y','2a453df4-c29c-491a-b250-1ea461dfa6b7','Y','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Y',TO_DATE('2014-04-02 11:36:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:36:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,19,1000030,0,'LBR')
;

-- Apr 2, 2014 11:36:56 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLineCO', FKConstraintType='N',Updated=TO_DATE('2014-04-02 11:36:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000543
;

-- Apr 2, 2014 11:36:56 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_DocLine_Details_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 11:36:56 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT LBRDocLineDetails_LBRDocLineCO FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 11:37:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000544,'N','N','N',0,'N',22,'N','Y','N','Y','da560e3a-adf1-4dba-8600-797ef0191b57','N','LBR_DocLine_COFINS_ID','Doc Line COFINS','The Doc Line COFINS is a unique identifier for a doc line details.','Doc Line COFINS','N',TO_DATE('2014-04-02 11:37:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:37:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000160,13,1000030,0,'LBR')
;

-- Apr 2, 2014 11:37:51 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_DocLine_COFINS_ID NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 11:37:51 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT LBR_DocLine_COFINS_Key PRIMARY KEY (LBR_DocLine_COFINS_ID)
;

-- Apr 2, 2014 11:38:20 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000545,'N','N','N',0,'N',36,'N','N','N','Y','52f970d7-db4d-4864-9c21-f8eaaaf28343','N','LBR_DocLine_COFINS_UU','Doc Line COFINS','The Doc Line COFINS is a unique identifier for a doc line details.','Doc Line COFINS','N',TO_DATE('2014-04-02 11:38:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:38:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000161,10,1000030,0,'LBR')
;

-- Apr 2, 2014 11:38:24 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_DocLine_COFINS_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Apr 2, 2014 11:38:24 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT LBR_DocLine_COFINS_UU_idx UNIQUE (LBR_DocLine_COFINS_UU)
;

-- Apr 2, 2014 11:39:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000546,'N','N','N',0,'N',3,'N','N','N','Y','eac53686-cc04-438d-99aa-b58685e5bca4','Y','LBR_COFST_CalcType','Calculation','Y',TO_DATE('2014-04-02 11:39:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:39:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000154,17,1000030,1000030,0,'LBR')
;

-- Apr 2, 2014 11:39:17 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_CalcType NVARCHAR2(3) DEFAULT NULL 
;

-- Apr 2, 2014 11:40:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000547,'N','N','N',0,'N',10,'N','N','N','Y','961e33cc-2dcc-4d33-92e1-eede6aecd24e','Y','LBR_COFST_TaxAmt','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','Y',TO_DATE('2014-04-02 11:40:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:40:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000159,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:40:15 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_TaxAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:41:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000548,'N','N','N',0,'N',10,'N','N','N','Y','8b011ccd-34e4-4c24-89d4-050af3aa0aa1','Y','LBR_COFST_TaxBaseAmt','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','Y',TO_DATE('2014-04-02 11:41:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:41:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000155,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:41:06 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:42:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000549,'N','N','N',0,'N',10,'N','N','N','Y','c77ea1a0-7adb-430d-bc25-4b35a2afea41','Y','LBR_COFST_TaxRate','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','Y',TO_DATE('2014-04-02 11:42:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:42:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000156,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:42:06 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_TaxRate NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:42:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000550,'N','N','N',0,'N',10,'N','N','N','Y','f8019277-47ec-46a9-be04-8b8f7b3c0941','Y','LBR_COFST_TaxRateInAmt','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','Y',TO_DATE('2014-04-02 11:42:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:42:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000157,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:42:46 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_TaxRateInAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:43:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000551,'N','N','N',0,'N',10,'N','N','N','Y','d365d302-4cac-4e2d-b83b-5cd1494bfc1d','Y','LBR_COFST_TotalQty','COFINS-ST Total Quantity','COFINS-ST Total Quantity','Y',TO_DATE('2014-04-02 11:43:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:43:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000158,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:43:56 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COFST_TotalQty NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:45:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000552,'N','N','N',0,'N',2,'N','N','N','Y','9dd24355-ea55-49ec-9902-78060635177a','Y','LBR_COF_TaxStatus','Identifies a COFINS Tax Status','COFINS Tax Status','Y',TO_DATE('2014-04-02 11:45:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:45:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000153,17,1000031,1000030,0,'LBR')
;

-- Apr 2, 2014 11:45:45 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_COF_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Apr 2, 2014 11:46:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000553,'N','N','N',0,'N',10,'N','N','N','Y','3f774237-ec92-4d37-8fa4-c8054b41919b','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_DATE('2014-04-02 11:46:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:46:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:46:26 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_TaxAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:46:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000554,'N','N','N',0,'N',10,'N','N','N','Y','eed2d0e9-7894-4aad-9365-b16dd16c07e5','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_DATE('2014-04-02 11:46:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:46:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:46:52 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_TaxBaseAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:47:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000555,'N','N','N',0,'N',10,'N','N','N','Y','fea49fae-9042-4188-b377-fbfa3e048d42','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_DATE('2014-04-02 11:47:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:47:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:47:26 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_TaxRate NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:47:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000556,'N','N','N',0,'N',10,'N','N','N','Y','bc54c17c-d84f-4016-abca-3ac87f61f605','Y','LBR_TaxRateInAmt','Indicates the Tax Rate in Amount','Tax Rate in Amount','Y',TO_DATE('2014-04-02 11:47:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:47:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000146,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:47:52 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD LBR_TaxRateInAmt NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:48:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000557,'N','N','N',0,'N',10,'N','N','N','Y','2b75072b-0b54-416b-9dc4-f875dc3a3976','Y','TotalQty','Total Quantity','Total Quantity','Y',TO_DATE('2014-04-02 11:48:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:48:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',2487,12,1000030,0,'LBR')
;

-- Apr 2, 2014 11:48:34 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD TotalQty NUMBER DEFAULT NULL 
;

-- Apr 2, 2014 11:48:54 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000558,'N','N','N',0,'N',7,'N','N','N','Y','54e90661-4d9f-40e0-aea9-30ccec77f8bc','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-04-02 11:48:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:48:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000030,0,'LBR')
;

-- Apr 2, 2014 11:48:55 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD Updated DATE DEFAULT NULL 
;

-- Apr 2, 2014 11:49:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000559,'N','N','N',0,'N',22,'N','N','N','Y','dabf4a42-1656-47b0-9f40-8f8c748fd2c7','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-04-02 11:49:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-04-02 11:49:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000030,0,'LBR')
;

-- Apr 2, 2014 11:49:13 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineCOFINS', FKConstraintType='N',Updated=TO_DATE('2014-04-02 11:49:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000559
;

-- Apr 2, 2014 11:49:13 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Apr 2, 2014 11:49:14 AM BRT
ALTER TABLE LBR_DocLine_COFINS ADD CONSTRAINT UpdatedBy_LBRDocLineCOFINS FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 2, 2014 11:51:37 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',143,70,'The COFINS Tab defines amounts for COFINS Tax','N','N','N','N','N','N','N',3,'5ca341ed-4de6-4306-81d1-0e2457c94df1','LBR','COFINS','COFINS',1000030,'@Processed@=Y',0,TO_DATE('2014-04-02 11:51:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:51:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000543,1000030,'B')
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,22,'N','N',10,'Y',1000420,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','a6dc60f1-2aba-474b-9a7a-e6b2ae4d9951','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000537)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,22,'N','N',20,'Y',1000421,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','4ac458dc-9fdc-4498-b8dd-88bf3e8c9bdb','N','Y','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000538)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,3,'N','N',30,'Y',1000422,'N','LBR','Calculation','c3c5ec8f-7400-4006-b791-781cb48f2183','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000539)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,22,'N','N',40,'Y',1000423,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','f02db5c3-fa02-472a-b76b-86a87fea0563','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000543)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,22,'N','N',50,'Y',1000424,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','d2d7dc66-eab3-4310-bdf7-84670b20cb25','N','N',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000544)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,36,'N','N',60,'Y',1000425,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','32467b4b-07a6-4e94-8017-62384e8be163','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000545)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,3,'N','N',70,'Y',1000426,'N','LBR','Calculation','d18cbc2e-acf7-4f6e-b21d-aab07bbb9e8f','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000546)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',80,'Y',1000427,'N','LBR','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','2ffa8ff0-db6b-463a-9b86-70fbb5653c56','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000547)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',90,'Y',1000428,'N','LBR','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','c8080ed2-1619-42ab-b7b8-1e8bc3da4101','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000548)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',100,'Y',1000429,'N','LBR','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','c91a8746-86ae-47d5-9332-8ea9e2580626','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000549)
;

-- Apr 2, 2014 11:52:20 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',110,'Y',1000430,'N','LBR','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','8a2daa51-16e3-4b7e-9081-d000d5b5955c','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000550)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',120,'Y',1000431,'N','LBR','COFINS-ST Total Quantity','COFINS-ST Total Quantity','b04c7689-6d1e-4f60-b7f0-0002b45fcda5','N','Y',0,0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:20','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000551)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,2,'N','N',130,'Y',1000432,'N','LBR','Identifies a COFINS Tax Status','COFINS Tax Status','80b51604-d76c-4322-be48-5e2aceb793fa','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000552)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',140,'Y',1000433,'N','LBR','Defines the Tax Amount','Tax Amount','f55ba038-4529-497d-ac4b-f3c5d186bc33','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000553)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',150,'Y',1000434,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','28d9298e-69d5-428a-9446-46eee2f646c8','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000554)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',160,'Y',1000435,'N','LBR','Indicates the Tax Rate','Tax Rate','5156d342-c29d-47b0-bba7-4c18a6ddc614','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000555)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',170,'Y',1000436,'N','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','8d912a14-6eec-49d5-87d9-867abb3539ac','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000556)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,10,'N','N',180,'Y',1000437,'N','LBR','Total Quantity','Total Quantity','bcde5203-7be1-4b3d-8e3e-895ff85613af','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000557)
;

-- Apr 2, 2014 11:52:21 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000030,1,'N','N',190,'Y',1000438,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','50bbba53-d29a-4aa8-8761-5e1f093c8e11','N','Y',0,0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:52:21','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000542)
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000438
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000425
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000423
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000424
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000432
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000422
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000434
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000435
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000436
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000437
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000433
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000426
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000428
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000429
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000430
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000431
;

-- Apr 2, 2014 11:56:23 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000427
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000425
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000423
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000438
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000433
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000434
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000427
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000428
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000426
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000422
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000429
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000430
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000431
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000432
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000435
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000436
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000437
;

-- Apr 2, 2014 11:57:56 AM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000421
;

-- Apr 2, 2014 11:59:14 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-04-02 11:59:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000421
;

-- Apr 2, 2014 11:59:42 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','COFINS','a4e0617b-0e76-40db-9828-59ca0ba3cdbc',1000007,TO_DATE('2014-04-02 11:59:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:59:42','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Apr 2, 2014 11:59:50 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','COFINS-ST','bea85bcb-a177-40ec-8a28-700442c8f1e9',1000008,TO_DATE('2014-04-02 11:59:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-02 11:59:50','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Apr 2, 2014 12:01:38 PM BRT
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000432
;

-- Apr 2, 2014 12:03:21 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COF_TaxStatus@!'''' & @LBR_COF_TaxStatus@!01 & @LBR_COF_TaxStatus@!02 & @LBR_COF_TaxStatus@!03 & @LBR_COF_TaxStatus@!04 & @LBR_COF_TaxStatus@!05 & @LBR_COF_TaxStatus@!06 & @LBR_COF_TaxStatus@!07 & @LBR_COF_TaxStatus@!08 & @LBR_COF_TaxStatus@!09', AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:03:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000422
;

-- Apr 2, 2014 12:03:54 PM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02',Updated=TO_DATE('2014-04-02 12:03:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000434
;

-- Apr 2, 2014 12:04:19 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000434
;

-- Apr 2, 2014 12:05:05 PM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02',Updated=TO_DATE('2014-04-02 12:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000435
;

-- Apr 2, 2014 12:05:24 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:05:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000435
;

-- Apr 2, 2014 12:05:55 PM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=AMT | @LBR_COF_TaxStatus@=03', AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000436
;

-- Apr 2, 2014 12:06:25 PM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=AMT | @LBR_COF_TaxStatus@=03', AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:06:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000437
;

-- Apr 2, 2014 12:07:09 PM BRT
UPDATE AD_Field SET DisplayLogic='@CalculationType@=PER | @CalculationType@=AMT | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02 | @LBR_COF_TaxStatus@=03', AD_FieldGroup_ID=1000007,Updated=TO_DATE('2014-04-02 12:07:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000433
;

-- Apr 2, 2014 12:07:41 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COF_TaxStatus@!''''', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:07:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000426
;

-- Apr 2, 2014 12:08:20 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COFST_CalcType@=PER', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000428
;

-- Apr 2, 2014 12:08:45 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COFST_CalcType@=PER', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000429
;

-- Apr 2, 2014 12:09:20 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COFST_CalcType@=AMT', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:09:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000430
;

-- Apr 2, 2014 12:09:45 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COFST_CalcType@=AMT', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000431
;

-- Apr 2, 2014 12:10:13 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_COFST_CalcType@=PER | @LBR_COFST_CalcType@=AMT', AD_FieldGroup_ID=1000008,Updated=TO_DATE('2014-04-02 12:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000427
;

SELECT lbr_register_migration_script('201404021223.sql') FROM dual
;

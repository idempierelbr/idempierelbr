SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 27, 2014 5:10:08 PM BRST
-- Table/Tab: LBR_TaxFormula
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000007,1000009,'N','N','N','LBR','L','67253728-e74d-4a86-84ff-270c710ebac8','Y','Y','LBR_TaxFormula','Tax Formula','Y',0,0,TO_DATE('2014-01-27 17:10:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 17:10:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Jan 27, 2014 5:10:08 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000013,'Table LBR_TaxFormula','LBR_TaxFormula',1,'8d49c666-f0e4-44a5-9a45-fb21cee54ac5',TO_DATE('2014-01-27 17:10:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 17:10:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Jan 27, 2014 5:10:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000132,'N','N','N',0,'N',22,'N','N','N','Y','f89fb738-9d3c-4a5e-b4a0-01e1dd6661d4','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-01-27 17:10:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:10:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000009,129,0,'LBR')
;

-- Jan 27, 2014 5:10:46 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000132
;

-- Jan 27, 2014 5:10:46 PM BRST
CREATE TABLE LBR_TaxFormula (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Jan 27, 2014 5:10:46 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT ADClient_LBRTaxFormula FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:11:03 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000133,'N','N','N',0,'N',22,'N','N','N','Y','f92568f2-0b86-44fc-8be5-5a8ea62dca57','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-01-27 17:11:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:11:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000009,104,0,'LBR')
;

-- Jan 27, 2014 5:11:07 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:11:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000133
;

-- Jan 27, 2014 5:11:07 PM BRST
ALTER TABLE LBR_TaxFormula ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:11:07 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT ADOrg_LBRTaxFormula FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:11:27 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000134,'N','N','N',0,'N',7,'N','N','N','Y','a97437ef-7b52-414f-b2ea-5d8a40079311','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-01-27 17:11:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:11:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000009,0,'LBR')
;

-- Jan 27, 2014 5:11:31 PM BRST
ALTER TABLE LBR_TaxFormula ADD Created DATE DEFAULT NULL 
;

-- Jan 27, 2014 5:11:49 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000135,'N','N','N',0,'N',22,'N','N','N','Y','312a69c2-440c-4cea-96d0-98d7cccb576f','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-01-27 17:11:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:11:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000009,0,'LBR')
;

-- Jan 27, 2014 5:11:53 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:11:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000135
;

-- Jan 27, 2014 5:11:53 PM BRST
ALTER TABLE LBR_TaxFormula ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:11:53 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT CreatedBy_LBRTaxFormula FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:16:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000136,'N','N','N',0,'N',1,'N','N','N','Y','3f8bc8dd-e98d-43e2-bc04-c9338616fb25','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-01-27 17:16:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:16:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000009,0,'LBR')
;

-- Jan 27, 2014 5:16:06 PM BRST
ALTER TABLE LBR_TaxFormula ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Jan 27, 2014 5:17:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000137,'Y','N','N',0,'N',1,'N','N','N','Y','f3934520-6f21-4450-b61e-2b2d736a61f5','Y','IsTaxIncluded','Tax is included in the price ','N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_DATE('2014-01-27 17:17:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:17:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000009,0,'LBR')
;

-- Jan 27, 2014 5:17:27 PM BRST
ALTER TABLE LBR_TaxFormula ADD IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- Jan 27, 2014 5:19:05 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000138,'N','N','N',0,'N',22,'N','N','N','Y','5f451c5e-cdfd-402f-b6ce-49b26602e9bd','Y','LBR_Formula_ID','Tax Formula (Brazil)','Y',TO_DATE('2014-01-27 17:19:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:19:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000041,19,1000009,0,'LBR')
;

-- Jan 27, 2014 5:19:47 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FormulaAdd_ID',1000043,'Additional Formula','Additional Formula','aa7be108-ff9c-42d8-a4e9-012fa412e0f0',TO_DATE('2014-01-27 17:19:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:19:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:20:47 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000009,'LBR_Formula','LBR','5eb908e3-ee3d-48c7-98ab-64a6ef0e8997','N','T',0,0,TO_DATE('2014-01-27 17:20:47','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-01-27 17:20:47','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 27, 2014 5:21:23 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','80ef52f1-6516-4dc8-bf7b-d379c1943656',0,TO_DATE('2014-01-27 17:21:23','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:21:23','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000129,1000127,1000009,1000008,'LBR')
;

-- Jan 27, 2014 5:21:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000139,'N','N','N',0,'N',10,'N','N','N','Y','c50b766a-fee8-48da-b95e-471de9933412','Y','LBR_FormulaAdd_ID','Additional Formula','Y',TO_DATE('2014-01-27 17:21:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:21:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000043,18,1000009,1000009,0,'LBR')
;

-- Jan 27, 2014 5:22:00 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFormulaAdd_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:22:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000139
;

-- Jan 27, 2014 5:22:00 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaAdd_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:22:00 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBRFormulaAdd_LBRTaxFormula FOREIGN KEY (LBR_FormulaAdd_ID) REFERENCES lbr_formula(lbr_formula_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:23:22 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FormulaBase_ID',1000044,'Formula Base','Formula Base','2dac8e1f-7001-4f82-9477-1bf68302ae5f',TO_DATE('2014-01-27 17:23:22','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:23:22','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:23:51 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000140,'N','N','N',0,'N',10,'N','N','N','Y','cd57df69-7984-4641-989a-3e9c321c605c','Y','LBR_FormulaBase_ID','Formula Base','Y',TO_DATE('2014-01-27 17:23:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:23:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000044,18,1000009,1000009,0,'LBR')
;

-- Jan 27, 2014 5:23:55 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFormulaBase_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000140
;

-- Jan 27, 2014 5:23:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaBase_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:23:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBRFormulaBase_LBRTaxFormula FOREIGN KEY (LBR_FormulaBase_ID) REFERENCES lbr_formula(lbr_formula_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:24:26 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FormulaNet_ID',1000045,'Formula Net','Formula Net','1e61acfd-4dab-4388-bffb-ade8ab70a5a2',TO_DATE('2014-01-27 17:24:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:24:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:24:51 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000141,'N','N','N',0,'N',10,'N','N','N','Y','7b8d7903-e976-4c3e-b128-e2cd1c8fc676','Y','LBR_FormulaNet_ID','Formula Net','Y',TO_DATE('2014-01-27 17:24:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:24:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000045,18,1000009,1000009,0,'LBR')
;

-- Jan 27, 2014 5:24:55 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFormulaNet_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000141
;

-- Jan 27, 2014 5:24:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaNet_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:24:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBRFormulaNet_LBRTaxFormula FOREIGN KEY (LBR_FormulaNet_ID) REFERENCES lbr_formula(lbr_formula_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:46:15 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxFormula_ID',1000046,'Tax Formula','Tax Formula','b9fc48c1-aaf2-4749-ad5d-ce093d2e4449',TO_DATE('2014-01-27 17:46:15','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:46:15','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:46:33 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000142,'N','N','N',0,'N',22,'N','Y','N','Y','a92a2560-3740-4b69-addc-d563c47f1d41','N','LBR_TaxFormula_ID','Tax Formula','N',TO_DATE('2014-01-27 17:46:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:46:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000046,13,1000009,0,'LBR')
;

-- Jan 27, 2014 5:46:37 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_TaxFormula_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:46:38 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBR_TaxFormula_Key PRIMARY KEY (LBR_TaxFormula_ID)
;

-- Jan 27, 2014 5:46:55 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxFormula_UU',1000047,'LBR_TaxFormula_UU','LBR_TaxFormula_UU','ee7d70b1-d8be-4dc3-aee1-bcf43b8d6845',TO_DATE('2014-01-27 17:46:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:46:55','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:47:10 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000143,'N','N','N',0,'N',36,'N','N','N','Y','ace42f2f-7139-498c-bc83-a7b168241e81','N','LBR_TaxFormula_UU','LBR_TaxFormula_UU','N',TO_DATE('2014-01-27 17:47:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:47:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000047,10,1000009,0,'LBR')
;

-- Jan 27, 2014 5:47:15 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_TaxFormula_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Jan 27, 2014 5:47:15 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBR_TaxFormula_UU_idx UNIQUE (LBR_TaxFormula_UU)
;

-- Jan 27, 2014 5:47:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000144,'Y','N','N',0,'N',22,'Y','N','N','Y','1a6c2808-d572-480f-ac20-ece3c773edde','N','LBR_TaxName_ID','Primary key table LBR_TaxName','Primary key table LBR_TaxName','Tax Name','Y',TO_DATE('2014-01-27 17:47:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:47:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000034,19,1000009,0,'LBR')
;

-- Jan 27, 2014 5:47:55 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxName_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000144
;

-- Jan 27, 2014 5:47:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_TaxName_ID NUMBER(10) NOT NULL
;

-- Jan 27, 2014 5:47:55 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBRTaxName_LBRTaxFormula FOREIGN KEY (LBR_TaxName_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:49:10 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TransactionType',1000048,'Transaction Type','Identifies a Transaction Type','Transaction Type','3167a06c-3554-4b87-9f39-4561b89d4183',TO_DATE('2014-01-27 17:49:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-27 17:49:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 27, 2014 5:54:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000145,'Y','N','N',0,'N',3,'N','N','N','Y','1eefe80b-8c27-44c6-980c-8f3911d07293','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-01-27 17:54:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:54:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,1000009,0,'LBR')
;

-- Jan 27, 2014 5:54:46 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_TransactionType NVARCHAR2(3) NOT NULL
;

-- Jan 27, 2014 5:55:10 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000146,'N','N','N',0,'N',7,'N','N','N','Y','684d5981-fa1b-4045-89c3-1f790c393015','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-01-27 17:55:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:55:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000009,0,'LBR')
;

-- Jan 27, 2014 5:55:14 PM BRST
ALTER TABLE LBR_TaxFormula ADD Updated DATE DEFAULT NULL 
;

-- Jan 27, 2014 5:55:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000147,'N','N','N',0,'N',22,'N','N','N','Y','a6e6fa11-d4b9-41c4-81cc-1f565b614047','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-01-27 17:55:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:55:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000009,0,'LBR')
;

-- Jan 27, 2014 5:55:35 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 17:55:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000147
;

-- Jan 27, 2014 5:55:35 PM BRST
ALTER TABLE LBR_TaxFormula ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 5:55:35 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT UpdatedBy_LBRTaxFormula FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jan 27, 2014 5:56:09 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000148,'Y','N','N',0,'N',7,'N','N','N','Y','52878da6-b1c0-4a40-adca-d187f718bbfc','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-01-27 17:56:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-27 17:56:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000009,0,'LBR')
;

-- Jan 27, 2014 5:56:14 PM BRST
ALTER TABLE LBR_TaxFormula ADD ValidFrom DATE NOT NULL
;

-- Jan 27, 2014 7:26:46 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000007,20,'N','N','N','N','N','Y','N',0,'d3916fc3-7eea-4550-ae92-f5e0d740deb4','LBR','Tax Formula',1000009,0,TO_DATE('2014-01-27 19:26:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000009,'B')
;

-- Jan 27, 2014 7:26:53 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,22,'N','N',10,'Y',1000096,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','2e6ac9f7-30c3-4137-ba74-4b76e2d18cb1','N','Y',0,0,TO_DATE('2014-01-27 19:26:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:53','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000132)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,22,'N','N',20,'Y',1000097,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','b3274256-272f-47e5-9c1b-27ee43570c7e','N','Y','Y',0,0,TO_DATE('2014-01-27 19:26:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:53','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000133)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,1,'N','N',30,'Y',1000098,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','70005c97-1727-46b7-9c25-f9afae980f70','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000137)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,22,'N','N',40,'Y',1000099,'N','LBR','Tax Formula (Brazil)','ea1f811b-c603-4a93-bd6e-0ad290d24f20','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000138)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,10,'N','N',50,'Y',1000100,'N','LBR','Additional Formula','9ecbdd24-cea5-4fee-a9c7-2a3ebd5f232e','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000139)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,10,'N','N',60,'Y',1000101,'N','LBR','Formula Base','c88154d5-930d-4a4a-8716-9e96f82aca0d','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000140)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,10,'N','N',70,'Y',1000102,'N','LBR','Formula Net','0bd2dc4b-2ed4-4b58-b896-06117195c683','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000141)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,22,'N','N',80,'Y',1000103,'N','LBR','Tax Formula','78426252-e213-44fe-bb2b-a342ff9416cf','N','N',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000142)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,36,'N','N',90,'Y',1000104,'N','LBR','LBR_TaxFormula_UU','0603698e-3a20-4b73-b39b-949cd4b94639','N','N',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000143)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,22,'N','N',100,'Y',1000105,'N','Primary key table LBR_TaxName','LBR','Primary key table LBR_TaxName','Tax Name','4042bf92-29b1-414d-af0f-3743a79717ce','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000144)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,3,'N','N',110,'Y',1000106,'N','LBR','Identifies a Transaction Type','Transaction Type','3d736571-eaf7-4693-9e87-2c0b503beb4b','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000145)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,7,'N','N',120,'Y',1000107,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','4af37515-a888-4e4e-800b-c4f8bb249393','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000148)
;

-- Jan 27, 2014 7:26:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000009,1,'N','N',130,'Y',1000108,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','6b15262f-f546-4bb8-923c-61c8b46c8d23','N','Y',0,0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-27 19:26:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000136)
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000104
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000103
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000105
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000108
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000106
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000107
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000099
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000102
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000100
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000101
;

-- Jan 27, 2014 7:29:16 PM BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000098
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000108
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000096
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000097
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000105
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000107
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000099
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000102
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000100
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000101
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000098
;

-- Jan 27, 2014 7:30:11 PM BRST
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000106
;

-- Jan 27, 2014 7:31:14 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-27 19:31:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000097
;

-- Jan 27, 2014 7:32:18 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-01-27 19:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000108
;

-- Jan 27, 2014 7:32:48 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-01-27 19:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000107
;

-- Jan 27, 2014 7:33:23 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-01-27 19:33:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000102
;

-- Jan 27, 2014 7:33:51 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-01-27 19:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000101
;

-- Jan 27, 2014 7:34:52 PM BRST
UPDATE AD_Tab SET TabLevel=1, AD_Column_ID=1000144,Updated=TO_DATE('2014-01-27 19:34:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000009
;

-- Jan 27, 2014 7:40:30 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFormula_LBRTaxFormula', FKConstraintType='N',Updated=TO_DATE('2014-01-27 19:40:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000138
;

-- Jan 27, 2014 7:40:30 PM BRST
ALTER TABLE LBR_TaxFormula ADD LBR_Formula_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 27, 2014 7:40:30 PM BRST
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBRFormula_LBRTaxFormula FOREIGN KEY (LBR_Formula_ID) REFERENCES lbr_formula(lbr_formula_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT lbr_register_migration_script('201401271729.sql') FROM dual
;

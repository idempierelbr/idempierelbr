SET SQLBLANKLINES ON
SET DEFINE OFF

-- Mar 14, 2014 12:30:43 PM BRT
-- Tables/Columns/Tabs/Field for Doc Line Details (Order)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_Details_ID',1000094,'The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Doc Line Details','Doc Line Details','bc2d4dcb-50d3-44c0-8f6c-e6b421d8ea21',TO_DATE('2014-03-14 12:30:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:30:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:31:33 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DocLine_Details_UU',1000095,'The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','Doc Line Details','Doc Line Details','a85cf642-ad4d-4628-92b5-dfe4ef83e8fc',TO_DATE('2014-03-14 12:31:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:31:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:36:30 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_EXTIPI',1000096,'Identifies an exception to a NCM rule.','EX TIPI','NCM Exception','EX TIPI','172af28a-290f-4a1d-bbc0-2b23b0dcfa86',TO_DATE('2014-03-14 12:36:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:36:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:40:49 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_UOMTax_ID',1000097,'The Taxable UOM defines a unique non monetary Unit of Measure','Taxable UOM','Taxable Unit of Measure','Taxable UOM','aeae00e6-899c-415d-a674-03c922472be6',TO_DATE('2014-03-14 12:40:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:40:49','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:44:24 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_QtyTax',1000098,'The Taxable Quantity indicates the number of a specific product or item for this document.','Taxable Quantity','Taxable Quantity','Taxable Qty','6ac2cc1c-7e29-4d51-a51c-2110d9e1fee7',TO_DATE('2014-03-14 12:44:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:44:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:45:02 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_PriceTax',1000099,'The Taxable Price indicates the Price for a product or service.','Taxable Price','Taxable Price','Taxable Price','c18ac548-98c4-4465-8ea7-074efeb674d8',TO_DATE('2014-03-14 12:45:02','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:45:02','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:45:39 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_UPCTax',1000100,'Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','Taxable UPC/EAN','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','5d3ddc97-edf7-4c8f-af77-e6bad52890ac',TO_DATE('2014-03-14 12:45:39','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:45:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:47:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_GrossAmt',1000101,'Indicates the gross amount for a product/service/tax/etc.','Gross Amount','Gross Amount','Gross Amount','1c94bd78-0184-4622-8c72-b9cc6a3f8993',TO_DATE('2014-03-14 12:47:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:47:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:52:25 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IsGrossAmtInTotal',1000102,'The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','Gross Amount is in Grand Total','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','745f16ac-6a75-4f4f-81a7-1adb111ce04b',TO_DATE('2014-03-14 12:52:25','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:52:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:54:17 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_POReferenceLine',1000103,'The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','Order Line Reference','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','ed0c66a1-5c03-4b8e-bd6e-876ed0ccd9db',TO_DATE('2014-03-14 12:54:17','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:54:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 14, 2014 12:56:32 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FCIControlNo',1000104,'Identifies the FCI Control Number','FCI Control Number','Import Content Sheet (FCI) Control Number','FCI Control Number','5c0f685f-8162-4899-891b-f7b56a983046',TO_DATE('2014-03-14 12:56:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-14 12:56:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 15, 2014 11:37:23 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000026,'Y','N','Y','LBR','L','85dd0f5f-e19e-46f8-977c-80d0d6b756dd','Y','Y','LBR_DocLine_Details','Brazilian Doc Line Details','Y',0,0,TO_DATE('2014-03-15 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-15 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Mar 15, 2014 11:37:23 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000030,'Table LBR_DocLine_Details','LBR_DocLine_Details',1,'60bce4b5-c95c-4dd5-aec5-a9a488372bbb',TO_DATE('2014-03-15 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-15 11:37:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Mar 15, 2014 11:37:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000416,'N','N','N',0,'N',22,'N','N','N','Y','029681a8-cfc6-4d13-aee6-6d2f38567ba2','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-03-15 11:37:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:37:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000026,129,0,'LBR')
;

-- Mar 15, 2014 11:37:48 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-15 11:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000416
;

-- Mar 15, 2014 11:37:48 AM BRT
CREATE TABLE LBR_DocLine_Details (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Mar 15, 2014 11:37:48 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT ADClient_LBRDocLineDetails FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 15, 2014 11:38:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000417,'N','N','N',0,'N',22,'N','N','N','Y','729e1a25-87f0-49f0-8e39-4fe542a3bcc7','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-03-15 11:38:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:38:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000026,104,0,'LBR')
;

-- Mar 15, 2014 11:38:08 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-15 11:38:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000417
;

-- Mar 15, 2014 11:38:08 AM BRT
ALTER TABLE LBR_DocLine_Details ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 15, 2014 11:38:08 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT ADOrg_LBRDocLineDetails FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 15, 2014 11:38:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000418,'N','N','N',0,'N',7,'N','N','N','Y','74df249a-cbed-45de-b78f-9bc9ae5b1209','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-03-15 11:38:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:38:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000026,0,'LBR')
;

-- Mar 15, 2014 11:38:37 AM BRT
ALTER TABLE LBR_DocLine_Details ADD Created DATE DEFAULT NULL 
;

-- Mar 15, 2014 11:38:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000419,'N','N','N',0,'N',22,'N','N','N','Y','4bb35506-ee58-4a4b-b4b0-25de3511d5d1','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-03-15 11:38:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:38:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000026,0,'LBR')
;

-- Mar 15, 2014 11:38:58 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-15 11:38:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000419
;

-- Mar 15, 2014 11:38:58 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Mar 15, 2014 11:38:58 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT CreatedBy_LBRDocLineDetails FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 15, 2014 11:39:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000420,'N','N','N',0,'N',7,'N','N','N','Y','168ec766-edf1-4b7f-9e99-33426487c71d','Y','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-03-15 11:39:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:39:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000026,0,'LBR')
;

-- Mar 15, 2014 11:39:27 AM BRT
ALTER TABLE LBR_DocLine_Details ADD Updated DATE DEFAULT NULL 
;

-- Mar 15, 2014 11:39:44 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000421,'N','N','N',0,'N',22,'N','N','N','Y','22f1e81e-d7ba-4c56-a166-0897d9ad7b25','Y','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-03-15 11:39:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:39:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000026,0,'LBR')
;

-- Mar 15, 2014 11:39:46 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-15 11:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000421
;

-- Mar 15, 2014 11:39:46 AM BRT
ALTER TABLE LBR_DocLine_Details ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Mar 15, 2014 11:39:46 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT UpdatedBy_LBRDocLineDetails FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 15, 2014 11:40:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000422,'N','N','N',0,'N',1,'N','N','N','Y','5bd739ef-bd91-4934-91a8-c872ba073f50','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-03-15 11:40:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:40:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000026,0,'LBR')
;

-- Mar 15, 2014 11:40:09 AM BRT
ALTER TABLE LBR_DocLine_Details ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Mar 15, 2014 11:40:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000423,'N','N','N',0,'N',22,'N','Y','N','Y','c0d5b7fb-85fd-4d8e-a8e4-d79ce9f3930b','N','LBR_DocLine_Details_ID','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','N',TO_DATE('2014-03-15 11:40:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:40:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000094,13,1000026,0,'LBR')
;

-- Mar 15, 2014 11:40:44 AM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_DocLine_Details_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 15, 2014 11:40:44 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBR_DocLine_Details_Key PRIMARY KEY (LBR_DocLine_Details_ID)
;

-- Mar 15, 2014 11:41:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000424,'N','N','N',0,'N',36,'N','N','N','Y','0f39c99a-95b6-4642-ad95-df505786bc67','N','LBR_DocLine_Details_UU','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','Doc Line Details','N',TO_DATE('2014-03-15 11:41:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-15 11:41:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000095,10,1000026,0,'LBR')
;

-- Mar 15, 2014 11:41:13 AM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_DocLine_Details_UU VARCHAR2(36) DEFAULT NULL 
;

-- Mar 15, 2014 11:41:13 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBR_DocLine_Details_UU_idx UNIQUE (LBR_DocLine_Details_UU)
;

-- Mar 17, 2014 2:38:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000425,'N','N','N',0,'N',10,'N','N','N','Y','b14faf21-b9d9-49b5-8a27-cbba229a04fc','Y','C_OrderLine_ID','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.','Sales Order Line','Y',TO_DATE('2014-03-17 14:38:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:38:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',561,19,1000026,0,'LBR')
;

-- Mar 17, 2014 2:38:42 PM BRT
UPDATE AD_Column SET FKConstraintName='COrderLine_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000425
;

-- Mar 17, 2014 2:38:42 PM BRT
ALTER TABLE LBR_DocLine_Details ADD C_OrderLine_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:38:42 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT COrderLine_LBRDocLineDetails FOREIGN KEY (C_OrderLine_ID) REFERENCES c_orderline(c_orderline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:39:22 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000426,'N','N','N',0,'N',22,'N','N','N','Y','a5e39889-9766-4a8a-9553-0fcf15c1b023','Y','C_InvoiceLine_ID','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.','Invoice Line','Y',TO_DATE('2014-03-17 14:39:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:39:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1076,19,1000026,0,'LBR')
;

-- Mar 17, 2014 2:39:27 PM BRT
UPDATE AD_Column SET FKConstraintName='CInvoiceLine_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000426
;

-- Mar 17, 2014 2:39:27 PM BRT
ALTER TABLE LBR_DocLine_Details ADD C_InvoiceLine_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:39:27 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT CInvoiceLine_LBRDocLineDetails FOREIGN KEY (C_InvoiceLine_ID) REFERENCES c_invoiceline(c_invoiceline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:39:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000427,'N','N','N',0,'N',10,'N','N','N','Y','3591e5af-1b28-47fc-80a7-02cb6dfedae6','Y','M_RMALine_ID','Return Material Authorization Line','Detail information about the returned goods','RMA Line','Y',TO_DATE('2014-03-17 14:39:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:39:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2413,19,1000026,0,'LBR')
;

-- Mar 17, 2014 2:40:02 PM BRT
UPDATE AD_Column SET FKConstraintName='MRMALine_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:40:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000427
;

-- Mar 17, 2014 2:40:02 PM BRT
ALTER TABLE LBR_DocLine_Details ADD M_RMALine_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:40:02 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT MRMALine_LBRDocLineDetails FOREIGN KEY (M_RMALine_ID) REFERENCES m_rmaline(m_rmaline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:40:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000428,'N','N','N',0,'N',40,'N','N','N','Y','d3ee1693-b2e7-45bf-a3d4-4de21faf93c8','Y','ProductValue','Key of the Product','Product Key','Y',TO_DATE('2014-03-17 14:40:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:40:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1675,10,1000026,0,'LBR')
;

-- Mar 17, 2014 2:40:43 PM BRT
ALTER TABLE LBR_DocLine_Details ADD ProductValue VARCHAR2(40) DEFAULT NULL 
;

-- Mar 17, 2014 2:41:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000429,'N','N','N',0,'N',255,'Y','N','N','Y','0ab35807-a238-4b04-b759-77c28c60d870','Y','ProductName','Name of the Product','Product Name','Y',TO_DATE('2014-03-17 14:41:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:41:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2659,10,1000026,0,'LBR')
;

-- Mar 17, 2014 2:41:18 PM BRT
ALTER TABLE LBR_DocLine_Details ADD ProductName VARCHAR2(255) DEFAULT NULL 
;

-- Mar 17, 2014 2:41:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000430,'N','N','N',0,'N',22,'N','N','N','Y','4aa82577-7d3c-453b-893d-53696642d1d9','Y','LBR_NCM_ID','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','Y',TO_DATE('2014-03-17 14:41:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:41:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000012,19,1000026,0,'LBR')
;

-- Mar 17, 2014 2:41:50 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNCM_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000430
;

-- Mar 17, 2014 2:41:50 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_NCM_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:41:50 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBRNCM_LBRDocLineDetails FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:42:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000431,'N','N','N',0,'N',6,'N','N','N','Y','11bf75a8-49a7-421d-87c4-87404c310b9a','Y','LBR_EXTIPI','NCM Exception','Identifies an exception to a NCM rule.','EX TIPI','Y',TO_DATE('2014-03-17 14:42:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:42:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000096,10,1000026,0,'LBR')
;

-- Mar 17, 2014 2:43:51 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_EXTIPI VARCHAR2(6) DEFAULT NULL 
;

-- Mar 17, 2014 2:44:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000432,'N','N','N',0,'N',22,'N','N','N','Y','68f5ddf8-fcb6-4616-9dcc-7fa9796ad1c2','Y','LBR_CFOP_ID','Indentifies the CFOP','CFOP','Y',TO_DATE('2014-03-17 14:44:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:44:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000089,19,1000026,0,'LBR')
;

-- Mar 17, 2014 2:44:28 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCFOP_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000432
;

-- Mar 17, 2014 2:44:28 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_CFOP_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:44:28 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBRCFOP_LBRDocLineDetails FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:46:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000433,'N','N','N',0,'N',22,'N','N','N','Y','8ccd7fd3-5702-4eaa-9b00-2defda2d21d9','Y','LBR_UOMTax_ID','Taxable Unit of Measure','The Taxable UOM defines a unique non monetary Unit of Measure','Taxable UOM','Y',TO_DATE('2014-03-17 14:46:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:46:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000097,18,114,1000026,210,0,'LBR')
;

-- Mar 17, 2014 2:47:03 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRUOMTax_LBRDocLineDetails', FKConstraintType='N',Updated=TO_DATE('2014-03-17 14:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000433
;

-- Mar 17, 2014 2:47:03 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_UOMTax_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 2:47:03 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBRUOMTax_LBRDocLineDetails FOREIGN KEY (LBR_UOMTax_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- Mar 17, 2014 2:48:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000434,'N','N','N',0,'N',22,'N','N','N','Y','dd12947d-6a6d-4b7d-aa26-efbb8b5db308','Y','LBR_QtyTax','Taxable Quantity','The Taxable Quantity indicates the number of a specific product or item for this document.','Taxable Quantity','Y',TO_DATE('2014-03-17 14:48:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:48:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000098,29,1000026,0,'LBR')
;

-- Mar 17, 2014 2:48:31 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_QtyTax NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 2:52:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000435,'N','N','N',0,'N',22,'N','N','N','Y','8f51e6aa-4046-4b5f-9bfd-30b9a16ba618','Y','LBR_PriceTax','Taxable Price','The Taxable Price indicates the Price for a product or service.','Taxable Price','Y',TO_DATE('2014-03-17 14:52:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:52:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000099,37,1000026,0,'LBR')
;

-- Mar 17, 2014 2:52:40 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_PriceTax NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 2:53:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000436,'N','N','N',0,'N',14,'N','N','N','Y','b94eaf09-a173-4e31-b2db-90243652bd4b','Y','InsuredAmount','Insured Amount','Y',TO_DATE('2014-03-17 14:53:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:53:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',200277,12,1000026,0,'LBR')
;

-- Mar 17, 2014 2:53:10 PM BRT
ALTER TABLE LBR_DocLine_Details ADD InsuredAmount NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 2:53:33 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000437,'N','N','N',0,'N',22,'N','N','N','Y','f5c6710f-9efc-4c67-a634-9ca90a3b194e','Y','DiscountAmt','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.','Discount Amount','Y',TO_DATE('2014-03-17 14:53:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:53:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1395,12,1000026,0,'LBR')
;

-- Mar 17, 2014 2:53:37 PM BRT
ALTER TABLE LBR_DocLine_Details ADD DiscountAmt NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 2:54:04 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000438,'N','N','N',0,'N',22,'N','N','N','Y','849a115d-5f7b-4604-90ac-eeb3e907da5c','Y','FreightAmt','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.','Freight Amount','Y',TO_DATE('2014-03-17 14:54:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:54:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',306,12,1000026,0,'LBR')
;

-- Mar 17, 2014 2:54:07 PM BRT
ALTER TABLE LBR_DocLine_Details ADD FreightAmt NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 2:55:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000439,'N','N','N',0,'N',30,'N','N','N','Y','101602b7-7246-47e3-b1af-0cfd9e5a37b8','Y','LBR_UPCTax','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','Taxable UPC/EAN','Y',TO_DATE('2014-03-17 14:55:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:55:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000100,10,1000026,0,'LBR')
;

-- Mar 17, 2014 2:55:14 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_UPCTax VARCHAR2(30) DEFAULT NULL 
;

-- Mar 17, 2014 2:55:41 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000440,'N','N','N',0,'N',14,'N','N','N','Y','878c71b4-33a4-43a8-8919-2a99bd6f9eb3','Y','Surcharges','Surcharges','Y',TO_DATE('2014-03-17 14:55:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 14:55:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',200296,37,1000026,0,'LBR')
;

-- Mar 17, 2014 2:55:46 PM BRT
ALTER TABLE LBR_DocLine_Details ADD Surcharges NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 3:09:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000441,'N','N','N',0,'N',22,'N','N','N','Y','ae99cf65-a962-48f7-96ba-0a72dccd568c','Y','LBR_GrossAmt','Gross Amount','Indicates the gross amount for a product/service/tax/etc.','Gross Amount','Y',TO_DATE('2014-03-17 15:09:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 15:09:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000101,37,1000026,0,'LBR')
;

-- Mar 17, 2014 3:09:35 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_GrossAmt NUMBER DEFAULT NULL 
;

-- Mar 17, 2014 3:17:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000442,'Y','N','N',0,'N',1,'N','N','N','Y','5133e001-4081-4896-83cb-5869213e6fc9','Y','LBR_IsGrossAmtInTotal','This Gross Amount is in Grand Total','Y','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','Gross Amount is in Grand Total','Y',TO_DATE('2014-03-17 15:17:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 15:17:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000102,20,1000026,0,'LBR')
;

-- Mar 17, 2014 3:17:23 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_IsGrossAmtInTotal CHAR(1) DEFAULT 'Y' CHECK (LBR_IsGrossAmtInTotal IN ('Y','N')) NOT NULL
;

-- Mar 17, 2014 3:19:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000443,'N','N','N',0,'N',20,'N','N','N','Y','d8d1f454-9c0c-4d17-b6b5-59593e4eb963','Y','POReference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Order Reference','Y',TO_DATE('2014-03-17 15:19:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 15:19:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',952,10,1000026,0,'LBR')
;

-- Mar 17, 2014 3:20:04 PM BRT
ALTER TABLE LBR_DocLine_Details ADD POReference VARCHAR2(20) DEFAULT NULL 
;

-- Mar 17, 2014 3:23:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000444,'N','N','N',0,'N',22,'N','N','N','Y','01556dcf-5a4b-4373-b803-4bd130cecc88','Y','LBR_POReferenceLine','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','Order Line Reference','Y',TO_DATE('2014-03-17 15:23:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 15:23:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000103,11,1000026,0,'LBR')
;

-- Mar 17, 2014 3:23:39 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_POReferenceLine NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 4:15:40 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000022,'LBR_NFeSpecificProduct','LBR','8bad6c98-8193-4d76-b6e3-de6affc3c431','N','L',0,0,TO_DATE('2014-03-17 16:15:40','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-17 16:15:40','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 17, 2014 4:17:08 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000041,1000022,'33bc9f8f-21d8-4a8f-bdbe-9ba4a14c8545','VEH',TO_DATE('2014-03-17 16:17:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 16:17:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Vehicle')
;

-- Mar 17, 2014 4:17:47 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000042,1000022,'784c753d-53f6-4a13-93e5-a10d10211d35','MED',TO_DATE('2014-03-17 16:17:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 16:17:47','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Medicine')
;

-- Mar 17, 2014 4:18:27 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000043,1000022,'3b3eed6a-9324-45dd-b7d7-b4082c73d1a0','ARM',TO_DATE('2014-03-17 16:18:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 16:18:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Armament')
;

-- Mar 17, 2014 4:19:06 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000044,1000022,'36d48e8f-dccc-4cd3-8342-98b69c4af735','FUE',TO_DATE('2014-03-17 16:19:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 16:19:06','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Fuel')
;

-- Mar 17, 2014 4:20:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000445,'N','N','N',0,'N',1,'N','N','N','Y','80b777d5-2f1e-4e4a-8a53-b6222f4b0132','Y','ProductType','Type of product','The type of product also determines accounting consequences.','Product Type','Y',TO_DATE('2014-03-17 16:20:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 16:20:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1899,17,1000022,1000026,0,'LBR')
;

-- Mar 17, 2014 4:20:21 PM BRT
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2014-03-17 16:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000445
;

-- Mar 17, 2014 4:20:26 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_NFeSpecificProduct VARCHAR2(3) DEFAULT NULL 
;

-- Mar 17, 2014 4:28:11 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000446,'N','N','N',0,'N',36,'N','N','N','Y','9e267b17-9059-4edb-a8f2-5498776095a0','Y','LBR_FCIControlNo','Import Content Sheet (FCI) Control Number','Identifies the FCI Control Number','FCI Control Number','Y',TO_DATE('2014-03-17 16:28:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 16:28:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000104,10,1000026,0,'LBR')
;

-- Mar 17, 2014 4:28:15 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_FCIControlNo VARCHAR2(36) DEFAULT NULL 
;

-- Mar 17, 2014 4:39:12 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000447,'N','N','N',0,'N',10,'N','N','N','Y','7aa8b154-0aa7-43d0-9b8d-bd6bd6b9c0b3','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-03-17 16:39:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-17 16:39:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000026,0,'LBR')
;

-- Mar 17, 2014 4:39:18 PM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Mar 17, 2014 5:01:23 PM BRT
UPDATE AD_Tab SET SeqNo=300,Updated=TO_DATE('2014-03-17 17:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=236
;

-- Mar 17, 2014 5:01:29 PM BRT
UPDATE AD_Tab SET SeqNo=400,Updated=TO_DATE('2014-03-17 17:01:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=53374
;

-- Mar 17, 2014 5:01:34 PM BRT
UPDATE AD_Tab SET SeqNo=500,Updated=TO_DATE('2014-03-17 17:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=200016
;

-- Mar 17, 2014 5:04:16 PM BRT
INSERT INTO AD_Tab (Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','Y',143,30,'The Order Line Details Tab defines details for the individual line item.','N','N','N','N','N','N','N',2,'c6f6b60d-8b82-46d7-a4b9-c39c241ea0d2','LBR','Order Line Details','Order Line Details',1000026,'@Processed@=Y',0,TO_DATE('2014-03-17 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000425,1000026,'B')
;

-- Mar 17, 2014 5:05:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',10,'Y',1000316,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','771ad5ff-a71d-4ff4-ad2c-8d8151f80141','N','Y',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000416)
;

-- Mar 17, 2014 5:05:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',20,'Y',1000317,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','7a7c503a-2ef9-4cca-b0d7-ed56829d827a','N','Y','Y',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000417)
;

-- Mar 17, 2014 5:05:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',30,'Y',1000318,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','7a8bb13f-009c-4cdc-83c1-dbf32dfedcd9','N','N',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000423)
;

-- Mar 17, 2014 5:05:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,36,'N','N',40,'Y',1000319,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','5f68498b-69cf-43e4-9fb2-2c611d045899','N','Y',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000424)
;

-- Mar 17, 2014 5:05:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,10,'N','N',50,'Y',1000320,'N','The Sales Order Line is a unique identifier for a line in an order.','LBR','Sales Order Line','Sales Order Line','020ef891-bd21-4922-a869-e28a2e871ddb','N','Y',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000425)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',60,'Y',1000321,'N','The Invoice Line uniquely identifies a single line of an Invoice.','LBR','Invoice Detail Line','Invoice Line','571d9273-499d-46d2-af05-4db4dcb25bb7','N','Y',0,0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:38','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000426)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,10,'N','N',70,'Y',1000322,'N','Detail information about the returned goods','LBR','Return Material Authorization Line','RMA Line','8dfcff1d-8d0d-4c03-b560-b7b831cbf28e','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000427)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,40,'N','N',80,'Y',1000323,'N','LBR','Key of the Product','Product Key','469abb95-02a3-4c60-b2c4-8c71b3fb93fa','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000428)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,255,'N','N',90,'Y',1000324,'N','LBR','Name of the Product','Product Name','0f8c3e9e-c391-45a4-94b0-032064b47538','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000429)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',100,'Y',1000325,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','72b82bb8-129d-47af-9832-00412420676d','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000430)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,6,'N','N',110,'Y',1000326,'N','Identifies an exception to a NCM rule.','LBR','NCM Exception','EX TIPI','ccba11df-3fea-4f5f-8dd5-c337f68a0c13','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000431)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',120,'Y',1000327,'N','LBR','Indentifies the CFOP','CFOP','d629ca2d-15d4-4df6-a7e1-5e14b254c821','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000432)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',130,'Y',1000328,'N','The Taxable UOM defines a unique non monetary Unit of Measure','LBR','Taxable Unit of Measure','Taxable UOM','837a4071-8fa1-4eb3-851e-760d583f8dad','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000433)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',140,'Y',1000329,'N','The Taxable Quantity indicates the number of a specific product or item for this document.','LBR','Taxable Quantity','Taxable Quantity','ee8d7935-2614-4baa-93cf-fecefc42db36','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000434)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',150,'Y',1000330,'N','The Taxable Price indicates the Price for a product or service.','LBR','Taxable Price','Taxable Price','47f76bdc-b912-4931-8e4a-fb05e1754dbe','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000435)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,14,'N','N',160,'Y',1000331,'N','LBR','Insured Amount','663fd7e9-2475-4750-81eb-8c773f893140','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000436)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',170,'Y',1000332,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','467ed217-e923-403d-a58c-7b0232c5e22e','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000437)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',180,'Y',1000333,'N','The Freight Amount indicates the amount charged for Freight in the document currency.','LBR','Freight Amount ','Freight Amount','ac752cb6-a230-4d62-8437-50c3cb46ca47','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000438)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,30,'N','N',190,'Y',1000334,'N','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','LBR','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','61a614bf-6c2d-43d7-ba56-0330b9ea854e','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000439)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,14,'N','N',200,'Y',1000335,'N','LBR','Surcharges','25487830-9428-40a1-a691-ee00d417d039','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000440)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',210,'Y',1000336,'N','Indicates the gross amount for a product/service/tax/etc.','LBR','Gross Amount','Gross Amount','8e4c4dd3-b079-4592-8c6c-efc96bd3bb25','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000441)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,1,'N','N',220,'Y',1000337,'N','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','LBR','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','0b50ae03-50b3-492b-9657-8b0668595e80','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000442)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,20,'N','N',230,'Y',1000338,'N','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','LBR','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','Order Reference','6dbaeb4b-bf11-452d-8173-7426c2c7c93e','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000443)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',240,'Y',1000339,'N','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','LBR','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','c7885d0f-bc7f-4e56-bfc4-d8d0c7973cdb','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000444)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,3,'N','N',250,'Y',1000340,'N','The type of product also determines accounting consequences.','LBR','Type of product','Product Type','abbc6c9d-0779-4312-b029-5128b9e10c2b','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000445)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,36,'N','N',260,'Y',1000341,'N','Identifies the FCI Control Number','LBR','Import Content Sheet (FCI) Control Number','FCI Control Number','34102699-6ff5-4027-bb73-e5fe709f57f0','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000446)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,10,'N','N',270,'Y',1000342,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','0916f1f0-1acf-4049-ad95-b265567dcf21','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000447)
;

-- Mar 17, 2014 5:05:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,1,'N','N',280,'Y',1000343,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','521d929b-9e16-4527-872d-183c5b0d3ee3','N','Y',0,0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-17 17:05:39','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000422)
;

-- Mar 18, 2014 9:20:51 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeSpecificProduct',1000105,'NF-e Specific Product','Specific Product in a NF-e','NF-e Specific Product','c0031388-599e-4747-a7fd-e3c86d2831c7',TO_DATE('2014-03-18 09:20:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-18 09:20:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 18, 2014 9:21:14 AM BRT
UPDATE AD_Column SET ColumnName='LBR_NFeSpecificProduct', Description='Specific Product in a NF-e', Help=NULL, Name='NF-e Specific Product', AD_Element_ID=1000105,Updated=TO_DATE('2014-03-18 09:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000445
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000343
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000322
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000321
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000320
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000319
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000318
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- Mar 18, 2014 9:21:24 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- Mar 18, 2014 9:22:12 AM BRT
UPDATE AD_Field SET Help=NULL, Description='Specific Product in a NF-e', Name='NF-e Specific Product',Updated=TO_DATE('2014-03-18 09:22:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000340
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- Mar 18, 2014 9:25:31 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- Mar 18, 2014 9:25:56 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-03-18 09:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000317
;

-- Mar 18, 2014 9:26:59 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:26:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000326
;

-- Mar 18, 2014 9:27:53 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:27:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:28:45 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:28:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 9:29:26 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:29:26 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:30:32 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:33:34 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-03-18 09:33:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000337
;

-- Mar 18, 2014 9:33:46 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:33:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000339
;

-- Mar 18, 2014 9:34:01 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000341
;

-- Mar 18, 2014 9:36:20 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-03-18 09:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000338
;

-- Mar 18, 2014 9:36:26 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-03-18 09:36:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000339
;

-- Mar 18, 2014 9:36:32 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-03-18 09:36:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000340
;

-- Mar 18, 2014 9:36:37 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-03-18 09:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000341
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- Mar 18, 2014 9:39:22 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:39:39 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:39:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:40:46 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:40:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000330
;

-- Mar 18, 2014 9:40:51 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:40:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000331
;

-- Mar 18, 2014 9:40:55 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 9:41:00 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:41:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000333
;

-- Mar 18, 2014 9:41:05 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 9:41:09 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000336
;

-- Mar 18, 2014 9:41:13 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-18 09:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000337
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:43:37 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- Mar 18, 2014 9:44:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-03-18 09:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000342
;

-- Mar 18, 2014 9:44:47 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-18 09:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000328
;

-- Mar 18, 2014 9:44:54 AM BRT
UPDATE AD_Field SET IsSameLine='N', XPosition=1,Updated=TO_DATE('2014-03-18 09:44:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 9:47:41 AM BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-03-18 09:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000430
;

-- Mar 18, 2014 9:48:01 AM BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-03-18 09:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000432
;

-- Mar 18, 2014 9:55:40 AM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2014-03-18 09:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000433
;

-- Mar 18, 2014 10:00:23 AM BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000018,Updated=TO_DATE('2014-03-18 10:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000432
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000319
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000321
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000320
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000322
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000317
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000343
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000327
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000342
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000325
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000326
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000341
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000332
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000331
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000333
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000336
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000337
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000340
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000339
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000338
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000323
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000324
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000335
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000330
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000329
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000328
;

-- Mar 18, 2014 1:58:22 PM BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000334
;

-- Mar 21, 2014 11:12:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000448,'N','N','N',0,'N',500,'N','N','N','Y','e7fc7b9f-2c93-4a9a-a094-b15d9da4c8eb','Y','Memo','Memo Text','Memo','Y',TO_DATE('2014-03-21 11:12:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-21 11:12:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2112,34,1000026,0,'LBR')
;

-- Mar 21, 2014 11:12:25 AM BRT
ALTER TABLE LBR_DocLine_Details ADD Memo VARCHAR2(500) DEFAULT NULL 
;

-- Mar 21, 2014 11:15:12 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',1000026,0,'N','N',230,'Y',1000344,'N','LBR','Memo Text','Memo','1571ea6a-cfc0-4a9e-ab5e-017bbbfa1958','N','Y',0,0,TO_DATE('2014-03-21 11:15:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-21 11:15:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,5,4,'N','N',1000448,104)
;

-- Mar 21, 2014 11:15:16 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-03-21 11:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000344
;

-- Mar 21, 2014 11:17:19 AM BRT
UPDATE AD_Field SET Description='Memo', Name='Memo',Updated=TO_DATE('2014-03-21 11:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000344
;

-- Mar 21, 2014 11:19:04 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000300
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1000300
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1117
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=2053
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1119
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1574
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=2595
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1123
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1122
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1129
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=2117
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=6570
;

-- Mar 21, 2014 11:19:19 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=5385
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1126
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=10828
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1128
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1130
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1132
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1131
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1133
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=1135
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=10829
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=1138
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1137
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=2115
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=1141
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=3124
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=12745
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=13644
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=13645
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=13691
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=13650
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=13651
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=2880
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=12744
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=10332
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=360,IsDisplayedGrid='Y' WHERE AD_Field_ID=200272
;

-- Mar 21, 2014 11:19:20 AM BRT
UPDATE AD_Field SET SeqNoGrid=370,IsDisplayedGrid='Y' WHERE AD_Field_ID=200271
;

-- Mar 24, 2014 10:39:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000449,'N','N','N',0,'N',22,'N','N','N','Y','df49d639-05da-4aeb-8f8a-6c8ffd35c9b3','Y','TaxLineTotal','Tax Line Total Amount','Tax Line Total','Y',TO_DATE('2014-03-24 10:39:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-24 10:39:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2341,12,1000026,0,'LBR')
;

-- Mar 24, 2014 10:41:06 AM BRT
ALTER TABLE LBR_DocLine_Details ADD TaxLineTotal NUMBER DEFAULT NULL 
;

-- Mar 24, 2014 10:42:22 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxationType',1000106,'Indicates the taxation type used to calculate taxes','Taxation Type','Taxation type used to calculate taxes','Taxation Type','fd20ff40-fa94-4c46-805e-332c9197c175',TO_DATE('2014-03-24 10:42:22','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-03-24 10:42:22','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Mar 24, 2014 10:43:26 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000023,'LBR_TaxationType','LBR','07cc1c75-3106-4386-a35b-a1035ff0d621','N','L',0,0,TO_DATE('2014-03-24 10:43:26','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-03-24 10:43:26','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Mar 24, 2014 10:44:05 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000045,1000023,'2f43cf29-d37a-4809-9c1b-f952ea7b9c85','IC',TO_DATE('2014-03-24 10:44:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-24 10:44:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'ICMS')
;

-- Mar 24, 2014 10:44:20 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000046,1000023,'e71e2d12-7a4b-4cfd-b414-cb1b7ae74c91','IS',TO_DATE('2014-03-24 10:44:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-24 10:44:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'ISSQN')
;

-- Mar 24, 2014 10:45:11 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000450,'N','N','N',0,'N',2,'N','N','N','Y','de828385-928f-4ade-9ba7-d75edd9c92cb','Y','LBR_TaxationType','Taxation type used to calculate taxes','Indicates the taxation type used to calculate taxes','Taxation Type','Y',TO_DATE('2014-03-24 10:45:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-24 10:45:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000106,17,1000023,1000026,0,'LBR')
;

-- Mar 24, 2014 10:45:15 AM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_TaxationType VARCHAR2(2) DEFAULT NULL
;

-- Mar 24, 2014 10:45:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,22,'N','N',240,'Y',1000345,'N','LBR','Tax Line Total Amount','Tax Line Total','2d450667-bd4a-4e19-9b63-1e9ab60df8c4','N','Y',0,0,TO_DATE('2014-03-24 10:45:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-24 10:45:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000449)
;

-- Mar 24, 2014 10:45:44 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000026,2,'N','N',250,'Y',1000346,'N','Indicates the taxation type used to calculate taxes','LBR','Taxation type used to calculate taxes','Taxation Type','17e2882e-b447-4260-b123-11d8af403944','N','Y',0,0,TO_DATE('2014-03-24 10:45:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-24 10:45:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000450)
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000346
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000345
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- Mar 24, 2014 11:06:56 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000344
;

-- Mar 24, 2014 11:08:02 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-03-24 11:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000346
;

-- Mar 24, 2014 11:08:44 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', AD_FieldGroup_ID=103,Updated=TO_DATE('2014-03-24 11:08:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000345
;

-- Mar 24, 2014 11:09:07 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-03-24 11:09:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000346
;

SELECT lbr_register_migration_script('201403141407.sql') FROM dual
;

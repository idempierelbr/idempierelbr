-- May 13, 2014 9:44:00 AM BRT
-- Additional Tables/Tabs Brazilian Fiscal Invoice Window (Nota Fiscal)
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeModShipping',1000190,'NFe Mode of Shipping','NFe Mode of Shipping','f766d2ee-c562-483a-a2c8-f0bb31e6325a',TO_TIMESTAMP('2014-05-13 09:44:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 09:44:00','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 9:48:01 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('IsICMSTaxExempt',1000191,NULL,'ICMS Tax exempt',NULL,'ICMS Tax exempt','1e96e1c5-fbb8-4c0d-86e3-03d1ba095156',TO_TIMESTAMP('2014-05-13 09:48:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 09:48:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 9:51:38 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000041,'LBR_NFeModShipping','LBR','6c75d36e-a608-4496-83e1-0e8ce5c9ed8e','N','L',0,0,TO_TIMESTAMP('2014-05-13 09:51:38','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-13 09:51:38','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 13, 2014 9:52:14 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000153,1000041,'67e6599a-102c-45d1-9e48-989af7d4d7b8','0',TO_TIMESTAMP('2014-05-13 09:52:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:52:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Issuer')
;

-- May 13, 2014 9:52:50 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000154,1000041,'5d3ba2a3-4b3c-4f7f-8c68-4f9159e4e46b','1',TO_TIMESTAMP('2014-05-13 09:52:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:52:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Recipient / Sender')
;

-- May 13, 2014 9:53:25 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000155,1000041,'4ec93eff-d83a-49be-9080-895b8be140a8','2',TO_TIMESTAMP('2014-05-13 09:53:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:53:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Third parties')
;

-- May 13, 2014 9:54:34 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000156,1000041,'ce9f3fcd-f48e-4144-863b-e46fe2c446f4','3',TO_TIMESTAMP('2014-05-13 09:54:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:54:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Without freight')
;

-- May 13, 2014 9:57:20 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeTranspVehicleType',1000192,'NFe Transportation Vehicle Type','NFe Transportation Vehicle Type','ea0cf075-6590-45b3-91f0-373875fd675f',TO_TIMESTAMP('2014-05-13 09:57:20','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 09:57:20','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 9:57:48 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000042,'LBR_NFeTranspVehicleType','LBR','2891d83c-3b6c-4104-b277-e5cbcdbccf73','N','L',0,0,TO_TIMESTAMP('2014-05-13 09:57:48','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-13 09:57:48','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 13, 2014 9:59:12 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000157,1000042,'34d6495c-50b0-4eb6-b89b-d2df6455ee2e','0',TO_TIMESTAMP('2014-05-13 09:59:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:59:12','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Vehicle / trailer')
;

-- May 13, 2014 9:59:29 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000158,1000042,'b6f724b3-d99c-4d24-8d82-0b7ec914a52d','1',TO_TIMESTAMP('2014-05-13 09:59:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 09:59:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Ferry')
;

-- May 13, 2014 10:00:11 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000159,1000042,'89952c1f-a643-40bc-87d7-fd4b5e26c8b2','2',TO_TIMESTAMP('2014-05-13 10:00:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:00:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Wagon')
;

-- May 13, 2014 10:01:35 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_RNTC',1000193,'National Registry of Cargo Carriers','National Registry of Cargo Carriers','4428528f-7838-4f8c-ac2f-2c64dbf03823',TO_TIMESTAMP('2014-05-13 10:01:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:01:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:02:01 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_LicensePlate',1000194,'License Plate','License Plate','30394d39-f4fe-4200-b6f9-3c1523f4f28f',TO_TIMESTAMP('2014-05-13 10:02:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:02:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:02:24 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_LicensePlateRegion_ID',1000195,'License Plate Region','License Plate Region','741ba969-477f-4a0b-b062-a79b1fde2f4b',TO_TIMESTAMP('2014-05-13 10:02:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:02:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:02:50 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Ferry',1000196,'Ferry Identification','Ferry Identification','bd7c04bf-4351-4106-843c-19aefec7454a',TO_TIMESTAMP('2014-05-13 10:02:50','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:02:50','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:03:13 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Wagon',1000197,'Wagon Identification','Wagon Identification','98d18d06-d25f-46a8-b68e-2d6b5244cc7a',TO_TIMESTAMP('2014-05-13 10:03:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:03:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:06:22 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000036,'N','N','Y','LBR','L','6f04389d-6bbc-4c23-aefc-13aa98ee752e','Y','Y','LBR_NotaFiscalTransp','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Y',0,0,TO_TIMESTAMP('2014-05-13 10:06:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:06:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 13, 2014 10:06:22 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000041,'Table LBR_NotaFiscalTransp','LBR_NotaFiscalTransp',1,'82f75fe6-e612-48ec-a26b-c12ce8092587',TO_TIMESTAMP('2014-05-13 10:06:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:06:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 13, 2014 10:08:11 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTransp_ID',1000198,'Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','f87fceb7-4e87-4c94-9807-a65e2e8e6f0d',TO_TIMESTAMP('2014-05-13 10:08:11','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:08:11','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:08:20 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTransp_UU',1000199,'Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','fc96ac5f-76ff-4a72-b9a8-b1b0eba47148',TO_TIMESTAMP('2014-05-13 10:08:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 10:08:19','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 10:08:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000678,'Y','N','N',0,'N',22,'N','Y','N','Y','49c3ec31-21f0-449e-bac0-8be7c0434dfb','N','LBR_NotaFiscalTransp_ID','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','N',TO_TIMESTAMP('2014-05-13 10:08:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:08:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000198,13,1000036,0,'LBR')
;

-- May 13, 2014 10:08:55 AM BRT
CREATE TABLE LBR_NotaFiscalTransp (LBR_NotaFiscalTransp_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalTransp_Key PRIMARY KEY (LBR_NotaFiscalTransp_ID))
;

-- May 13, 2014 10:09:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000679,'N','N','N',0,'N',36,'N','N','N','Y','e4fb4bba-8b49-4565-808d-6650d24797da','N','LBR_NotaFiscalTransp_UU','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','N',TO_TIMESTAMP('2014-05-13 10:09:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:09:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000199,10,1000036,0,'LBR')
;

-- May 13, 2014 10:09:23 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_NotaFiscalTransp_UU VARCHAR(36) DEFAULT NULL 
;

-- May 13, 2014 10:09:23 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBR_NotaFiscalTransp_UU_idx UNIQUE (LBR_NotaFiscalTransp_UU)
;

-- May 13, 2014 10:09:54 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000680,'Y','N','N',0,'N',22,'N','N','N','Y','a86f87e3-1eb1-4ec4-a08e-e70243c1f55e','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-13 10:09:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:09:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000036,129,0,'LBR')
;

-- May 13, 2014 10:09:58 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000680
;

-- May 13, 2014 10:09:58 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 13, 2014 10:09:58 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT ADClient_LBRNotaFiscalTransp FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:10:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000681,'Y','N','N',0,'N',22,'N','N','N','Y','07aa1fb4-bbd8-414a-8690-afb69dbe4954','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-13 10:10:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:10:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000036,130,0,'LBR')
;

-- May 13, 2014 10:10:32 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:10:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000681
;

-- May 13, 2014 10:10:32 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 13, 2014 10:10:32 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT ADOrg_LBRNotaFiscalTransp FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:10:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000682,'Y','N','N',0,'N',1,'N','N','N','Y','51fae62b-b85d-485f-83b3-85e68decc645','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-13 10:10:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:10:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000036,0,'LBR')
;

-- May 13, 2014 10:10:56 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 13, 2014 10:11:18 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000683,'N','N','N',0,'N',7,'N','N','N','Y','a6515d5b-b178-4318-bd77-de2b52413371','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-13 10:11:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:11:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000036,0,'LBR')
;

-- May 13, 2014 10:11:20 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 13, 2014 10:11:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000684,'N','N','N',0,'N',22,'N','N','N','Y','536e7e51-e341-4632-9ef6-3067bca362fc','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-13 10:11:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:11:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000036,0,'LBR')
;

-- May 13, 2014 10:11:35 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:11:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000684
;

-- May 13, 2014 10:11:35 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:11:35 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT CreatedBy_LBRNotaFiscalTransp FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:11:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000685,'N','N','N',0,'N',7,'N','N','N','Y','19166059-88c9-4c89-a560-9de60a12731b','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-13 10:11:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:11:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000036,0,'LBR')
;

-- May 13, 2014 10:11:52 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 13, 2014 10:12:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000686,'N','N','N',0,'N',22,'N','N','N','Y','cf8c8332-e42d-403d-88ec-c826b8b7d1ac','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-13 10:12:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:12:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000036,0,'LBR')
;

-- May 13, 2014 10:12:07 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:12:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000686
;

-- May 13, 2014 10:12:07 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:12:07 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT UpdatedBy_LBRNotaFiscalTransp FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:12:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000687,'Y','N','N',0,'N',22,'N','N','N','Y','c2629a33-e8cc-4377-a62b-3b8376d530bc','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_TIMESTAMP('2014-05-13 10:12:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:12:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000169,19,1000036,0,'LBR')
;

-- May 13, 2014 10:12:39 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalTra', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:12:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000687
;

-- May 13, 2014 10:12:39 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- May 13, 2014 10:12:39 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalTra FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:14:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000688,'Y','N','N',0,'N',1,'N','N','N','Y','d76d8c21-1f70-4a82-9ac9-60d098ab9eb0','Y','LBR_NFeModShipping','NFe Mode of Shipping','Y',TO_TIMESTAMP('2014-05-13 10:14:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:14:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000190,17,1000041,1000036,0,'LBR')
;

-- May 13, 2014 10:14:06 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_NFeModShipping CHAR(1) NOT NULL
;

-- May 13, 2014 10:14:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000689,'N','N','N',0,'N',22,'N','N','N','Y','d981f14c-f328-4ddf-b27c-48e68c1b7e54','Y','M_Shipper_ID','Method or manner of product delivery','The Shipper indicates the method of delivering product','Shipper','Y',TO_TIMESTAMP('2014-05-13 10:14:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:14:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',455,18,200037,1000036,0,'LBR')
;

-- May 13, 2014 10:14:52 AM BRT
UPDATE AD_Column SET FKConstraintName='MShipper_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000689
;

-- May 13, 2014 10:14:52 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN M_Shipper_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:14:52 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT MShipper_LBRNotaFiscalTransp FOREIGN KEY (M_Shipper_ID) REFERENCES m_shipper(m_shipper_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:16:05 AM BRT
UPDATE AD_Element SET ColumnName='LBR_IsICMSTaxExempt',Updated=TO_TIMESTAMP('2014-05-13 10:16:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000191
;

-- May 13, 2014 10:16:05 AM BRT
UPDATE AD_Column SET ColumnName='LBR_IsICMSTaxExempt', Name='ICMS Tax exempt', Description=NULL, Help=NULL WHERE AD_Element_ID=1000191
;

-- May 13, 2014 10:16:05 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsICMSTaxExempt', Name='ICMS Tax exempt', Description=NULL, Help=NULL, AD_Element_ID=1000191 WHERE UPPER(ColumnName)='LBR_ISICMSTAXEXEMPT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 13, 2014 10:16:05 AM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsICMSTaxExempt', Name='ICMS Tax exempt', Description=NULL, Help=NULL WHERE AD_Element_ID=1000191 AND IsCentrallyMaintained='Y'
;

-- May 13, 2014 10:16:05 AM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IsICMSTaxExempt', Name='ICMS Tax exempt', Description=NULL, Help=NULL WHERE AD_Element_ID=1000191 AND IsCentrallyMaintained='Y'
;

-- May 13, 2014 10:16:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000690,'Y','N','N',0,'N',1,'N','N','N','Y','09d243e7-e201-4852-8ad3-1d9ce025efe3','Y','LBR_IsICMSTaxExempt','N','ICMS Tax exempt','Y',TO_TIMESTAMP('2014-05-13 10:16:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:16:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000191,20,1000036,0,'LBR')
;

-- May 13, 2014 10:16:43 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_IsICMSTaxExempt CHAR(1) DEFAULT 'N' CHECK (LBR_IsICMSTaxExempt IN ('Y','N')) NOT NULL
;

-- May 13, 2014 10:17:21 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000691,'N','N','N',0,'N',10,'N','N','N','Y','2be137e4-6e7e-4ea2-8a8f-a9abcd4ece19','Y','LBR_TaxBaseAmt','Defines the Tax Base Amount','Tax Base Amount','Y',TO_TIMESTAMP('2014-05-13 10:17:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:17:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000058,12,1000036,0,'LBR')
;

-- May 13, 2014 10:17:26 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- May 13, 2014 10:17:53 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000692,'N','N','N',0,'N',10,'N','N','N','Y','108a47c2-8cfd-4d13-b1e1-e68ae43a2cac','Y','LBR_TaxRate','Indicates the Tax Rate','Tax Rate','Y',TO_TIMESTAMP('2014-05-13 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:17:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000062,12,1000036,0,'LBR')
;

-- May 13, 2014 10:17:57 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_TaxRate NUMERIC DEFAULT NULL 
;

-- May 13, 2014 10:19:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000693,'N','N','N',0,'N',10,'N','N','N','Y','29a8a3c2-4cc6-4165-a130-d42c202af9ec','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_TIMESTAMP('2014-05-13 10:19:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:19:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000036,1000001,0,'LBR')
;

-- May 13, 2014 10:19:11 AM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000693
;

-- May 13, 2014 10:19:11 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:19:11 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT CRegion_LBRNotaFiscalTransp FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:20:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000694,'N','N','N',0,'N',10,'N','N','N','Y','e6ec6d5e-c64f-434e-aa5f-4f597c32de31','Y','C_City_ID','City','City in a country','City','Y',TO_TIMESTAMP('2014-05-13 10:20:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:20:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1830,30,1000011,1000036,52045,0,'LBR')
;

-- May 13, 2014 10:20:32 AM BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000694
;

-- May 13, 2014 10:20:32 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN C_City_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:20:32 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT CCity_LBRNotaFiscalTransp FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:21:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000695,'N','N','N',0,'N',22,'N','N','N','Y','90e0bc22-0071-4cf3-98da-cff4ab709069','Y','ChargeAmt','Charge Amount','The Charge Amount indicates the amount for an additional charge.','Charge amount','Y',TO_TIMESTAMP('2014-05-13 10:21:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:21:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',849,12,1000036,0,'LBR')
;

-- May 13, 2014 10:21:41 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN ChargeAmt NUMERIC DEFAULT NULL 
;

-- May 13, 2014 10:22:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000696,'N','N','N',0,'N',22,'N','N','N','Y','ed3391be-d0e2-43ae-ae4c-9a2de6608e60','Y','LBR_CFOP_ID','Indentifies the CFOP','CFOP','Y',TO_TIMESTAMP('2014-05-13 10:22:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:22:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000089,30,1000018,1000036,0,'LBR')
;

-- May 13, 2014 10:22:14 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCFOP_LBRNotaFiscalTransp', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000696
;

-- May 13, 2014 10:22:14 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_CFOP_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:22:14 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRCFOP_LBRNotaFiscalTransp FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:22:38 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000697,'N','N','N',0,'N',10,'N','N','N','Y','ba45637c-c099-45f6-8b58-bad2868f0ad9','Y','LBR_TaxAmt','Defines the Tax Amount','Tax Amount','Y',TO_TIMESTAMP('2014-05-13 10:22:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:22:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000056,12,1000036,0,'LBR')
;

-- May 13, 2014 10:22:43 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_TaxAmt NUMERIC DEFAULT NULL 
;

-- May 13, 2014 10:24:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000698,'N','N','N',0,'N',1,'N','N','N','Y','7e6933e6-84ac-4cae-9159-ab8f812362eb','Y','LBR_NFeTranspVehicleType','NFe Transportation Vehicle Type','Y',TO_TIMESTAMP('2014-05-13 10:24:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:24:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000192,17,1000042,1000036,0,'LBR')
;

-- May 13, 2014 10:24:26 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_NFeTranspVehicleType CHAR(1) DEFAULT NULL 
;

-- May 13, 2014 10:28:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000699,'N','N','N',0,'N',20,'N','N','N','Y','3a6f69d6-bfbe-4068-b0d9-5278b28236ba','Y','LBR_RNTC','National Registry of Cargo Carriers','Y',TO_TIMESTAMP('2014-05-13 10:28:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:28:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000193,10,1000036,0,'LBR')
;

-- May 13, 2014 10:28:39 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_RNTC VARCHAR(20) DEFAULT NULL 
;

-- May 13, 2014 10:29:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000700,'N','N','N',0,'N',7,'N','N','N','Y','37892f89-e7c4-4f4c-bade-3cb6304258cb','Y','LBR_LicensePlate','License Plate','Y',TO_TIMESTAMP('2014-05-13 10:29:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:29:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000194,10,1000036,0,'LBR')
;

-- May 13, 2014 10:30:03 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_LicensePlate VARCHAR(7) DEFAULT NULL 
;

-- May 13, 2014 10:31:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000701,'N','N','N',0,'N',10,'N','N','N','Y','cdeeffea-af17-48ff-9d31-a2d3cbe6b35a','Y','LBR_LicensePlateRegion_ID','License Plate Region','Y',TO_TIMESTAMP('2014-05-13 10:31:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:31:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000195,18,157,1000036,1000001,0,'LBR')
;

-- May 13, 2014 10:31:09 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRLicensePlateRegion_LBRNotaF', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 10:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000701
;

-- May 13, 2014 10:31:09 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_LicensePlateRegion_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 10:31:09 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRLicensePlateRegion_LBRNotaF FOREIGN KEY (LBR_LicensePlateRegion_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 10:31:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000702,'N','N','N',0,'N',20,'N','N','N','Y','13c663f0-0b35-46de-ac29-d152109875d0','Y','LBR_Ferry','Ferry Identification','Y',TO_TIMESTAMP('2014-05-13 10:31:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:31:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000196,10,1000036,0,'LBR')
;

-- May 13, 2014 10:31:53 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_Ferry VARCHAR(20) DEFAULT NULL 
;

-- May 13, 2014 10:32:13 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000703,'N','N','N',0,'N',20,'N','N','N','Y','3de7aca0-cffd-4d91-9497-7c4e04ae7569','Y','LBR_Wagon','Wagon Identification','Y',TO_TIMESTAMP('2014-05-13 10:32:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 10:32:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000197,10,1000036,0,'LBR')
;

-- May 13, 2014 10:32:17 AM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_Wagon VARCHAR(20) DEFAULT NULL 
;

-- May 13, 2014 10:35:34 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,40,'The Transportation Tab displays fields for entering information about transportation','N','N','N','N','N','N','N',1,'88ab9137-669b-4d52-acb7-ad36b7291c4e','LBR','Transportation','Transportation',1000078,0,TO_TIMESTAMP('2014-05-13 10:35:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:35:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000687,1000036,'B')
;

-- May 13, 2014 10:35:55 AM BRT
UPDATE AD_Tab SET ReadOnlyLogic='@Processed@=Y',Updated=TO_TIMESTAMP('2014-05-13 10:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000078
;

-- May 13, 2014 10:36:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',10,'Y',1001398,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','b5f2177d-0864-404c-a2d5-80b3204fe5c2','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000680)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',20,'Y',1001399,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','c0564b5d-15ae-4250-a5cd-13bfd374203c','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:00','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000681)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',30,'Y',1001400,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','5e39beb9-187d-418d-9f4c-2f24a4a632df','N','N',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000678)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,36,'N','N',40,'Y',1001401,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','479fc8e7-be0f-497d-96ed-a6371566c8b7','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000679)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',50,'Y',1001402,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','1904f557-ae53-4a78-a2d2-24c81235b47d','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000687)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,1,'N','N',60,'Y',1001403,'N','LBR','NFe Mode of Shipping','07d24719-1678-4d8c-8e09-0887f5a9e697','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000688)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',70,'Y',1001404,'N','The Shipper indicates the method of delivering product','LBR','Method or manner of product delivery','Shipper','360abfeb-b75c-4f2e-8007-64f8cf95edf0','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000689)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,1,'N','N',80,'Y',1001405,'N','LBR','ICMS Tax exempt','2f016658-efd2-45b5-b20c-0d814ccc8102','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000690)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',90,'Y',1001406,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','c5563cd1-b206-4904-b613-16919cab296c','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000691)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',100,'Y',1001407,'N','LBR','Indicates the Tax Rate','Tax Rate','5bb8ef7d-c47d-4959-a8a3-0fa23fbb542f','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000692)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',110,'Y',1001408,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','d7f83d4a-7156-4e74-9466-341cadc6f088','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000693)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',120,'Y',1001409,'N','City in a country','LBR','City','City','5156d192-611b-4ba5-a22d-e52e968a7805','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000694)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',130,'Y',1001410,'N','The Charge Amount indicates the amount for an additional charge.','LBR','Charge Amount','Charge amount','5f611f33-2910-4d19-907d-4813570f7e61','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000695)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,22,'N','N',140,'Y',1001411,'N','LBR','Indentifies the CFOP','CFOP','544f5d35-7ce1-443d-8141-8f6df5ec8c6b','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000696)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',150,'Y',1001412,'N','LBR','Defines the Tax Amount','Tax Amount','5d614ae5-69dc-4b1c-8aff-e60900a51ea3','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000697)
;

-- May 13, 2014 10:36:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,1,'N','N',160,'Y',1001413,'N','LBR','NFe Transportation Vehicle Type','79648e06-4d45-421a-b418-859f916afcef','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000698)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,20,'N','N',170,'Y',1001414,'N','LBR','National Registry of Cargo Carriers','8957db8d-f018-4e57-9c55-ec4efc51da59','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000699)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,7,'N','N',180,'Y',1001415,'N','LBR','License Plate','22ade61d-6c92-4e4b-8ab3-577a4556ed1f','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000700)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',190,'Y',1001416,'N','LBR','License Plate Region','fa30978d-eaf2-4aac-9853-cd92d4138624','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000701)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,20,'N','N',200,'Y',1001417,'N','LBR','Ferry Identification','9d715c9a-4953-4aa8-bfd8-9d022f7720ea','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000702)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,20,'N','N',210,'Y',1001418,'N','LBR','Wagon Identification','d4d299c5-6d36-4cb1-a928-9bd8b667076d','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000703)
;

-- May 13, 2014 10:36:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,1,'N','N',220,'Y',1001419,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','b9745390-d3fd-46ce-92e3-49f11f68d222','N','Y',0,0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:36:02','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000682)
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001419
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001402
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001401
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001400
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001403
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001404
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001405
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001406
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001407
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001408
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001409
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001410
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001411
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001412
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001413
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001414
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001415
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001416
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001417
;

-- May 13, 2014 10:36:56 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001418
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001401
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001402
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001419
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001411
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001410
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001409
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001417
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001405
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001415
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001416
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001414
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001403
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001413
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001399
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001408
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001404
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001412
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001406
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001407
;

-- May 13, 2014 10:37:30 AM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001418
;

-- May 13, 2014 10:38:01 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-13 10:38:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001399
;

-- May 13, 2014 10:41:12 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Shipper','e9ab0b01-d9b8-412a-b322-e6e16b4800cd',1000012,TO_TIMESTAMP('2014-05-13 10:41:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:41:11','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 13, 2014 10:41:23 AM BRT
UPDATE AD_FieldGroup SET Name='Shipper (LBR)',Updated=TO_TIMESTAMP('2014-05-13 10:41:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=1000012
;

-- May 13, 2014 10:41:41 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000012,Updated=TO_TIMESTAMP('2014-05-13 10:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001404
;

-- May 13, 2014 10:42:17 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000012,Updated=TO_TIMESTAMP('2014-05-13 10:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001405
;

-- May 13, 2014 10:44:19 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','ICMS Withholding','5c9656c2-a2d0-46b7-ac0b-abd31770b833',1000013,TO_TIMESTAMP('2014-05-13 10:44:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:44:19','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 13, 2014 10:44:40 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:44:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001406
;

-- May 13, 2014 10:44:56 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:44:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001407
;

-- May 13, 2014 10:45:15 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001408
;

-- May 13, 2014 10:45:37 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001409
;

-- May 13, 2014 10:45:55 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001410
;

-- May 13, 2014 10:46:10 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:46:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001411
;

-- May 13, 2014 10:46:46 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-13 10:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001410
;

-- May 13, 2014 10:46:58 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-13 10:46:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001412
;

-- May 13, 2014 10:47:11 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000013,Updated=TO_TIMESTAMP('2014-05-13 10:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001412
;

-- May 13, 2014 10:49:00 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Identification (LBR)','b1dd9a3f-155d-4223-870e-4716f92c06c0',1000014,TO_TIMESTAMP('2014-05-13 10:49:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 10:49:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 13, 2014 10:49:18 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001413
;

-- May 13, 2014 10:49:34 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001414
;

-- May 13, 2014 10:49:46 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001415
;

-- May 13, 2014 10:50:00 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001416
;

-- May 13, 2014 10:50:11 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001417
;

-- May 13, 2014 10:50:32 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000014,Updated=TO_TIMESTAMP('2014-05-13 10:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001418
;

-- May 13, 2014 11:15:11 AM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_TIMESTAMP('2014-05-13 11:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000195
;

-- May 13, 2014 12:48:09 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('(C_BPartner_Location.C_BPartner_Location_ID IN (
	SELECT bpl.C_BPartner_Location_ID
	FROM C_BPartner_Location bpl
	JOIN M_Shipper s ON (s.M_Shipper_ID = @M_Shipper_ID@)
	JOIN C_BPartner bp ON (bp.C_BPartner_ID = s.C_BPartner_ID)
	WHERE bpl.C_BPartner_ID = bp.C_BPartner_ID))',1000005,'LBR','M_Shipper_Locations (LBR)','S','944a9d81-b9cc-4877-a28b-8eb0cf4bb0c3',0,0,TO_TIMESTAMP('2014-05-13 12:48:09','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 12:48:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- May 13, 2014 12:49:43 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_M_Shipper_Location_ID',1000200,'Shipper Location','Shipper Location','8ea8bfb1-ec09-4289-814f-12b8753bda5c',TO_TIMESTAMP('2014-05-13 12:49:43','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-13 12:49:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 13, 2014 12:51:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000704,'N','N','N',0,'N',10,'N','N','N','Y','b01ebab5-567d-4ba0-8a8f-d0240aad8d7a','Y','LBR_M_Shipper_Location_ID','Shipper Location','Y',TO_TIMESTAMP('2014-05-13 12:51:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-13 12:51:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000200,18,159,1000036,1000005,0,'LBR')
;

-- May 13, 2014 12:51:50 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRMShipperLocation_LBRNotaFis', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-13 12:51:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000704
;

-- May 13, 2014 12:51:50 PM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD COLUMN LBR_M_Shipper_Location_ID NUMERIC(10) DEFAULT NULL 
;

-- May 13, 2014 12:51:51 PM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRMShipperLocation_LBRNotaFis FOREIGN KEY (LBR_M_Shipper_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 13, 2014 12:52:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000078,10,'N','N',190,'Y',1001420,'N','LBR','Shipper Location','fece35e5-7110-4973-8709-196fb43aa43b','N','Y',0,0,TO_TIMESTAMP('2014-05-13 12:52:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-13 12:52:10','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000704)
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001420
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001405
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001406
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001407
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001408
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001409
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001410
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001411
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001412
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001413
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001414
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001415
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001416
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001417
;

-- May 13, 2014 12:52:27 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001418
;

-- May 13, 2014 12:52:58 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000012,Updated=TO_TIMESTAMP('2014-05-13 12:52:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001420
;

-- May 13, 2014 1:08:54 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeTranspVehicleType@=2',Updated=TO_TIMESTAMP('2014-05-13 13:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001418
;

-- May 13, 2014 1:09:10 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeTranspVehicleType@=1',Updated=TO_TIMESTAMP('2014-05-13 13:09:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001417
;

-- May 13, 2014 1:09:21 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001416
;

-- May 13, 2014 1:09:26 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001415
;

-- May 13, 2014 1:09:32 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:09:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001414
;

-- May 13, 2014 1:15:58 PM BRT
UPDATE AD_Ref_List SET Value='9',Updated=TO_TIMESTAMP('2014-05-13 13:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000156
;

-- May 13, 2014 1:17:37 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001404
;

-- May 13, 2014 1:17:43 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:17:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001420
;

-- May 13, 2014 1:17:49 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001405
;

-- May 13, 2014 1:17:55 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001406
;

-- May 13, 2014 1:18:00 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001407
;

-- May 13, 2014 1:18:05 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001408
;

-- May 13, 2014 1:18:11 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001409
;

-- May 13, 2014 1:18:17 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001410
;

-- May 13, 2014 1:18:23 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001411
;

-- May 13, 2014 1:18:29 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001412
;

-- May 13, 2014 1:18:34 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9',Updated=TO_TIMESTAMP('2014-05-13 13:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001413
;

-- May 13, 2014 1:18:43 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9 & @LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:18:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001414
;

-- May 13, 2014 1:18:50 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9 & @LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:18:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001415
;

-- May 13, 2014 1:18:56 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9 & @LBR_NFeTranspVehicleType@=0',Updated=TO_TIMESTAMP('2014-05-13 13:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001416
;

-- May 13, 2014 1:19:04 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9 & @LBR_NFeTranspVehicleType@=1',Updated=TO_TIMESTAMP('2014-05-13 13:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001417
;

-- May 13, 2014 1:19:10 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeModShipping@!9 & @LBR_NFeTranspVehicleType@=2',Updated=TO_TIMESTAMP('2014-05-13 13:19:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001418
;

-- May 13, 2014 1:19:38 PM BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2014-05-13 13:19:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000688
;

-- May 13, 2014 5:55:57 PM BRT
UPDATE AD_Column SET FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-13 17:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000687
;

-- May 13, 2014 5:56:03 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscaltransp','LBR_NotaFiscal_ID','NUMERIC(10)',null,null)
;

-- May 13, 2014 5:56:03 PM BRT
ALTER TABLE LBR_NotaFiscalTransp DROP CONSTRAINT lbrnotafiscal_lbrnotafiscaltra
;

-- May 13, 2014 5:56:03 PM BRT
ALTER TABLE LBR_NotaFiscalTransp ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalTra FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:42:13 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000037,'N','N','Y','LBR','L','942712ee-72b2-474e-b888-94fec08da1d5','Y','Y','LBR_NotaFiscalTrailer','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','Y',0,0,TO_TIMESTAMP('2014-05-14 09:42:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:42:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 14, 2014 9:42:13 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000043,'Table LBR_NotaFiscalTrailer','LBR_NotaFiscalTrailer',1,'4770c49f-a168-4362-a4cd-0308e1af3bfd',TO_TIMESTAMP('2014-05-14 09:42:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:42:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 14, 2014 9:43:10 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTrailer_ID',1000201,'Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','6e3b3b75-316d-4122-81ca-586c5da3e649',TO_TIMESTAMP('2014-05-14 09:43:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 09:43:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 9:43:19 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTrailer_UU',1000202,'Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','1625c650-d5c1-42e4-93fc-a39147ea7f3c',TO_TIMESTAMP('2014-05-14 09:43:18','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 09:43:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 9:43:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000705,'Y','N','N',0,'N',22,'N','Y','N','Y','f86316a0-526f-4c5c-9315-c4c841e9f6ee','N','LBR_NotaFiscalTrailer_ID','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','N',TO_TIMESTAMP('2014-05-14 09:43:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:43:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000201,13,1000037,0,'LBR')
;

-- May 14, 2014 9:43:48 AM BRT
CREATE TABLE LBR_NotaFiscalTrailer (LBR_NotaFiscalTrailer_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalTrailer_Key PRIMARY KEY (LBR_NotaFiscalTrailer_ID))
;

-- May 14, 2014 9:44:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000706,'N','N','N',0,'N',36,'N','N','N','Y','e76a98e1-caca-41ac-b2e6-bf0d382cc839','N','LBR_NotaFiscalTrailer_UU','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','N',TO_TIMESTAMP('2014-05-14 09:44:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:44:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000202,10,1000037,0,'LBR')
;

-- May 14, 2014 9:44:04 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN LBR_NotaFiscalTrailer_UU VARCHAR(36) DEFAULT NULL 
;

-- May 14, 2014 9:44:04 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT LBR_NotaFiscalTrailer_UU_idx UNIQUE (LBR_NotaFiscalTrailer_UU)
;

-- May 14, 2014 9:44:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000707,'Y','N','N',0,'N',22,'N','N','N','Y','eb0c16f7-1214-4768-b2cf-7e1d146ecaf5','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-14 09:44:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:44:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000037,129,0,'LBR')
;

-- May 14, 2014 9:44:35 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalTrailer', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 09:44:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000707
;

-- May 14, 2014 9:44:35 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 9:44:35 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT ADClient_LBRNotaFiscalTrailer FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:45:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000708,'Y','N','N',0,'N',22,'N','N','N','Y','0d85ace9-7316-43ca-8c06-37575b122ffb','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-14 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000037,130,0,'LBR')
;

-- May 14, 2014 9:45:06 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalTrailer', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 09:45:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000708
;

-- May 14, 2014 9:45:06 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 9:45:06 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT ADOrg_LBRNotaFiscalTrailer FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:45:22 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000709,'Y','N','N',0,'N',1,'N','N','N','Y','911d1053-b6e1-48b1-b052-836efca312eb','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-14 09:45:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:45:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000037,0,'LBR')
;

-- May 14, 2014 9:45:26 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 14, 2014 9:45:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000710,'N','N','N',0,'N',7,'N','N','N','Y','8bd10887-86a6-47d6-8c90-6d6334aabc67','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-14 09:45:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:45:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000037,0,'LBR')
;

-- May 14, 2014 9:45:52 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 9:46:05 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000711,'N','N','N',0,'N',22,'N','N','N','Y','ea0fc407-1836-43b5-9bbf-5e85935e4c3e','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-14 09:46:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:46:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000037,0,'LBR')
;

-- May 14, 2014 9:46:08 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalTrailer', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 09:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000711
;

-- May 14, 2014 9:46:08 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 9:46:08 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT CreatedBy_LBRNotaFiscalTrailer FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:46:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000712,'N','N','N',0,'N',7,'N','N','N','Y','983319a8-3832-4fa9-863f-cccd652f8c12','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-14 09:46:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:46:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000037,0,'LBR')
;

-- May 14, 2014 9:46:24 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 9:46:41 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000713,'N','N','N',0,'N',22,'N','N','N','Y','e0127ad7-a7c7-47ca-ae68-4513093506fe','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-14 09:46:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:46:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000037,0,'LBR')
;

-- May 14, 2014 9:46:42 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalTrailer', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 09:46:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000713
;

-- May 14, 2014 9:46:42 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 9:46:42 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT UpdatedBy_LBRNotaFiscalTrailer FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:47:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000714,'Y','N','N',0,'N',22,'N','N','N','Y','1b56d332-001b-4c87-929d-6bdd17378dd5','N','LBR_NotaFiscalTransp_ID','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Y',TO_TIMESTAMP('2014-05-14 09:47:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:47:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000198,19,1000037,0,'LBR')
;

-- May 14, 2014 9:47:25 AM BRT
UPDATE AD_Column SET FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-14 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000714
;

-- May 14, 2014 9:47:31 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalTransp_LBRNotaFis', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-14 09:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000714
;

-- May 14, 2014 9:47:31 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN LBR_NotaFiscalTransp_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 9:47:31 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT LBRNotaFiscalTransp_LBRNotaFis FOREIGN KEY (LBR_NotaFiscalTransp_ID) REFERENCES lbr_notafiscaltransp(lbr_notafiscaltransp_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:48:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000715,'N','N','N',0,'N',20,'N','N','N','Y','2037e380-830d-447f-9a6e-4c227f74fda6','Y','LBR_RNTC','National Registry of Cargo Carriers','Y',TO_TIMESTAMP('2014-05-14 09:48:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:48:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000193,10,1000037,0,'LBR')
;

-- May 14, 2014 9:48:28 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN LBR_RNTC VARCHAR(20) DEFAULT NULL 
;

-- May 14, 2014 9:54:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000716,'N','N','N',0,'N',7,'N','N','N','Y','2aae1aa5-7763-42cc-a62e-25506f623b83','Y','LBR_LicensePlate','License Plate','Y',TO_TIMESTAMP('2014-05-14 09:54:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:54:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000194,10,1000037,0,'LBR')
;

-- May 14, 2014 9:54:36 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN LBR_LicensePlate VARCHAR(7) DEFAULT NULL 
;

-- May 14, 2014 9:55:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000717,'N','N','N',0,'N',10,'N','N','N','Y','b8aed4dd-46e3-4c83-9f7c-4f7826dfb5aa','Y','LBR_LicensePlateRegion_ID','License Plate Region','Y',TO_TIMESTAMP('2014-05-14 09:55:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 09:55:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000195,18,157,1000037,1000001,0,'LBR')
;

-- May 14, 2014 9:55:19 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRLicensePlateRegion_LBRNotaF', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 09:55:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000717
;

-- May 14, 2014 9:55:19 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD COLUMN LBR_LicensePlateRegion_ID NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 9:55:19 AM BRT
ALTER TABLE LBR_NotaFiscalTrailer ADD CONSTRAINT LBRLicensePlateRegion_LBRNotaF FOREIGN KEY (LBR_LicensePlateRegion_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 9:57:26 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,50,'The Trailer Tab displays fields for entering information about transportation Trailer','N','N','N','N','N','Y','N',2,'2c14c921-022e-469d-899e-a703bdec974c','LBR','Trailer','Trailer',1000079,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-14 09:57:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000714,1000037,'B')
;

-- May 14, 2014 9:57:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,22,'N','N',10,'Y',1001421,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','334390a1-5d22-4fcb-8c08-f237c3f53c5a','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000707)
;

-- May 14, 2014 9:57:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,22,'N','N',20,'Y',1001422,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','aa33173d-5683-4c55-b958-0e7dd8685c01','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000708)
;

-- May 14, 2014 9:57:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,22,'N','N',30,'Y',1001423,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','55268322-7ee9-43b4-a4d9-205d96a8c7e8','N','N',0,0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000705)
;

-- May 14, 2014 9:57:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,36,'N','N',40,'Y',1001424,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer','e8e0ab0c-ffe2-4949-831e-ed97a71cc9b1','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000706)
;

-- May 14, 2014 9:57:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,22,'N','N',50,'Y',1001425,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','1d6daf41-00ce-42a6-9720-3a5efd3d74e4','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:35','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000714)
;

-- May 14, 2014 9:57:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,20,'N','N',60,'Y',1001426,'N','LBR','National Registry of Cargo Carriers','784b48e0-8745-4e02-bd16-be803ccf01d9','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000715)
;

-- May 14, 2014 9:57:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,7,'N','N',70,'Y',1001427,'N','LBR','License Plate','ad553df2-7e41-43b7-8838-9243aed13ad3','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000716)
;

-- May 14, 2014 9:57:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,10,'N','N',80,'Y',1001428,'N','LBR','License Plate Region','9ceb3333-4db7-494e-abe3-82d91f9b06a3','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000717)
;

-- May 14, 2014 9:57:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000079,1,'N','N',90,'Y',1001429,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','abb2c488-0c6e-4d64-880a-408da2afda39','N','Y',0,0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 09:57:36','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000709)
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001429
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001425
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001424
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001423
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001426
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001427
;

-- May 14, 2014 9:57:59 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001428
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001424
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001425
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001429
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001426
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001427
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001428
;

-- May 14, 2014 9:59:06 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001422
;

-- May 14, 2014 9:59:31 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-14 09:59:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001422
;

-- May 14, 2014 10:00:00 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 10:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001428
;

-- May 14, 2014 11:14:50 AM BRT
UPDATE AD_Tab SET ReadOnlyLogic='@Processed@=Y | @LBR_NFeTranspVehicleType@!0',Updated=TO_TIMESTAMP('2014-05-14 11:14:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000079
;

-- May 14, 2014 12:53:09 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000038,'N','N','Y','LBR','L','f85c3ba4-6681-4183-b8cd-ecadfcf799de','Y','Y','LBR_NotaFiscalPackage','Brazilian Fiscal Invoice (Nota Fiscal) Package','Brazilian Fiscal Invoice (Nota Fiscal) Package','Y',0,0,TO_TIMESTAMP('2014-05-14 12:53:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 12:53:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 14, 2014 12:53:09 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000044,'Table LBR_NotaFiscalPackage','LBR_NotaFiscalPackage',1,'b17640de-4314-4777-94ee-1532b7fc1ec6',TO_TIMESTAMP('2014-05-14 12:53:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 12:53:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 14, 2014 12:54:29 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPackage_ID',1000203,'Brazilian Fiscal Invoice (Nota Fiscal) Package','Brazilian Fiscal Invoice (Nota Fiscal) Package','ad779bd9-6ec7-4c19-8b12-9a8f33a31f72',TO_TIMESTAMP('2014-05-14 12:54:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 12:54:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 12:54:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPackage_UU',1000204,'Brazilian Fiscal Invoice (Nota Fiscal) Package','Brazilian Fiscal Invoice (Nota Fiscal) Package','90180a4f-995b-4c3b-98e4-62abfd2865e6',TO_TIMESTAMP('2014-05-14 12:54:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 12:54:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 12:55:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000718,'Y','N','N',0,'N',22,'N','Y','N','Y','01e4d5b0-52de-401f-a572-1920240eee4e','N','LBR_NotaFiscalPackage_ID','Brazilian Fiscal Invoice (Nota Fiscal) Package','N',TO_TIMESTAMP('2014-05-14 12:55:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:55:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000203,13,1000038,0,'LBR')
;

-- May 14, 2014 12:55:09 PM BRT
CREATE TABLE LBR_NotaFiscalPackage (LBR_NotaFiscalPackage_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalPackage_Key PRIMARY KEY (LBR_NotaFiscalPackage_ID))
;

-- May 14, 2014 12:55:22 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000719,'N','N','N',0,'N',36,'N','N','N','Y','08db4b36-0a99-407f-a2c1-bb21e4e6813b','N','LBR_NotaFiscalPackage_UU','Brazilian Fiscal Invoice (Nota Fiscal) Package','N',TO_TIMESTAMP('2014-05-14 12:55:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:55:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000204,10,1000038,0,'LBR')
;

-- May 14, 2014 12:55:25 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_NotaFiscalPackage_UU VARCHAR(36) DEFAULT NULL 
;

-- May 14, 2014 12:55:25 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT LBR_NotaFiscalPackage_UU_idx UNIQUE (LBR_NotaFiscalPackage_UU)
;

-- May 14, 2014 12:55:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000720,'Y','N','N',0,'N',22,'N','N','N','Y','7bedefd1-e981-4edf-9fa1-46e12a1dc024','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-14 12:55:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:55:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000038,129,0,'LBR')
;

-- May 14, 2014 12:55:59 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalPackage', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 12:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000720
;

-- May 14, 2014 12:55:59 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 12:55:59 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT ADClient_LBRNotaFiscalPackage FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 12:56:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000721,'Y','N','N',0,'N',22,'N','N','N','Y','2d57fd8f-1b9b-4be6-b7fd-000657c8cb5c','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-14 12:56:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:56:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000038,130,0,'LBR')
;

-- May 14, 2014 12:56:43 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalPackage', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 12:56:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000721
;

-- May 14, 2014 12:56:43 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 12:56:43 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT ADOrg_LBRNotaFiscalPackage FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 12:57:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000722,'Y','N','N',0,'N',1,'N','N','N','Y','a88b0afe-2a98-4b67-927a-b5af516830b0','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-14 12:57:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:57:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000038,0,'LBR')
;

-- May 14, 2014 12:57:05 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 14, 2014 12:57:21 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000723,'N','N','N',0,'N',7,'N','N','N','Y','55f5e88b-9ada-4872-b75a-7112bf489c95','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-14 12:57:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:57:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000038,0,'LBR')
;

-- May 14, 2014 12:57:25 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 12:57:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000724,'N','N','N',0,'N',22,'N','N','N','Y','76078883-393b-4025-88fa-383a53f08d2c','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-14 12:57:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:57:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000038,0,'LBR')
;

-- May 14, 2014 12:57:42 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalPackage', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 12:57:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000724
;

-- May 14, 2014 12:57:42 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 12:57:42 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT CreatedBy_LBRNotaFiscalPackage FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 12:57:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000725,'N','N','N',0,'N',7,'N','N','N','Y','518e0f35-2d79-473d-8970-579b9aca2705','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-14 12:57:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:57:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000038,0,'LBR')
;

-- May 14, 2014 12:57:57 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 12:58:10 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000726,'N','N','N',0,'N',22,'N','N','N','Y','ae9294ad-ca5f-4392-8a63-afa1c5f2cd69','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-14 12:58:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:58:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000038,0,'LBR')
;

-- May 14, 2014 12:58:12 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalPackage', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 12:58:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000726
;

-- May 14, 2014 12:58:12 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 12:58:12 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT UpdatedBy_LBRNotaFiscalPackage FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 12:58:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000727,'Y','N','N',0,'N',22,'N','N','N','Y','f79ce01e-6e2d-4822-a5f2-f2f52278114b','N','LBR_NotaFiscalTransp_ID','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','Y',TO_TIMESTAMP('2014-05-14 12:58:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 12:58:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000198,19,1000038,0,'LBR')
;

-- May 14, 2014 12:58:43 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalTransp_LBRNotaFis', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 12:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000727
;

-- May 14, 2014 12:58:43 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_NotaFiscalTransp_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 12:58:43 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT LBRNotaFiscalTransp_LBRNotaFis FOREIGN KEY (LBR_NotaFiscalTransp_ID) REFERENCES lbr_notafiscaltransp(lbr_notafiscaltransp_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 1:11:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000728,'N','N','N',0,'N',22,'N','N','N','Y','17d62a50-dd6b-459f-98ae-b7f63b111968','Y','Qty','Quantity','The Quantity indicates the number of a specific product or item for this document.','Quantity','Y',TO_TIMESTAMP('2014-05-14 13:11:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:11:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',526,29,1000038,0,'LBR')
;

-- May 14, 2014 1:11:06 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN Qty NUMERIC DEFAULT NULL 
;

-- May 14, 2014 1:11:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000729,'N','N','N',0,'N',22,'N','N','N','Y','8f2cf3b1-424b-47b2-a394-0a24ef41641b','Y','C_UOM_ID','Unit of Measure','The UOM defines a unique non monetary Unit of Measure','UOM','Y',TO_TIMESTAMP('2014-05-14 13:11:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:11:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',215,19,1000038,0,'LBR')
;

-- May 14, 2014 1:11:44 PM BRT
UPDATE AD_Column SET FKConstraintName='CUOM_LBRNotaFiscalPackage', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 13:11:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000729
;

-- May 14, 2014 1:11:44 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN C_UOM_ID NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 1:11:44 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD CONSTRAINT CUOM_LBRNotaFiscalPackage FOREIGN KEY (C_UOM_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 1:13:23 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BrandName',1000205,'Brand Name','Brand Name','c50eacd3-a376-4d79-a905-19688cb01116',TO_TIMESTAMP('2014-05-14 13:13:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 13:13:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 1:13:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000730,'N','N','N',0,'N',60,'Y','N','N','Y','d1088366-08a7-4734-b8b6-8a40c85a1b1e','Y','LBR_BrandName','Brand Name','Y',TO_TIMESTAMP('2014-05-14 13:13:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:13:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000205,10,1000038,0,'LBR')
;

-- May 14, 2014 1:13:55 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_BrandName VARCHAR(60) DEFAULT NULL 
;

-- May 14, 2014 1:14:19 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Numeration',1000206,'Numeration','Numeration','b88dc833-55e4-48a0-8a85-c3ccbc47adf4',TO_TIMESTAMP('2014-05-14 13:14:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 13:14:19','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 1:14:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000731,'N','N','N',0,'N',60,'N','N','N','Y','b84055da-000f-4a3c-8178-c3d5790a4a86','Y','LBR_Numeration','Numeration','Y',TO_TIMESTAMP('2014-05-14 13:14:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:14:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000206,10,1000038,0,'LBR')
;

-- May 14, 2014 1:14:50 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_Numeration VARCHAR(60) DEFAULT NULL 
;

-- May 14, 2014 1:15:54 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NetWeight',1000207,'The Net Weight indicates the net weight  of the product in the Weight UOM of the Client','Net Weight','Net Weight of a product','Net Weight','947c10d6-8c73-42f7-bb41-fc428f01e81c',TO_TIMESTAMP('2014-05-14 13:15:54','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 13:15:54','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 1:16:25 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_GrossWeight',1000208,'The Gross Weight indicates the gross weight  of the product in the Weight UOM of the Client','Gross Weight','Gross Weight of a product','Gross Weight','6c34372c-fb89-4a02-97ac-c7b5a08d3578',TO_TIMESTAMP('2014-05-14 13:16:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 13:16:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 1:17:25 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000732,'N','N','N',0,'N',22,'N','N','N','Y','3f8ea0d8-41f7-48be-b4e9-6f7e0b0ea4dd','Y','LBR_NetWeight','Net Weight of a product','The Net Weight indicates the net weight  of the product in the Weight UOM of the Client','Net Weight','Y',TO_TIMESTAMP('2014-05-14 13:17:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:17:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000207,12,1000038,0,'LBR')
;

-- May 14, 2014 1:17:29 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_NetWeight NUMERIC DEFAULT NULL 
;

-- May 14, 2014 1:17:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000733,'N','N','N',0,'N',22,'N','N','N','Y','f98bb73c-7c3b-4099-bd57-80f525af65ca','Y','LBR_GrossWeight','Gross Weight of a product','The Gross Weight indicates the gross weight  of the product in the Weight UOM of the Client','Gross Weight','Y',TO_TIMESTAMP('2014-05-14 13:17:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:17:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000208,12,1000038,0,'LBR')
;

-- May 14, 2014 1:18:00 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_GrossWeight NUMERIC DEFAULT NULL 
;

-- May 14, 2014 1:18:43 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_SealNo',1000209,'Seal','Seal No','Seal','328a0abe-be5a-4d7b-b903-811a2da1f640',TO_TIMESTAMP('2014-05-14 13:18:43','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 13:18:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 1:19:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000734,'N','N','N',0,'N',255,'N','N','N','Y','bda50770-39af-4ea2-a8b1-95a8d7e44aed','Y','LBR_SealNo','Seal No','Seal','Y',TO_TIMESTAMP('2014-05-14 13:19:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 13:19:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000209,10,1000038,0,'LBR')
;

-- May 14, 2014 1:19:32 PM BRT
ALTER TABLE LBR_NotaFiscalPackage ADD COLUMN LBR_SealNo VARCHAR(255) DEFAULT NULL 
;

-- May 14, 2014 1:21:55 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,60,'The Package Tab displays fields for entering information about package in a fiscal invoice','N','N','N','N','N','Y','N',2,'b04cf18d-5297-4f1b-9968-5e348496ddc4','LBR','Package','Package',1000080,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-14 13:21:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:21:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000727,1000038,'B')
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',10,'Y',1001430,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ac605c98-7311-4a7e-8617-1f41d22bba6a','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000720)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',20,'Y',1001431,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','fee8d210-c592-4564-adaa-47081865e1d8','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000721)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',30,'Y',1001432,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Package','e2423193-8934-4402-ac9b-b665acc86acf','N','N',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000718)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,36,'N','N',40,'Y',1001433,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Package','b9a61dda-3a0e-4cea-b6c1-4de56f748b4b','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000719)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',50,'Y',1001434,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Transportation','8024f5b4-4232-499e-a8cf-91e7cc2b8b3c','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000727)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',60,'Y',1001435,'N','The Quantity indicates the number of a specific product or item for this document.','LBR','Quantity','Quantity','d9c1c983-7afb-491d-b56c-b7824baf218a','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000728)
;

-- May 14, 2014 1:22:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',70,'Y',1001436,'N','The UOM defines a unique non monetary Unit of Measure','LBR','Unit of Measure','UOM','12f57ce4-1ff5-4141-9158-36dab2716a8e','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:01','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000729)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,60,'N','N',80,'Y',1001437,'N','LBR','Brand Name','bf29e4e4-264c-46f7-b525-4d6388625ab1','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000730)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,60,'N','N',90,'Y',1001438,'N','LBR','Numeration','4b83bc86-1c40-487b-b401-8cf789469df5','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000731)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',100,'Y',1001439,'N','The Net Weight indicates the net weight  of the product in the Weight UOM of the Client','LBR','Net Weight of a product','Net Weight','97d7b36e-71a4-4e3e-93a4-d058d42f547b','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000732)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,22,'N','N',110,'Y',1001440,'N','The Gross Weight indicates the gross weight  of the product in the Weight UOM of the Client','LBR','Gross Weight of a product','Gross Weight','f00141e7-3311-4112-984a-d3104f2b1398','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000733)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,255,'N','N',120,'Y',1001441,'N','LBR','Seal No','Seal','cc5fd766-5f0c-4413-bf8a-72c22f4844c8','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000734)
;

-- May 14, 2014 1:22:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000080,1,'N','N',130,'Y',1001442,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','90c5cedd-e070-49ce-a9f7-c2075d9c4149','N','Y',0,0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 13:22:02','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000722)
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001442
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001434
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001433
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001432
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001435
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001436
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001437
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001438
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001439
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001440
;

-- May 14, 2014 1:22:21 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001441
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001434
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001433
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001442
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001437
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001440
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001439
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001438
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001431
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001435
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001441
;

-- May 14, 2014 1:22:36 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001436
;

-- May 14, 2014 1:23:03 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-14 13:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001431
;

-- May 14, 2014 1:23:28 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 13:23:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001436
;

-- May 14, 2014 1:23:49 PM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-14 13:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001437
;

-- May 14, 2014 1:23:59 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-14 13:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001438
;

-- May 14, 2014 1:24:17 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 13:24:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001440
;

-- May 14, 2014 1:24:34 PM BRT
UPDATE AD_Field SET NumLines=3,Updated=TO_TIMESTAMP('2014-05-14 13:24:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001441
;

-- May 14, 2014 3:15:45 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000039,'N','N','Y','LBR','L','168abef5-002f-4076-8983-1d7652cd4840','Y','Y','LBR_NotaFiscalPay','Brazilian Fiscal Invoice (Nota Fiscal) Pay','Brazilian Fiscal Invoice (Nota Fiscal) Pay','Y',0,0,TO_TIMESTAMP('2014-05-14 15:15:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:15:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 14, 2014 3:15:45 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000046,'Table LBR_NotaFiscalPay','LBR_NotaFiscalPay',1,'988020aa-4380-4dc1-ae08-cd97bbb68f75',TO_TIMESTAMP('2014-05-14 15:15:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:15:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 14, 2014 3:17:25 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPay_ID',1000210,'Brazilian Fiscal Invoice (Nota Fiscal) Pay','Brazilian Fiscal Invoice (Nota Fiscal) Pay','784f901c-550b-4479-bddd-2dced9e1c850',TO_TIMESTAMP('2014-05-14 15:17:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 15:17:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 3:17:36 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPay_UU',1000211,'Brazilian Fiscal Invoice (Nota Fiscal) Pay','Brazilian Fiscal Invoice (Nota Fiscal) Pay','af4e2978-cccf-42b0-a16d-2a1e2a30d1ea',TO_TIMESTAMP('2014-05-14 15:17:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 15:17:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 3:18:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPaySched_UU',1000212,'Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','40daef41-d03b-493f-bc8e-7f4a31c81647',TO_TIMESTAMP('2014-05-14 15:18:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 15:18:00','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 3:18:12 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalPaySched_ID',1000213,'Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','fe48e6d2-05ab-4510-8145-0b45be1e13e5',TO_TIMESTAMP('2014-05-14 15:18:12','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 15:18:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 3:21:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000735,'Y','N','N',0,'N',22,'N','Y','N','Y','d1a41029-c103-446c-90da-e7874932ff5d','N','LBR_NotaFiscalPay_ID','Brazilian Fiscal Invoice (Nota Fiscal) Pay','N',TO_TIMESTAMP('2014-05-14 15:21:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:21:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000210,13,1000039,0,'LBR')
;

-- May 14, 2014 3:21:41 PM BRT
CREATE TABLE LBR_NotaFiscalPay (LBR_NotaFiscalPay_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalPay_Key PRIMARY KEY (LBR_NotaFiscalPay_ID))
;

-- May 14, 2014 3:22:06 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000736,'N','N','N',0,'N',36,'N','N','N','Y','9b327da3-6b31-432d-95f7-48460ddba3f8','N','LBR_NotaFiscalPay_UU','Brazilian Fiscal Invoice (Nota Fiscal) Pay','N',TO_TIMESTAMP('2014-05-14 15:22:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:22:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000211,10,1000039,0,'LBR')
;

-- May 14, 2014 3:22:12 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN LBR_NotaFiscalPay_UU VARCHAR(36) DEFAULT NULL 
;

-- May 14, 2014 3:22:12 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT LBR_NotaFiscalPay_UU_idx UNIQUE (LBR_NotaFiscalPay_UU)
;

-- May 14, 2014 3:22:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000737,'Y','N','N',0,'N',22,'N','N','N','Y','799a19df-d536-4aaa-8cb7-290a289c46f3','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-14 15:22:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:22:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000039,129,0,'LBR')
;

-- May 14, 2014 3:22:49 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalPay', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 15:22:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000737
;

-- May 14, 2014 3:22:49 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 3:22:49 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT ADClient_LBRNotaFiscalPay FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 3:23:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000738,'Y','N','N',0,'N',22,'N','N','N','Y','78760c67-7f46-47fa-9364-4461f6ddccb4','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-14 15:23:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:23:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000039,130,0,'LBR')
;

-- May 14, 2014 3:23:55 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalPay', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 15:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000738
;

-- May 14, 2014 3:23:55 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 3:23:55 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT ADOrg_LBRNotaFiscalPay FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 3:24:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000739,'Y','N','N',0,'N',1,'N','N','N','Y','82342cf1-afdb-4213-9551-f1ac9a5c71cb','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-14 15:24:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:24:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000039,0,'LBR')
;

-- May 14, 2014 3:24:19 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 14, 2014 3:31:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000740,'N','N','N',0,'N',7,'N','N','N','Y','2012fd24-9222-440e-ba16-7f0c1d6104b1','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-14 15:31:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:31:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000039,0,'LBR')
;

-- May 14, 2014 3:31:53 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 3:32:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000741,'N','N','N',0,'N',22,'N','N','N','Y','c58bfbac-47a4-488a-8911-a0eed94b5673','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-14 15:32:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:32:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000039,0,'LBR')
;

-- May 14, 2014 3:32:06 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalPay', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 15:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000741
;

-- May 14, 2014 3:32:06 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 3:32:07 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT CreatedBy_LBRNotaFiscalPay FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 3:32:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000742,'N','N','N',0,'N',7,'N','N','N','Y','a915b4e4-50ff-42b0-98f0-9fcb49234c29','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-14 15:32:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:32:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000039,0,'LBR')
;

-- May 14, 2014 3:32:24 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 3:32:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000743,'N','N','N',0,'N',22,'N','N','N','Y','e16d53bd-bda5-4364-be27-31175d97216e','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-14 15:32:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:32:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000039,0,'LBR')
;

-- May 14, 2014 3:32:39 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalPay', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 15:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000743
;

-- May 14, 2014 3:32:39 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 3:32:39 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT UpdatedBy_LBRNotaFiscalPay FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 3:33:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000744,'Y','N','N',0,'N',22,'N','N','N','Y','372384f2-6466-49b1-8b67-4b5af6171e99','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_TIMESTAMP('2014-05-14 15:33:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:33:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,19,1000039,0,'LBR')
;

-- May 14, 2014 3:33:06 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalPay', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-14 15:33:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000744
;

-- May 14, 2014 3:33:06 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 3:33:06 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalPay FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 3:35:32 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000745,'N','N','N',0,'N',60,'Y','N','N','Y','11dd1284-0999-4fbb-bf82-9fb0eafe422a','Y','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_TIMESTAMP('2014-05-14 15:35:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:35:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000039,0,'LBR')
;

-- May 14, 2014 3:35:39 PM BRT
--ALTER TABLE LBR_NotaFiscalPay ADD COLUMN DocumentNo VARCHAR(60) DEFAULT NULL 
--;

-- May 14, 2014 3:35:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000746,'N','N','N',0,'N',22,'N','N','N','Y','2ea5fdc8-0316-43fb-be94-5c29a9682a21','Y','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total','Y',TO_TIMESTAMP('2014-05-14 15:35:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:35:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',316,12,1000039,0,'LBR')
;

-- May 14, 2014 3:35:59 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN GrandTotal NUMERIC DEFAULT NULL 
;

-- May 14, 2014 3:36:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000747,'N','N','N',0,'N',22,'N','N','N','Y','5c02635b-0840-4506-a192-dfb162a0b7ee','Y','DiscountAmt','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.','Discount Amount','Y',TO_TIMESTAMP('2014-05-14 15:36:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:36:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1395,12,1000039,0,'LBR')
;

-- May 14, 2014 3:36:15 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN DiscountAmt NUMERIC DEFAULT NULL 
;

-- May 14, 2014 3:36:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000748,'N','N','N',0,'N',22,'N','N','N','Y','b340b00f-cd57-4b12-ab70-7946a8ff4ca1','Y','NetAmtToInvoice','Net amount of this Invoice','Indicates the net amount for this invoice.  It does not include shipping or any additional charges.','Invoice net Amount','Y',TO_TIMESTAMP('2014-05-14 15:36:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 15:36:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1249,12,1000039,0,'LBR')
;

-- May 14, 2014 3:36:42 PM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN NetAmtToInvoice NUMERIC DEFAULT NULL 
;

-- May 14, 2014 3:38:37 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,70,'The Pay Tab displays fields for entering information about invoices and payment','N','N','N','N','N','N','N',1,'9184f86f-c399-44d1-856f-a079523de64c','LBR','Pay','Pay',1000081,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-14 15:38:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000744,1000039,'B')
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',10,'Y',1001443,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','4d42301e-a6ba-4328-8279-e09cf477b90f','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000737)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',20,'Y',1001444,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','04b89bf3-9413-40b4-b517-b9a4a3c2fb8e','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000738)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',30,'Y',1001445,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Pay','41bdcde9-f50f-45bd-a289-47b15465f97b','N','N',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000735)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,36,'N','N',40,'Y',1001446,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Pay','768f5b28-df2f-43d9-ad46-3fc274244ffc','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000736)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',50,'Y',1001447,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','28c588a0-9559-4374-8b34-427a96d9a07f','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000744)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,60,'N','N',60,'Y',1001448,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','5ce9a739-158f-4c81-9350-53f0ed9d7f9f','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000745)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',70,'Y',1001449,'N','The Grand Total displays the total amount including Tax and Freight in document currency','LBR','Total amount of document','Grand Total','f3435ffc-013d-426d-a7f6-dfa3009785bb','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000746)
;

-- May 14, 2014 3:38:43 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',80,'Y',1001450,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','b27050d2-cdfc-45a3-a5f8-6d95de6687a6','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000747)
;

-- May 14, 2014 3:38:44 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,22,'N','N',90,'Y',1001451,'N','Indicates the net amount for this invoice.  It does not include shipping or any additional charges.','LBR','Net amount of this Invoice','Invoice net Amount','425f3715-9b7b-4ab7-bf84-224aa4741304','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000748)
;

-- May 14, 2014 3:38:44 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,1,'N','N',100,'Y',1001452,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','e9f3567d-2d4b-4608-b82d-447e654f447b','N','Y',0,0,TO_TIMESTAMP('2014-05-14 15:38:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 15:38:44','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000739)
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001452
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001447
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001446
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001445
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001448
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001449
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001450
;

-- May 14, 2014 3:39:06 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001451
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001446
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001447
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001452
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001450
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001448
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001449
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001451
;

-- May 14, 2014 3:39:25 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001444
;

-- May 14, 2014 3:39:54 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-14 15:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001444
;

-- May 14, 2014 3:40:06 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-14 15:40:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001448
;

-- May 14, 2014 3:40:31 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 15:40:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001449
;

-- May 14, 2014 3:40:55 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 15:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001451
;

-- May 14, 2014 3:41:59 PM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-14 15:41:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001448
;

-- May 14, 2014 3:44:32 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-14 15:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001449
;

-- May 14, 2014 3:45:31 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-14 15:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001451
;

-- May 14, 2014 4:00:24 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000040,'N','N','Y','LBR','L','005004a4-a7e2-48fe-88c5-e58fe9e2e9ac','Y','Y','LBR_NotaFiscalPaySched','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','Y',0,0,TO_TIMESTAMP('2014-05-14 16:00:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:00:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 14, 2014 4:00:25 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000047,'Table LBR_NotaFiscalPaySched','LBR_NotaFiscalPaySched',1,'238cc3f6-a644-4c20-93a4-f06b98ffd0d7',TO_TIMESTAMP('2014-05-14 16:00:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:00:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 14, 2014 4:07:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000749,'Y','N','N',0,'N',22,'N','Y','N','Y','939a841b-66c8-4d28-a4e7-38669db5d9eb','N','LBR_NotaFiscalPaySched_ID','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','N',TO_TIMESTAMP('2014-05-14 16:07:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:07:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000213,13,1000040,0,'LBR')
;

-- May 14, 2014 4:07:21 PM BRT
CREATE TABLE LBR_NotaFiscalPaySched (LBR_NotaFiscalPaySched_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalPaySched_Key PRIMARY KEY (LBR_NotaFiscalPaySched_ID))
;

-- May 14, 2014 4:08:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000750,'N','N','N',0,'N',36,'N','N','N','Y','004b7c46-6b42-439c-8464-cb002833b33d','N','LBR_NotaFiscalPaySched_UU','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','N',TO_TIMESTAMP('2014-05-14 16:08:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:08:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000212,10,1000040,0,'LBR')
;

-- May 14, 2014 4:08:09 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN LBR_NotaFiscalPaySched_UU VARCHAR(36) DEFAULT NULL 
;

-- May 14, 2014 4:08:09 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT LBR_NotaFiscalPaySched_UU_idx UNIQUE (LBR_NotaFiscalPaySched_UU)
;

-- May 14, 2014 4:08:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000751,'Y','N','N',0,'N',22,'N','N','N','Y','14ed9253-94d9-46c8-aa10-f350c8a5e48a','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-14 16:08:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:08:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000040,129,0,'LBR')
;

-- May 14, 2014 4:08:42 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalPaySched', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 16:08:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000751
;

-- May 14, 2014 4:08:42 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 4:08:42 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT ADClient_LBRNotaFiscalPaySched FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 4:09:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000752,'Y','N','N',0,'N',22,'N','N','N','Y','2bd91df0-8f89-4ddb-9af3-667ab7912d49','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-14 16:09:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:09:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000040,130,0,'LBR')
;

-- May 14, 2014 4:09:13 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalPaySched', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 16:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000752
;

-- May 14, 2014 4:09:13 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 4:09:13 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT ADOrg_LBRNotaFiscalPaySched FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 4:09:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000753,'Y','N','N',0,'N',1,'N','N','N','Y','d77d5cdc-0630-44a2-9f6a-c5625a084dac','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-14 16:09:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:09:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000040,0,'LBR')
;

-- May 14, 2014 4:09:49 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 14, 2014 4:10:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000754,'N','N','N',0,'N',7,'N','N','N','Y','ad8beae5-114d-4fdf-848f-c1bf6e344e22','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-14 16:10:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:10:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000040,0,'LBR')
;

-- May 14, 2014 4:10:17 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 4:11:14 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000755,'N','N','N',0,'N',22,'N','N','N','Y','b8c79a5b-eccc-49e7-bad7-1eaf416826e6','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-14 16:11:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:11:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000040,0,'LBR')
;

-- May 14, 2014 4:11:16 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalPaySche', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 16:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000755
;

-- May 14, 2014 4:11:16 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 4:11:16 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT CreatedBy_LBRNotaFiscalPaySche FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 4:11:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000756,'N','N','N',0,'N',7,'N','N','N','Y','d659fdc0-745d-4173-acb7-4d8628201446','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-14 16:11:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:11:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000040,0,'LBR')
;

-- May 14, 2014 4:11:39 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 4:11:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000757,'N','N','N',0,'N',22,'N','N','N','Y','f82f98ba-ee9e-49e8-9b1d-0877f198001e','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-14 16:11:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:11:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000040,0,'LBR')
;

-- May 14, 2014 4:11:54 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalPaySche', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-14 16:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000757
;

-- May 14, 2014 4:11:54 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2014 4:11:54 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT UpdatedBy_LBRNotaFiscalPaySche FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 4:14:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000758,'Y','N','N',0,'N',22,'N','N','N','Y','f0ad08f4-cafe-4bf1-ac11-485be10949b1','N','LBR_NotaFiscalPay_ID','Brazilian Fiscal Invoice (Nota Fiscal) Pay','Y',TO_TIMESTAMP('2014-05-14 16:14:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:14:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000210,19,1000040,0,'LBR')
;

-- May 14, 2014 4:14:21 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalPay_LBRNotaFiscal', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-14 16:14:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000758
;

-- May 14, 2014 4:14:21 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN LBR_NotaFiscalPay_ID NUMERIC(10) NOT NULL
;

-- May 14, 2014 4:14:21 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD CONSTRAINT LBRNotaFiscalPay_LBRNotaFiscal FOREIGN KEY (LBR_NotaFiscalPay_ID) REFERENCES lbr_notafiscalpay(lbr_notafiscalpay_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 14, 2014 4:14:49 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000759,'N','N','N',0,'N',60,'Y','N','N','Y','c34da195-2d87-4331-9713-e11e5da3703d','Y','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_TIMESTAMP('2014-05-14 16:14:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:14:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000040,0,'LBR')
;

-- May 14, 2014 4:14:52 PM BRT
--ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN DocumentNo VARCHAR(60) DEFAULT NULL 
--;

-- May 14, 2014 4:15:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000760,'N','N','N',0,'N',7,'N','N','N','Y','2c42b522-a5eb-411a-bcda-ddaf92feffe0','Y','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date','Y',TO_TIMESTAMP('2014-05-14 16:15:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:15:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2000,15,1000040,0,'LBR')
;

-- May 14, 2014 4:15:14 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN DueDate TIMESTAMP DEFAULT NULL 
;

-- May 14, 2014 4:15:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000761,'N','N','Y',0,'N',22,'N','N','N','Y','da26ebd8-59c3-4abf-b55f-3823b15d1367','Y','DueAmt','Amount of the payment due','Full amount of the payment due','Amount due','Y',TO_TIMESTAMP('2014-05-14 16:15:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 16:15:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1999,12,1000040,0,'LBR')
;

-- May 14, 2014 4:15:34 PM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN DueAmt NUMERIC DEFAULT NULL 
;

-- May 14, 2014 4:18:18 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,80,'The Pay Schedule Tab displays fields for entering information about payment schedules','N','N','N','N','N','N','N',2,'7c02d80e-54b7-4fc9-983c-f93573feb7d0','LBR','Pay Schedule','Pay Schedule',1000082,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-14 16:18:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000758,1000040,'B')
;

-- May 14, 2014 4:18:25 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,22,'N','N',10,'Y',1001453,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','4d1775ce-080f-45bb-bc3d-3b2335dea946','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000751)
;

-- May 14, 2014 4:18:25 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,22,'N','N',20,'Y',1001454,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','46809254-19bd-4185-84e1-caa9389f83f3','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:25','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000752)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,22,'N','N',30,'Y',1001455,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','ab3b26fc-499b-416b-ac80-a1702c8b0a3e','N','N',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000749)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,36,'N','N',40,'Y',1001456,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule','92701bb2-7b7d-4b84-b7c4-719bf40cbd0d','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000750)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,22,'N','N',50,'Y',1001457,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Pay','2d652fbb-65f4-493d-a886-36322c0abdcf','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000758)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,60,'N','N',60,'Y',1001458,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','4becd962-daca-404a-b999-276d40916140','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000759)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,7,'N','N',70,'Y',1001459,'N','Date when the payment is due without deductions or discount','LBR','Date when the payment is due','Due Date','185da01b-c8d6-4460-8116-61e7e0fe06ec','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000760)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,22,'N','N',80,'Y',1001460,'N','Full amount of the payment due','LBR','Amount of the payment due','Amount due','70f7c881-c8a2-4ea8-b874-64275bf9cb14','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000761)
;

-- May 14, 2014 4:18:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,1,'N','N',90,'Y',1001461,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','153a4c35-8a6a-42b0-9dbf-9b4181722dfa','N','Y',0,0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 16:18:26','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000753)
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001461
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001457
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001456
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001455
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001458
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001459
;

-- May 14, 2014 4:18:43 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001460
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001456
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001457
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001461
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001460
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001458
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001459
;

-- May 14, 2014 4:18:57 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001454
;

-- May 14, 2014 4:19:24 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-14 16:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001454
;

-- May 14, 2014 4:19:40 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-14 16:19:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001458
;

-- May 14, 2014 4:20:04 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-14 16:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001460
;

-- May 14, 2014 4:23:00 PM BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2014-05-14 16:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000082
;

-- May 14, 2014 4:52:28 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001458
;

-- May 14, 2014 4:52:33 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001459
;

-- May 14, 2014 4:52:38 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001460
;

-- May 14, 2014 4:53:06 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001448
;

-- May 14, 2014 4:53:11 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:53:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001449
;

-- May 14, 2014 4:53:15 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001450
;

-- May 14, 2014 4:53:20 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-14 16:53:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001451
;

-- May 14, 2014 4:57:01 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001435
;

-- May 14, 2014 4:57:03 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001436
;

-- May 14, 2014 4:57:06 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001437
;

-- May 14, 2014 4:57:08 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001438
;

-- May 14, 2014 4:57:10 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001439
;

-- May 14, 2014 4:57:13 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001440
;

-- May 14, 2014 4:57:18 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=102,Updated=TO_TIMESTAMP('2014-05-14 16:57:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001441
;

-- May 14, 2014 4:58:31 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=124,Updated=TO_TIMESTAMP('2014-05-14 16:58:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001426
;

-- May 14, 2014 4:58:33 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=124,Updated=TO_TIMESTAMP('2014-05-14 16:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001427
;

-- May 14, 2014 4:58:36 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=124,Updated=TO_TIMESTAMP('2014-05-14 16:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001428
;

-- May 14, 2014 5:58:39 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FiscalInfo',1000214,NULL,'Fiscal Info','Fiscal Information','Fiscal Info','360dad91-be2b-4a14-9fd5-87a13037fa36',TO_TIMESTAMP('2014-05-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 6:00:20 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxPayerInfo',1000215,'Tax Payer Info','Tax Payer Information','Tax Payer Info','4590e397-2a4f-49b7-8a8f-d374d7cf045d',TO_TIMESTAMP('2014-05-14 18:00:20','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-14 18:00:20','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 14, 2014 6:04:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000762,'N','N','N',0,'N',2000,'N','N','N','Y','815b3f5d-f614-4c8b-86ae-951f4ceeb817','Y','LBR_FiscalInfo','Fiscal Information','Fiscal Info','Y',TO_TIMESTAMP('2014-05-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000214,14,1000033,0,'LBR')
;

-- May 14, 2014 6:04:38 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_FiscalInfo VARCHAR(2000) DEFAULT NULL 
;

-- May 14, 2014 6:06:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000763,'N','N','N',0,'N',0,'N','N','N','Y','7e01290d-c04c-4cec-868a-7e7bf3d757d4','Y','LBR_TaxPayerInfo','Tax Payer Information','Tax Payer Info','Y',TO_TIMESTAMP('2014-05-14 18:06:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-14 18:06:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000215,36,1000033,0,'LBR')
;

-- May 14, 2014 6:07:04 PM BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_TaxPayerInfo TEXT DEFAULT NULL 
;

-- May 14, 2014 6:08:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000068,2000,'N','N',370,'Y',1001462,'N','LBR','Fiscal Information','Fiscal Info','8b635c78-5bda-4ad6-8442-1ad18df6342d','N','Y',0,0,TO_TIMESTAMP('2014-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000762)
;

-- May 14, 2014 6:08:32 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000068,0,'N','N',380,'Y',1001463,'N','LBR','Tax Payer Information','Tax Payer Info','b3348a73-924e-44c0-be81-85b1585a7f98','N','Y',0,0,TO_TIMESTAMP('2014-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,5,1000763)
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001462
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001463
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 14, 2014 6:09:32 PM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 14, 2014 6:11:00 PM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Additional Info (LBR)','d3fec46c-4422-4da9-9c06-0f1ce44d2992',1000015,TO_TIMESTAMP('2014-05-14 18:11:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-14 18:11:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 14, 2014 6:11:19 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_TIMESTAMP('2014-05-14 18:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001462
;

-- May 14, 2014 6:11:43 PM BRT
UPDATE AD_Field SET ColumnSpan=5, NumLines=3, AD_FieldGroup_ID=1000015,Updated=TO_TIMESTAMP('2014-05-14 18:11:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001463
;

-- May 15, 2014 8:17:00 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000041,'N','N','Y','LBR','L','16d7d276-e374-4775-9396-00476e9ece06','Y','Y','LBR_NotaFiscalNote','Brazilian Fiscal Invoice (Nota Fiscal) Note','Brazilian Fiscal Invoice (Nota Fiscal) Note','Y',0,0,TO_TIMESTAMP('2014-05-15 08:17:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:17:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 15, 2014 8:17:00 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000050,'Table LBR_NotaFiscalNote','LBR_NotaFiscalNote',1,'b15eb5b1-39cd-44ef-a0a9-30a219ef8327',TO_TIMESTAMP('2014-05-15 08:17:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:17:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 15, 2014 8:17:47 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalNote_ID',1000216,'Brazilian Fiscal Invoice (Nota Fiscal) Note','Brazilian Fiscal Invoice (Nota Fiscal) Note','1eea67bc-2238-4b72-9bcd-cfc0fe36bd06',TO_TIMESTAMP('2014-05-15 08:17:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 08:17:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 8:17:53 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalNote_UU',1000217,'Brazilian Fiscal Invoice (Nota Fiscal) Note','Brazilian Fiscal Invoice (Nota Fiscal) Note','cdf89a1c-b933-4478-b06f-5108b6c8cb93',TO_TIMESTAMP('2014-05-15 08:17:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 08:17:53','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 8:27:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000764,'Y','N','N',0,'N',22,'N','Y','N','Y','34eb7690-d580-43ba-a9cd-60c274d315ca','N','LBR_NotaFiscalNote_ID','Brazilian Fiscal Invoice (Nota Fiscal) Note','N',TO_TIMESTAMP('2014-05-15 08:27:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:27:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000216,13,1000041,0,'LBR')
;

-- May 15, 2014 8:27:46 AM BRT
CREATE TABLE LBR_NotaFiscalNote (LBR_NotaFiscalNote_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalNote_Key PRIMARY KEY (LBR_NotaFiscalNote_ID))
;

-- May 15, 2014 8:28:04 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000765,'N','N','N',0,'N',36,'N','N','N','Y','ef59278a-7eb3-46d0-a919-f03ce39dd162','N','LBR_NotaFiscalNote_UU','Brazilian Fiscal Invoice (Nota Fiscal) Note','N',TO_TIMESTAMP('2014-05-15 08:28:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:28:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000217,10,1000041,0,'LBR')
;

-- May 15, 2014 8:28:06 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN LBR_NotaFiscalNote_UU VARCHAR(36) DEFAULT NULL 
;

-- May 15, 2014 8:28:06 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT LBR_NotaFiscalNote_UU_idx UNIQUE (LBR_NotaFiscalNote_UU)
;

-- May 15, 2014 8:28:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000766,'Y','N','N',0,'N',22,'N','N','N','Y','c2a7945e-aab5-4e68-8260-4849965b5373','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-15 08:28:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:28:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000041,129,0,'LBR')
;

-- May 15, 2014 8:28:36 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalNote', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 08:28:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000766
;

-- May 15, 2014 8:28:36 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 8:28:36 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT ADClient_LBRNotaFiscalNote FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 8:28:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000767,'Y','N','N',0,'N',22,'N','N','N','Y','fb3aaecf-6d45-47fe-a675-eee0289e60af','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-15 08:28:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:28:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000041,130,0,'LBR')
;

-- May 15, 2014 8:29:00 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalNote', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 08:29:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000767
;

-- May 15, 2014 8:29:00 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 8:29:00 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT ADOrg_LBRNotaFiscalNote FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 8:29:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000768,'Y','N','N',0,'N',1,'N','N','N','Y','0632a1d7-9b1f-4113-b1fa-3af83694f3c0','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-15 08:29:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:29:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000041,0,'LBR')
;

-- May 15, 2014 8:29:18 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 15, 2014 8:29:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000769,'N','N','N',0,'N',7,'N','N','N','Y','2f10fe5f-25e0-43e1-b54c-f3b56d09e9e0','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-15 08:29:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:29:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000041,0,'LBR')
;

-- May 15, 2014 8:29:35 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 8:29:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000770,'N','N','N',0,'N',22,'N','N','N','Y','11488754-a350-49bb-a0ab-a563cda6f5ac','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-15 08:29:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:29:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000041,0,'LBR')
;

-- May 15, 2014 8:29:48 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalNote', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 08:29:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000770
;

-- May 15, 2014 8:29:48 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 8:29:48 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT CreatedBy_LBRNotaFiscalNote FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 8:29:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000771,'N','N','N',0,'N',7,'N','N','N','Y','583b84bf-565e-4498-9303-df3c54b63266','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-15 08:29:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:29:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000041,0,'LBR')
;

-- May 15, 2014 8:30:01 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 8:30:13 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000772,'N','N','N',0,'N',22,'N','N','N','Y','b5a496ea-4b87-4b21-87d9-3cc78ae5f222','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-15 08:30:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:30:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000041,0,'LBR')
;

-- May 15, 2014 8:30:14 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalNote', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 08:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000772
;

-- May 15, 2014 8:30:14 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 8:30:14 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT UpdatedBy_LBRNotaFiscalNote FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 8:34:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000773,'Y','N','N',0,'N',22,'N','N','N','Y','4564a6d4-a5db-4fa6-a233-0ddab7b124a8','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_TIMESTAMP('2014-05-15 08:34:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:34:10','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,19,1000041,0,'LBR')
;

-- May 15, 2014 8:34:11 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalNot', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-15 08:34:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000773
;

-- May 15, 2014 8:34:11 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 8:34:11 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalNot FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 8:36:23 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeNoteType',1000218,'NFe Note Type','NFe Note Type','25119066-f07a-4ce8-9c11-4ac392a08a6e',TO_TIMESTAMP('2014-05-15 08:36:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 08:36:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 8:36:49 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000043,'LBR_NFeNoteType','LBR','7392c9c3-2454-4da8-b7e7-acf57e3c07e0','N','L',0,0,TO_TIMESTAMP('2014-05-15 08:36:49','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 08:36:49','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 8:37:27 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000160,1000043,'36cf7d62-0c47-40d2-b86f-28a14c9bde72','0',TO_TIMESTAMP('2014-05-15 08:37:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:37:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Fiscal')
;

-- May 15, 2014 8:37:40 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000161,1000043,'d075d8a7-4fa5-4f80-aec4-660291c6699a','1',TO_TIMESTAMP('2014-05-15 08:37:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:37:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Tax Payer')
;

-- May 15, 2014 8:38:50 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000774,'N','N','N',0,'N',1,'N','N','N','Y','63b06440-436b-474b-827e-1010a5e19735','Y','LBR_NFeNoteType','NFe Note Type','Y',TO_TIMESTAMP('2014-05-15 08:38:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:38:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000218,17,1000043,1000041,0,'LBR')
;

-- May 15, 2014 8:38:52 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN LBR_NFeNoteType CHAR(1) DEFAULT NULL 
;

-- May 15, 2014 8:40:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000775,'Y','N','N',0,'N',20,'Y','N','N','Y','85d01a38-a4c7-4803-9f29-dfbac7627aa3','Y','ColumnName','Name of the column in the database','The Column Name indicates the name of a column on a table as defined in the database.','DB Column Name','Y',TO_TIMESTAMP('2014-05-15 08:40:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:40:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',228,10,1000041,0,'LBR')
;

-- May 15, 2014 8:40:19 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN ColumnName VARCHAR(20) NOT NULL
;

-- May 15, 2014 8:40:35 AM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-15 08:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000774
;

-- May 15, 2014 8:40:36 AM BRT
INSERT INTO t_alter_column values('lbr_notafiscalnote','LBR_NFeNoteType','CHAR(1)',null,null)
;

-- May 15, 2014 8:40:38 AM BRT
INSERT INTO t_alter_column values('lbr_notafiscalnote','LBR_NFeNoteType',null,'NOT NULL',null)
;

-- May 15, 2014 8:41:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000776,'Y','N','N',0,'N',60,'N','N','N','Y','5880794d-e4ba-47c3-8027-6b3f00b53ba5','Y','Note','Optional additional user defined information','The Note field allows for optional entry of user defined information regarding this record','Note','Y',TO_TIMESTAMP('2014-05-15 08:41:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 08:41:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1115,10,1000041,0,'LBR')
;

-- May 15, 2014 8:41:04 AM BRT
ALTER TABLE LBR_NotaFiscalNote ADD COLUMN Note VARCHAR(60) NOT NULL
;

-- May 15, 2014 8:43:28 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,90,'The Note Tab displays fields for entering remarks to the tax authorities and taxpayers','N','N','N','N','N','Y','N',1,'416ea63d-cb14-4f0c-bf96-d80d6b1d842c','LBR','Note','Note',1000083,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-15 08:43:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000773,1000041,'B')
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,22,'N','N',10,'Y',1001464,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','5de45ab6-8126-4fc2-b843-458fa1876128','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000766)
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,22,'N','N',20,'Y',1001465,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','40c68ee6-4ca1-4c3a-b599-866f62b5311a','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000767)
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,22,'N','N',30,'Y',1001466,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Note','ba584219-9b79-4802-bc32-243043eed232','N','N',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000764)
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,36,'N','N',40,'Y',1001467,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Note','e2821af8-c82a-49a4-b49f-da352b23b049','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000765)
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,22,'N','N',50,'Y',1001468,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','7fed5767-0391-4f9f-89b5-c00ffbfa6b86','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000773)
;

-- May 15, 2014 8:43:34 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,1,'N','N',60,'Y',1001469,'N','LBR','NFe Note Type','29158540-5432-4e7d-9683-bd76cdfa4f25','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000774)
;

-- May 15, 2014 8:43:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,20,'N','N',70,'Y',1001470,'N','The Column Name indicates the name of a column on a table as defined in the database.','LBR','Name of the column in the database','DB Column Name','18bedad4-ef29-423a-82a0-83368b956570','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000775)
;

-- May 15, 2014 8:43:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,60,'N','N',80,'Y',1001471,'N','The Note field allows for optional entry of user defined information regarding this record','LBR','Optional additional user defined information','Note','dff9bdaf-1e59-49b1-a0b8-887ca0e87c4a','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:35','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000776)
;

-- May 15, 2014 8:43:35 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000083,1,'N','N',90,'Y',1001472,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','15fef2c1-8929-4f24-8e00-ab1d814d5410','N','Y',0,0,TO_TIMESTAMP('2014-05-15 08:43:35','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 08:43:35','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000768)
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001472
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001468
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001467
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001466
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001469
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001470
;

-- May 15, 2014 8:44:03 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001471
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001467
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001468
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001472
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001470
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001469
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001471
;

-- May 15, 2014 8:44:14 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001465
;

-- May 15, 2014 8:44:29 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-15 08:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001465
;

-- May 15, 2014 8:46:07 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-05-15 08:46:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001469
;

-- May 15, 2014 8:46:21 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-05-15 08:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001470
;

-- May 15, 2014 8:46:35 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-05-15 08:46:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001471
;

-- May 15, 2014 8:49:37 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-15 08:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001470
;

-- May 15, 2014 8:49:42 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-15 08:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001471
;

-- May 15, 2014 9:28:21 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000042,'N','N','Y','LBR','L','ffcb65aa-0f8e-4955-ba5a-55ca54b4b8f9','Y','Y','LBR_NotaFiscalProc','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','Y',0,0,TO_TIMESTAMP('2014-05-15 09:28:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:28:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 15, 2014 9:28:21 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000053,'Table LBR_NotaFiscalProc','LBR_NotaFiscalProc',1,'9950b9f0-b22f-4145-a7d8-b8f6a5743b93',TO_TIMESTAMP('2014-05-15 09:28:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:28:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 15, 2014 9:29:08 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalProc_ID',1000219,'Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','1a6e8588-1502-468c-8dcf-82eddb3c5bf0',TO_TIMESTAMP('2014-05-15 09:29:08','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 09:29:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 9:29:16 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalProc_UU',1000220,'Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','72561af4-9e53-4b99-b12f-a079ac51b5c6',TO_TIMESTAMP('2014-05-15 09:29:16','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 09:29:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 9:29:40 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000777,'Y','N','N',0,'N',22,'N','Y','N','Y','3b0cda71-e14f-4cc5-a605-fa44dfd38288','N','LBR_NotaFiscalProc_ID','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','N',TO_TIMESTAMP('2014-05-15 09:29:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:29:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000219,13,1000042,0,'LBR')
;

-- May 15, 2014 9:29:41 AM BRT
CREATE TABLE LBR_NotaFiscalProc (LBR_NotaFiscalProc_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalProc_Key PRIMARY KEY (LBR_NotaFiscalProc_ID))
;

-- May 15, 2014 9:29:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000778,'N','N','N',0,'N',36,'N','N','N','Y','3b25b786-9fdb-4c95-88a2-a98c1437c054','N','LBR_NotaFiscalProc_UU','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','N',TO_TIMESTAMP('2014-05-15 09:29:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:29:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000220,10,1000042,0,'LBR')
;

-- May 15, 2014 9:30:02 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN LBR_NotaFiscalProc_UU VARCHAR(36) DEFAULT NULL 
;

-- May 15, 2014 9:30:03 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT LBR_NotaFiscalProc_UU_idx UNIQUE (LBR_NotaFiscalProc_UU)
;

-- May 15, 2014 9:30:17 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000779,'Y','N','N',0,'N',22,'N','N','N','Y','1e572e81-a60f-44ac-8af4-cf816fb74c87','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-15 09:30:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:30:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000042,129,0,'LBR')
;

-- May 15, 2014 9:30:18 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalProc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 09:30:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000779
;

-- May 15, 2014 9:30:18 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 9:30:18 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT ADClient_LBRNotaFiscalProc FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 9:30:40 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000780,'Y','N','N',0,'N',22,'N','N','N','Y','3f7c12c3-2fde-446e-9214-752060ecb7ed','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-15 09:30:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:30:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000042,130,0,'LBR')
;

-- May 15, 2014 9:30:41 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalProc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 09:30:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000780
;

-- May 15, 2014 9:30:41 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 9:30:41 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT ADOrg_LBRNotaFiscalProc FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 9:30:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000781,'Y','N','N',0,'N',1,'N','N','N','Y','717ec5d1-a10e-4866-8127-a8cc465ac735','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-15 09:30:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:30:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000042,0,'LBR')
;

-- May 15, 2014 9:30:57 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 15, 2014 9:31:12 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000782,'N','N','N',0,'N',7,'N','N','N','Y','4bfa0710-db9b-4281-9583-6a2cd6b0e271','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-15 09:31:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:31:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000042,0,'LBR')
;

-- May 15, 2014 9:31:13 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 9:31:26 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000783,'N','N','N',0,'N',22,'N','N','N','Y','cb778201-d33a-4870-9d82-90ef90d45639','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-15 09:31:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:31:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000042,0,'LBR')
;

-- May 15, 2014 9:31:28 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalProc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 09:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000783
;

-- May 15, 2014 9:31:28 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 9:31:28 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT CreatedBy_LBRNotaFiscalProc FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 9:31:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000784,'N','N','N',0,'N',7,'N','N','N','Y','1b7323e6-0270-4bfe-bfae-5b2db08b4280','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-15 09:31:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:31:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000042,0,'LBR')
;

-- May 15, 2014 9:31:44 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 9:31:57 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000785,'N','N','N',0,'N',22,'N','N','N','Y','c00bd3a6-f869-42a0-8bbc-c8e1113c1022','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-15 09:31:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:31:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000042,0,'LBR')
;

-- May 15, 2014 9:31:58 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalProc', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 09:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000785
;

-- May 15, 2014 9:31:58 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 9:31:58 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT UpdatedBy_LBRNotaFiscalProc FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 9:32:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000786,'Y','N','N',0,'N',22,'N','N','N','Y','22e499ae-0ab1-4cc8-b28c-4e2d9c707ad1','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_TIMESTAMP('2014-05-15 09:32:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:32:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,19,1000042,0,'LBR')
;

-- May 15, 2014 9:32:34 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalPro', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-15 09:32:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000786
;

-- May 15, 2014 9:32:34 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 9:32:34 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalPro FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 9:37:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000787,'Y','N','N',0,'N',60,'Y','N','N','Y','6ee9eb58-368d-4b64-b520-5dfcd4951476','Y','ProcessName','Name of the Process','Process Name','Y',TO_TIMESTAMP('2014-05-15 09:37:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 09:37:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',54115,10,1000042,0,'LBR')
;

-- May 15, 2014 9:37:36 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN ProcessName VARCHAR(60) NOT NULL
;

-- May 15, 2014 9:38:13 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeProcOrigin',1000221,'NFe Process Origin','NFe Process Origin','aba904b2-e3d7-434c-99b1-0c19204d22ee',TO_TIMESTAMP('2014-05-15 09:38:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 09:38:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 9:38:35 AM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000044,'LBR_NFeProcOrigin','LBR','1869d08c-13d9-43fe-955f-ed2873985613','N','L',0,0,TO_TIMESTAMP('2014-05-15 09:38:35','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 09:38:35','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 9:39:00 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000162,1000044,'98690513-6bed-4981-8153-7efab37a917c','0',TO_TIMESTAMP('2014-05-15 09:39:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:39:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'SEFAZ')
;

-- May 15, 2014 9:39:15 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000163,1000044,'4f7c1004-a950-4a09-a81b-e310d338e304','1',TO_TIMESTAMP('2014-05-15 09:39:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:39:15','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Justica Federal')
;

-- May 15, 2014 9:39:27 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000164,1000044,'76a3848e-cd24-4850-a3c5-ff2d22f324e2','2',TO_TIMESTAMP('2014-05-15 09:39:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:39:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Justica Estadual')
;

-- May 15, 2014 9:39:43 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000165,1000044,'5e9f6731-4294-4d1f-8fd6-8bc768c8ead4','3',TO_TIMESTAMP('2014-05-15 09:39:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:39:43','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Secex / RFB')
;

-- May 15, 2014 9:40:15 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000166,1000044,'8bc03902-aad3-4af3-bc0e-94873f737c46','9',TO_TIMESTAMP('2014-05-15 09:40:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 09:40:15','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Outros')
;

-- May 15, 2014 10:02:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000788,'Y','N','N',0,'N',1,'N','N','N','Y','03fc67e2-28ca-4cf7-8c73-6d1cd0f1e75d','Y','LBR_NFeProcOrigin','NFe Process Origin','Y',TO_TIMESTAMP('2014-05-15 10:02:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 10:02:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000221,17,1000044,1000042,0,'LBR')
;

-- May 15, 2014 10:02:52 AM BRT
ALTER TABLE LBR_NotaFiscalProc ADD COLUMN LBR_NFeProcOrigin CHAR(1) NOT NULL
;

-- May 15, 2014 10:04:45 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,100,'The Ref. Process Tab displays fields for entering information about referenced processes','N','N','N','N','N','Y','N',1,'645f3703-e5e2-40d4-acd9-5446bf50624c','LBR','Ref. Process','Ref. Process',1000084,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-15 10:04:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000786,1000042,'B')
;

-- May 15, 2014 10:04:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,22,'N','N',10,'Y',1001473,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','6c9b4805-6142-4d84-a910-699a35a7857c','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:50','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000779)
;

-- May 15, 2014 10:04:50 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,22,'N','N',20,'Y',1001474,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','db80a139-f2ae-4bb3-9999-4ed46a72279a','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:50','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000780)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,22,'N','N',30,'Y',1001475,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','9a72e407-d018-4087-8678-5529561ddec3','N','N',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000777)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,36,'N','N',40,'Y',1001476,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process','2ff505cb-fbf1-4d2f-b73a-390eafc801cb','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000778)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,22,'N','N',50,'Y',1001477,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','d4ffaaa7-cbfe-4646-a4ef-46347632d1e6','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000786)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,60,'N','N',60,'Y',1001478,'N','LBR','Name of the Process','Process Name','a52a16cf-f1d1-4d68-a60b-3562be49d028','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000787)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,1,'N','N',70,'Y',1001479,'N','LBR','NFe Process Origin','b8a7b4fd-5457-4ea5-a7ef-bab11fda3e1b','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000788)
;

-- May 15, 2014 10:04:51 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000084,1,'N','N',80,'Y',1001480,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','3ae9ab15-df34-45b6-9730-f00623d17418','N','Y',0,0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000781)
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001480
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001477
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001476
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001475
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001478
;

-- May 15, 2014 10:05:05 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001479
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001476
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001477
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001480
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001479
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001474
;

-- May 15, 2014 10:05:15 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001478
;

-- May 15, 2014 10:05:48 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-15 10:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001474
;

-- May 15, 2014 10:12:10 AM BRT
UPDATE AD_Field SET ColumnSpan=2, AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-05-15 10:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001478
;

-- May 15, 2014 10:12:28 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2014-05-15 10:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001479
;

-- May 15, 2014 10:12:57 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-15 10:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001478
;

-- May 15, 2014 1:05:59 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000043,'N','N','Y','LBR','L','ab1b4ace-edcd-4eab-a7a0-7b816b30e903','Y','Y','LBR_NotaFiscalDocRef','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','Y',0,0,TO_TIMESTAMP('2014-05-15 13:05:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:05:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 15, 2014 1:06:00 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000054,'Table LBR_NotaFiscalDocRef','LBR_NotaFiscalDocRef',1,'c6546494-83da-4d49-a684-1d33a4222d9a',TO_TIMESTAMP('2014-05-15 13:05:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:05:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 15, 2014 1:06:44 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalDocRef_ID',1000222,'Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','2ed6bb75-5799-4eee-9e08-fa3809ce7618',TO_TIMESTAMP('2014-05-15 13:06:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:06:44','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:06:56 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalDocRef_UU',1000223,'Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','cb46caea-4019-4c2a-bb98-e4a211ff3ccb',TO_TIMESTAMP('2014-05-15 13:06:56','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:06:56','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:08:45 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000789,'Y','N','N',0,'N',22,'N','Y','N','Y','886ed54d-5dbc-4bd3-97bd-b859363f9a84','N','LBR_NotaFiscalDocRef_ID','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','N',TO_TIMESTAMP('2014-05-15 13:08:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:08:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000222,13,1000043,0,'LBR')
;

-- May 15, 2014 1:08:49 PM BRT
CREATE TABLE LBR_NotaFiscalDocRef (LBR_NotaFiscalDocRef_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NotaFiscalDocRef_Key PRIMARY KEY (LBR_NotaFiscalDocRef_ID))
;

-- May 15, 2014 1:09:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000790,'N','N','N',0,'N',36,'N','N','N','Y','12a54e32-6621-4aa0-ac35-3fa6ff2e41ca','N','LBR_NotaFiscalDocRef_UU','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','N',TO_TIMESTAMP('2014-05-15 13:09:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:09:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000223,10,1000043,0,'LBR')
;

-- May 15, 2014 1:09:09 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NotaFiscalDocRef_UU VARCHAR(36) DEFAULT NULL 
;

-- May 15, 2014 1:09:09 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT LBR_NotaFiscalDocRef_UU_idx UNIQUE (LBR_NotaFiscalDocRef_UU)
;

-- May 15, 2014 1:10:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000791,'Y','N','N',0,'N',22,'N','N','N','Y','c8035973-13b2-4252-91c1-859d252d414c','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_TIMESTAMP('2014-05-15 13:10:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:10:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000043,129,0,'LBR')
;

-- May 15, 2014 1:10:41 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalDocRef', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 13:10:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000791
;

-- May 15, 2014 1:10:41 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 1:10:41 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT ADClient_LBRNotaFiscalDocRef FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:11:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000792,'Y','N','N',0,'N',22,'N','N','N','Y','465ac673-c2c2-46d5-baa2-eeb816d2292c','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_TIMESTAMP('2014-05-15 13:11:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:11:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000043,130,0,'LBR')
;

-- May 15, 2014 1:11:05 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalDocRef', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 13:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000792
;

-- May 15, 2014 1:11:05 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 1:11:05 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT ADOrg_LBRNotaFiscalDocRef FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:11:22 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000793,'Y','N','N',0,'N',1,'N','N','N','Y','7b60728a-5355-435a-9574-ea05cee9e51e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_TIMESTAMP('2014-05-15 13:11:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:11:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000043,0,'LBR')
;

-- May 15, 2014 1:11:23 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 15, 2014 1:11:52 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000794,'N','N','N',0,'N',7,'N','N','N','Y','7e57d5dd-fa2d-4a47-b5f7-79494df55b41','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_TIMESTAMP('2014-05-15 13:11:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:11:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000043,0,'LBR')
;

-- May 15, 2014 1:11:53 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN Created TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 1:12:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000795,'N','N','N',0,'N',22,'N','N','N','Y','719e03e5-6323-434d-82c9-23a369a22412','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_TIMESTAMP('2014-05-15 13:12:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:12:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000043,0,'LBR')
;

-- May 15, 2014 1:12:06 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalDocRef', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 13:12:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000795
;

-- May 15, 2014 1:12:06 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN CreatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 1:12:06 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT CreatedBy_LBRNotaFiscalDocRef FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:12:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000796,'N','N','N',0,'N',7,'N','N','N','Y','4799acf2-c516-4271-b291-04eafdd73cb1','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_TIMESTAMP('2014-05-15 13:12:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:12:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000043,0,'LBR')
;

-- May 15, 2014 1:12:21 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN Updated TIMESTAMP DEFAULT NULL 
;

-- May 15, 2014 1:12:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000797,'N','N','N',0,'N',22,'N','N','N','Y','57e63c4b-6901-4479-921a-bda6684e05a9','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_TIMESTAMP('2014-05-15 13:12:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:12:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000043,0,'LBR')
;

-- May 15, 2014 1:12:38 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalDocRef', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 13:12:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000797
;

-- May 15, 2014 1:12:38 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN UpdatedBy NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 1:12:38 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT UpdatedBy_LBRNotaFiscalDocRef FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:12:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000798,'Y','N','N',0,'N',22,'N','N','N','Y','1c0f0bb4-869d-4c2e-a286-b4f6b81fc24d','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_TIMESTAMP('2014-05-15 13:12:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:12:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,19,1000043,0,'LBR')
;

-- May 15, 2014 1:12:59 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalDoc', FKConstraintType='C',Updated=TO_TIMESTAMP('2014-05-15 13:12:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000798
;

-- May 15, 2014 1:12:59 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- May 15, 2014 1:12:59 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalDoc FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:14:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000799,'N','N','N',0,'N',255,'N','N','N','Y','4aaf8193-0b75-4097-920e-f02748a9ea11','Y','LBR_NFeID','NFe ID','Y',TO_TIMESTAMP('2014-05-15 13:14:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:14:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000172,10,1000043,0,'LBR')
;

-- May 15, 2014 1:14:38 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFeID VARCHAR(255) DEFAULT NULL 
;

-- May 15, 2014 1:15:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000800,'N','N','N',0,'N',3,'N','N','N','Y','4764ca48-3181-4e94-ad7c-a70b40122789','Y','LBR_NFeSerie','NF Serie','Y',TO_TIMESTAMP('2014-05-15 13:15:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:15:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000174,10,1000043,0,'LBR')
;

-- May 15, 2014 1:15:34 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFeSerie VARCHAR(3) DEFAULT NULL 
;

-- May 15, 2014 1:16:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000801,'N','N','N',0,'N',30,'Y','N','N','Y','263b54a1-6555-4728-8e6a-1f6b62c00628','Y','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_TIMESTAMP('2014-05-15 13:16:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:16:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000043,0,'LBR')
;

-- May 15, 2014 1:16:29 PM BRT
--ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN DocumentNo VARCHAR(30) DEFAULT NULL 
--;

-- May 15, 2014 1:17:37 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFModel',1000224,'NF Model','Referes to old printed NF','NF Model','58ee0b82-d244-4c64-890f-dab404cd456b',TO_TIMESTAMP('2014-05-15 13:17:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:17:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:26:45 PM BRT
UPDATE AD_Reference SET Name='LBR_NFeModel',Updated=TO_TIMESTAMP('2014-05-15 13:26:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000040
;

-- May 15, 2014 1:27:46 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000046,'LBR_NFModel','LBR','5ac60476-215f-41dc-99cd-024e5e60d7ea','N','L',0,0,TO_TIMESTAMP('2014-05-15 13:27:46','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 13:27:46','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 1:28:36 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000167,1000046,'62cbcaf2-9700-41f0-9d08-39fce9903dde','01',TO_TIMESTAMP('2014-05-15 13:28:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:28:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'01')
;

-- May 15, 2014 1:29:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000802,'N','N','N',0,'N',2,'N','N','N','Y','4c4a48c0-667b-4f2f-a399-9d642e5509f8','Y','LBR_NFModel','Referes to old printed NF','NF Model','Y',TO_TIMESTAMP('2014-05-15 13:29:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:29:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000224,17,1000046,1000043,0,'LBR')
;

-- May 15, 2014 1:29:04 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFModel VARCHAR(2) DEFAULT NULL 
;

-- May 15, 2014 1:29:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000803,'N','N','N',0,'N',10,'N','N','N','Y','00e3d8f4-a99b-4058-871b-b02175b992f4','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_TIMESTAMP('2014-05-15 13:29:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:29:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000043,1000001,0,'LBR')
;

-- May 15, 2014 1:29:52 PM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscalDocRef', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-05-15 13:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000803
;

-- May 15, 2014 1:29:52 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- May 15, 2014 1:29:52 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT CRegion_LBRNotaFiscalDocRef FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 15, 2014 1:31:23 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFYearMonth',1000225,'NF Year/Month','NF Year/Month','c094bace-0fd2-436c-a08a-ae26018b5475',TO_TIMESTAMP('2014-05-15 13:31:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:31:23','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:32:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000804,'N','N','N',0,'N',5,'N','N','N','Y','06607078-9065-4646-83e5-c5797773313b','Y','LBR_NFYearMonth','NF Year/Month','Y',TO_TIMESTAMP('2014-05-15 13:32:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:32:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000225,10,1000043,0,'LBR')
;

-- May 15, 2014 1:32:26 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFYearMonth VARCHAR(5) DEFAULT NULL 
;

-- May 15, 2014 1:32:54 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000805,'N','N','N',0,'N',14,'N','N','@LBR_BPTypeBRIsValid=''Y''','N','Y','a13e7367-2bc0-4206-8dbd-16735496bda2','Y','LBR_CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil','CNPJ','Y',TO_TIMESTAMP('2014-05-15 13:32:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:32:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000004,10,1000043,0,'LBR')
;

-- May 15, 2014 1:32:55 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_CNPJ VARCHAR(14) DEFAULT NULL 
;

-- May 15, 2014 1:34:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000806,'N','N','N',0,'N',2,'N','N',NULL,'N','Y','a2cb2734-8083-442e-9330-18d4c4a8c23c','Y','LBR_BPTypeBR','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)','Used to identify if the Business Partner is a Legal Entity or an Individual','Brazilian BP Type','Y',TO_TIMESTAMP('2014-05-15 13:34:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:34:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000003,17,1000001,1000043,0,'LBR')
;

-- May 15, 2014 1:34:25 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_BPTypeBR VARCHAR(2) DEFAULT NULL 
;

-- May 15, 2014 1:46:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000807,'N','N','N',0,'N',11,'N','N',NULL,'N','Y','a4b46e13-8a04-493c-a6d4-ba353ea11c26','Y','LBR_CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil','CPF','Y',TO_TIMESTAMP('2014-05-15 13:46:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:46:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000005,10,1000043,0,'LBR')
;

-- May 15, 2014 1:46:05 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_CPF VARCHAR(11) DEFAULT NULL 
;

-- May 15, 2014 1:46:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000808,'N','N','N',0,'N',30,'N','N','N','Y','17eed384-33b5-460b-ae5a-3bde4c8be137','Y','LBR_IE','Used to identify the IE (State Tax ID)','Used to identify the IE (State Tax ID)','IE','Y',TO_TIMESTAMP('2014-05-15 13:46:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:46:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000009,10,1000043,0,'LBR')
;

-- May 15, 2014 1:46:36 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_IE VARCHAR(30) DEFAULT NULL 
;

-- May 15, 2014 1:47:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000809,'Y','N','N',0,'N',1,'N','N','N','Y','0c180b26-f2e9-417a-950a-afaadc7c2e98','Y','LBR_IsIEExempt','Business Partner is IE Exempt','''N''','Business Partner is IE Exempt','IE Exempt','Y',TO_TIMESTAMP('2014-05-15 13:47:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:47:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000010,20,1000043,0,'LBR')
;

-- May 15, 2014 1:47:07 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_IsIEExempt CHAR(1) DEFAULT 'N' CHECK (LBR_IsIEExempt IN ('Y','N')) NOT NULL
;

-- May 15, 2014 1:48:28 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFProdModel',1000226,'NF Farmer Model','NF Farmer Model','edf9797f-bc4d-4294-a4bc-2dd240f20e64',TO_TIMESTAMP('2014-05-15 13:48:28','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:48:28','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:48:48 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000047,'LBR_NFProdModel','LBR','41b06a4e-80b7-4abc-940f-2701c8e676cf','N','L',0,0,TO_TIMESTAMP('2014-05-15 13:48:48','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 13:48:48','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 1:49:29 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000168,1000047,'43b9385e-92a2-47ed-8c6e-95f0b5b92593','04',TO_TIMESTAMP('2014-05-15 13:49:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:49:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Farmer NF')
;

-- May 15, 2014 1:49:54 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000169,1000047,'617e187c-f115-47df-b840-46c098779ba8','01',TO_TIMESTAMP('2014-05-15 13:49:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:49:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF')
;

-- May 15, 2014 1:50:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000810,'N','N','N',0,'N',2,'N','N','N','Y','87875ca4-bb2b-4312-8d1a-75b473337aa5','Y','LBR_NFProdModel','NF Farmer Model','Y',TO_TIMESTAMP('2014-05-15 13:50:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:50:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000226,17,1000047,1000043,0,'LBR')
;

-- May 15, 2014 1:50:55 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFProdModel VARCHAR(2) DEFAULT NULL 
;

-- May 15, 2014 1:51:52 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ECFNo',1000227,'ECF Number','ECF No.','e1ef18c3-c9b2-4073-8581-36c982c928d1',TO_TIMESTAMP('2014-05-15 13:51:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:51:52','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:52:20 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_COONo',1000228,'COO Number','COO No.','35c910fd-0e27-4ae0-8ea1-9f3e94c679c9',TO_TIMESTAMP('2014-05-15 13:52:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:52:19','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:52:47 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ECFModel',1000229,'ECF Model','ECF Model','d8fef761-c1b2-4d65-b2d0-c9ad55eb03e5',TO_TIMESTAMP('2014-05-15 13:52:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 13:52:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 1:54:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000811,'N','N','N',0,'N',3,'N','N','N','Y','02c28d9a-93a7-45bb-b6f6-5bac46643c7c','Y','LBR_ECFNo','ECF Number','Y',TO_TIMESTAMP('2014-05-15 13:54:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:54:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000227,10,1000043,0,'LBR')
;

-- May 15, 2014 1:54:39 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_ECFNo VARCHAR(3) DEFAULT NULL 
;

-- May 15, 2014 1:55:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000812,'N','N','N',0,'N',6,'N','N','N','Y','b7eecf9f-ee51-44cc-afa1-7f285d3d1c7e','Y','LBR_COONo','COO Number','Y',TO_TIMESTAMP('2014-05-15 13:55:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:55:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000228,10,1000043,0,'LBR')
;

-- May 15, 2014 1:55:36 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_COONo VARCHAR(6) DEFAULT NULL 
;

-- May 15, 2014 1:56:53 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000048,'LBR_ECFModel','LBR','90da461d-148a-4c85-875f-5c02ed3221eb','N','L',0,0,TO_TIMESTAMP('2014-05-15 13:56:53','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 13:56:53','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 1:58:01 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000170,1000048,'58a4234a-ac2c-45c3-a12d-c854339452af','2B',TO_TIMESTAMP('2014-05-15 13:58:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:58:01','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2B - Emitido por registradora (nao ECF)')
;

-- May 15, 2014 1:58:28 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000171,1000048,'9a58599c-00e9-43e9-a656-f551f2b02297','2C',TO_TIMESTAMP('2014-05-15 13:58:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:58:28','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2C - Cupom PDV')
;

-- May 15, 2014 1:58:51 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000172,1000048,'3a1f344b-aa93-4e12-a087-3cf4acb30a92','2D',TO_TIMESTAMP('2014-05-15 13:58:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 13:58:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'2D - Emitido por ECF')
;

-- May 15, 2014 1:59:17 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000813,'N','N','N',0,'N',2,'N','N','N','Y','f69f21f4-0de1-48cb-a084-41cc5b780c51','Y','LBR_ECFModel','ECF Model','Y',TO_TIMESTAMP('2014-05-15 13:59:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 13:59:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000229,17,1000048,1000043,0,'LBR')
;

-- May 15, 2014 1:59:22 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_ECFModel VARCHAR(2) DEFAULT NULL 
;

-- May 15, 2014 2:00:52 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,110,'The Ref. Doc Tab displays fields for entering information about referenced docs','N','N','N','N','N','Y','N',1,'8a0745a0-e86e-43d1-971c-fc7e6f4bdbd9','LBR','Ref. Doc','Ref. Doc',1000085,'@Processed@=Y',0,TO_TIMESTAMP('2014-05-15 14:00:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000798,1000043,'B')
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,22,'N','N',10,'Y',1001481,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','e9ac6ccc-efd4-4561-83ea-848b2d5f80b7','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000791)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,22,'N','N',20,'Y',1001482,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','3389ce22-70f1-4b45-9c0e-4c69a83354c9','N','Y','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000792)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,22,'N','N',30,'Y',1001483,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','392d9c17-ea33-4f79-a774-10f5fbc9cd55','N','N',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000789)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,36,'N','N',40,'Y',1001484,'N','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc','dba12080-d563-4ed8-81c3-0c228d2d5a3c','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000790)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,22,'N','N',50,'Y',1001485,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','04f6b308-c673-4493-a42f-0ada9415af58','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000798)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,255,'N','N',60,'Y',1001486,'N','LBR','NFe ID','284e9723-c459-467a-a2c9-c20f2292e368','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000799)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,3,'N','N',70,'Y',1001487,'N','LBR','NF Serie','4ff77cd1-cb8c-4164-af52-25205330013e','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000800)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,30,'N','N',80,'Y',1001488,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','ca36b1a2-e12d-4b55-b3ff-371164d2cfd2','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000801)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,2,'N','N',90,'Y',1001489,'N','LBR','Referes to old printed NF','NF Model','40cb174b-e386-40c4-b2b6-0b3815f7a096','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000802)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,10,'N','N',100,'Y',1001490,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','f7e7c7ba-a9a8-4c3d-92a3-6eda32482eb6','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000803)
;

-- May 15, 2014 2:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,5,'N','N',110,'Y',1001491,'N','LBR','NF Year/Month','4018e0be-abd7-4995-9a99-3c184efb0973','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000804)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,14,'N','N',120,'Y',1001492,'N','Used to identify Legal Entities in Brazil','LBR','Used to identify Legal Entities in Brazil','CNPJ','85ce80cd-38de-4e2f-8895-8742de104020','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000805)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,2,'N','N',130,'Y',1001493,'N','Used to identify if the Business Partner is a Legal Entity or an Individual','LBR','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)','Brazilian BP Type','736fd043-25b6-4c0e-a6b2-d185ab7ad1d3','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000806)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,11,'N','N',140,'Y',1001494,'N','Used to identify individuals in Brazil','LBR','Used to identify individuals in Brazil','CPF','8363e58c-7fcb-49c3-8992-9de0443101b3','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000807)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,30,'N','N',150,'Y',1001495,'N','Used to identify the IE (State Tax ID)','LBR','Used to identify the IE (State Tax ID)','IE','2919308c-9e4e-4124-b9ba-6353d6f9841c','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000808)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,1,'N','N',160,'Y',1001496,'N','Business Partner is IE Exempt','LBR','Business Partner is IE Exempt','IE Exempt','2266f376-a8e3-4860-b383-2fd6d2636d17','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000809)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,2,'N','N',170,'Y',1001497,'N','LBR','NF Farmer Model','ffd01991-c1c0-4266-8a52-33f70e0fbbf7','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000810)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,3,'N','N',180,'Y',1001498,'N','LBR','ECF Number','aefc8922-66eb-47d8-b81c-eefc4d89e251','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000811)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,6,'N','N',190,'Y',1001499,'N','LBR','COO Number','c57a764f-96b5-444a-80bd-32534de4a774','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000812)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,2,'N','N',200,'Y',1001500,'N','LBR','ECF Model','b75e45a4-6665-47d8-9c72-05ffb3232f55','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000813)
;

-- May 15, 2014 2:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,1,'N','N',210,'Y',1001501,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','16e87dd0-2d50-47c9-8397-5be3b994f5cd','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000793)
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001485
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001484
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001483
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001487
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001489
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001490
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001493
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001495
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001497
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001498
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001499
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001500
;

-- May 15, 2014 2:01:35 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001501
;

-- May 15, 2014 2:03:17 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeDocRefType',1000230,'NFe Doc Ref. Type','NFe Referenced Document Type','NFe Doc Ref. Type','0706b532-5c4d-4d9b-b744-203790ddbb55',TO_TIMESTAMP('2014-05-15 14:03:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-15 14:03:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 15, 2014 2:03:32 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000049,'LBR_NFeDocRefType','LBR','a7b01e3d-6d2f-443a-8e88-63b40bbd94a9','N','L',0,0,TO_TIMESTAMP('2014-05-15 14:03:32','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-05-15 14:03:32','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 15, 2014 2:03:54 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000173,1000049,'d894c0f4-509a-461c-a463-b47165cfb07c','0',TO_TIMESTAMP('2014-05-15 14:03:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:03:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF-e')
;

-- May 15, 2014 2:04:04 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000174,1000049,'0758bf32-cfb3-4312-92f4-9928d1daee29','1',TO_TIMESTAMP('2014-05-15 14:04:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:04:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'CT-e')
;

-- May 15, 2014 2:04:16 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000175,1000049,'01b56fe5-d725-4a88-b791-6d41396ad737','2',TO_TIMESTAMP('2014-05-15 14:04:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:04:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Nota Fiscal')
;

-- May 15, 2014 2:04:33 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000176,1000049,'29c51bde-8b7d-49a5-8473-04d6f50b6633','3',TO_TIMESTAMP('2014-05-15 14:04:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:04:33','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Nota Fiscal de Produtor')
;

-- May 15, 2014 2:04:45 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000177,1000049,'e752985c-b606-471b-86de-a539b7cafd1d','4',TO_TIMESTAMP('2014-05-15 14:04:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:04:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Cupom Fiscal')
;

-- May 15, 2014 2:05:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000814,'Y','N','N',0,'N',1,'N','N','N','Y','681ad439-1d69-464d-a63b-8aa81718e8d8','Y','LBR_NFeDocRefType','NFe Referenced Document Type','NFe Doc Ref. Type','Y',TO_TIMESTAMP('2014-05-15 14:05:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-15 14:05:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000230,17,1000049,1000043,0,'LBR')
;

-- May 15, 2014 2:05:28 PM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NFeDocRefType CHAR(1) NOT NULL
;

-- May 15, 2014 2:05:34 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,1,'N','N',190,'Y',1001502,'N','LBR','NFe Referenced Document Type','NFe Doc Ref. Type','8ced44ea-3a5b-4bff-a401-d9e76f698bb3','N','Y',0,0,TO_TIMESTAMP('2014-05-15 14:05:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-15 14:05:34','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000814)
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001502
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001487
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001489
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001497
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001500
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001490
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001493
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001495
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001498
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001499
;

-- May 15, 2014 2:07:45 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001501
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001501
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001484
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001485
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001493
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001499
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001500
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001498
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001495
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001502
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001497
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001489
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001487
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001482
;

-- May 15, 2014 2:08:04 PM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001490
;

-- May 15, 2014 2:08:58 PM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-15 14:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001482
;

-- May 15, 2014 2:10:55 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-15 14:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:11:16 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-15 14:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:12:26 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-15 14:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:13:25 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_TIMESTAMP('2014-05-15 14:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:13:47 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2014-05-15 14:13:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001499
;

-- May 15, 2014 2:13:58 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001501
;

-- May 15, 2014 2:19:08 PM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-15 14:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:32:10 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=0 | @LBR_NFeDocRefType@=1',Updated=TO_TIMESTAMP('2014-05-15 14:32:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:33:14 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2 | @LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001487
;

-- May 15, 2014 2:33:26 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2 | @LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:33:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:33:36 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2',Updated=TO_TIMESTAMP('2014-05-15 14:33:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001489
;

-- May 15, 2014 2:34:01 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:34:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001497
;

-- May 15, 2014 2:34:12 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=4',Updated=TO_TIMESTAMP('2014-05-15 14:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001500
;

-- May 15, 2014 2:34:27 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2 | @LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001490
;

-- May 15, 2014 2:34:38 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2 | @LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:34:54 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001493
;

-- May 15, 2014 2:35:03 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2',Updated=TO_TIMESTAMP('2014-05-15 14:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:35:13 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:35:23 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:35:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001495
;

-- May 15, 2014 2:35:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-15 14:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:35:40 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=4',Updated=TO_TIMESTAMP('2014-05-15 14:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001498
;

-- May 15, 2014 2:35:53 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=4',Updated=TO_TIMESTAMP('2014-05-15 14:35:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001499
;

-- May 15, 2014 2:39:12 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3 & @LBR_BPTypeBR@=PJ | @LBR_NFeDocRefType@=2',Updated=TO_TIMESTAMP('2014-05-15 14:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:47:11 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=3 & @LBR_BPTypeBR@=PF',Updated=TO_TIMESTAMP('2014-05-15 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:48:24 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001502
;

-- May 15, 2014 2:48:27 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001486
;

-- May 15, 2014 2:48:30 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001487
;

-- May 15, 2014 2:48:33 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001488
;

-- May 15, 2014 2:48:35 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001489
;

-- May 15, 2014 2:48:37 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001497
;

-- May 15, 2014 2:48:40 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001500
;

-- May 15, 2014 2:48:42 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001490
;

-- May 15, 2014 2:48:45 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001491
;

-- May 15, 2014 2:48:48 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001493
;

-- May 15, 2014 2:48:50 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001492
;

-- May 15, 2014 2:48:53 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001494
;

-- May 15, 2014 2:48:55 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001495
;

-- May 15, 2014 2:48:58 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001496
;

-- May 15, 2014 2:49:01 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:49:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001498
;

-- May 15, 2014 2:49:05 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-15 14:49:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001499
;

-- May 15, 2014 5:42:02 PM BRT
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-05-15 17:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000803
;

-- May 16, 2014 8:51:03 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_Document',1000231,'Document','Document','3e145f05-79f7-4bab-9f5a-d2068fc01276',TO_TIMESTAMP('2014-05-16 08:51:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-05-16 08:51:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 16, 2014 8:51:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000816,'N','N','N',0,'N',60,'N','N','N','Y','bc74b051-1f7e-44d8-a2c7-fb01fada6008','Y','LBR_Document','Document','Y',TO_TIMESTAMP('2014-05-16 08:51:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-16 08:51:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000231,10,1000039,0,'LBR')
;

-- May 16, 2014 8:51:31 AM BRT
ALTER TABLE LBR_NotaFiscalPay ADD COLUMN LBR_Document VARCHAR(60) DEFAULT NULL 
;

-- May 16, 2014 8:52:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000081,60,'N','N',70,'Y',1001503,'N','LBR','Document','49317b59-a892-413a-b610-e910f2214325','N','Y',0,0,TO_TIMESTAMP('2014-05-16 08:52:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-16 08:52:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000816)
;

-- May 16, 2014 8:52:23 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001448
;

-- May 16, 2014 8:52:23 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001503
;

-- May 16, 2014 8:52:44 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001448
;

-- May 16, 2014 8:52:44 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001503
;

-- May 16, 2014 8:53:33 AM BRT
UPDATE AD_Field SET ColumnSpan=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-16 08:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001503
;

-- May 16, 2014 8:54:00 AM BRT
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2014-05-16 08:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000745
;

-- May 16, 2014 8:54:58 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-16 08:54:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001503
;

-- May 16, 2014 9:02:02 AM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-16 09:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001503
;

-- May 16, 2014 9:05:46 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000817,'N','N','N',0,'N',60,'N','N','N','Y','a753d824-7f4b-4910-ac30-84e63b86e2af','Y','LBR_Document','Document','Y',TO_TIMESTAMP('2014-05-16 09:05:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-16 09:05:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000231,10,1000040,0,'LBR')
;

-- May 16, 2014 9:05:47 AM BRT
ALTER TABLE LBR_NotaFiscalPaySched ADD COLUMN LBR_Document VARCHAR(60) DEFAULT NULL 
;

-- May 16, 2014 9:06:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000082,60,'N','N',60,'Y',1001504,'N','LBR','Document','5bc47f45-f60a-4f12-b090-a3fb971c875a','N','Y',0,0,TO_TIMESTAMP('2014-05-16 09:06:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-16 09:06:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000817)
;

-- May 16, 2014 9:06:29 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001458
;

-- May 16, 2014 9:06:29 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001504
;

-- May 16, 2014 9:06:40 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001458
;

-- May 16, 2014 9:06:40 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001504
;

-- May 16, 2014 9:07:00 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-16 09:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001504
;

-- May 16, 2014 9:24:49 AM BRT
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2014-05-16 09:24:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000759
;

-- May 16, 2014 9:25:38 AM BRT
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2014-05-16 09:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000801
;

-- May 16, 2014 9:26:15 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000818,'N','N','N',0,'N',60,'N','N','N','Y','0de8e643-9708-49e6-bf8f-d8ee3934a718','Y','LBR_Document','Document','Y',TO_TIMESTAMP('2014-05-16 09:26:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-05-16 09:26:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000231,10,1000043,0,'LBR')
;

-- May 16, 2014 9:26:19 AM BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_Document VARCHAR(60) DEFAULT NULL 
;

-- May 16, 2014 9:27:12 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2014-05-16 09:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001504
;

-- May 16, 2014 9:28:43 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000085,60,'N','N',190,'Y',1001505,'N','LBR','Document','82fa4f55-3d4c-4a2a-950c-ff1dc274a72a','N','Y',0,0,TO_TIMESTAMP('2014-05-16 09:28:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-05-16 09:28:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000818)
;

-- May 16, 2014 9:29:03 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001488
;

-- May 16, 2014 9:29:03 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:29:17 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001488
;

-- May 16, 2014 9:29:17 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:29:29 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-05-16 09:29:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:29:39 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2014-05-16 09:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:30:02 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2014-05-16 09:30:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:35:03 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeDocRefType@=2 | @LBR_NFeDocRefType@=3',Updated=TO_TIMESTAMP('2014-05-16 09:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001505
;

-- May 16, 2014 9:53:02 AM BRT
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_TIMESTAMP('2014-05-16 09:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000036
;

-- May 16, 2014 9:53:12 AM BRT
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_TIMESTAMP('2014-05-16 09:53:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000039
;

-- May 16, 2014 2:52:38 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000622
;

-- May 16, 2014 2:53:02 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000623
;

-- May 16, 2014 2:53:30 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:53:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000636
;

-- May 16, 2014 2:53:39 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:53:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000637
;

-- May 16, 2014 2:54:05 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000624
;

-- May 16, 2014 2:54:19 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:54:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000625
;

-- May 16, 2014 2:54:39 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:54:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000628
;

-- May 16, 2014 2:54:45 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-16 14:54:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000629
;

-- May 16, 2014 3:14:42 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeNatOp','VARCHAR(255)',null,null)
;

-- May 16, 2014 3:14:42 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeNatOp',null,'NOT NULL',null)
;

-- May 16, 2014 3:15:07 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFE_DestinationType','CHAR(1)',null,null)
;

-- May 16, 2014 3:15:07 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFE_DestinationType',null,'NOT NULL',null)
;

-- May 16, 2014 3:15:33 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeIndFinal','CHAR(1)',null,null)
;

-- May 16, 2014 3:15:33 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeIndFinal',null,'NOT NULL',null)
;

-- May 16, 2014 3:15:40 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeIndPres','CHAR(1)',null,null)
;

-- May 16, 2014 3:15:40 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_NFeIndPres',null,'NOT NULL',null)
;

-- May 16, 2014 3:16:00 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_City_ID','NUMERIC(10)',null,null)
;

-- May 16, 2014 3:16:00 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_City_ID',null,'NOT NULL',null)
;

-- May 16, 2014 3:16:00 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT ccity_lbrnotafiscal
;

-- May 16, 2014 3:16:00 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CCity_LBRNotaFiscal FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 16, 2014 3:16:39 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_Region_ID','NUMERIC(10)',null,null)
;

-- May 16, 2014 3:16:39 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_Region_ID',null,'NOT NULL',null)
;

-- May 16, 2014 3:16:39 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT cregion_lbrnotafiscal
;

-- May 16, 2014 3:16:39 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CRegion_LBRNotaFiscal FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 16, 2014 3:17:39 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_BPartner_ID','NUMERIC(10)',null,null)
;

-- May 16, 2014 3:17:39 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_BPartner_ID',null,'NOT NULL',null)
;

-- May 16, 2014 3:17:39 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT cbpartner_lbrnotafiscal
;

-- May 16, 2014 3:17:39 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CBPartner_LBRNotaFiscal FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 16, 2014 3:18:07 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_BPartner_Location_ID','NUMERIC(10)',null,null)
;

-- May 16, 2014 3:18:07 PM BRT
INSERT INTO t_alter_column values('lbr_notafiscal','C_BPartner_Location_ID',null,'NOT NULL',null)
;

-- May 16, 2014 3:18:07 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT cbpartnerlocation_lbrnotafisca
;

-- May 16, 2014 3:18:07 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CBPartnerLocation_LBRNotaFisca FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT lbr_register_migration_script('201405131333.sql') FROM dual
;

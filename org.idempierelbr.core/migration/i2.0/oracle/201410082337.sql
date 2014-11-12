SET SQLBLANKLINES ON
SET DEFINE OFF

-- Elements to bank collection integration

-- Oct 8, 2014 10:43:42 PM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Fmt_NumberInBank',1000384,'This field will be filled with the "Number In Bank" formatted as it needs to be printed on the Collection Slip','Number In Bank Formatted','Number In Bank Formatted','Number In Bank Formatted','88c10982-0a33-4447-b5cc-f4a0d2b96365',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:43:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:43:42','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:46:20 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Fmt_AgencyClient',1000385,'This field will be filled with the "Agency and Client" formatted as it needs to be printed on the Collection Slip','Agency and Client Formatted','Agency and Client Formatted','Agency and Client Formatted','7239d92e-d262-4c85-8523-8394ee2cf444',0,0,0,'Y',0,'U',TO_DATE('2014-10-08 22:46:20','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:46:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:46:37 PM BRT
UPDATE AD_Element SET EntityType='LBR',Updated=TO_DATE('2014-10-08 22:46:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000385
;

-- Oct 8, 2014 10:47:47 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Fmt_Billfold',1000386,'This field will be filled with the "Billfold" formatted as it needs to be printed on the Collection Slip','Billfold Formatted','Billfold Formatted','Billfold Formatted','d943e309-4632-4b20-afdc-0813df5f9658',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:47:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:47:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:48:53 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Fmt_Doctype',1000387,'This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip','Document Type Formatted','Document Type Formatted','Document Type Formatted','4f4e60a0-ec89-49df-af47-3bc283d7cfa5',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:48:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:48:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_Element SET ColumnName='LBR_BankUse', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip', Name='Bank Use', Description='Bank Use', PrintName='Bank Use',Updated=TO_DATE('2014-10-08 22:50:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000387
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_Column SET ColumnName='LBR_BankUse', Name='Bank Use', Description='Bank Use', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BankUse', Name='Bank Use', Description='Bank Use', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip', AD_Element_ID=1000387 WHERE UPPER(ColumnName)='LBR_BANKUSE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BankUse', Name='Bank Use', Description='Bank Use', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_BankUse', Name='Bank Use', Description='Bank Use', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_Field SET Name='Bank Use', Description='Bank Use', Help='This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000387) AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:50:17 PM BRT
UPDATE AD_PrintFormatItem SET PrintName='Bank Use', Name='Bank Use' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000387)
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_Element SET ColumnName='LBR_Fmt_Doctype', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip', Name='Document Type Formatted', Description='Document Type Formatted', PrintName='Document Type Formatted',Updated=TO_DATE('2014-10-08 22:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000387
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_Column SET ColumnName='LBR_Fmt_Doctype', Name='Document Type Formatted', Description='Document Type Formatted', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Fmt_Doctype', Name='Document Type Formatted', Description='Document Type Formatted', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip', AD_Element_ID=1000387 WHERE UPPER(ColumnName)='LBR_FMT_DOCTYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Fmt_Doctype', Name='Document Type Formatted', Description='Document Type Formatted', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Fmt_Doctype', Name='Document Type Formatted', Description='Document Type Formatted', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip' WHERE AD_Element_ID=1000387 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_Field SET Name='Document Type Formatted', Description='Document Type Formatted', Help='This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000387) AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:52:16 PM BRT
UPDATE AD_PrintFormatItem SET PrintName='Document Type Formatted', Name='Document Type Formatted' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000387)
;

-- Oct 8, 2014 10:52:44 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankUse',1000388,'This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip','Bank Use','Bank Use','Bank Use','e9ba3970-211f-40d7-bcb1-974dd6c4b771',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:52:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:52:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:53:21 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_Barcode',1000389,'This field will be filled with the barcode value to be printed on the Collection Slip','Barcode','Barcode','Barcode','9eb63526-2468-407d-8205-2c6a2c2ceac4',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:53:21','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:53:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:54:06 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_TypeableLine',1000390,'This field will be filled with the typeable line to be printed on the Collection Slip','Typeable Line','Typeable Line','Typeable Line','32bdd753-ded2-4eab-9258-0b08fab10e3d',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:54:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:54:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:55:28 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_RoutingCheckDigit',1000391,'This field can be filled with the check digit for the bank number, to be printed on the Collection Slip','Routing Check Digit','Routing Check Digit','Routing Check Digit','444b1067-f198-42cb-8594-7a7e553a0d00',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:55:28','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:55:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:58:10 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BoletoGenerateAndPrint',1000392,'This buttom print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.','Generate and Print Boletos','Generate and Print Boletos','Generate and Print Boletos','d29d0d53-a4b8-4f10-a698-995ee37793e1',0,0,0,'Y',0,'LBR',TO_DATE('2014-10-08 22:58:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 22:58:10','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_Element SET Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.',Updated=TO_DATE('2014-10-08 22:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=1000392
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_Column SET ColumnName='LBR_BoletoGenerateAndPrint', Name='Generate and Print Boletos', Description='Generate and Print Boletos', Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.' WHERE AD_Element_ID=1000392
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BoletoGenerateAndPrint', Name='Generate and Print Boletos', Description='Generate and Print Boletos', Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.', AD_Element_ID=1000392 WHERE UPPER(ColumnName)='LBR_GENERATEANDPRINTBOLETO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BoletoGenerateAndPrint', Name='Generate and Print Boletos', Description='Generate and Print Boletos', Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.' WHERE AD_Element_ID=1000392 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_BoletoGenerateAndPrint', Name='Generate and Print Boletos', Description='Generate and Print Boletos', Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.' WHERE AD_Element_ID=1000392 AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 10:58:36 PM BRT
UPDATE AD_Field SET Name='Generate and Print Boletos', Description='Generate and Print Boletos', Help='This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000392) AND IsCentrallyMaintained='Y'
;

-- Oct 8, 2014 11:00:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001255,'N','N','N',0,'N',30,'N','N','N','Y','fea382dc-6b91-4132-8aa4-0c4da9b1b721','Y','LBR_Fmt_NumberInBank','Number In Bank Formatted','This field will be filled with the "Number In Bank" formatted as it needs to be printed on the Collection Slip','Number In Bank Formatted','Y',TO_DATE('2014-10-08 23:00:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:00:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N',1000384,10,1000053)
;

-- Oct 8, 2014 11:00:22 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001256,'N','N','N',0,'N',30,'N','N','N','Y','7a373a3f-4e9e-4418-b181-9c236fb1843c','Y','LBR_Fmt_AgencyClient','Agency and Client Formatted','This field will be filled with the "Agency and Client" formatted as it needs to be printed on the Collection Slip','Agency and Client Formatted','Y',TO_DATE('2014-10-08 23:00:22','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:00:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000385,10,1000053)
;

-- Oct 8, 2014 11:00:44 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Fmt_NumberInBank VARCHAR2(30) DEFAULT NULL 
;

-- Oct 8, 2014 11:00:55 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Fmt_AgencyClient VARCHAR2(30) DEFAULT NULL 
;

-- Oct 8, 2014 11:01:28 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001257,'N','N','N',0,'N',15,'N','N','N','Y','c235cf50-af90-43d4-96d6-5ebca8b582a3','Y','LBR_Fmt_Billfold','Billfold Formatted','This field will be filled with the "Billfold" formatted as it needs to be printed on the Collection Slip','Billfold Formatted','Y',TO_DATE('2014-10-08 23:01:28','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:01:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000386,10,1000053)
;

-- Oct 8, 2014 11:01:33 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Fmt_Billfold VARCHAR2(15) DEFAULT NULL 
;

-- Oct 8, 2014 11:01:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001258,'N','N','N',0,'N',15,'N','N','N','Y','96722c18-54b3-4e6f-b1ce-945a0d981832','Y','LBR_Fmt_Doctype','Document Type Formatted','This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip','Document Type Formatted','Y',TO_DATE('2014-10-08 23:01:53','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:01:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000387,10,1000053)
;

-- Oct 8, 2014 11:02:05 PM BRT
UPDATE AD_Column SET FieldLength=20,Updated=TO_DATE('2014-10-08 23:02:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001258
;

-- Oct 8, 2014 11:02:11 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Fmt_Doctype VARCHAR2(20) DEFAULT NULL 
;

-- Oct 8, 2014 11:03:09 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001259,'N','N','N',0,'N',15,'N','N','N','Y','efe08569-9924-4846-b73b-987e6200503a','Y','LBR_BankUse','Bank Use','This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip','Bank Use','Y',TO_DATE('2014-10-08 23:03:09','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:03:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000388,10,1000053)
;

-- Oct 8, 2014 11:03:14 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_BankUse VARCHAR2(15) DEFAULT NULL 
;

-- Oct 8, 2014 11:03:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001260,'N','N','N',0,'N',44,'N','N','N','Y','7e18076f-319d-400a-ab29-ba8bdb52800f','Y','LBR_Barcode','Barcode','This field will be filled with the barcode value to be printed on the Collection Slip','Barcode','Y',TO_DATE('2014-10-08 23:03:34','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:03:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000389,10,1000053)
;

-- Oct 8, 2014 11:03:40 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_Barcode VARCHAR2(44) DEFAULT NULL 
;

-- Oct 8, 2014 11:04:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001261,'N','N','N',0,'N',54,'N','N','N','Y','ff56cf99-dc08-447c-9cda-5ff79580861b','Y','LBR_TypeableLine','Typeable Line','This field will be filled with the typeable line to be printed on the Collection Slip','Typeable Line','Y',TO_DATE('2014-10-08 23:04:03','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:04:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N','N',1000390,10,1000053)
;

-- Oct 8, 2014 11:04:20 PM BRT
ALTER TABLE LBR_Boleto ADD LBR_TypeableLine VARCHAR2(54) DEFAULT NULL 
;

-- Oct 8, 2014 11:05:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001262,'N','N','N',0,'N',10,'N','N','N','Y','471fd2d3-87e2-4d7e-bd54-29f19a8f103b','N','Logo_ID','Logo','Y',TO_DATE('2014-10-08 23:05:50','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:05:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N',53909,32,296)
;

-- Oct 8, 2014 11:05:55 PM BRT
UPDATE AD_Column SET FKConstraintName='Logo_CBank', FKConstraintType='N',Updated=TO_DATE('2014-10-08 23:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001262
;

-- Oct 8, 2014 11:05:55 PM BRT
ALTER TABLE C_Bank ADD Logo_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 8, 2014 11:05:56 PM BRT
ALTER TABLE C_Bank ADD CONSTRAINT Logo_CBank FOREIGN KEY (Logo_ID) REFERENCES ad_image(ad_image_id) DEFERRABLE INITIALLY DEFERRED
;

-- Oct 8, 2014 11:06:50 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001263,'N','N','N',0,'N',1,'N','N','N','Y','f8d75358-c307-4d42-a970-2b4c6d1f1cac','Y','LBR_RoutingCheckDigit','Routing Check Digit','This field can be filled with the check digit for the bank number, to be printed on the Collection Slip','Routing Check Digit','Y',TO_DATE('2014-10-08 23:06:50','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:06:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N','N',1000391,10,296)
;

-- Oct 8, 2014 11:06:56 PM BRT
ALTER TABLE C_Bank ADD LBR_RoutingCheckDigit VARCHAR2(1) DEFAULT NULL 
;

-- Oct 8, 2014 11:07:27 PM BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-10-08 23:07:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001262
;

-- Oct 8, 2014 11:18:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,Created) VALUES ('N',227,1,'Y','N',85,'Y',1002047,'N','This field can be filled with the check digit for the bank number, to be printed on the Collection Slip','Routing Check Digit','Routing Check Digit','b908d65e-604d-47e2-aa8b-6537b6e67936','Y','N',0,0,0,TO_DATE('2014-10-08 23:18:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',85,4,'N',0,1,1,'N','N',1001263,'LBR',TO_DATE('2014-10-08 23:18:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 11:18:47 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,Created) VALUES (0,'N',227,0,'N','N',100,'Y',1002048,'N','Logo','71829793-dfe6-4925-8677-9983e140c315','Y','N',0,0,0,TO_DATE('2014-10-08 23:18:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,1,1,'N','N',1001262,'LBR',TO_DATE('2014-10-08 23:18:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 11:20:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (0,'N',0,1001264,'N','N','N',0,'N',1,'N','N','N','Y','a5943bd5-47d8-4061-a3e4-f97c8a6419b4','Y','LBR_BoletoGenerateAndPrint','Generate and Print Boletos','This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.','Generate and Print Boletos','Y',TO_DATE('2014-10-08 23:20:44','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2014-10-08 23:20:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'LBR','N','N',1000392,28,318)
;

-- Oct 8, 2014 11:20:50 PM BRT
ALTER TABLE C_Invoice ADD LBR_BoletoGenerateAndPrint CHAR(1) DEFAULT NULL 
;

-- Oct 8, 2014 11:22:44 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,Created) VALUES (0,'N',263,0,'N','N',510,'Y',1002049,'N','This button print the collection slips for the invoice, it generates the collection documents if needed,  based on the pay schedule of the invoice.','Generate and Print Boletos','Generate and Print Boletos','d20b77a5-6816-4268-802b-ea27df4ff099','Y','N',0,0,0,TO_DATE('2014-10-08 23:22:44','YYYY-MM-DD HH24:MI:SS'),'Y','Y',500,1,'N',0,1,1,'N','N',1001264,'LBR',TO_DATE('2014-10-08 23:22:44','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 11:30:34 PM BRT
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000015,'N','N','98cad063-dd95-4b75-9b71-f5942f311723','7','N','N',0,0,'Y','LBR','Generate and Print Boletos from Invoice','Generate and Print Boletos',0,0,'Y',0,'org.idempierelbr.openitems.process.BoletoGenerateAndPrint','LBR_ProcBoletoGenerateAndPrint',0,TO_DATE('2014-10-08 23:30:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-10-08 23:30:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Oct 8, 2014 11:31:10 PM BRT
UPDATE AD_Column SET AD_Process_ID=1000015,Updated=TO_DATE('2014-10-08 23:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001264
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Oct 11, 2014 9:06:25 AM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' & @LBR_PayInstrument@=''BC''',Updated=TO_DATE('2014-10-11 09:06:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002049
;

-- Oct 11, 2014 9:06:48 AM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-10-11 09:06:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001264
;

-- Oct 11, 2014 9:07:29 AM BRT
UPDATE AD_Field SET IsDisplayedGrid='N',Updated=TO_DATE('2014-10-11 09:07:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002049
;

-- Oct 26, 2014 9:59:23 AM BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@LBR_BPTypeBR@=''PJ''',Updated=TO_DATE('2014-10-26 09:59:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000004
;

-- Oct 26, 2014 9:59:53 AM BRST
UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@LBR_BPTypeBR@=''PF''',Updated=TO_DATE('2014-10-26 09:59:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000005
;

-- Oct 26, 2014 10:02:56 AM BRST
UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@LBR_BPTypeBR@=''PJ'' & @LBR_IsIEExempt@!''Y''',Updated=TO_DATE('2014-10-26 10:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000009
;

-- Oct 26, 2014 10:05:02 AM BRST
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-10-26 10:05:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000013
;

-- Oct 26, 2014 10:05:13 AM BRST
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-10-26 10:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000017
;

-- dois scripts foram unidos em um só... evitando confusoes registrando ambos
SELECT lbr_register_migration_script('201410082337.sql') FROM dual
;

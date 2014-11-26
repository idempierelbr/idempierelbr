-- 25/11/2014 17h31min32s BRST
-- Generate PO From Nota Fiscal
INSERT INTO AD_Process (CopyFromProcess,Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N','This process allows to generate purchase order to completed Nota Fiscal.',800001,'N','N','8e5bb597-6af4-447b-9d89-8722093bd215','1','N','N',0,0,'Y','LBR','Generate and Process PO from Nota Fiscal','Create PO From Nota Fiscal',0,0,'Y',0,'org.idempierelbr.nfe.process.NotaFiscalCreatePO','LBR_NotaFiscalCreatePO',0,TO_TIMESTAMP('2014-11-25 17:31:31','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-11-25 17:31:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h33min12s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',196,800004,'6c216f84-e4ea-4f74-abdb-52c838538454','The Document Type determines document sequence and processing rules',800001,19,'Y','Document Type','C_DocType_ID','Document type or rules',0,'Y',10,'-1','Y',0,TO_TIMESTAMP('2014-11-25 17:33:11','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-11-25 17:33:11','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h33min58s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',459,800005,'5ec7306f-11e0-400c-acd7-d7ea1545835b','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',800001,19,'N','Warehouse','M_Warehouse_ID','Storage Warehouse and Service Point',22,'Y',20,'-1','Y',0,TO_TIMESTAMP('2014-11-25 17:33:57','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-11-25 17:33:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h34min2s BRST
UPDATE AD_Process_Para SET FieldLength=22,Updated=TO_TIMESTAMP('2014-11-25 17:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800004
;

-- 25/11/2014 17h34min5s BRST
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-11-25 17:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800005
;

-- 25/11/2014 17h34min51s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',449,800006,'a85bdcc5-e539-4da2-a463-2a9c50371cb3','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',800001,19,'Y','Price List','M_PriceList_ID','Unique identifier of a Price List',0,'Y',30,'-1','Y',0,TO_TIMESTAMP('2014-11-25 17:34:50','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-11-25 17:34:50','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h36min25s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1063,800007,'c2b733ec-7d54-4822-97b8-e04be92aaccd','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',800001,30,200025,'Y','Sales Representative','SalesRep_ID','Sales Representative or Company Agent',22,'Y',40,'-1','Y',0,TO_TIMESTAMP('2014-11-25 17:36:24','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,110,'LBR',TO_TIMESTAMP('2014-11-25 17:36:24','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h36min31s BRST
UPDATE AD_Process_Para SET FieldLength=22,Updated=TO_TIMESTAMP('2014-11-25 17:36:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800006
;

-- 25/11/2014 17h37min19s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',204,800008,'45f02264-6778-4ade-b50d-bc77ff21f115','Payment Terms identify the method and timing of payment.',800001,19,'Y','Payment Term','C_PaymentTerm_ID','The terms of Payment (timing, discount)',22,'Y',50,'-1','Y',0,TO_TIMESTAMP('2014-11-25 17:37:18','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-11-25 17:37:18','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h39min45s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',287,800009,'d8dc1315-039c-409f-adee-097b7b117f13','You find the current status in the Document Status field. The options are listed in a popup',800001,17,219,'N','Document Action','DocAction','The targeted status of the document',0,'Y',60,'Y',0,TO_TIMESTAMP('2014-11-25 17:39:44','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,135,'LBR',TO_TIMESTAMP('2014-11-25 17:39:44','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 17h44min41s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800070,'N','N','N',0,'N',1,'N','N',800001,'N','Y','e14dc211-d66c-4e1d-824b-06917a7bbef0','Y','GenerateOrder','Generate Order','Generate Order','N',TO_TIMESTAMP('2014-11-25 17:44:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-11-25 17:44:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',2042,28,1000033,0,'LBR')
;

-- 25/11/2014 17h44min46s BRST
ALTER TABLE LBR_NotaFiscal ADD COLUMN GenerateOrder CHAR(1) DEFAULT NULL 
;

-- 25/11/2014 17h45min21s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,1,'N','N',460,'Y',800060,'N','LBR','Generate Order','Generate Order','63d546a4-3313-4afc-8644-91b3339bf8d5','N','Y',0,0,0,TO_TIMESTAMP('2014-11-25 17:45:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,2,0,2,800070,TO_TIMESTAMP('2014-11-25 17:45:20','YYYY-MM-DD HH24:MI:SS'))
;

-- 26/11/2014 00h54min56s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2014-11-26 00:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800070
;

-- 26/11/2014 01h31min3s BRST
UPDATE AD_Process_Para SET AD_Val_Rule_ID=206,Updated=TO_TIMESTAMP('2014-11-26 01:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800004
;

-- 26/11/2014 01h31min36s BRST
UPDATE AD_Process_Para SET AD_Val_Rule_ID=200058,Updated=TO_TIMESTAMP('2014-11-26 01:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800006
;

SELECT lbr_register_migration_script('201411252342.sql') FROM dual
;

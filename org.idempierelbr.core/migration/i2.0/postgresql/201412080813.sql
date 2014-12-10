-- 05/12/2014 13h20min16s BRST
-- Issue #28 Relatórios diversos relacionados a boletos
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IsProtested',800022,'Protested','The document is protested','Protested','f26137f7-c47d-4504-912b-b8e093aeedf8',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-05 13:20:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-05 13:20:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h37min53s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IsBaixado',800023,'Baixado',NULL,'Baixado','a8d46a12-6625-44a7-bcda-2f11c5f2e559',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-05 13:37:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-05 13:37:52','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h38min12s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_IsSustado',800024,'Sustado','Sustado','bd403cfe-ab99-46b3-bee9-bb4a726e6e8f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-05 13:38:11','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-05 13:38:11','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h40min8s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800073,'N','N','N',0,'N',1,'N','N','N','Y','d3a48e15-c0d4-4d84-b302-ac33f4743444','Y','IsPaid','The document is paid','''N''','Paid','Y',TO_TIMESTAMP('2014-12-05 13:40:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 13:40:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',1402,20,1000053,0,'LBR')
;

-- 05/12/2014 13h40min12s BRST
ALTER TABLE LBR_Boleto ADD COLUMN IsPaid CHAR(1) DEFAULT 'N' CHECK (IsPaid IN ('Y','N'))
;

-- 05/12/2014 13h41min18s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800074,'N','N','N',0,'N',1,'N','N','N','Y','3023c158-d790-4661-89e1-bcf6bd5f912e','Y','LBR_IsProtested','The document is protested','''N''','Protested','Y',TO_TIMESTAMP('2014-12-05 13:41:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 13:41:17','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',800022,20,1000053,0,'LBR')
;

-- 05/12/2014 13h41min20s BRST
ALTER TABLE LBR_Boleto ADD COLUMN LBR_IsProtested CHAR(1) DEFAULT 'N' CHECK (LBR_IsProtested IN ('Y','N'))
;

-- 05/12/2014 13h42min30s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800075,'N','N','N',0,'N',1,'N','N','N','Y','0df0eb21-233e-464b-8e3f-7660920152cc','Y','LBR_IsBaixado','''N''','Baixado','Y',TO_TIMESTAMP('2014-12-05 13:42:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 13:42:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',800023,20,1000053,0,'LBR')
;

-- 05/12/2014 13h42min31s BRST
ALTER TABLE LBR_Boleto ADD COLUMN LBR_IsBaixado CHAR(1) DEFAULT 'N' CHECK (LBR_IsBaixado IN ('Y','N'))
;

-- 05/12/2014 13h45min9s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800076,'N','N','N',0,'N',1,'N','N','N','Y','72305550-3739-44ae-acb2-6e9fb61cfc75','Y','LBR_IsSustado','''N''','Sustado','Y',TO_TIMESTAMP('2014-12-05 13:45:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 13:45:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',800024,20,1000053,0,'LBR')
;

-- 05/12/2014 13h45min11s BRST
ALTER TABLE LBR_Boleto ADD COLUMN LBR_IsSustado CHAR(1) DEFAULT 'N' CHECK (LBR_IsSustado IN ('Y','N'))
;

-- 05/12/2014 13h46min18s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',400,'Y',800063,'N','LBR','The document is paid','Paid','32c5b064-d929-450b-a763-c02d3cd6dd62','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 13:46:17','YYYY-MM-DD HH24:MI:SS'),'Y','Y',440,2,0,2,800073,TO_TIMESTAMP('2014-12-05 13:46:17','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h46min19s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',410,'Y',800064,'N','LBR','The document is protested','Protested','c4d628a7-c9ba-46af-bd4e-fbd6a563613c','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 13:46:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',450,2,0,2,800074,TO_TIMESTAMP('2014-12-05 13:46:18','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h46min20s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',420,'Y',800065,'N','LBR','Baixado','cee625bc-41be-4620-9278-55ce1dc8b669','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 13:46:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',460,2,0,2,800075,TO_TIMESTAMP('2014-12-05 13:46:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h46min22s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',430,'Y',800066,'N','LBR','Sustado','889cdfac-b671-430d-8430-14d7498aaa75','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 13:46:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',470,2,0,2,800076,TO_TIMESTAMP('2014-12-05 13:46:20','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=800063
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=800065
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=800064
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=800066
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001822
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001823
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001795
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- 05/12/2014 13h47min24s BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- 05/12/2014 13h48min12s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 13:48:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800063
;

-- 05/12/2014 13h48min24s BRST
UPDATE AD_Field SET IsReadOnly='Y', XPosition=5, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 13:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800065
;

-- 05/12/2014 13h48min32s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 13:48:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800064
;

-- 05/12/2014 13h48min41s BRST
UPDATE AD_Field SET XPosition=5, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 13:48:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800066
;

-- 05/12/2014 13h50min41s BRST
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-12-05 13:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800066
;

-- 05/12/2014 14h18min26s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,ColumnSQL,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800077,'N','N','N',0,'N',22,'N','N','N','Y','ffed9a4b-0c73-46ec-8222-e54e490cc95d','N','LBR_Cob_Movimento_ID','(SELECT LBR_Cob_Movimento_ID FROM LBR_BoletoMovement WHERE LBR_BoletoMovement_ID = (SELECT MAX(LBR_BoletoMovement_ID) FROM LBR_BoletoMovement mov WHERE mov.LBR_Boleto_ID = LBR_Boleto.LBR_Boleto_ID))','Collection Movement','N',TO_TIMESTAMP('2014-12-05 14:18:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 14:18:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000361,19,1000053,0,'LBR')
;

-- 05/12/2014 14h19min2s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,ColumnSQL,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800078,'N','N','N',0,'N',1,'N','N','N','Y','754b3989-7110-4778-bcb8-726725759959','N','LBR_CNAB240MovementType','(SELECT LBR_CNAB240MovementType FROM LBR_BoletoMovement WHERE LBR_BoletoMovement_ID = (SELECT MAX(LBR_BoletoMovement_ID) FROM LBR_BoletoMovement mov WHERE mov.LBR_Boleto_ID = LBR_Boleto.LBR_Boleto_ID))','Movement Type','N',TO_TIMESTAMP('2014-12-05 14:19:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-05 14:19:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000363,17,1000083,1000053,0,'LBR')
;

-- 05/12/2014 14h19min22s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,22,'N','N',440,'Y',800067,'N','LBR','Collection Movement','1dea4ea4-e9ae-4e49-bc27-35aead1d56d1','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 14:19:20','YYYY-MM-DD HH24:MI:SS'),'Y','Y',480,0,2,800077,TO_TIMESTAMP('2014-12-05 14:19:20','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 14h19min23s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000096,1,'N','N',450,'Y',800068,'N','LBR','Movement Type','1611c9da-fb16-42b4-b829-eba7c93d9e08','N','Y',0,0,0,TO_TIMESTAMP('2014-12-05 14:19:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',490,0,2,800078,TO_TIMESTAMP('2014-12-05 14:19:22','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=800067
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=800068
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001822
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001823
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001795
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001788
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001786
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1001785
;

-- 05/12/2014 14h20min52s BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1001789
;

-- 05/12/2014 14h21min18s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 14:21:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800067
;

-- 05/12/2014 14h21min26s BRST
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-12-05 14:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800068
;

-- 05/12/2014 14h23min0s BRST
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-12-05 14:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800068
;

-- 05/12/2014 14h23min49s BRST
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-12-05 14:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800067
;

CREATE OR REPLACE VIEW lbr_rv_boleto_details AS 
 SELECT b.ad_client_id, b.ad_org_id, b.c_doctype_id, b.created, b.createdby, b.dateacct, b.datedoc, b.description, b.docaction, b.docstatus, b.documentno, b.grandtotal, b.isactive, b.posted, b.processed, b.processedon, b.processing, b.updated, b.updatedby, b.lbr_boleto_id, b.duedate, b.c_bpartner_id, b.c_bpartner_location_id, b.lbr_guarantor_id, b.lbr_guarantor_location_id, b.c_invoice_id, b.c_invoicepayschedule_id, b.c_bank_id, b.c_bankaccount_id, b.lbr_correspbank_id, b.lbr_numberinbank, b.lbr_numberincorrespbank, b.lbr_numberinorg, b.lbr_bankaccount_convenio_id, b.lbr_bankaccount_carteira_id, b.lbr_carteiratype, b.lbr_cnab240currency, b.lbr_loancontractno, b.lbr_collectiontype, b.lbr_cnab240doctype, b.lbr_collectionregtype, b.lbr_issuetype, b.lbr_distributiontype, b.lbr_accepted, b.lbr_partialpayment, b.lbr_directdebitnotice, b.writeoffamt, b.lbr_iofamt, b.lbr_fmt_numberinbank, b.lbr_fmt_agencyclient, b.lbr_fmt_billfold, b.lbr_fmt_doctype, b.lbr_bankuse, b.lbr_barcode, b.lbr_typeableline, b.ispaid, b.lbr_isprotested, b.lbr_isbaixado, b.lbr_issustado, det.ad_client_id AS boleto_details_ad_client_id, det.ad_org_id AS boleto_details_ad_org_id, det.isactive AS boleto_details_isactive, det.created AS boleto_details_created, det.createdby AS boleto_details_createdby, det.updated AS boleto_details_updated, det.updatedby AS boleto_details_updatedby, det.lbr_boletodetails_id, det.lbr_boleto_id AS boleto_details_lbr_boleto_id, det.lbr_protestcode, det.lbr_protestdays, det.lbr_latepaymentpenaltycode, det.lbr_latepaymentpenaltydate, det.lbr_latepaymentpenaltyap, det.lbr_interestcode, det.lbr_interestdate, det.lbr_interestap, det.lbr_collectionreturncode, det.lbr_collectionreturndays, det.lbr_cnabdiscount1ap, det.lbr_cnabdiscount1date, det.lbr_cnabdiscount2ap, det.lbr_cnabdiscount2date, det.lbr_cnabdiscount3ap, det.lbr_cnabdiscount3date, det.lbr_cnabdiscount1code, det.lbr_cnabdiscount2code, det.lbr_cnabdiscount3code, det.lbr_message5, det.lbr_message6, det.lbr_message7, det.lbr_message8, det.lbr_message9, sd.ad_client_id AS boleto_sd_ad_client_id, sd.ad_org_id AS boleto_sd_ad_org_id, sd.isactive AS boleto_sd_isactive, sd.created AS boleto_sd_created, sd.createdby AS boleto_sd_createdby, sd.updated AS boleto_sd_updated, sd.updatedby AS boleto_sd_updatedby, sd.lbr_boletosd_id, sd.lbr_boleto_id AS boleto_sd_lbr_boleto_id, sd.name, sd.address1, sd.address2, sd.address3, sd.address4, sd.postal, sd.city, sd.regionname, sd.lbr_staticdatatype, sd.lbr_cnabinscemptype, sd.lbr_cnabinscempno, mov.ad_client_id AS boleto_mov_ad_client_id, mov.ad_org_id AS boleto_mov_ad_org_id, mov.created AS boleto_mov_created, mov.createdby AS boleto_mov_createdby, mov.updated AS boleto_mov_updated, mov.updatedby AS boleto_mov_updatedby, mov.isactive AS boleto_mov_isactive, mov.lbr_boletomovement_id, mov.lbr_boleto_id AS boleto_mov_lbr_boleto_id, mov.lbr_cnab240movementtype, mov.description AS boleto_mov_description, mov.seqno AS boleto_mov_seqno, mov.lbr_filegeneratingdate, mov.lbr_cnab240seqno AS boleto_mov_lbr_cnab240seqno, mov.lbr_numberinbank AS boleto_mov_lbr_numberinbank, mov.lbr_carteiratype AS boleto_mov_lbr_carteiratype, mov.lbr_numberinorg AS boleto_mov_lbr_numberinorg, mov.duedate AS boleto_mov_duedate, mov.grandtotal AS boleto_mov_grandtotal, mov.lbr_collectbankno AS boleto_mov_lbr_collectbankno, mov.lbr_collectbankagencyno AS boleto_mov_collectbankagencyno, mov.lbr_documentno AS boleto_mov_lbr_documentno, mov.lbr_cnab240currency AS boleto_mov_lbr_cnab240currency, mov.lbr_loancontractno AS boleto_mov_lbr_loancontractno, mov.feeamt AS boleto_mov_feeamt, mov.lbr_cob_ocorrencia1_id, mov.lbr_cob_ocorrencia2_id, mov.lbr_cob_ocorrencia3_id, mov.lbr_cob_ocorrencia4_id, mov.lbr_cob_ocorrencia5_id, mov.interestamt AS boleto_mov_interestamt, mov.discountamt AS boleto_mov_discountamt, mov.writeoffamt AS boleto_mov_writeoffamt, mov.lbr_iofamt AS boleto_mov_lbr_iofamt, mov.payamt AS boleto_mov_payamt, mov.availableamt AS boleto_mov_availableamt, mov.lbr_otherexpensesamt AS boleto_mov_otherexpensesamt, mov.lbr_otherincomesamt AS boleto_mov_otherincomesamt, mov.lbr_cob_ocorrenciadate AS boleto_mov_cob_ocorrenciadate, mov.lbr_creditdate AS boleto_mov_lbr_creditdate, mov.lbr_correspbankno AS boleto_mov_lbr_correspbankno, mov.lbr_numberincorrespbank AS boleto_mov_numberincorrespbank, mov.lbr_conveniono AS boleto_mov_lbr_conveniono, mov.lbr_collectiontype AS boleto_mov_lbr_collectiontype, mov.lbr_cob_movimento_id, mov.lbr_interestcode AS boleto_mov_lbr_interestcode, mov.lbr_interestdate AS boleto_mov_lbr_interestdate, mov.lbr_interestap AS boleto_mov_lbr_interestap, mov.lbr_cnabdiscount1ap AS boleto_mov_lbr_cnabdiscount1ap, mov.lbr_cnabdiscount2ap AS boleto_mov_lbr_cnabdiscount2ap, mov.lbr_cnabdiscount3ap AS boleto_mov_lbr_cnabdiscount3ap, mov.lbr_cnabdiscount1code AS boleto_mov_cnabdiscount1code, mov.lbr_cnabdiscount2code AS boleto_mov_cnabdiscount2code, mov.lbr_cnabdiscount3code AS boleto_mov_cnabdiscount3code, mov.lbr_cnabdiscount1date AS boleto_mov_cnabdiscount1date, mov.lbr_cnabdiscount2date AS boleto_mov_cnabdiscount2date, mov.lbr_cnabdiscount3date AS boleto_mov_cnabdiscount3date, mov.lbr_latepaymentpenaltyap AS boleto_mov_latepaypenaltyap, mov.lbr_latepaymentpenaltycode AS boleto_mov_latepaypenaltycode, mov.lbr_latepaymentpenaltydate AS boleto_mov_latepaypenaltydate
   FROM lbr_boleto b
   LEFT JOIN lbr_boletodetails det ON det.lbr_boleto_id = b.lbr_boleto_id
   LEFT JOIN lbr_boletosd sd ON sd.lbr_boleto_id = b.lbr_boleto_id
   LEFT JOIN lbr_boletomovement mov ON mov.lbr_boleto_id = b.lbr_boleto_id
   LEFT JOIN lbr_cob_movimento cm ON cm.lbr_cob_movimento_id = mov.lbr_cob_movimento_id;

CREATE OR REPLACE VIEW lbr_rv_boleto_summary AS 
 SELECT b.ad_client_id, b.ad_org_id, b.c_doctype_id, b.created, b.createdby, b.dateacct, b.datedoc, b.description, b.docaction, b.docstatus, b.documentno, b.grandtotal, b.isactive, b.posted, b.processed, b.processedon, b.processing, b.updated, b.updatedby, b.lbr_boleto_id, b.duedate, b.c_bpartner_id, b.c_bpartner_location_id, b.lbr_guarantor_id, b.lbr_guarantor_location_id, b.c_invoice_id, b.c_invoicepayschedule_id, b.c_bank_id, b.c_bankaccount_id, b.lbr_correspbank_id, b.lbr_numberinbank, b.lbr_numberincorrespbank, b.lbr_numberinorg, b.lbr_bankaccount_convenio_id, b.lbr_bankaccount_carteira_id, b.lbr_carteiratype, b.lbr_cnab240currency, b.lbr_loancontractno, b.lbr_collectiontype, b.lbr_cnab240doctype, b.lbr_collectionregtype, b.lbr_issuetype, b.lbr_distributiontype, b.lbr_accepted, b.lbr_partialpayment, b.lbr_directdebitnotice, b.writeoffamt, b.lbr_iofamt, b.lbr_fmt_numberinbank, b.lbr_fmt_agencyclient, b.lbr_fmt_billfold, b.lbr_fmt_doctype, b.lbr_bankuse, b.lbr_barcode, b.lbr_typeableline, b.ispaid, b.lbr_isprotested, b.lbr_isbaixado, b.lbr_issustado, mov.ad_client_id AS boleto_mov_ad_client_id, mov.ad_org_id AS boleto_mov_ad_org_id, mov.created AS boleto_mov_created, mov.createdby AS boleto_mov_createdby, mov.updated AS boleto_mov_updated, mov.updatedby AS boleto_mov_updatedby, mov.isactive AS boleto_mov_isactive, mov.lbr_boletomovement_id, mov.lbr_boleto_id AS boleto_mov_lbr_boleto_id, mov.lbr_cnab240movementtype, mov.description AS boleto_mov_description, mov.seqno AS boleto_mov_seqno, mov.lbr_filegeneratingdate, mov.lbr_cnab240seqno AS boleto_mov_lbr_cnab240seqno, mov.lbr_numberinbank AS boleto_mov_lbr_numberinbank, mov.lbr_carteiratype AS boleto_mov_lbr_carteiratype, mov.lbr_numberinorg AS boleto_mov_lbr_numberinorg, mov.duedate AS boleto_mov_duedate, mov.grandtotal AS boleto_mov_grandtotal, mov.lbr_collectbankno AS boleto_mov_lbr_collectbankno, mov.lbr_collectbankagencyno AS boleto_mov_collectbankagencyno, mov.lbr_documentno AS boleto_mov_lbr_documentno, mov.lbr_cnab240currency AS boleto_mov_lbr_cnab240currency, mov.lbr_loancontractno AS boleto_mov_lbr_loancontractno, mov.feeamt AS boleto_mov_feeamt, mov.lbr_cob_ocorrencia1_id, mov.lbr_cob_ocorrencia2_id, mov.lbr_cob_ocorrencia3_id, mov.lbr_cob_ocorrencia4_id, mov.lbr_cob_ocorrencia5_id, mov.interestamt AS boleto_mov_interestamt, mov.discountamt AS boleto_mov_discountamt, mov.writeoffamt AS boleto_mov_writeoffamt, mov.lbr_iofamt AS boleto_mov_lbr_iofamt, mov.payamt AS boleto_mov_payamt, mov.availableamt AS boleto_mov_availableamt, mov.lbr_otherexpensesamt AS boleto_mov_otherexpensesamt, mov.lbr_otherincomesamt AS boleto_mov_otherincomesamt, mov.lbr_cob_ocorrenciadate AS boleto_mov_cob_ocorrenciadate, mov.lbr_creditdate AS boleto_mov_lbr_creditdate, mov.lbr_correspbankno AS boleto_mov_lbr_correspbankno, mov.lbr_numberincorrespbank AS boleto_mov_numberincorrespbank, mov.lbr_conveniono AS boleto_mov_lbr_conveniono, mov.lbr_collectiontype AS boleto_mov_lbr_collectiontype, mov.lbr_cob_movimento_id, mov.lbr_interestcode AS boleto_mov_lbr_interestcode, mov.lbr_interestdate AS boleto_mov_lbr_interestdate, mov.lbr_interestap AS boleto_mov_lbr_interestap, mov.lbr_cnabdiscount1ap AS boleto_mov_lbr_cnabdiscount1ap, mov.lbr_cnabdiscount2ap AS boleto_mov_lbr_cnabdiscount2ap, mov.lbr_cnabdiscount3ap AS boleto_mov_lbr_cnabdiscount3ap, mov.lbr_cnabdiscount1code AS boleto_mov_cnabdiscount1code, mov.lbr_cnabdiscount2code AS boleto_mov_cnabdiscount2code, mov.lbr_cnabdiscount3code AS boleto_mov_cnabdiscount3code, mov.lbr_cnabdiscount1date AS boleto_mov_cnabdiscount1date, mov.lbr_cnabdiscount2date AS boleto_mov_cnabdiscount2date, mov.lbr_cnabdiscount3date AS boleto_mov_cnabdiscount3date, mov.lbr_latepaymentpenaltyap AS boleto_mov_latepaypenaltyap, mov.lbr_latepaymentpenaltycode AS boleto_mov_latepaypenaltycode, mov.lbr_latepaymentpenaltydate AS boleto_mov_latepaypenaltydate
   FROM lbr_boleto b
   LEFT JOIN lbr_boletomovement mov ON mov.lbr_boletomovement_id = (( SELECT max(mov.lbr_boletomovement_id) AS max
      FROM lbr_boletomovement mov
     WHERE mov.lbr_boleto_id = b.lbr_boleto_id))
   LEFT JOIN lbr_cob_movimento cm ON cm.lbr_cob_movimento_id = mov.lbr_cob_movimento_id;
   
CREATE OR REPLACE VIEW lbr_rv_boleto_open AS 
 SELECT b.ad_client_id, b.ad_org_id, b.c_doctype_id, b.created, b.createdby, b.dateacct, b.datedoc, b.description, b.docaction, b.docstatus, b.documentno, b.grandtotal, b.isactive, b.posted, b.processed, b.processedon, b.processing, b.updated, b.updatedby, b.lbr_boleto_id, b.duedate, b.c_bpartner_id, b.c_bpartner_location_id, b.lbr_guarantor_id, b.lbr_guarantor_location_id, b.c_invoice_id, b.c_invoicepayschedule_id, b.c_bank_id, b.c_bankaccount_id, b.lbr_correspbank_id, b.lbr_numberinbank, b.lbr_numberincorrespbank, b.lbr_numberinorg, b.lbr_bankaccount_convenio_id, b.lbr_bankaccount_carteira_id, b.lbr_carteiratype, b.lbr_cnab240currency, b.lbr_loancontractno, b.lbr_collectiontype, b.lbr_cnab240doctype, b.lbr_collectionregtype, b.lbr_issuetype, b.lbr_distributiontype, b.lbr_accepted, b.lbr_partialpayment, b.lbr_directdebitnotice, b.writeoffamt, b.lbr_iofamt, b.lbr_fmt_numberinbank, b.lbr_fmt_agencyclient, b.lbr_fmt_billfold, b.lbr_fmt_doctype, b.lbr_bankuse, b.lbr_barcode, b.lbr_typeableline, b.ispaid, b.lbr_isprotested, b.lbr_isbaixado, b.lbr_issustado, b.boleto_mov_ad_client_id, b.boleto_mov_ad_org_id, b.boleto_mov_created, b.boleto_mov_createdby, b.boleto_mov_updated, b.boleto_mov_updatedby, b.boleto_mov_isactive, b.lbr_boletomovement_id, b.boleto_mov_lbr_boleto_id, b.lbr_cnab240movementtype, b.boleto_mov_description, b.boleto_mov_seqno, b.lbr_filegeneratingdate, b.boleto_mov_lbr_cnab240seqno, b.boleto_mov_lbr_numberinbank, b.boleto_mov_lbr_carteiratype, b.boleto_mov_lbr_numberinorg, b.boleto_mov_duedate, b.boleto_mov_grandtotal, b.boleto_mov_lbr_collectbankno, b.boleto_mov_collectbankagencyno, b.boleto_mov_lbr_documentno, b.boleto_mov_lbr_cnab240currency, b.boleto_mov_lbr_loancontractno, b.boleto_mov_feeamt, b.lbr_cob_ocorrencia1_id, b.lbr_cob_ocorrencia2_id, b.lbr_cob_ocorrencia3_id, b.lbr_cob_ocorrencia4_id, b.lbr_cob_ocorrencia5_id, b.boleto_mov_interestamt, b.boleto_mov_discountamt, b.boleto_mov_writeoffamt, b.boleto_mov_lbr_iofamt, b.boleto_mov_payamt, b.boleto_mov_availableamt, b.boleto_mov_otherexpensesamt, b.boleto_mov_otherincomesamt, b.boleto_mov_cob_ocorrenciadate, b.boleto_mov_lbr_creditdate, b.boleto_mov_lbr_correspbankno, b.boleto_mov_numberincorrespbank, b.boleto_mov_lbr_conveniono, b.boleto_mov_lbr_collectiontype, b.lbr_cob_movimento_id, b.boleto_mov_lbr_interestcode, b.boleto_mov_lbr_interestdate, b.boleto_mov_lbr_interestap, b.boleto_mov_lbr_cnabdiscount1ap, b.boleto_mov_lbr_cnabdiscount2ap, b.boleto_mov_lbr_cnabdiscount3ap, b.boleto_mov_cnabdiscount1code, b.boleto_mov_cnabdiscount2code, b.boleto_mov_cnabdiscount3code, b.boleto_mov_cnabdiscount1date, b.boleto_mov_cnabdiscount2date, b.boleto_mov_cnabdiscount3date, b.boleto_mov_latepaypenaltyap, b.boleto_mov_latepaypenaltycode, b.boleto_mov_latepaypenaltydate
   FROM lbr_rv_boleto_summary b
  WHERE b.ispaid <> 'Y'::bpchar AND b.lbr_isbaixado <> 'Y'::bpchar AND (b.docstatus::bpchar = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar]));

-- 09/12/2014 10h42min1s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,800004,'N','Y','N','LBR','L','70f4438d-86e4-42e8-a921-7eb0fc89038a','Y','N','LBR_RV_Boleto_Details','Boleto Detail','Y',0,0,TO_TIMESTAMP('2014-12-09 10:42:00','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-12-09 10:42:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h42min3s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800011,'Table LBR_RV_Boleto_Details','LBR_RV_Boleto_Details',1,'97b2ae8b-5fec-45f9-999b-b91c246408e5',0,TO_TIMESTAMP('2014-12-09 10:42:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-12-09 10:42:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h42min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800079,'N','N','N','N',10,'N','N','675667fa-1f91-4ec3-a717-e1ee8d444598','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client',TO_TIMESTAMP('2014-12-09 10:42:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',102,19,800004,129,0,'LBR')
;

-- 09/12/2014 10h42min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800080,'N','N','N','N',10,'N','N','5e30b5cc-cbbf-4872-bd38-8eed455bee68','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization',TO_TIMESTAMP('2014-12-09 10:42:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',113,19,800004,104,0,'LBR')
;

-- 09/12/2014 10h42min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800081,'N','N','N','N',10,'N','N','a5653004-de73-41f8-86b2-bbb22f74f9a5','N','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type',TO_TIMESTAMP('2014-12-09 10:42:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',196,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800082,'N','N','N','N',29,'N','N','b09f762c-09db-4b87-95d6-8d47eab8ca06','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created',TO_TIMESTAMP('2014-12-09 10:42:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',245,16,800004,0,'LBR')
;

-- 09/12/2014 10h42min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800083,'N','N','N','N',10,'N','N','0a5f3d3a-d4a4-4f7c-bfaa-b21a8ece4b7d','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By',TO_TIMESTAMP('2014-12-09 10:42:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',246,18,110,800004,0,'LBR')
;

-- 09/12/2014 10h42min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800084,'N','N','N','N',29,'N','N','d8068647-7f94-480c-9d70-eeb9086e58ca','N','DateAcct','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date',TO_TIMESTAMP('2014-12-09 10:42:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',263,15,800004,0,'LBR')
;

-- 09/12/2014 10h42min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800085,'N','N','N','N',29,'N','N','29f41d8b-d267-43be-b29b-a5c10d4fa42f','N','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date',TO_TIMESTAMP('2014-12-09 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',265,15,800004,0,'LBR')
;

-- 09/12/2014 10h42min31s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800086,'N','N','N','N',255,'Y','N','0ed0455d-edd6-44ea-9738-4767a811db13','N','Description','Optional short description of the record','A description is limited to 255 characters.','Description',TO_TIMESTAMP('2014-12-09 10:42:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',275,10,800004,0,'LBR')
;

-- 09/12/2014 10h42min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800087,'N','N','N','N',2,'N','N','78a94cea-0c2b-4156-ae48-44ad4ce9bbf3','N','DocAction','The targeted status of the document','CO','You find the current status in the Document Status field. The options are listed in a popup','Document Action',TO_TIMESTAMP('2014-12-09 10:42:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',287,28,135,800004,0,'LBR')
;

-- 09/12/2014 10h42min34s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800088,'N','N','N','N',2,'N','N','bac73989-fa2b-4d04-802d-880969475420','N','DocStatus','The current status of the document','DR','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status',TO_TIMESTAMP('2014-12-09 10:42:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',289,17,131,800004,0,'LBR')
;

-- 09/12/2014 10h42min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800089,'N','N','N','N',30,'Y','N','bff77feb-6fa2-4b93-bada-381d9515389d','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No',TO_TIMESTAMP('2014-12-09 10:42:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:34','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',290,10,800004,0,'LBR')
;

-- 09/12/2014 10h42min36s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800090,'N','N','N','N',131089,'N','N','cbfc8f33-039a-4107-b3a1-9163e1c3074b','N','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total',TO_TIMESTAMP('2014-12-09 10:42:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',316,12,800004,0,'LBR')
;

-- 09/12/2014 10h42min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800091,'N','N','N','N',1,'N','N','9374019d-5934-4465-b598-96964e512b57','N','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active',TO_TIMESTAMP('2014-12-09 10:42:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:36','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',348,20,800004,0,'LBR')
;

-- 09/12/2014 10h42min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800092,'N','N','N','N',1,'N','N','5592a3a0-65e1-4231-868c-f3a068920d07','N','Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Posted',TO_TIMESTAMP('2014-12-09 10:42:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1308,20,800004,0,'LBR')
;

-- 09/12/2014 10h42min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800093,'N','N','N','N',1,'N','N','211e4e31-9eeb-4a5b-957b-f633a6aaf422','N','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed',TO_TIMESTAMP('2014-12-09 10:42:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1047,20,800004,0,'LBR')
;

-- 09/12/2014 10h42min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800094,'N','N','N','N',131089,'N','N','96cfec55-8ea6-4efc-bc9e-4cf2fb42460c','N','ProcessedOn','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Processed On',TO_TIMESTAMP('2014-12-09 10:42:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',54128,22,800004,0,'LBR')
;

-- 09/12/2014 10h42min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800095,'N','N','N','N',1,'N','N','e4c61569-0129-4348-85e7-57ebf51c9c33','N','Processing','Process Now',TO_TIMESTAMP('2014-12-09 10:42:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',524,28,800004,0,'LBR')
;

-- 09/12/2014 10h42min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800096,'N','N','N','N',29,'N','N','3d825d28-36d6-463e-92ec-a64c086947bf','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated',TO_TIMESTAMP('2014-12-09 10:42:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',607,16,800004,0,'LBR')
;

-- 09/12/2014 10h42min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800097,'N','N','N','N',10,'N','N','a461f440-5d3a-4fb3-9105-ef421da9cb5c','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By',TO_TIMESTAMP('2014-12-09 10:42:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',608,18,110,800004,0,'LBR')
;

-- 09/12/2014 10h42min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800098,'N','N','N','N',10,'N','N','937f6178-57a0-4f3b-8603-4b27a6eacee6','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)',TO_TIMESTAMP('2014-12-09 10:42:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',1000309,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800099,'N','N','N','N',29,'N','N','1588c482-8243-43bb-9d63-3abd2c25ae25','N','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date',TO_TIMESTAMP('2014-12-09 10:42:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',2000,15,800004,0,'LBR')
;

-- 09/12/2014 10h42min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800100,'N','N','N','N',10,'N','N','977bd4ca-380d-4a1a-bb3e-9d28a65c7382','N','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ',TO_TIMESTAMP('2014-12-09 10:42:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',187,30,800004,0,'LBR')
;

-- 09/12/2014 10h42min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800101,'N','N','N','N',10,'N','N','08f1d07c-55b8-4a2e-9993-55e6c05a18b2','N','C_BPartner_Location_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location',TO_TIMESTAMP('2014-12-09 10:42:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',189,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800102,'N','N','N','N',10,'N','N','48a6ae82-5348-42d6-a3fb-d4b071d3a6ae','N','LBR_Guarantor_ID','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)',TO_TIMESTAMP('2014-12-09 10:42:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000312,30,138,800004,0,'LBR')
;

-- 09/12/2014 10h42min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,MandatoryLogic,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800103,'N','N','N','N',10,'N','N','@LBR_Guarantor_ID@ > 0','ac9215fb-849a-4a6e-b42a-9af1643b9a1c','N','LBR_Guarantor_Location_ID','Identifies the address for this guarantor (Business Partner)','The Guarantor (Partner) address indicates the location of a Business Partner','Guarantor (Partner) Location',TO_TIMESTAMP('2014-12-09 10:42:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000311,18,159,800004,1000009,0,'LBR')
;

-- 09/12/2014 10h42min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800104,'N','N','N','N',10,'N','N','7004ea99-9375-418d-8ec0-9f66c773be48','N','C_Invoice_ID','Invoice Identifier','The Invoice Document.','Invoice',TO_TIMESTAMP('2014-12-09 10:42:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1008,30,800004,0,'LBR')
;

-- 09/12/2014 10h42min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800105,'N','N','N','N',10,'N','N','988621e2-eb7f-4c0b-a85c-0a60c2f4c674','N','C_InvoicePaySchedule_ID','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.','Invoice Payment Schedule',TO_TIMESTAMP('2014-12-09 10:42:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1995,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800106,'N','N','N','N',10,'N','N','c7be36cb-eafd-47b6-9f07-8315c7a14dfd','N','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank',TO_TIMESTAMP('2014-12-09 10:42:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',835,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800107,'N','N','N','N',10,'N','N','0e63ccef-814f-4359-b946-770406efef93','N','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account',TO_TIMESTAMP('2014-12-09 10:42:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',836,19,800004,0,'LBR')
;

-- 09/12/2014 10h42min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800108,'N','N','N','N',10,'N','N','df5b488b-e2cc-4405-a62c-be10c3e880c8','N','LBR_CorrespBank_ID','Correspondent Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:42:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:57','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000313,18,52001,800004,0,'LBR')
;

-- 09/12/2014 10h42min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800109,'N','N','N','N',20,'N','N','587cfe6f-9a18-4da3-8321-2bb190764a74','N','LBR_NumberInBank','Number in the Bank',TO_TIMESTAMP('2014-12-09 10:42:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000314,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800110,'N','N','N','N',20,'N','N','d544987d-3227-4d2b-a75e-93f4c09d7f1e','N','LBR_NumberInCorrespBank','Number in the Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:42:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:42:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000315,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800111,'N','N','N','N',15,'N','N','350238f1-930a-4326-b0bb-429b105fe609','N','LBR_NumberInOrg','Number in the Org',TO_TIMESTAMP('2014-12-09 10:43:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000316,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800112,'N','N','N','N',10,'N','N','7be66b8f-9f56-4d4e-bf2e-aba359ce0c3b','N','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio',TO_TIMESTAMP('2014-12-09 10:43:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000284,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800113,'N','N','N','N',10,'N','N','d4d8dae7-f6a2-40cb-bc3f-68d9a20f7b3d','N','LBR_BankAccount_Carteira_ID','Defines the Carteira number for a specific bank account','Bank Account Carteira',TO_TIMESTAMP('2014-12-09 10:43:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000287,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min5s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800114,'N','N','N','N',1,'N','N','d4ba459d-3f60-4929-8ac4-8e91da60becb','N','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type',TO_TIMESTAMP('2014-12-09 10:43:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000290,17,1000064,800004,0,'LBR')
;

-- 09/12/2014 10h43min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800115,'N','N','N','N',2,'N','N','375806b2-d83e-47e1-b695-28494edcd061','N','LBR_CNAB240Currency','Currency used for CNAB 240','Currency',TO_TIMESTAMP('2014-12-09 10:43:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000317,17,1000073,800004,0,'LBR')
;

-- 09/12/2014 10h43min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800116,'N','N','N','N',10,'N','N','830f9cff-c667-4611-bd5c-8bd60d159d96','N','LBR_LoanContractNo','Loan Contract No.',TO_TIMESTAMP('2014-12-09 10:43:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000318,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800117,'N','N','N','N',2,'N','N','a251af99-7cff-41d4-9d6d-88e2841e9ffe','N','LBR_CollectionType','Collection Type',TO_TIMESTAMP('2014-12-09 10:43:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000305,17,1000069,800004,0,'LBR')
;

-- 09/12/2014 10h43min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800118,'N','N','N','N',1,'N','N','9c97c10d-83a4-42f7-be31-a7584bdde3f6','N','LBR_CNAB240DocType','Collection document type, according to Febraban.','Febraban Document Type',TO_TIMESTAMP('2014-12-09 10:43:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000319,17,1000074,800004,0,'LBR')
;

-- 09/12/2014 10h43min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800119,'N','N','N','N',1,'N','N','62f60b3e-c5d6-48a6-8798-00f0b3019008','N','LBR_CollectionRegType','Collection Registration Type','Collection Registration yype in the Bank','Registration Type',TO_TIMESTAMP('2014-12-09 10:43:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000320,17,1000075,800004,0,'LBR')
;

-- 09/12/2014 10h43min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800120,'N','N','N','N',1,'N','N','dbf839cc-c246-4af3-9ce0-3b4088aec722','N','LBR_IssueType','Responsible for issuing the collection, according to Febraban.','Issue Type',TO_TIMESTAMP('2014-12-09 10:43:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000321,17,1000076,800004,0,'LBR')
;

-- 09/12/2014 10h43min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800121,'N','N','N','N',1,'N','N','958cdd7e-41ce-4230-b119-61c7ad9a5d55','N','LBR_DistributionType','Responsible for distributing the collection, according to Febraban.','Distribution Type',TO_TIMESTAMP('2014-12-09 10:43:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000322,17,1000077,800004,0,'LBR')
;

-- 09/12/2014 10h43min15s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800122,'N','N','N','N',1,'N','N','6e0cdc91-96e9-4361-a8ab-6207ddee4166','N','LBR_Accepted','Accepted',TO_TIMESTAMP('2014-12-09 10:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:14','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000306,17,1000070,800004,0,'LBR')
;

-- 09/12/2014 10h43min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800123,'N','N','N','N',1,'N','N','be95b653-c3af-430c-9d7f-cf8e1a8ad864','N','LBR_PartialPayment','Authorize Partial Payment',TO_TIMESTAMP('2014-12-09 10:43:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000307,17,1000071,800004,0,'LBR')
;

-- 09/12/2014 10h43min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800124,'N','N','N','N',1,'N','N','64449374-b60b-4d95-b44c-6c5b4940715f','N','LBR_DirectDebitNotice','Direct Debit Notice',TO_TIMESTAMP('2014-12-09 10:43:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000308,17,1000072,800004,0,'LBR')
;

-- 09/12/2014 10h43min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800125,'N','N','N','N',131089,'N','N','7615eea0-6e02-4822-b533-5ace73adf1a9','N','WriteOffAmt','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.','Write-off Amount',TO_TIMESTAMP('2014-12-09 10:43:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1450,12,800004,0,'LBR')
;

-- 09/12/2014 10h43min20s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800126,'N','N','N','N',131089,'N','N','79879643-0697-4e16-803c-34b2e720f1ae','N','LBR_IOFAmt','Defines the IOF Amount','IOF Amount',TO_TIMESTAMP('2014-12-09 10:43:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000164,12,800004,0,'LBR')
;

-- 09/12/2014 10h43min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800127,'N','N','N','N',30,'N','N','afe7e901-4df2-46a8-a31a-fb42da4b1cef','N','LBR_Fmt_NumberInBank','Number In Bank Formatted','This field will be filled with the "Number In Bank" formatted as it needs to be printed on the Collection Slip','Number In Bank Formatted',TO_TIMESTAMP('2014-12-09 10:43:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:20','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000384,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min22s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800128,'N','N','N','N',30,'N','N','bfdb1bbf-59e9-46ee-869a-943fd1e797e9','N','LBR_Fmt_AgencyClient','Agency and Client Formatted','This field will be filled with the "Agency and Client" formatted as it needs to be printed on the Collection Slip','Agency and Client Formatted',TO_TIMESTAMP('2014-12-09 10:43:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000385,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800129,'N','N','N','N',15,'N','N','e7226c08-e31a-495a-958f-a60328222277','N','LBR_Fmt_Billfold','Billfold Formatted','This field will be filled with the "Billfold" formatted as it needs to be printed on the Collection Slip','Billfold Formatted',TO_TIMESTAMP('2014-12-09 10:43:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:22','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000386,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800130,'N','N','N','N',20,'N','N','7182c13f-9892-4094-8446-b1cd39a20fd0','N','LBR_Fmt_Doctype','Document Type Formatted','This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip','Document Type Formatted',TO_TIMESTAMP('2014-12-09 10:43:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000387,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800131,'N','N','N','N',15,'N','N','15e2c489-5af4-401a-9874-be6d4a0bfa12','N','LBR_BankUse','Bank Use','This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip','Bank Use',TO_TIMESTAMP('2014-12-09 10:43:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000388,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800132,'N','N','N','N',44,'N','N','c85d5193-94c4-4d72-849e-7cbf587ad810','N','LBR_Barcode','Barcode','This field will be filled with the barcode value to be printed on the Collection Slip','Barcode',TO_TIMESTAMP('2014-12-09 10:43:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000389,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800133,'N','N','N','N',54,'N','N','240460b9-dd4f-4670-b979-ae842d8b521d','N','LBR_TypeableLine','Typeable Line','This field will be filled with the typeable line to be printed on the Collection Slip','Typeable Line',TO_TIMESTAMP('2014-12-09 10:43:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000390,10,800004,0,'LBR')
;

-- 09/12/2014 10h43min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800134,'N','N','N','N',1,'N','N','0e5ba9d2-2c08-434f-ad43-1f16813c6a54','N','IsPaid','The document is paid','Paid',TO_TIMESTAMP('2014-12-09 10:43:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1402,20,800004,0,'LBR')
;

-- 09/12/2014 10h43min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800135,'N','N','N','N',1,'N','N','324c009a-9817-4517-9616-0e1ef2a49ac0','N','LBR_IsProtested','The document is protested','''N''','Protested',TO_TIMESTAMP('2014-12-09 10:43:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800022,20,800004,0,'LBR')
;

-- 09/12/2014 10h43min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800136,'N','N','N','N',1,'N','N','ab3ce5f2-7d99-44ca-afec-743a4f652278','N','LBR_IsBaixado','''N''','Baixado',TO_TIMESTAMP('2014-12-09 10:43:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800023,20,800004,0,'LBR')
;

-- 09/12/2014 10h43min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800137,'N','N','N','N',1,'N','N','7cf8423c-edec-443b-a951-78a95a432e2c','N','LBR_IsSustado','''N''','Sustado',TO_TIMESTAMP('2014-12-09 10:43:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800024,20,800004,0,'LBR')
;

-- 09/12/2014 10h43min34s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_ad_client_id',800025,'boleto_details_ad_client_id','boleto_details_ad_client_id','4e375b6d-efb8-4175-9e0a-221d587ebdf7',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800138,'N','N','N','N',10,'N','N','9ebdb82f-400c-4833-b682-6c4cccfa3a9b','N','boleto_details_ad_client_id','boleto_details_ad_client_id',TO_TIMESTAMP('2014-12-09 10:43:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800025,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min36s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_ad_org_id',800026,'boleto_details_ad_org_id','boleto_details_ad_org_id','1b53e5f5-5b07-4fd4-bb3e-9cba06975286',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800139,'N','N','N','N',10,'N','N','a931ac02-8846-4f81-bd7d-c94fc3be43f6','N','boleto_details_ad_org_id','boleto_details_ad_org_id',TO_TIMESTAMP('2014-12-09 10:43:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800026,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min39s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_isactive',800027,'boleto_details_isactive','boleto_details_isactive','46babcd4-c920-4ef1-9808-84aa5af8b5e5',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:38','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800140,'N','N','N','N',1,'N','N','afaf1bc2-1566-4adc-8f73-fee0d45ecb0d','N','boleto_details_isactive','boleto_details_isactive',TO_TIMESTAMP('2014-12-09 10:43:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800027,20,800004,0,'LBR')
;

-- 09/12/2014 10h43min41s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_created',800028,'boleto_details_created','boleto_details_created','56bf5f20-ee27-4855-ae7c-6544d7512a12',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800141,'N','N','N','N',29,'N','N','d5abc6c1-3f9b-42e0-ba10-d4f4837e6a1a','N','boleto_details_created','boleto_details_created',TO_TIMESTAMP('2014-12-09 10:43:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800028,16,800004,0,'LBR')
;

-- 09/12/2014 10h43min44s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_createdby',800029,'boleto_details_createdby','boleto_details_createdby','62a12f04-c081-4885-b052-abb9a1d4b072',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:43','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:43','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800142,'N','N','N','N',10,'N','N','7a8aa96a-993c-4ebc-b91b-289a2fe80153','N','boleto_details_createdby','boleto_details_createdby',TO_TIMESTAMP('2014-12-09 10:43:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800029,11,800004,0,'LBR')
;

-- 09/12/2014 10h43min46s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_updated',800030,'boleto_details_updated','boleto_details_updated','722f7c88-16ca-45ac-9cd7-5f2aa7d4644d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:45','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800143,'N','N','N','N',29,'N','N','78362eb3-fad8-44d6-ac57-fc4cf9b908ef','N','boleto_details_updated','boleto_details_updated',TO_TIMESTAMP('2014-12-09 10:43:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800030,16,800004,0,'LBR')
;

-- 09/12/2014 10h43min48s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_updatedby',800031,'boleto_details_updatedby','boleto_details_updatedby','05795fe9-5cc3-4a91-8424-4732a825996d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:47','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800144,'N','N','N','N',10,'N','N','85ff67c4-04dc-49f8-ae2c-a636160484e5','N','boleto_details_updatedby','boleto_details_updatedby',TO_TIMESTAMP('2014-12-09 10:43:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800031,11,800004,0,'LBR')
;

-- 09/12/2014 10h43min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800145,'N','N','N','N',10,'N','N','556379f6-745a-4f18-92f4-b223c607b086','N','LBR_BoletoDetails_ID','Brazilian Bank Collection (Boleto) Details','The Brazilian Bank Collection (Boleto) Details.','Boleto Details',TO_TIMESTAMP('2014-12-09 10:43:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000323,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min52s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_details_lbr_boleto_id',800032,'boleto_details_lbr_boleto_id','boleto_details_lbr_boleto_id','16ffdc46-fc3b-4deb-8abe-03991e355925',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:43:51','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:43:51','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h43min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800146,'N','N','N','N',10,'N','N','3630379f-6c2d-460a-9e46-a20c5caa0628','N','boleto_details_lbr_boleto_id','boleto_details_lbr_boleto_id',TO_TIMESTAMP('2014-12-09 10:43:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800032,19,800004,0,'LBR')
;

-- 09/12/2014 10h43min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800147,'N','N','N','N',1,'N','N','f12433d9-1007-470e-8854-ab52ac0d043b','N','LBR_ProtestCode','Protest Code','Protest code according to Febraban','Protest Code',TO_TIMESTAMP('2014-12-09 10:43:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000293,17,1000065,800004,0,'LBR')
;

-- 09/12/2014 10h43min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800148,'N','N','N','N',10,'N','N','2f215f8e-83d7-426c-be66-1ef136676634','N','LBR_ProtestDays','Protest Days','Protest days after the due date according to Febraban','Protest Days',TO_TIMESTAMP('2014-12-09 10:43:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000294,11,800004,0,'LBR')
;

-- 09/12/2014 10h43min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800149,'N','N','N','N',1,'N','N','dbb2ea02-89d4-46ff-af0c-21128c041de2','N','LBR_LatePaymentPenaltyCode','Late payment penaulty code according to Febraban','Late Payment Penaulty Code',TO_TIMESTAMP('2014-12-09 10:43:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000295,17,1000066,800004,0,'LBR')
;

-- 09/12/2014 10h43min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800150,'N','N','N','N',29,'N','N','07aa732e-f310-47ee-a2be-ce89066f3d5d','N','LBR_LatePaymentPenaltyDate','Late payment penaulty date.','Late Payment Penaulty Date',TO_TIMESTAMP('2014-12-09 10:43:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000325,15,800004,0,'LBR')
;

-- 09/12/2014 10h43min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800151,'N','N','N','N',131089,'N','N','f19d213b-9c5a-4517-abf2-96b5d49a8522','N','LBR_LatePaymentPenaltyAP','Late payment penaulty amount or pencentage','Late Payment Penaulty Amount/Percentage',TO_TIMESTAMP('2014-12-09 10:43:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:57','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000297,12,800004,0,'LBR')
;

-- 09/12/2014 10h44min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800152,'N','N','N','N',1,'N','N','b7bcd14b-603a-47bc-b620-2ecde24dbd3f','N','LBR_InterestCode','Late payment interest code according to Febraban','Late Payment Interest Code',TO_TIMESTAMP('2014-12-09 10:43:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:43:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000298,17,1000067,800004,0,'LBR')
;

-- 09/12/2014 10h44min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800153,'N','N','N','N',29,'N','N','bd2c73da-b27a-4931-aefe-e053e07aed05','N','LBR_InterestDate','Interest date.','Interest Date',TO_TIMESTAMP('2014-12-09 10:44:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000326,15,800004,0,'LBR')
;

-- 09/12/2014 10h44min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800154,'N','N','N','N',131089,'N','N','345f7c20-a4ef-4d6f-92b2-2ced5671e24d','N','LBR_InterestAP','Late payment interest amount or pencentage','Interest Amount/Percentage',TO_TIMESTAMP('2014-12-09 10:44:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000299,12,800004,0,'LBR')
;

-- 09/12/2014 10h44min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800155,'N','N','N','N',1,'N','N','28e88b2d-3e9c-46be-8660-e93f230ccf63','N','LBR_CollectionReturnCode','Collection return code according to Febraban','Collection Return Code',TO_TIMESTAMP('2014-12-09 10:44:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000301,17,1000068,800004,0,'LBR')
;

-- 09/12/2014 10h44min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800156,'N','N','N','N',10,'N','N','e1208f23-347a-470d-a2e5-f47dc2f38c1d','N','LBR_CollectionReturnDays','Collection return days after due date, according to Febraban','Collection Return Days',TO_TIMESTAMP('2014-12-09 10:44:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000302,11,800004,0,'LBR')
;

-- 09/12/2014 10h44min6s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800157,'N','N','N','N',131089,'N','N','54cf45b5-e3ce-4190-814a-9d2314efe5df','N','LBR_CNABDiscount1AP','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%',TO_TIMESTAMP('2014-12-09 10:44:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000333,12,800004,0,'LBR')
;

-- 09/12/2014 10h44min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800158,'N','N','N','N',29,'N','N','2d7195b3-c1b9-4bea-8efa-021705ec406f','N','LBR_CNABDiscount1Date','Discount 1 Date used for CNAB 240','Discount 1 Date',TO_TIMESTAMP('2014-12-09 10:44:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000330,15,800004,0,'LBR')
;

-- 09/12/2014 10h44min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800159,'N','N','N','N',131089,'N','N','e04a15a1-4c61-44af-9087-f46fb7d62dda','N','LBR_CNABDiscount2AP','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%',TO_TIMESTAMP('2014-12-09 10:44:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000334,12,800004,0,'LBR')
;

-- 09/12/2014 10h44min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800160,'N','N','N','N',29,'N','N','ed1c07d2-3b2e-4189-b381-1fb376d3f422','N','LBR_CNABDiscount2Date','Discount 2 Date used for CNAB 240','Discount 2 Date',TO_TIMESTAMP('2014-12-09 10:44:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000331,15,800004,0,'LBR')
;

-- 09/12/2014 10h44min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800161,'N','N','N','N',131089,'N','N','bc117161-a720-45bc-a432-010137d18815','N','LBR_CNABDiscount3AP','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%',TO_TIMESTAMP('2014-12-09 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000335,12,800004,0,'LBR')
;

-- 09/12/2014 10h44min11s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800162,'N','N','N','N',29,'N','N','6fd4b089-43a7-4814-a293-fc6ecb3c2f9b','N','LBR_CNABDiscount3Date','Discount 3 Date used for CNAB 240','Discount 3 Date',TO_TIMESTAMP('2014-12-09 10:44:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000332,15,800004,0,'LBR')
;

-- 09/12/2014 10h44min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800163,'N','N','N','N',1,'N','N','630c4078-0800-4bff-b5e5-0f4f48886462','N','LBR_CNABDiscount1Code','Discount 1 Code used for CNAB 240','Discount 1 Code',TO_TIMESTAMP('2014-12-09 10:44:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:11','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000327,17,1000078,800004,0,'LBR')
;

-- 09/12/2014 10h44min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800164,'N','N','N','N',1,'N','N','545f6742-535d-4074-acff-2a103e24a179','N','LBR_CNABDiscount2Code','Discount 2 Code used for CNAB 240','Discount 2 Code',TO_TIMESTAMP('2014-12-09 10:44:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000328,17,1000078,800004,0,'LBR')
;

-- 09/12/2014 10h44min15s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800165,'N','N','N','N',1,'N','N','a81ec7f9-a922-4e56-953c-dcd3aec91e2d','N','LBR_CNABDiscount3Code','Discount 3 Code used for CNAB 240','Discount 3 Code',TO_TIMESTAMP('2014-12-09 10:44:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:14','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000329,17,1000078,800004,0,'LBR')
;

-- 09/12/2014 10h44min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800166,'N','N','N','N',40,'N','N','eedd7a28-0137-4516-9cd6-15feed406ab0','N','LBR_Message5','Message 5','Message 5',TO_TIMESTAMP('2014-12-09 10:44:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000338,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800167,'N','N','N','N',40,'N','N','c69c63b3-232b-4a0b-aa65-17f05338e87d','N','LBR_Message6','Message 6','Message 6',TO_TIMESTAMP('2014-12-09 10:44:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000339,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800168,'N','N','N','N',40,'N','N','9c96ab18-2463-4643-9aa1-d97df60757a1','N','LBR_Message7','Message 7','Message 7',TO_TIMESTAMP('2014-12-09 10:44:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000340,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min20s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800169,'N','N','N','N',40,'N','N','18e36cee-19ba-4c11-9b28-fdc063258ee8','N','LBR_Message8','Message 8','Message 8',TO_TIMESTAMP('2014-12-09 10:44:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000341,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800170,'N','N','N','N',40,'N','N','eb35a678-7730-44ab-8256-cf61f3eebdda','N','LBR_Message9','Message 9','Message 9',TO_TIMESTAMP('2014-12-09 10:44:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:20','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000342,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min22s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_ad_client_id',800033,'boleto_sd_ad_client_id','boleto_sd_ad_client_id','cef79fdf-e185-45ed-85ce-12d1975c2103',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:21','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:21','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800171,'N','N','N','N',10,'N','N','9059aaf7-3aaf-4849-a161-952523e67554','N','boleto_sd_ad_client_id','boleto_sd_ad_client_id',TO_TIMESTAMP('2014-12-09 10:44:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800033,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min24s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_ad_org_id',800034,'boleto_sd_ad_org_id','boleto_sd_ad_org_id','4f58d68e-dff1-4bda-8d2d-4a3434ee985a',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:23','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:23','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800172,'N','N','N','N',10,'N','N','06f4027a-7978-428b-a8fa-2e64a1d5572d','N','boleto_sd_ad_org_id','boleto_sd_ad_org_id',TO_TIMESTAMP('2014-12-09 10:44:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800034,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min27s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_isactive',800035,'boleto_sd_isactive','boleto_sd_isactive','0bc284a1-e4a5-4963-a892-a07c3f3b1ce9',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800173,'N','N','N','N',1,'N','N','3aca1d47-297f-4fcc-95ea-b6e1f4cfd002','N','boleto_sd_isactive','boleto_sd_isactive',TO_TIMESTAMP('2014-12-09 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800035,20,800004,0,'LBR')
;

-- 09/12/2014 10h44min29s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_created',800036,'boleto_sd_created','boleto_sd_created','dedc389d-d5b8-478b-bf60-b07678c66c2f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:28','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:28','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800174,'N','N','N','N',29,'N','N','f3113283-33ae-4a39-b49f-a216f4564dc3','N','boleto_sd_created','boleto_sd_created',TO_TIMESTAMP('2014-12-09 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800036,16,800004,0,'LBR')
;

-- 09/12/2014 10h44min31s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_createdby',800037,'boleto_sd_createdby','boleto_sd_createdby','2d55f574-3d86-4aa9-b1a5-1e8a90b3b8bf',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:30','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:30','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800175,'N','N','N','N',10,'N','N','ec3447aa-9782-4b32-8589-b759a1db74bc','N','boleto_sd_createdby','boleto_sd_createdby',TO_TIMESTAMP('2014-12-09 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800037,11,800004,0,'LBR')
;

-- 09/12/2014 10h44min33s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_updated',800038,'boleto_sd_updated','boleto_sd_updated','83c5a6c6-5b71-4729-b2f9-0913a7aaf585',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:32','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:32','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800176,'N','N','N','N',29,'N','N','3de96d3f-05d2-45b4-82e1-4ad938da351e','N','boleto_sd_updated','boleto_sd_updated',TO_TIMESTAMP('2014-12-09 10:44:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800038,16,800004,0,'LBR')
;

-- 09/12/2014 10h44min36s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_updatedby',800039,'boleto_sd_updatedby','boleto_sd_updatedby','4a44937c-9b4b-4b45-b31b-8b0eb389b5da',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800177,'N','N','N','N',10,'N','N','61f58bfa-6412-4f56-b056-fb1bab70889c','N','boleto_sd_updatedby','boleto_sd_updatedby',TO_TIMESTAMP('2014-12-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800039,11,800004,0,'LBR')
;

-- 09/12/2014 10h44min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800178,'N','N','N','N',10,'N','N','833586f7-ca30-43f2-a648-7823e5ecfd11','N','LBR_BoletoSD_ID','Boleto Static Data Identifier','The Boleto Static Data Document.','Boleto Static Data',TO_TIMESTAMP('2014-12-09 10:44:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000343,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min39s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_sd_lbr_boleto_id',800040,'boleto_sd_lbr_boleto_id','boleto_sd_lbr_boleto_id','2119c4e7-9591-4477-afde-9d937d3f1ad0',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:38','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800179,'N','N','N','N',10,'N','N','adc01842-6f2c-4b86-baa1-94df0b4cfd3f','N','boleto_sd_lbr_boleto_id','boleto_sd_lbr_boleto_id',TO_TIMESTAMP('2014-12-09 10:44:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800040,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800180,'N','N','Y','N',60,'Y','N','eabe4037-e246-4d4c-b345-ca4fb1d59fa5','N','Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Name',TO_TIMESTAMP('2014-12-09 10:44:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',469,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800181,'N','N','N','N',60,'N','N','34bb6b89-58d1-4b54-a7d5-9119889654c5','N','Address1','Address line 1 for this location','The Address 1 identifies the address for an entity''s location','Address 1',TO_TIMESTAMP('2014-12-09 10:44:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',156,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800182,'N','N','N','N',60,'N','N','0fc0f5e0-f7c9-4a7e-8093-d4a185bbe1c6','N','Address2','Address line 2 for this location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 2',TO_TIMESTAMP('2014-12-09 10:44:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',157,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800183,'N','N','N','N',60,'N','N','72f9ae92-3308-4b46-8dd0-18510832d15b','N','Address3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 3',TO_TIMESTAMP('2014-12-09 10:44:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',2555,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800184,'N','N','N','N',60,'N','N','96f43815-f50d-466d-96d3-5a5e41782485','N','Address4','Address Line 4 for the location','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Address 4',TO_TIMESTAMP('2014-12-09 10:44:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',2556,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800185,'N','N','N','N',10,'N','N','b873f8ef-bce0-4669-84d2-abfa17f5e75a','N','Postal','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.','ZIP',TO_TIMESTAMP('2014-12-09 10:44:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',512,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800186,'N','N','N','N',60,'N','N','0fe11cc0-d011-4013-86a3-14994c088940','N','City','Identifies a City','The City identifies a unique City for this Country or Region.','City',TO_TIMESTAMP('2014-12-09 10:44:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',225,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800187,'N','N','N','N',40,'Y','N','ddd38b92-4551-4cf2-84dd-c653464a9ffc','N','RegionName','Name of the Region','The Region Name defines the name that will print when this region is used in a document.','Region',TO_TIMESTAMP('2014-12-09 10:44:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',541,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800188,'N','N','N','N',3,'N','N','e98d9058-2605-40f3-8597-e9db0b1067f4','N','LBR_StaticDataType','Static Data Type',TO_TIMESTAMP('2014-12-09 10:44:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000345,17,1000079,800004,0,'LBR')
;

-- 09/12/2014 10h44min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800189,'N','N','N','N',1,'N','N','0f7f6ae5-389a-4e9a-8394-2d8b99ce1d07','N','LBR_CNABInscEmpType','Company Number Type, according to Febraban','Company Number Type',TO_TIMESTAMP('2014-12-09 10:44:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000346,17,1000080,800004,0,'LBR')
;

-- 09/12/2014 10h44min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800190,'N','N','N','N',15,'N','N','0ad37dda-857b-4bbe-a521-5c36ea561626','N','LBR_CNABInscEmpNo','Company Number Number, according to Febraban','Company Number',TO_TIMESTAMP('2014-12-09 10:44:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000347,10,800004,0,'LBR')
;

-- 09/12/2014 10h44min54s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_ad_client_id',800041,'boleto_mov_ad_client_id','boleto_mov_ad_client_id','fcf59787-0e97-4bc1-86f4-e41149b0c873',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:53','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800191,'N','N','N','N',10,'N','N','50bd4f86-e031-44e5-a70f-0e152100e64c','N','boleto_mov_ad_client_id','boleto_mov_ad_client_id',TO_TIMESTAMP('2014-12-09 10:44:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800041,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min56s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_ad_org_id',800042,'boleto_mov_ad_org_id','boleto_mov_ad_org_id','5ec4b156-77bf-4fc8-b23c-f2952bc04dd8',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:55','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:55','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h44min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800192,'N','N','N','N',10,'N','N','e2fcbbbd-9a4f-4c3e-979a-8fc4711b8650','N','boleto_mov_ad_org_id','boleto_mov_ad_org_id',TO_TIMESTAMP('2014-12-09 10:44:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800042,19,800004,0,'LBR')
;

-- 09/12/2014 10h44min59s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_created',800043,'boleto_mov_created','boleto_mov_created','bca5c1d9-a833-4747-9bae-3cdeb669b6d7',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:44:58','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:44:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800193,'N','N','N','N',29,'N','N','91dd6254-1a71-45e3-9f63-3eaf6c274d3f','N','boleto_mov_created','boleto_mov_created',TO_TIMESTAMP('2014-12-09 10:44:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:44:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800043,16,800004,0,'LBR')
;

-- 09/12/2014 10h45min1s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_createdby',800044,'boleto_mov_createdby','boleto_mov_createdby','8dbdbc61-e69d-40bd-beab-bcc426286831',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800194,'N','N','N','N',10,'N','N','c567d72c-4f27-4482-b603-636ca896f5d8','N','boleto_mov_createdby','boleto_mov_createdby',TO_TIMESTAMP('2014-12-09 10:45:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800044,11,800004,0,'LBR')
;

-- 09/12/2014 10h45min3s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_updated',800045,'boleto_mov_updated','boleto_mov_updated','25883c28-5fbd-446f-9e1a-b26b6c43e16d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:02','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800195,'N','N','N','N',29,'N','N','7c52d147-d6dd-4cd3-85a3-4321f51b02a2','N','boleto_mov_updated','boleto_mov_updated',TO_TIMESTAMP('2014-12-09 10:45:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800045,16,800004,0,'LBR')
;

-- 09/12/2014 10h45min5s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_updatedby',800046,'boleto_mov_updatedby','boleto_mov_updatedby','3e72d043-2b37-4346-b067-976744351e14',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:04','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min6s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800196,'N','N','N','N',10,'N','N','7422a665-5cd0-4c87-ad9a-0823b1b1d65a','N','boleto_mov_updatedby','boleto_mov_updatedby',TO_TIMESTAMP('2014-12-09 10:45:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800046,11,800004,0,'LBR')
;

-- 09/12/2014 10h45min7s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_isactive',800047,'boleto_mov_isactive','boleto_mov_isactive','eafdbf4a-3ede-48f1-9cf3-3f037961092e',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:06','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800197,'N','N','N','N',1,'N','N','37eafc2b-45a0-4948-b9db-2add931b9305','N','boleto_mov_isactive','boleto_mov_isactive',TO_TIMESTAMP('2014-12-09 10:45:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800047,20,800004,0,'LBR')
;

-- 09/12/2014 10h45min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800198,'N','N','N','N',10,'N','N','daf564bc-836b-4676-bb89-5b55736a5cb2','N','LBR_BoletoMovement_ID','Boleto Movement',TO_TIMESTAMP('2014-12-09 10:45:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000364,19,800004,0,'LBR')
;

-- 09/12/2014 10h45min11s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_boleto_id',800048,'boleto_mov_lbr_boleto_id','boleto_mov_lbr_boleto_id','8a796a6c-d3a1-4577-98f3-9f895fd29df9',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800199,'N','N','N','N',10,'N','N','2a4dc991-bfcd-4e68-b7c9-25255f061659','N','boleto_mov_lbr_boleto_id','boleto_mov_lbr_boleto_id',TO_TIMESTAMP('2014-12-09 10:45:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800048,19,800004,0,'LBR')
;

-- 09/12/2014 10h45min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800200,'N','N','N','N',1,'N','N','3a775293-2f22-4266-8ad1-72259b782267','N','LBR_CNAB240MovementType','Movement Type',TO_TIMESTAMP('2014-12-09 10:45:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000363,17,1000083,800004,0,'LBR')
;

-- 09/12/2014 10h45min14s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_description',800049,'boleto_mov_description','boleto_mov_description','77d23fed-60bb-43e3-a819-31b107fb9453',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min15s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800201,'N','N','N','N',255,'N','N','2dff9ac7-c289-4de1-9b1b-5b454fd31ed5','N','boleto_mov_description','boleto_mov_description',TO_TIMESTAMP('2014-12-09 10:45:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800049,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min17s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_seqno',800050,'boleto_mov_seqno','boleto_mov_seqno','a6bb9835-0d9a-4c4a-86ca-c5991e4900ae',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800202,'N','N','N','N',10,'N','N','23f34269-c0d1-4303-a573-82c0024f2f92','N','boleto_mov_seqno','boleto_mov_seqno',TO_TIMESTAMP('2014-12-09 10:45:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800050,11,800004,0,'LBR')
;

-- 09/12/2014 10h45min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800203,'N','N','N','N',29,'N','N','04d2f226-90a5-43b6-8a53-ece6148ade74','N','LBR_FileGeneratingDate','Indicates when the file was generated','File Generating Date',TO_TIMESTAMP('2014-12-09 10:45:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000366,15,800004,0,'LBR')
;

-- 09/12/2014 10h45min20s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_cnab240seqno',800051,'boleto_mov_lbr_cnab240seqno','boleto_mov_lbr_cnab240seqno','fde593d8-2d77-4b9f-98ab-5cae1d02ed4a',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800204,'N','N','N','N',10,'N','N','fe53fd0e-9152-4fd4-ba10-f1dd17bd3001','N','boleto_mov_lbr_cnab240seqno','boleto_mov_lbr_cnab240seqno',TO_TIMESTAMP('2014-12-09 10:45:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800051,11,800004,0,'LBR')
;

-- 09/12/2014 10h45min22s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_numberinbank',800052,'boleto_mov_lbr_numberinbank','boleto_mov_lbr_numberinbank','a1720c35-1380-41ac-a539-5b5a9268dc93',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:21','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:21','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800205,'N','N','N','N',20,'N','N','e3ca84a1-1d51-438b-a541-6b31cbec698a','N','boleto_mov_lbr_numberinbank','boleto_mov_lbr_numberinbank',TO_TIMESTAMP('2014-12-09 10:45:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800052,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min25s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_carteiratype',800053,'boleto_mov_lbr_carteiratype','boleto_mov_lbr_carteiratype','ebe6b023-8db8-431b-866c-56b5a2839560',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:24','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:24','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800206,'N','N','N','N',1,'N','N','0addf3cc-7848-4a8e-a404-970ad7960ccd','N','boleto_mov_lbr_carteiratype','boleto_mov_lbr_carteiratype',TO_TIMESTAMP('2014-12-09 10:45:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800053,20,800004,0,'LBR')
;

-- 09/12/2014 10h45min27s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_numberinorg',800054,'boleto_mov_lbr_numberinorg','boleto_mov_lbr_numberinorg','4366b823-c1aa-4a5a-a60d-97a9ffa29bb9',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:26','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800207,'N','N','N','N',15,'N','N','3117f2db-a4db-4a68-8bdf-efa50022c109','N','boleto_mov_lbr_numberinorg','boleto_mov_lbr_numberinorg',TO_TIMESTAMP('2014-12-09 10:45:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800054,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min29s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_duedate',800055,'boleto_mov_duedate','boleto_mov_duedate','0104c13b-98a6-4cf0-ab13-9f987e04cbb3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:28','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:28','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800208,'N','N','N','N',29,'N','N','c665c019-5d5a-4638-8ac4-d36869c4cd40','N','boleto_mov_duedate','boleto_mov_duedate',TO_TIMESTAMP('2014-12-09 10:45:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800055,16,800004,0,'LBR')
;

-- 09/12/2014 10h45min31s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_grandtotal',800056,'boleto_mov_grandtotal','boleto_mov_grandtotal','084b23bc-6ed4-4bd0-a892-58b6d27f32f3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:30','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:30','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800209,'N','N','N','N',131089,'N','N','e5b04cbb-a811-495b-ba36-1c154c5dfc29','N','boleto_mov_grandtotal','boleto_mov_grandtotal',TO_TIMESTAMP('2014-12-09 10:45:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800056,22,800004,0,'LBR')
;

-- 09/12/2014 10h45min34s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_collectbankno',800057,'boleto_mov_lbr_collectbankno','boleto_mov_lbr_collectbankno','0a784654-912b-4c78-b745-1255208dae66',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800210,'N','N','N','N',10,'N','N','4981555a-7149-4ff2-9d88-153912100625','N','boleto_mov_lbr_collectbankno','boleto_mov_lbr_collectbankno',TO_TIMESTAMP('2014-12-09 10:45:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800057,11,800004,0,'LBR')
;

-- 09/12/2014 10h45min36s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_collectbankagencyno',800058,'boleto_mov_collectbankagencyno','boleto_mov_collectbankagencyno','6c51ce3d-12dc-4691-a4c3-ffddfb0b0b6c',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:35','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800211,'N','N','N','N',7,'N','N','0cb26290-aa7d-4ce8-8601-3d105051a55d','N','boleto_mov_collectbankagencyno','boleto_mov_collectbankagencyno',TO_TIMESTAMP('2014-12-09 10:45:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800058,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min38s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_documentno',800059,'boleto_mov_lbr_documentno','boleto_mov_lbr_documentno','eb2b854f-4f7d-4535-bd28-0824d83ce456',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:37','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800212,'N','N','N','N',30,'N','N','49b007b6-06d1-4bf3-ab45-f9adc22c0e0e','N','boleto_mov_lbr_documentno','boleto_mov_lbr_documentno',TO_TIMESTAMP('2014-12-09 10:45:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800059,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min40s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_cnab240currency',800060,'boleto_mov_lbr_cnab240currency','boleto_mov_lbr_cnab240currency','5adf4147-4e17-444d-8a1b-49f6223dc363',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:39','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:39','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800213,'N','N','N','N',2,'N','N','9ababd02-6831-480e-8778-0332e5482294','N','boleto_mov_lbr_cnab240currency','boleto_mov_lbr_cnab240currency',TO_TIMESTAMP('2014-12-09 10:45:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800060,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min42s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_loancontractno',800061,'boleto_mov_lbr_loancontractno','boleto_mov_lbr_loancontractno','2a4c928a-8463-4d67-a32a-f1e7d2cc05c3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:41','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:41','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800214,'N','N','N','N',10,'N','N','57372113-e17f-45c6-a744-27dba87cd9ca','N','boleto_mov_lbr_loancontractno','boleto_mov_lbr_loancontractno',TO_TIMESTAMP('2014-12-09 10:45:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800061,10,800004,0,'LBR')
;

-- 09/12/2014 10h45min45s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_feeamt',800062,'boleto_mov_feeamt','boleto_mov_feeamt','934cc32a-f766-4a96-8840-807927ddd26d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:44','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800215,'N','N','N','N',131089,'N','N','cef54d39-cf47-4ee6-bee4-0dba12de49a8','N','boleto_mov_feeamt','boleto_mov_feeamt',TO_TIMESTAMP('2014-12-09 10:45:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800062,12,800004,0,'LBR')
;

-- 09/12/2014 10h45min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800216,'N','N','N','N',10,'N','N','056304d1-52e0-45ea-bee9-1a002e0c6407','N','LBR_Cob_Ocorrencia1_ID','Collection Occurrence 1',TO_TIMESTAMP('2014-12-09 10:45:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000371,18,1000084,800004,0,'LBR')
;

-- 09/12/2014 10h45min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800217,'N','N','N','N',10,'N','N','bc1037c3-d258-4258-9641-c9036a4be9a0','N','LBR_Cob_Ocorrencia2_ID','Collection Occurrence 2',TO_TIMESTAMP('2014-12-09 10:45:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000372,18,1000084,800004,0,'LBR')
;

-- 09/12/2014 10h45min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800218,'N','N','N','N',10,'N','N','9201fcee-8ef9-409e-9ca8-ad5bbde01933','N','LBR_Cob_Ocorrencia3_ID','Collection Occurrence 3',TO_TIMESTAMP('2014-12-09 10:45:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000373,18,1000084,800004,0,'LBR')
;

-- 09/12/2014 10h45min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800219,'N','N','N','N',10,'N','N','dd9e306a-7ccc-4fec-8221-486620c8fc6f','N','LBR_Cob_Ocorrencia4_ID','Collection Occurrence 4',TO_TIMESTAMP('2014-12-09 10:45:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000374,18,1000084,800004,0,'LBR')
;

-- 09/12/2014 10h45min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800220,'N','N','N','N',10,'N','N','2b880024-2186-43c5-9c6c-5301332cb055','N','LBR_Cob_Ocorrencia5_ID','Collection Occurrence 5',TO_TIMESTAMP('2014-12-09 10:45:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000375,18,1000084,800004,0,'LBR')
;

-- 09/12/2014 10h45min53s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_interestamt',800063,'boleto_mov_interestamt','boleto_mov_interestamt','5ea81c34-ba80-4e49-a553-7f8ed73382ca',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:52','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:52','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800221,'N','N','N','N',131089,'N','N','43d647a1-e388-423a-a7fa-93e639ab2272','N','boleto_mov_interestamt','boleto_mov_interestamt',TO_TIMESTAMP('2014-12-09 10:45:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800063,12,800004,0,'LBR')
;

-- 09/12/2014 10h45min55s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_discountamt',800064,'boleto_mov_discountamt','boleto_mov_discountamt','e79f8ed8-7771-4853-b739-dbfa69bc484d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:54','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:54','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800222,'N','N','N','N',131089,'N','N','84f3e4e6-ee05-4844-9a8e-2b9c91e7e706','N','boleto_mov_discountamt','boleto_mov_discountamt',TO_TIMESTAMP('2014-12-09 10:45:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800064,12,800004,0,'LBR')
;

-- 09/12/2014 10h45min57s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_writeoffamt',800065,'boleto_mov_writeoffamt','boleto_mov_writeoffamt','f97dcfcf-499d-46c9-9fcf-dd7bea7aae5a',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:56','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:56','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h45min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800223,'N','N','N','N',131089,'N','N','c71b99eb-4da4-4dc9-b766-1af096e6dbd5','N','boleto_mov_writeoffamt','boleto_mov_writeoffamt',TO_TIMESTAMP('2014-12-09 10:45:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800065,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min0s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_iofamt',800066,'boleto_mov_lbr_iofamt','boleto_mov_lbr_iofamt','4d7795e4-bd8e-4bae-b7a6-56cdca9245d2',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:45:59','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:45:59','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800224,'N','N','N','N',131089,'N','N','e3c7561e-08d2-42ab-abc6-b2b7672c3178','N','boleto_mov_lbr_iofamt','boleto_mov_lbr_iofamt',TO_TIMESTAMP('2014-12-09 10:45:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:45:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800066,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min2s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_payamt',800067,'boleto_mov_payamt','boleto_mov_payamt','90f65b83-1ea9-4dde-ab7a-1595acec5497',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800225,'N','N','N','N',131089,'N','N','1898a2d4-e3e6-4566-947b-d9c72adeec96','N','boleto_mov_payamt','boleto_mov_payamt',TO_TIMESTAMP('2014-12-09 10:46:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800067,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min4s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_availableamt',800068,'boleto_mov_availableamt','boleto_mov_availableamt','0498b36f-33fc-4ee1-bfbd-c22c1963c51f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:03','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min5s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800226,'N','N','N','N',131089,'N','N','da439f16-6406-4839-bcfe-468c0db3b561','N','boleto_mov_availableamt','boleto_mov_availableamt',TO_TIMESTAMP('2014-12-09 10:46:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800068,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min6s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_otherexpensesamt',800069,'boleto_mov_otherexpensesamt','boleto_mov_otherexpensesamt','ccbeb69e-1745-4893-8c42-7f5fb25c2e60',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:05','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800227,'N','N','N','N',131089,'N','N','0301072a-320a-42de-87b5-77bd4890fbdf','N','boleto_mov_otherexpensesamt','boleto_mov_otherexpensesamt',TO_TIMESTAMP('2014-12-09 10:46:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:05','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800069,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min9s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_otherincomesamt',800070,'boleto_mov_otherincomesamt','boleto_mov_otherincomesamt','1d3ebad6-c51f-4de6-b5b9-5fc5b830be8e',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800228,'N','N','N','N',131089,'N','N','850e4f0b-ac71-442b-bc3c-ac4517655d4b','N','boleto_mov_otherincomesamt','boleto_mov_otherincomesamt',TO_TIMESTAMP('2014-12-09 10:46:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800070,12,800004,0,'LBR')
;

-- 09/12/2014 10h46min11s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cob_ocorrenciadate',800071,'boleto_mov_cob_ocorrenciadate','boleto_mov_cob_ocorrenciadate','f03cadbb-f618-4fef-9ec7-4cdcdc7961d7',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:10','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800229,'N','N','N','N',29,'N','N','52df074b-0575-4132-ba68-87165f5bf845','N','boleto_mov_cob_ocorrenciadate','boleto_mov_cob_ocorrenciadate',TO_TIMESTAMP('2014-12-09 10:46:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800071,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min13s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_creditdate',800072,'boleto_mov_lbr_creditdate','boleto_mov_lbr_creditdate','87c0f45f-9b95-4547-9d05-3de2088b3977',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:12','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:12','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800230,'N','N','N','N',29,'N','N','ea64b0e2-0c6a-452e-9326-2969b2121c5a','N','boleto_mov_lbr_creditdate','boleto_mov_lbr_creditdate',TO_TIMESTAMP('2014-12-09 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800072,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min15s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_correspbankno',800073,'boleto_mov_lbr_correspbankno','boleto_mov_lbr_correspbankno','3bcdc69e-e76e-43c1-b4a1-c7c0dc1f563f',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:14','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800231,'N','N','N','N',10,'N','N','32797ce1-59ef-40fa-a519-b40c0019f31c','N','boleto_mov_lbr_correspbankno','boleto_mov_lbr_correspbankno',TO_TIMESTAMP('2014-12-09 10:46:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:14','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800073,11,800004,0,'LBR')
;

-- 09/12/2014 10h46min18s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_numberincorrespbank',800074,'boleto_mov_numberincorrespbank','boleto_mov_numberincorrespbank','5a3fb8fc-ee81-445b-8763-d7a524930f8e',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:17','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800232,'N','N','N','N',20,'N','N','f27feda7-ebf8-4b8e-84b8-69f482eb0e90','N','boleto_mov_numberincorrespbank','boleto_mov_numberincorrespbank',TO_TIMESTAMP('2014-12-09 10:46:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800074,10,800004,0,'LBR')
;

-- 09/12/2014 10h46min20s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_conveniono',800075,'boleto_mov_lbr_conveniono','boleto_mov_lbr_conveniono','d08a9bc6-0537-486f-8290-b569448238c5',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:19','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800233,'N','N','N','N',20,'N','N','35e53d42-a6f6-4153-9339-ac1347ab882c','N','boleto_mov_lbr_conveniono','boleto_mov_lbr_conveniono',TO_TIMESTAMP('2014-12-09 10:46:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800075,10,800004,0,'LBR')
;

-- 09/12/2014 10h46min22s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_collectiontype',800076,'boleto_mov_lbr_collectiontype','boleto_mov_lbr_collectiontype','f12611ea-2383-4c2b-8e32-ff09f414c961',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:21','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:21','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800234,'N','N','N','N',2,'N','N','cb5b9c91-6575-436e-b01a-c45d91bc9aa2','N','boleto_mov_lbr_collectiontype','boleto_mov_lbr_collectiontype',TO_TIMESTAMP('2014-12-09 10:46:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800076,10,800004,0,'LBR')
;

-- 09/12/2014 10h46min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800235,'N','N','N','N',10,'N','N','d20b24c4-3438-4872-8623-50963c059ce6','N','LBR_Cob_Movimento_ID','Collection Movement',TO_TIMESTAMP('2014-12-09 10:46:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000361,19,800004,0,'LBR')
;

-- 09/12/2014 10h46min26s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_interestcode',800077,'boleto_mov_lbr_interestcode','boleto_mov_lbr_interestcode','d5e16c41-2cef-4b3f-8fb2-54cdb93f651c',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800236,'N','N','N','N',1,'N','N','92cc2b7d-7b8c-41f7-a290-17522d110632','N','boleto_mov_lbr_interestcode','boleto_mov_lbr_interestcode',TO_TIMESTAMP('2014-12-09 10:46:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800077,20,800004,0,'LBR')
;

-- 09/12/2014 10h46min28s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_interestdate',800078,'boleto_mov_lbr_interestdate','boleto_mov_lbr_interestdate','27971d86-4861-4bbd-b34b-5bf74f331f9b',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:27','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:27','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800237,'N','N','N','N',29,'N','N','8af68754-9be4-4577-8d6d-6ac566e6128e','N','boleto_mov_lbr_interestdate','boleto_mov_lbr_interestdate',TO_TIMESTAMP('2014-12-09 10:46:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800078,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min30s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_interestap',800079,'boleto_mov_lbr_interestap','boleto_mov_lbr_interestap','e00e5e48-ca80-4164-90e2-63bb89fab269',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:29','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:29','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min31s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800238,'N','N','N','N',131089,'N','N','334b90a9-1453-44b8-a509-9013d91093d6','N','boleto_mov_lbr_interestap','boleto_mov_lbr_interestap',TO_TIMESTAMP('2014-12-09 10:46:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800079,22,800004,0,'LBR')
;

-- 09/12/2014 10h46min32s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_cnabdiscount1ap',800080,'boleto_mov_lbr_cnabdiscount1ap','boleto_mov_lbr_cnabdiscount1ap','205698d7-97f5-4561-a78b-6ab1efad2a72',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:31','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800239,'N','N','N','N',131089,'N','N','002b67dc-8133-42da-8573-6ea503ed3c59','N','boleto_mov_lbr_cnabdiscount1ap','boleto_mov_lbr_cnabdiscount1ap',TO_TIMESTAMP('2014-12-09 10:46:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800080,22,800004,0,'LBR')
;

-- 09/12/2014 10h46min35s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_cnabdiscount2ap',800081,'boleto_mov_lbr_cnabdiscount2ap','boleto_mov_lbr_cnabdiscount2ap','edb8b4d0-ee08-42fc-ab1f-921aa6358ba1',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:33','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min36s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800240,'N','N','N','N',131089,'N','N','7a45fb80-582b-458b-bfea-f50d901e43f7','N','boleto_mov_lbr_cnabdiscount2ap','boleto_mov_lbr_cnabdiscount2ap',TO_TIMESTAMP('2014-12-09 10:46:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800081,22,800004,0,'LBR')
;

-- 09/12/2014 10h46min37s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_lbr_cnabdiscount3ap',800082,'boleto_mov_lbr_cnabdiscount3ap','boleto_mov_lbr_cnabdiscount3ap','c1acb0fd-d718-4d5b-8a6e-d73ac49910c5',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:36','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:36','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800241,'N','N','N','N',131089,'N','N','0e2be9b8-318e-4eee-9e16-bd693fa269dd','N','boleto_mov_lbr_cnabdiscount3ap','boleto_mov_lbr_cnabdiscount3ap',TO_TIMESTAMP('2014-12-09 10:46:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:36','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800082,22,800004,0,'LBR')
;

-- 09/12/2014 10h46min39s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount1code',800083,'boleto_mov_cnabdiscount1code','boleto_mov_cnabdiscount1code','f8dd5ca3-e282-42bf-a57c-e61b86447215',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:38','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800242,'N','N','N','N',1,'N','N','08cc8136-6322-42fa-9079-29a3cb8c13c5','N','boleto_mov_cnabdiscount1code','boleto_mov_cnabdiscount1code',TO_TIMESTAMP('2014-12-09 10:46:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800083,20,800004,0,'LBR')
;

-- 09/12/2014 10h46min41s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount2code',800084,'boleto_mov_cnabdiscount2code','boleto_mov_cnabdiscount2code','a58c3f92-4ece-4981-8ec6-32bf7f3b37e8',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800243,'N','N','N','N',1,'N','N','4d957618-7a7d-4e90-8897-95fab6eebe2e','N','boleto_mov_cnabdiscount2code','boleto_mov_cnabdiscount2code',TO_TIMESTAMP('2014-12-09 10:46:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800084,20,800004,0,'LBR')
;

-- 09/12/2014 10h46min43s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount3code',800085,'boleto_mov_cnabdiscount3code','boleto_mov_cnabdiscount3code','0c8cabf3-d0b3-42da-a48a-a00b5fb24792',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:42','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800244,'N','N','N','N',1,'N','N','79034f43-8138-4d3f-9a4d-affeb4d469ad','N','boleto_mov_cnabdiscount3code','boleto_mov_cnabdiscount3code',TO_TIMESTAMP('2014-12-09 10:46:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800085,20,800004,0,'LBR')
;

-- 09/12/2014 10h46min46s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount1date',800086,'boleto_mov_cnabdiscount1date','boleto_mov_cnabdiscount1date','b470e10c-31e8-4fb7-ac23-b067869da0fc',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:44','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800245,'N','N','N','N',29,'N','N','308a163b-3124-44bf-8ee8-22f97226b219','N','boleto_mov_cnabdiscount1date','boleto_mov_cnabdiscount1date',TO_TIMESTAMP('2014-12-09 10:46:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800086,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min48s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount2date',800087,'boleto_mov_cnabdiscount2date','boleto_mov_cnabdiscount2date','68f46522-9751-4278-85c2-38da49874cc3',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:47','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800246,'N','N','N','N',29,'N','N','b77dbaa4-876c-4123-80a3-32acd1edb0d2','N','boleto_mov_cnabdiscount2date','boleto_mov_cnabdiscount2date',TO_TIMESTAMP('2014-12-09 10:46:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800087,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min50s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_cnabdiscount3date',800088,'boleto_mov_cnabdiscount3date','boleto_mov_cnabdiscount3date','c5efd446-6f67-49fc-b619-7749d1bdd17d',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:49','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:49','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800247,'N','N','N','N',29,'N','N','459c01f7-524d-4bc1-bc62-5fb471295d6b','N','boleto_mov_cnabdiscount3date','boleto_mov_cnabdiscount3date',TO_TIMESTAMP('2014-12-09 10:46:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800088,16,800004,0,'LBR')
;

-- 09/12/2014 10h46min52s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_latepaypenaltyap',800089,'boleto_mov_latepaypenaltyap','boleto_mov_latepaypenaltyap','96b42c68-0360-4ff4-a32b-4f04f8b7a831',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:51','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:51','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800248,'N','N','N','N',131089,'N','N','5c1054aa-7988-4598-8902-76e07ee9a54f','N','boleto_mov_latepaypenaltyap','boleto_mov_latepaypenaltyap',TO_TIMESTAMP('2014-12-09 10:46:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800089,22,800004,0,'LBR')
;

-- 09/12/2014 10h46min54s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_latepaypenaltycode',800090,'boleto_mov_latepaypenaltycode','boleto_mov_latepaypenaltycode','5f7301dd-ce78-43b5-b0dc-8f2f8432712b',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:53','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:53','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800249,'N','N','N','N',1,'N','N','1e394723-157d-4190-b403-ae45501d3cc6','N','boleto_mov_latepaypenaltycode','boleto_mov_latepaypenaltycode',TO_TIMESTAMP('2014-12-09 10:46:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800090,20,800004,0,'LBR')
;

-- 09/12/2014 10h46min56s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('boleto_mov_latepaypenaltydate',800091,'boleto_mov_latepaypenaltydate','boleto_mov_latepaypenaltydate','27a8b428-0b02-4648-b976-23a8cc8c816e',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-12-09 10:46:55','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 10:46:55','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h46min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800250,'N','N','N','N',29,'N','N','ff59d56d-8cef-4d2a-b144-e5fce98d6c92','N','boleto_mov_latepaypenaltydate','boleto_mov_latepaypenaltydate',TO_TIMESTAMP('2014-12-09 10:46:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:46:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',800091,16,800004,0,'LBR')
;

-- 09/12/2014 10h48min36s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,800005,'N','Y','N','LBR','L','c9c93f5c-6a2a-4a50-aee3-a08c0da472e4','Y','N','LBR_RV_Boleto_Summary','Boleto Summary','Y',0,0,TO_TIMESTAMP('2014-12-09 10:48:35','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-12-09 10:48:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h48min37s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800012,'Table LBR_RV_Boleto_Summary','LBR_RV_Boleto_Summary',1,'65cc3c18-f4d2-4670-a0e8-099d4f8e221c',0,TO_TIMESTAMP('2014-12-09 10:48:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-12-09 10:48:36','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h48min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800251,'N','N','N','N',10,'N','N','af5b2806-1e74-488b-8dc9-a927b64ea840','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client',TO_TIMESTAMP('2014-12-09 10:48:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',102,19,800005,129,0,'LBR')
;

-- 09/12/2014 10h48min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800252,'N','N','N','N',10,'N','N','774f9880-dfc5-47b7-bf51-6b4276dab175','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization',TO_TIMESTAMP('2014-12-09 10:48:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',113,19,800005,104,0,'LBR')
;

-- 09/12/2014 10h48min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800253,'N','N','N','N',10,'N','N','659126e4-cdcc-4062-831b-266f6af29cd5','N','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type',TO_TIMESTAMP('2014-12-09 10:48:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',196,19,800005,0,'LBR')
;

-- 09/12/2014 10h48min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800254,'N','N','N','N',29,'N','N','fab832eb-ab14-4d4f-b3ff-2ef665855444','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created',TO_TIMESTAMP('2014-12-09 10:48:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',245,16,800005,0,'LBR')
;

-- 09/12/2014 10h48min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800255,'N','N','N','N',10,'N','N','b3248b2b-0bad-4e34-87bc-b9921afc8cd7','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By',TO_TIMESTAMP('2014-12-09 10:48:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',246,18,110,800005,0,'LBR')
;

-- 09/12/2014 10h48min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800256,'N','N','N','N',29,'N','N','59b244f2-9cad-4cd4-8e56-873ab2471384','N','DateAcct','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date',TO_TIMESTAMP('2014-12-09 10:48:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',263,15,800005,0,'LBR')
;

-- 09/12/2014 10h48min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800257,'N','N','N','N',29,'N','N','e8be6e63-c04a-45c4-8fa2-7daf1590e5fa','N','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date',TO_TIMESTAMP('2014-12-09 10:48:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',265,15,800005,0,'LBR')
;

-- 09/12/2014 10h48min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800258,'N','N','N','N',255,'Y','N','f16148fc-7d8b-46cc-b21d-3004068f5030','N','Description','Optional short description of the record','A description is limited to 255 characters.','Description',TO_TIMESTAMP('2014-12-09 10:48:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',275,10,800005,0,'LBR')
;

-- 09/12/2014 10h48min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800259,'N','N','N','N',2,'N','N','284d06b4-59a5-4277-8a7d-4fb4604a546f','N','DocAction','The targeted status of the document','CO','You find the current status in the Document Status field. The options are listed in a popup','Document Action',TO_TIMESTAMP('2014-12-09 10:48:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',287,28,135,800005,0,'LBR')
;

-- 09/12/2014 10h48min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800260,'N','N','N','N',2,'N','N','3651da8f-3dba-456b-8e4e-3434eaf6a246','N','DocStatus','The current status of the document','DR','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status',TO_TIMESTAMP('2014-12-09 10:48:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',289,17,131,800005,0,'LBR')
;

-- 09/12/2014 10h48min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800261,'N','N','N','N',30,'Y','N','97968624-0c22-4291-b41e-45b63226b9e3','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No',TO_TIMESTAMP('2014-12-09 10:48:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',290,10,800005,0,'LBR')
;

-- 09/12/2014 10h48min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800262,'N','N','N','N',131089,'N','N','a009a68d-f682-4839-9213-4f96a98a9380','N','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total',TO_TIMESTAMP('2014-12-09 10:48:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',316,12,800005,0,'LBR')
;

-- 09/12/2014 10h49min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800263,'N','N','N','N',1,'N','N','f733691f-aa57-40d5-9ac7-eac44b2f0e29','N','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active',TO_TIMESTAMP('2014-12-09 10:48:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:48:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',348,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800264,'N','N','N','N',1,'N','N','28dad506-d96e-46e8-99b0-6d1ae83f64e9','N','Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Posted',TO_TIMESTAMP('2014-12-09 10:49:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1308,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800265,'N','N','N','N',1,'N','N','58fa3d3f-0903-4d47-ad7d-757810f52ff0','N','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed',TO_TIMESTAMP('2014-12-09 10:49:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1047,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800266,'N','N','N','N',131089,'N','N','0be324b3-d190-4ab0-b14d-06dee94923a5','N','ProcessedOn','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Processed On',TO_TIMESTAMP('2014-12-09 10:49:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',54128,22,800005,0,'LBR')
;

-- 09/12/2014 10h49min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800267,'N','N','N','N',1,'N','N','c962badf-0a60-4c84-9d1e-5a917e7a80c4','N','Processing','Process Now',TO_TIMESTAMP('2014-12-09 10:49:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',524,28,800005,0,'LBR')
;

-- 09/12/2014 10h49min6s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800268,'N','N','N','N',29,'N','N','bbe01271-c94c-4050-858b-9317674a748e','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated',TO_TIMESTAMP('2014-12-09 10:49:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',607,16,800005,0,'LBR')
;

-- 09/12/2014 10h49min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800269,'N','N','N','N',10,'N','N','68991b4f-9c83-41eb-8d70-4297722f2799','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By',TO_TIMESTAMP('2014-12-09 10:49:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',608,18,110,800005,0,'LBR')
;

-- 09/12/2014 10h49min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800270,'N','N','N','N',10,'N','N','81a903c4-8440-46b7-98b3-dbeca1b2da49','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)',TO_TIMESTAMP('2014-12-09 10:49:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',1000309,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800271,'N','N','N','N',29,'N','N','2e982979-16d2-4573-a188-07bc4a184e8d','N','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date',TO_TIMESTAMP('2014-12-09 10:49:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',2000,15,800005,0,'LBR')
;

-- 09/12/2014 10h49min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800272,'N','N','N','N',10,'N','N','beeebb66-2984-4b18-a6b0-c4497023acb6','N','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ',TO_TIMESTAMP('2014-12-09 10:49:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',187,30,800005,0,'LBR')
;

-- 09/12/2014 10h49min11s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800273,'N','N','N','N',10,'N','N','fbec9680-3276-4a51-9715-5004ca702c0d','N','C_BPartner_Location_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location',TO_TIMESTAMP('2014-12-09 10:49:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',189,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800274,'N','N','N','N',10,'N','N','c961c96c-13e0-4927-8789-7719d4571870','N','LBR_Guarantor_ID','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)',TO_TIMESTAMP('2014-12-09 10:49:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:11','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000312,30,138,800005,0,'LBR')
;

-- 09/12/2014 10h49min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,MandatoryLogic,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800275,'N','N','N','N',10,'N','N','@LBR_Guarantor_ID@ > 0','5c7007d5-2ad7-4e80-8f28-bd3c70af8581','N','LBR_Guarantor_Location_ID','Identifies the address for this guarantor (Business Partner)','The Guarantor (Partner) address indicates the location of a Business Partner','Guarantor (Partner) Location',TO_TIMESTAMP('2014-12-09 10:49:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000311,18,159,800005,1000009,0,'LBR')
;

-- 09/12/2014 10h49min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800276,'N','N','N','N',10,'N','N','382f869c-a324-4896-b8e9-6ddc04a33a5f','N','C_Invoice_ID','Invoice Identifier','The Invoice Document.','Invoice',TO_TIMESTAMP('2014-12-09 10:49:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1008,30,800005,0,'LBR')
;

-- 09/12/2014 10h49min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800277,'N','N','N','N',10,'N','N','85c0886e-09f2-400a-87be-eadf4c54653e','N','C_InvoicePaySchedule_ID','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.','Invoice Payment Schedule',TO_TIMESTAMP('2014-12-09 10:49:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1995,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800278,'N','N','N','N',10,'N','N','ad978d16-378b-4eb4-b8cd-ccc318708ddc','N','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank',TO_TIMESTAMP('2014-12-09 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',835,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800279,'N','N','N','N',10,'N','N','948af4a2-c23f-4cca-9da3-0caf15161f21','N','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account',TO_TIMESTAMP('2014-12-09 10:49:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',836,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800280,'N','N','N','N',10,'N','N','b4d2b0b2-f6e7-4c25-a615-07e7e6a4af6e','N','LBR_CorrespBank_ID','Correspondent Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:49:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000313,18,52001,800005,0,'LBR')
;

-- 09/12/2014 10h49min20s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800281,'N','N','N','N',20,'N','N','2767108c-37af-4f4c-9cf8-92cfbdc52139','N','LBR_NumberInBank','Number in the Bank',TO_TIMESTAMP('2014-12-09 10:49:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000314,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800282,'N','N','N','N',20,'N','N','f4c6e3cc-9159-4ce7-9713-07b084964696','N','LBR_NumberInCorrespBank','Number in the Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:49:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:20','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000315,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800283,'N','N','N','N',15,'N','N','f88e6e2e-3308-468e-b6c5-8bd509e914f8','N','LBR_NumberInOrg','Number in the Org',TO_TIMESTAMP('2014-12-09 10:49:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000316,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800284,'N','N','N','N',10,'N','N','5c21bab5-5522-423c-9378-4d626ec2dcd1','N','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio',TO_TIMESTAMP('2014-12-09 10:49:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000284,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800285,'N','N','N','N',10,'N','N','17281ca5-77b4-4386-b3cb-2f7d2d70035e','N','LBR_BankAccount_Carteira_ID','Defines the Carteira number for a specific bank account','Bank Account Carteira',TO_TIMESTAMP('2014-12-09 10:49:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000287,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800286,'N','N','N','N',1,'N','N','b1d09dd7-0843-4ca4-9c79-246077c92126','N','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type',TO_TIMESTAMP('2014-12-09 10:49:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000290,17,1000064,800005,0,'LBR')
;

-- 09/12/2014 10h49min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800287,'N','N','N','N',2,'N','N','d8a56da4-48a2-4318-acd5-f45c3e50e064','N','LBR_CNAB240Currency','Currency used for CNAB 240','Currency',TO_TIMESTAMP('2014-12-09 10:49:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000317,17,1000073,800005,0,'LBR')
;

-- 09/12/2014 10h49min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800288,'N','N','N','N',10,'N','N','b49ce96b-6a29-42dd-bd61-d0d76eca8a57','N','LBR_LoanContractNo','Loan Contract No.',TO_TIMESTAMP('2014-12-09 10:49:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000318,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800289,'N','N','N','N',2,'N','N','437a579b-ac51-441f-b340-652d363a7870','N','LBR_CollectionType','Collection Type',TO_TIMESTAMP('2014-12-09 10:49:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000305,17,1000069,800005,0,'LBR')
;

-- 09/12/2014 10h49min31s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800290,'N','N','N','N',1,'N','N','4432d2cc-47b7-45d4-bc76-0f32feaef940','N','LBR_CNAB240DocType','Collection document type, according to Febraban.','Febraban Document Type',TO_TIMESTAMP('2014-12-09 10:49:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000319,17,1000074,800005,0,'LBR')
;

-- 09/12/2014 10h49min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800291,'N','N','N','N',1,'N','N','35dc4030-cb20-491a-a190-cb8eb605721e','N','LBR_CollectionRegType','Collection Registration Type','Collection Registration yype in the Bank','Registration Type',TO_TIMESTAMP('2014-12-09 10:49:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000320,17,1000075,800005,0,'LBR')
;

-- 09/12/2014 10h49min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800292,'N','N','N','N',1,'N','N','dea74068-8321-4787-9879-34415fd7fd79','N','LBR_IssueType','Responsible for issuing the collection, according to Febraban.','Issue Type',TO_TIMESTAMP('2014-12-09 10:49:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000321,17,1000076,800005,0,'LBR')
;

-- 09/12/2014 10h49min34s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800293,'N','N','N','N',1,'N','N','7e9087c0-88cc-497c-9c23-b1a53d6a3db1','N','LBR_DistributionType','Responsible for distributing the collection, according to Febraban.','Distribution Type',TO_TIMESTAMP('2014-12-09 10:49:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000322,17,1000077,800005,0,'LBR')
;

-- 09/12/2014 10h49min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800294,'N','N','N','N',1,'N','N','e95eab29-7d19-4b6f-80ce-9df2276f7af6','N','LBR_Accepted','Accepted',TO_TIMESTAMP('2014-12-09 10:49:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:34','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000306,17,1000070,800005,0,'LBR')
;

-- 09/12/2014 10h49min36s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800295,'N','N','N','N',1,'N','N','f23ba232-7818-4a7e-a57f-e40fdbc240c5','N','LBR_PartialPayment','Authorize Partial Payment',TO_TIMESTAMP('2014-12-09 10:49:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000307,17,1000071,800005,0,'LBR')
;

-- 09/12/2014 10h49min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800296,'N','N','N','N',1,'N','N','488099bf-fc3f-4530-91eb-28da3c2951b8','N','LBR_DirectDebitNotice','Direct Debit Notice',TO_TIMESTAMP('2014-12-09 10:49:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:36','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000308,17,1000072,800005,0,'LBR')
;

-- 09/12/2014 10h49min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800297,'N','N','N','N',131089,'N','N','34cd0bfe-ab5a-4101-8f13-d3d337d073b6','N','WriteOffAmt','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.','Write-off Amount',TO_TIMESTAMP('2014-12-09 10:49:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1450,12,800005,0,'LBR')
;

-- 09/12/2014 10h49min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800298,'N','N','N','N',131089,'N','N','c3310edd-1eed-4a76-beb8-c11756cda098','N','LBR_IOFAmt','Defines the IOF Amount','IOF Amount',TO_TIMESTAMP('2014-12-09 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000164,12,800005,0,'LBR')
;

-- 09/12/2014 10h49min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800299,'N','N','N','N',30,'N','N','b63b5b89-79d1-4e93-8b98-5529be510a8d','N','LBR_Fmt_NumberInBank','Number In Bank Formatted','This field will be filled with the "Number In Bank" formatted as it needs to be printed on the Collection Slip','Number In Bank Formatted',TO_TIMESTAMP('2014-12-09 10:49:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000384,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800300,'N','N','N','N',30,'N','N','34094e91-3397-461e-9b5e-c9a1a2b55399','N','LBR_Fmt_AgencyClient','Agency and Client Formatted','This field will be filled with the "Agency and Client" formatted as it needs to be printed on the Collection Slip','Agency and Client Formatted',TO_TIMESTAMP('2014-12-09 10:49:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000385,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800301,'N','N','N','N',15,'N','N','b774f75e-af4c-4ea1-9976-844b2a10e8c5','N','LBR_Fmt_Billfold','Billfold Formatted','This field will be filled with the "Billfold" formatted as it needs to be printed on the Collection Slip','Billfold Formatted',TO_TIMESTAMP('2014-12-09 10:49:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000386,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800302,'N','N','N','N',20,'N','N','c62abc11-2e70-4e6c-8824-ab4042a66c97','N','LBR_Fmt_Doctype','Document Type Formatted','This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip','Document Type Formatted',TO_TIMESTAMP('2014-12-09 10:49:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000387,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800303,'N','N','N','N',15,'N','N','b1fdb110-3fa0-4b9a-a771-c1e8fd7be548','N','LBR_BankUse','Bank Use','This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip','Bank Use',TO_TIMESTAMP('2014-12-09 10:49:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000388,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800304,'N','N','N','N',44,'N','N','77536451-c2af-4cf1-9cf8-3b115292e296','N','LBR_Barcode','Barcode','This field will be filled with the barcode value to be printed on the Collection Slip','Barcode',TO_TIMESTAMP('2014-12-09 10:49:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000389,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800305,'N','N','N','N',54,'N','N','e7a601b6-20ce-439d-b0e5-28e298679307','N','LBR_TypeableLine','Typeable Line','This field will be filled with the typeable line to be printed on the Collection Slip','Typeable Line',TO_TIMESTAMP('2014-12-09 10:49:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000390,10,800005,0,'LBR')
;

-- 09/12/2014 10h49min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800306,'N','N','N','N',1,'N','N','37a06448-61a6-4aed-912e-3a1339e9c304','N','IsPaid','The document is paid','Paid',TO_TIMESTAMP('2014-12-09 10:49:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1402,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800307,'N','N','N','N',1,'N','N','94d09303-8d6e-4e2e-974a-4982f06f3942','N','LBR_IsProtested','The document is protested','''N''','Protested',TO_TIMESTAMP('2014-12-09 10:49:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800022,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800308,'N','N','N','N',1,'N','N','deba0ea3-2dce-4604-a610-1c94d1bdb7a8','N','LBR_IsBaixado','''N''','Baixado',TO_TIMESTAMP('2014-12-09 10:49:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800023,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800309,'N','N','N','N',1,'N','N','741b75aa-244f-423c-9438-797191bc647d','N','LBR_IsSustado','''N''','Sustado',TO_TIMESTAMP('2014-12-09 10:49:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800024,20,800005,0,'LBR')
;

-- 09/12/2014 10h49min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800310,'N','N','N','N',10,'N','N','f1fc1832-379b-45e4-86b8-2d1911ada268','N','boleto_mov_ad_client_id','boleto_mov_ad_client_id',TO_TIMESTAMP('2014-12-09 10:49:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800041,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800311,'N','N','N','N',10,'N','N','fbc05d9d-fe2b-47c4-be54-b260c9eb3bb7','N','boleto_mov_ad_org_id','boleto_mov_ad_org_id',TO_TIMESTAMP('2014-12-09 10:49:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800042,19,800005,0,'LBR')
;

-- 09/12/2014 10h49min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800312,'N','N','N','N',29,'N','N','d56ecfa5-8f72-4955-8755-4d177fcd87f3','N','boleto_mov_created','boleto_mov_created',TO_TIMESTAMP('2014-12-09 10:49:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800043,16,800005,0,'LBR')
;

-- 09/12/2014 10h49min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800313,'N','N','N','N',10,'N','N','59243ddf-5b15-4c9c-a03a-e982919e1a5b','N','boleto_mov_createdby','boleto_mov_createdby',TO_TIMESTAMP('2014-12-09 10:49:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800044,11,800005,0,'LBR')
;

-- 09/12/2014 10h49min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800314,'N','N','N','N',29,'N','N','e62d5aef-ab12-4999-94c0-da05277aabd8','N','boleto_mov_updated','boleto_mov_updated',TO_TIMESTAMP('2014-12-09 10:49:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800045,16,800005,0,'LBR')
;

-- 09/12/2014 10h49min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800315,'N','N','N','N',10,'N','N','07d28725-a16d-42e4-8c67-795b2dcef260','N','boleto_mov_updatedby','boleto_mov_updatedby',TO_TIMESTAMP('2014-12-09 10:49:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800046,11,800005,0,'LBR')
;

-- 09/12/2014 10h50min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800316,'N','N','N','N',1,'N','N','b2a8e449-28ae-44a0-b9a0-d406b6f77be4','N','boleto_mov_isactive','boleto_mov_isactive',TO_TIMESTAMP('2014-12-09 10:49:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:49:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800047,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800317,'N','N','N','N',10,'N','N','6461a679-bbfa-40d3-9d24-fc6fc7b30d32','N','LBR_BoletoMovement_ID','Boleto Movement',TO_TIMESTAMP('2014-12-09 10:50:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000364,19,800005,0,'LBR')
;

-- 09/12/2014 10h50min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800318,'N','N','N','N',10,'N','N','dff6c70f-5034-4e65-8080-779db93a52fa','N','boleto_mov_lbr_boleto_id','boleto_mov_lbr_boleto_id',TO_TIMESTAMP('2014-12-09 10:50:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800048,19,800005,0,'LBR')
;

-- 09/12/2014 10h50min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800319,'N','N','N','N',1,'N','N','7874f2d3-4b31-4741-947f-5f5ac4b76436','N','LBR_CNAB240MovementType','Movement Type',TO_TIMESTAMP('2014-12-09 10:50:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000363,17,1000083,800005,0,'LBR')
;

-- 09/12/2014 10h50min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800320,'N','N','N','N',255,'N','N','b0bfd748-e84f-48bd-ae37-b1f5289077c0','N','boleto_mov_description','boleto_mov_description',TO_TIMESTAMP('2014-12-09 10:50:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800049,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min5s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800321,'N','N','N','N',10,'N','N','3bc7ef76-4803-460a-ad76-cf5a5de492bb','N','boleto_mov_seqno','boleto_mov_seqno',TO_TIMESTAMP('2014-12-09 10:50:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800050,11,800005,0,'LBR')
;

-- 09/12/2014 10h50min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800322,'N','N','N','N',29,'N','N','7a744743-9289-4d31-8651-214796317e18','N','LBR_FileGeneratingDate','Indicates when the file was generated','File Generating Date',TO_TIMESTAMP('2014-12-09 10:50:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:05','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000366,15,800005,0,'LBR')
;

-- 09/12/2014 10h50min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800323,'N','N','N','N',10,'N','N','d9cdf992-8ace-4834-9644-4f15e9410ce8','N','boleto_mov_lbr_cnab240seqno','boleto_mov_lbr_cnab240seqno',TO_TIMESTAMP('2014-12-09 10:50:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800051,11,800005,0,'LBR')
;

-- 09/12/2014 10h50min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800324,'N','N','N','N',20,'N','N','408e85b2-8c72-491c-84a0-f46074ead564','N','boleto_mov_lbr_numberinbank','boleto_mov_lbr_numberinbank',TO_TIMESTAMP('2014-12-09 10:50:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800052,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800325,'N','N','N','N',1,'N','N','af19a6dc-bebc-498e-8785-6f302c224b56','N','boleto_mov_lbr_carteiratype','boleto_mov_lbr_carteiratype',TO_TIMESTAMP('2014-12-09 10:50:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800053,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min11s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800326,'N','N','N','N',15,'N','N','e7aca860-6ed5-4019-9fd3-798bfe8b2c53','N','boleto_mov_lbr_numberinorg','boleto_mov_lbr_numberinorg',TO_TIMESTAMP('2014-12-09 10:50:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800054,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800327,'N','N','N','N',29,'N','N','8f7ff445-0d99-46ab-98ce-322fe28a73e6','N','boleto_mov_duedate','boleto_mov_duedate',TO_TIMESTAMP('2014-12-09 10:50:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:11','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800055,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800328,'N','N','N','N',131089,'N','N','8facd298-0b6b-4dfd-b32f-df27ea6387b6','N','boleto_mov_grandtotal','boleto_mov_grandtotal',TO_TIMESTAMP('2014-12-09 10:50:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800056,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800329,'N','N','N','N',10,'N','N','c6d8f393-0fdc-42e6-b68b-c8ce9fd71690','N','boleto_mov_lbr_collectbankno','boleto_mov_lbr_collectbankno',TO_TIMESTAMP('2014-12-09 10:50:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800057,11,800005,0,'LBR')
;

-- 09/12/2014 10h50min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800330,'N','N','N','N',7,'N','N','6537eb38-0f0b-4166-be55-85dbf0cec15d','N','boleto_mov_collectbankagencyno','boleto_mov_collectbankagencyno',TO_TIMESTAMP('2014-12-09 10:50:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:14','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800058,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800331,'N','N','N','N',30,'N','N','234ffd0c-fe62-42c5-96c2-6b0f810b7f57','N','boleto_mov_lbr_documentno','boleto_mov_lbr_documentno',TO_TIMESTAMP('2014-12-09 10:50:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800059,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800332,'N','N','N','N',2,'N','N','01faa7e4-191d-4012-8119-2437ce205e7f','N','boleto_mov_lbr_cnab240currency','boleto_mov_lbr_cnab240currency',TO_TIMESTAMP('2014-12-09 10:50:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800060,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800333,'N','N','N','N',10,'N','N','06897937-6f02-4e44-adf0-32429d6f4471','N','boleto_mov_lbr_loancontractno','boleto_mov_lbr_loancontractno',TO_TIMESTAMP('2014-12-09 10:50:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800061,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min20s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800334,'N','N','N','N',131089,'N','N','15c1b1bc-a233-40e6-9e15-089b289e7928','N','boleto_mov_feeamt','boleto_mov_feeamt',TO_TIMESTAMP('2014-12-09 10:50:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800062,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800335,'N','N','N','N',10,'N','N','eb742eda-cda4-46be-931c-d5c5b4926baf','N','LBR_Cob_Ocorrencia1_ID','Collection Occurrence 1',TO_TIMESTAMP('2014-12-09 10:50:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:20','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000371,18,1000084,800005,0,'LBR')
;

-- 09/12/2014 10h50min22s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800336,'N','N','N','N',10,'N','N','b92d0062-5271-4d7b-8f0e-460f4e9b10f7','N','LBR_Cob_Ocorrencia2_ID','Collection Occurrence 2',TO_TIMESTAMP('2014-12-09 10:50:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000372,18,1000084,800005,0,'LBR')
;

-- 09/12/2014 10h50min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800337,'N','N','N','N',10,'N','N','7bbbbaa7-fca4-4363-9788-9ef080f83840','N','LBR_Cob_Ocorrencia3_ID','Collection Occurrence 3',TO_TIMESTAMP('2014-12-09 10:50:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:22','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000373,18,1000084,800005,0,'LBR')
;

-- 09/12/2014 10h50min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800338,'N','N','N','N',10,'N','N','dbdbe0cd-152a-4782-8cdf-3a8c61cef608','N','LBR_Cob_Ocorrencia4_ID','Collection Occurrence 4',TO_TIMESTAMP('2014-12-09 10:50:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000374,18,1000084,800005,0,'LBR')
;

-- 09/12/2014 10h50min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800339,'N','N','N','N',10,'N','N','7cf91eb8-7ee3-4021-ba60-a1d93b7d95ec','N','LBR_Cob_Ocorrencia5_ID','Collection Occurrence 5',TO_TIMESTAMP('2014-12-09 10:50:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000375,18,1000084,800005,0,'LBR')
;

-- 09/12/2014 10h50min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800340,'N','N','N','N',131089,'N','N','4be9e17f-5db8-4814-9781-b4f8c84b16b9','N','boleto_mov_interestamt','boleto_mov_interestamt',TO_TIMESTAMP('2014-12-09 10:50:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800063,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800341,'N','N','N','N',131089,'N','N','58b58249-417e-4529-815b-58088f6cb89f','N','boleto_mov_discountamt','boleto_mov_discountamt',TO_TIMESTAMP('2014-12-09 10:50:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800064,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800342,'N','N','N','N',131089,'N','N','64d7570d-d615-492c-bc2a-e85274006768','N','boleto_mov_writeoffamt','boleto_mov_writeoffamt',TO_TIMESTAMP('2014-12-09 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800065,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800343,'N','N','N','N',131089,'N','N','e798e682-f8a3-4a85-b7e5-bf4ac94c799f','N','boleto_mov_lbr_iofamt','boleto_mov_lbr_iofamt',TO_TIMESTAMP('2014-12-09 10:50:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800066,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min31s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800344,'N','N','N','N',131089,'N','N','2506e60b-d78a-4d0c-946b-5fbe968eca92','N','boleto_mov_payamt','boleto_mov_payamt',TO_TIMESTAMP('2014-12-09 10:50:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800067,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800345,'N','N','N','N',131089,'N','N','b9c3774f-6d20-490d-89be-0262ebf75476','N','boleto_mov_availableamt','boleto_mov_availableamt',TO_TIMESTAMP('2014-12-09 10:50:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800068,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800346,'N','N','N','N',131089,'N','N','d0710991-f9de-42e9-af56-a46946753d8d','N','boleto_mov_otherexpensesamt','boleto_mov_otherexpensesamt',TO_TIMESTAMP('2014-12-09 10:50:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800069,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min34s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800347,'N','N','N','N',131089,'N','N','c8979d73-527e-4d98-b4da-32ba37227aa1','N','boleto_mov_otherincomesamt','boleto_mov_otherincomesamt',TO_TIMESTAMP('2014-12-09 10:50:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800070,12,800005,0,'LBR')
;

-- 09/12/2014 10h50min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800348,'N','N','N','N',29,'N','N','d4e20f6b-8ed9-4ad7-94fb-ba9c768c410a','N','boleto_mov_cob_ocorrenciadate','boleto_mov_cob_ocorrenciadate',TO_TIMESTAMP('2014-12-09 10:50:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:34','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800071,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800349,'N','N','N','N',29,'N','N','c609e8ba-8ae1-4c97-a2e0-e5bd046d2ce9','N','boleto_mov_lbr_creditdate','boleto_mov_lbr_creditdate',TO_TIMESTAMP('2014-12-09 10:50:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800072,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800350,'N','N','N','N',10,'N','N','c3abe0c0-bce3-4ce4-9a0e-f9ff0999ab8d','N','boleto_mov_lbr_correspbankno','boleto_mov_lbr_correspbankno',TO_TIMESTAMP('2014-12-09 10:50:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800073,11,800005,0,'LBR')
;

-- 09/12/2014 10h50min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800351,'N','N','N','N',20,'N','N','9b6af656-809e-49d6-b85f-dad753092c2e','N','boleto_mov_numberincorrespbank','boleto_mov_numberincorrespbank',TO_TIMESTAMP('2014-12-09 10:50:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800074,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800352,'N','N','N','N',20,'N','N','0c8b15b0-d25a-4eca-98f3-b57995d6a535','N','boleto_mov_lbr_conveniono','boleto_mov_lbr_conveniono',TO_TIMESTAMP('2014-12-09 10:50:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800075,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800353,'N','N','N','N',2,'N','N','4b07be87-2909-4b49-a7a5-984417d3a175','N','boleto_mov_lbr_collectiontype','boleto_mov_lbr_collectiontype',TO_TIMESTAMP('2014-12-09 10:50:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800076,10,800005,0,'LBR')
;

-- 09/12/2014 10h50min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800354,'N','N','N','N',10,'N','N','b0a5a04c-4613-43b7-af50-4a72fc81ecdd','N','LBR_Cob_Movimento_ID','Collection Movement',TO_TIMESTAMP('2014-12-09 10:50:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000361,19,800005,0,'LBR')
;

-- 09/12/2014 10h50min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800355,'N','N','N','N',1,'N','N','29d868e8-89ef-4f20-9e20-09bbf52537a1','N','boleto_mov_lbr_interestcode','boleto_mov_lbr_interestcode',TO_TIMESTAMP('2014-12-09 10:50:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800077,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800356,'N','N','N','N',29,'N','N','90607e3a-5b28-424b-b34e-acef5c5618dd','N','boleto_mov_lbr_interestdate','boleto_mov_lbr_interestdate',TO_TIMESTAMP('2014-12-09 10:50:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800078,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800357,'N','N','N','N',131089,'N','N','b4db054e-a5c8-4e89-bcb2-b2826acffe7e','N','boleto_mov_lbr_interestap','boleto_mov_lbr_interestap',TO_TIMESTAMP('2014-12-09 10:50:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800079,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800358,'N','N','N','N',131089,'N','N','28a7bffd-8c36-43ad-929b-a84359dd9e4d','N','boleto_mov_lbr_cnabdiscount1ap','boleto_mov_lbr_cnabdiscount1ap',TO_TIMESTAMP('2014-12-09 10:50:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800080,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800359,'N','N','N','N',131089,'N','N','0e8f07c4-7397-4f01-93d7-ef90283a3e5f','N','boleto_mov_lbr_cnabdiscount2ap','boleto_mov_lbr_cnabdiscount2ap',TO_TIMESTAMP('2014-12-09 10:50:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800081,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800360,'N','N','N','N',131089,'N','N','2a066d1e-c352-4bff-b27e-e00e1b00d4b5','N','boleto_mov_lbr_cnabdiscount3ap','boleto_mov_lbr_cnabdiscount3ap',TO_TIMESTAMP('2014-12-09 10:50:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800082,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800361,'N','N','N','N',1,'N','N','1a597128-a3d5-434e-92a0-d631bd5b1bf0','N','boleto_mov_cnabdiscount1code','boleto_mov_cnabdiscount1code',TO_TIMESTAMP('2014-12-09 10:50:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800083,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800362,'N','N','N','N',1,'N','N','df96d85b-4486-45bf-abdf-519179da99ef','N','boleto_mov_cnabdiscount2code','boleto_mov_cnabdiscount2code',TO_TIMESTAMP('2014-12-09 10:50:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800084,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800363,'N','N','N','N',1,'N','N','1f30ddd2-4ca7-4d93-8f8d-ce6cfad5239f','N','boleto_mov_cnabdiscount3code','boleto_mov_cnabdiscount3code',TO_TIMESTAMP('2014-12-09 10:50:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800085,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800364,'N','N','N','N',29,'N','N','6938f5df-ba98-4a18-9953-c668df4665aa','N','boleto_mov_cnabdiscount1date','boleto_mov_cnabdiscount1date',TO_TIMESTAMP('2014-12-09 10:50:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800086,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800365,'N','N','N','N',29,'N','N','91127e94-e6a8-4cde-aa3b-8be48b9fa904','N','boleto_mov_cnabdiscount2date','boleto_mov_cnabdiscount2date',TO_TIMESTAMP('2014-12-09 10:50:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800087,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800366,'N','N','N','N',29,'N','N','db8b52e1-03d0-4a98-bba4-95324a9fb6e3','N','boleto_mov_cnabdiscount3date','boleto_mov_cnabdiscount3date',TO_TIMESTAMP('2014-12-09 10:50:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800088,16,800005,0,'LBR')
;

-- 09/12/2014 10h50min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800367,'N','N','N','N',131089,'N','N','f3c678af-b249-4f0c-a26f-cd422d202a38','N','boleto_mov_latepaypenaltyap','boleto_mov_latepaypenaltyap',TO_TIMESTAMP('2014-12-09 10:50:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800089,22,800005,0,'LBR')
;

-- 09/12/2014 10h50min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800368,'N','N','N','N',1,'N','N','6dd993f2-0a14-4f6b-9ef5-ea7891e9b17a','N','boleto_mov_latepaypenaltycode','boleto_mov_latepaypenaltycode',TO_TIMESTAMP('2014-12-09 10:50:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:57','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800090,20,800005,0,'LBR')
;

-- 09/12/2014 10h50min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800369,'N','N','N','N',29,'N','N','0a68749a-4405-4c51-ab69-e71b1cf0c7f4','N','boleto_mov_latepaypenaltydate','boleto_mov_latepaypenaltydate',TO_TIMESTAMP('2014-12-09 10:50:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:50:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800091,16,800005,0,'LBR')
;

-- 09/12/2014 10h51min29s BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,AD_Client_ID,Processing,DatabaseViewDrop,Created) VALUES ('N','N','N','3',0,800006,'N','Y','N','LBR','L','aa1daf7b-6693-43a1-a335-294a0ac97fb7','Y','N','LBR_RV_Boleto_Open','Boleto Open','Y',0,0,TO_TIMESTAMP('2014-12-09 10:51:27','YYYY-MM-DD HH24:MI:SS'),0,0,'N','N',TO_TIMESTAMP('2014-12-09 10:51:27','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h51min30s BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID,Created) VALUES ('N',200000,'Y',1000000,'N','Y',800013,'Table LBR_RV_Boleto_Open','LBR_RV_Boleto_Open',1,'94c7175b-f1f2-4da1-b744-f71ba85e8d0d',0,TO_TIMESTAMP('2014-12-09 10:51:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0,TO_TIMESTAMP('2014-12-09 10:51:29','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h51min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800370,'N','N','N','N',10,'N','N','fd7648fc-746a-453a-b21a-11c11f9fac13','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client',TO_TIMESTAMP('2014-12-09 10:51:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',102,19,800006,129,0,'LBR')
;

-- 09/12/2014 10h51min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800371,'N','N','N','N',10,'N','N','46d1ee28-a070-41ae-8efc-ee0f40a12565','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization',TO_TIMESTAMP('2014-12-09 10:51:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',113,19,800006,104,0,'LBR')
;

-- 09/12/2014 10h51min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800372,'N','N','N','N',10,'N','N','4d787d9d-d946-4a6e-9fe1-1e97870b5680','N','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type',TO_TIMESTAMP('2014-12-09 10:51:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',196,19,800006,0,'LBR')
;

-- 09/12/2014 10h51min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800373,'N','N','N','N',29,'N','N','a373fbe4-8926-4f73-b971-db024d77c457','N','Created','Date this record was created','SYSDATE','The Created field indicates the date that this record was created.','Created',TO_TIMESTAMP('2014-12-09 10:51:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',245,16,800006,0,'LBR')
;

-- 09/12/2014 10h51min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800374,'N','N','N','N',10,'N','N','1fa5da47-85d2-416c-b063-466053a5d1cf','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By',TO_TIMESTAMP('2014-12-09 10:51:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',246,18,110,800006,0,'LBR')
;

-- 09/12/2014 10h51min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800375,'N','N','N','N',29,'N','N','98f17c07-b4f6-47a0-a5d5-6b160ee88f1f','N','DateAcct','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date',TO_TIMESTAMP('2014-12-09 10:51:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',263,15,800006,0,'LBR')
;

-- 09/12/2014 10h51min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800376,'N','N','N','N',29,'N','N','b86531a1-7183-46b6-a627-3313a661ca6c','N','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date',TO_TIMESTAMP('2014-12-09 10:51:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',265,15,800006,0,'LBR')
;

-- 09/12/2014 10h51min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800377,'N','N','N','N',255,'Y','N','40cd69a3-472e-4a8d-81b7-2f8ad03976cb','N','Description','Optional short description of the record','A description is limited to 255 characters.','Description',TO_TIMESTAMP('2014-12-09 10:51:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',275,10,800006,0,'LBR')
;

-- 09/12/2014 10h51min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800378,'N','N','N','N',2,'N','N','8b45a237-7269-4870-ae59-a0bfdf76a104','N','DocAction','The targeted status of the document','CO','You find the current status in the Document Status field. The options are listed in a popup','Document Action',TO_TIMESTAMP('2014-12-09 10:51:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',287,28,135,800006,0,'LBR')
;

-- 09/12/2014 10h51min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800379,'N','N','N','N',2,'N','N','a54a0d67-7a0a-4649-bf5b-578c992cdc2e','N','DocStatus','The current status of the document','DR','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status',TO_TIMESTAMP('2014-12-09 10:51:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',289,17,131,800006,0,'LBR')
;

-- 09/12/2014 10h51min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800380,'N','N','N','N',30,'Y','N','03514fae-042f-43be-af4e-08b445fa4f4e','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No',TO_TIMESTAMP('2014-12-09 10:51:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',290,10,800006,0,'LBR')
;

-- 09/12/2014 10h51min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800381,'N','N','N','N',131089,'N','N','307e604f-434f-4348-b467-645b14b3bf60','N','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total',TO_TIMESTAMP('2014-12-09 10:51:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',316,12,800006,0,'LBR')
;

-- 09/12/2014 10h51min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800382,'N','N','N','N',1,'N','N','301f3257-8a41-4425-922a-7e9e203a0cc4','N','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active',TO_TIMESTAMP('2014-12-09 10:51:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',348,20,800006,0,'LBR')
;

-- 09/12/2014 10h51min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800383,'N','N','N','N',1,'N','N','d175627a-ead5-4df6-9ff0-675342a8f92d','N','Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Posted',TO_TIMESTAMP('2014-12-09 10:51:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1308,20,800006,0,'LBR')
;

-- 09/12/2014 10h51min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800384,'N','N','N','N',1,'N','N','eed77aff-5a69-4e9d-8b3e-5c58b3efed65','N','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed',TO_TIMESTAMP('2014-12-09 10:51:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1047,20,800006,0,'LBR')
;

-- 09/12/2014 10h51min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800385,'N','N','N','N',131089,'N','N','78e66682-dfec-471c-b43a-46b800cf587d','N','ProcessedOn','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Processed On',TO_TIMESTAMP('2014-12-09 10:51:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',54128,22,800006,0,'LBR')
;

-- 09/12/2014 10h51min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800386,'N','N','N','N',1,'N','N','7bbfde42-4628-4f86-b536-95b2137d767f','N','Processing','Process Now',TO_TIMESTAMP('2014-12-09 10:51:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',524,28,800006,0,'LBR')
;

-- 09/12/2014 10h51min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800387,'N','N','N','N',29,'N','N','d5d7aac4-b953-4be3-a670-e2ebd584f42c','N','Updated','Date this record was updated','SYSDATE','The Updated field indicates the date that this record was updated.','Updated',TO_TIMESTAMP('2014-12-09 10:51:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:57','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',607,16,800006,0,'LBR')
;

-- 09/12/2014 10h51min59s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800388,'N','N','N','N',10,'N','N','38a750ff-eaaa-4e83-8ecf-71dde9f759eb','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By',TO_TIMESTAMP('2014-12-09 10:51:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',608,18,110,800006,0,'LBR')
;

-- 09/12/2014 10h52min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800389,'N','N','N','N',10,'N','N','eb60cba9-2f21-48dd-bf7e-937cd21bbdfb','N','LBR_Boleto_ID','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.','Brazilian Bank Collection (Boleto)',TO_TIMESTAMP('2014-12-09 10:51:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:51:59','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',1000309,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800390,'N','N','N','N',29,'N','N','ffb29de9-5cb3-4a9c-93c9-851ab782d92f','N','DueDate','Date when the payment is due','Date when the payment is due without deductions or discount','Due Date',TO_TIMESTAMP('2014-12-09 10:52:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',2000,15,800006,0,'LBR')
;

-- 09/12/2014 10h52min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800391,'N','N','N','N',10,'N','N','0192000a-2da8-4961-8980-6da0dacc7909','N','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ',TO_TIMESTAMP('2014-12-09 10:52:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',187,30,800006,0,'LBR')
;

-- 09/12/2014 10h52min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800392,'N','N','N','N',10,'N','N','e8a8a4ae-1b21-43ab-ad02-32386142bc4d','N','C_BPartner_Location_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location',TO_TIMESTAMP('2014-12-09 10:52:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',189,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min5s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800393,'N','N','N','N',10,'N','N','eab5599e-a8cb-4b64-bbd2-43ad20d18396','N','LBR_Guarantor_ID','Identifies a guarantor (Business Partner)','Guarantor (Business Partner)',TO_TIMESTAMP('2014-12-09 10:52:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000312,30,138,800006,0,'LBR')
;

-- 09/12/2014 10h52min6s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,MandatoryLogic,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0.0,800394,'N','N','N','N',10,'N','N','@LBR_Guarantor_ID@ > 0','3b6fffee-e186-4529-8f29-f3150aa81036','N','LBR_Guarantor_Location_ID','Identifies the address for this guarantor (Business Partner)','The Guarantor (Partner) address indicates the location of a Business Partner','Guarantor (Partner) Location',TO_TIMESTAMP('2014-12-09 10:52:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:05','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000311,18,159,800006,1000009,0,'LBR')
;

-- 09/12/2014 10h52min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800395,'N','N','N','N',10,'N','N','615cc42e-36b5-4b86-b978-7fff4b249fda','N','C_Invoice_ID','Invoice Identifier','The Invoice Document.','Invoice',TO_TIMESTAMP('2014-12-09 10:52:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1008,30,800006,0,'LBR')
;

-- 09/12/2014 10h52min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800396,'N','N','N','N',10,'N','N','d346726f-77d2-4ad7-9e84-1a8475433934','N','C_InvoicePaySchedule_ID','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.','Invoice Payment Schedule',TO_TIMESTAMP('2014-12-09 10:52:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1995,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800397,'N','N','N','N',10,'N','N','bac0ae01-ed81-4644-97d2-e228942d7a99','N','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank',TO_TIMESTAMP('2014-12-09 10:52:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','C',835,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800398,'N','N','N','N',10,'N','N','37c70d2b-3bfc-4b92-be19-69d2fbafb6bb','N','C_BankAccount_ID','Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account',TO_TIMESTAMP('2014-12-09 10:52:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',836,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min11s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800399,'N','N','N','N',10,'N','N','8e746add-4b18-4d91-abea-84106cde4db5','N','LBR_CorrespBank_ID','Correspondent Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:52:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000313,18,52001,800006,0,'LBR')
;

-- 09/12/2014 10h52min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800400,'N','N','N','N',20,'N','N','956fa631-b266-4374-bf0e-5fd03946c8c6','N','LBR_NumberInBank','Number in the Bank',TO_TIMESTAMP('2014-12-09 10:52:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:11','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000314,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800401,'N','N','N','N',20,'N','N','f092f947-b2ee-4e78-bfef-4139d1b7661f','N','LBR_NumberInCorrespBank','Number in the Correspondent Bank',TO_TIMESTAMP('2014-12-09 10:52:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000315,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min15s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800402,'N','N','N','N',15,'N','N','da2c000a-8e70-4a89-9700-6165812db8bf','N','LBR_NumberInOrg','Number in the Org',TO_TIMESTAMP('2014-12-09 10:52:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000316,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800403,'N','N','N','N',10,'N','N','4e1833f9-3cee-42a4-9d2a-bb5596be34cc','N','LBR_BankAccount_Convenio_ID','Defines the Convênio number for a specific bank account','Bank Account Convênio',TO_TIMESTAMP('2014-12-09 10:52:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000284,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800404,'N','N','N','N',10,'N','N','56fbc86d-3a69-4ac0-bf33-e72516ad6253','N','LBR_BankAccount_Carteira_ID','Defines the Carteira number for a specific bank account','Bank Account Carteira',TO_TIMESTAMP('2014-12-09 10:52:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000287,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800405,'N','N','N','N',1,'N','N','1b387ccd-884d-461d-9e65-e6db87fb52d9','N','LBR_CarteiraType','Defines the Carteira type according to Febraban','Bank Account Carteira Type',TO_TIMESTAMP('2014-12-09 10:52:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000290,17,1000064,800006,0,'LBR')
;

-- 09/12/2014 10h52min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800406,'N','N','N','N',2,'N','N','f97d17e9-cb32-40a3-b091-b65650ca6067','N','LBR_CNAB240Currency','Currency used for CNAB 240','Currency',TO_TIMESTAMP('2014-12-09 10:52:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000317,17,1000073,800006,0,'LBR')
;

-- 09/12/2014 10h52min20s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800407,'N','N','N','N',10,'N','N','df92fb98-a14f-437b-b167-8340a874d6d9','N','LBR_LoanContractNo','Loan Contract No.',TO_TIMESTAMP('2014-12-09 10:52:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000318,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800408,'N','N','N','N',2,'N','N','f9404375-aff9-4845-a19c-37879ef832ea','N','LBR_CollectionType','Collection Type',TO_TIMESTAMP('2014-12-09 10:52:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:20','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000305,17,1000069,800006,0,'LBR')
;

-- 09/12/2014 10h52min22s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800409,'N','N','N','N',1,'N','N','8dc37db6-d563-44a7-9303-9c5219121358','N','LBR_CNAB240DocType','Collection document type, according to Febraban.','Febraban Document Type',TO_TIMESTAMP('2014-12-09 10:52:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000319,17,1000074,800006,0,'LBR')
;

-- 09/12/2014 10h52min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800410,'N','N','N','N',1,'N','N','7e8d6e55-e93e-4d1d-9c91-4b821c491865','N','LBR_CollectionRegType','Collection Registration Type','Collection Registration yype in the Bank','Registration Type',TO_TIMESTAMP('2014-12-09 10:52:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:22','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000320,17,1000075,800006,0,'LBR')
;

-- 09/12/2014 10h52min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800411,'N','N','N','N',1,'N','N','8a068902-d6a9-4c53-9158-f546687a674e','N','LBR_IssueType','Responsible for issuing the collection, according to Febraban.','Issue Type',TO_TIMESTAMP('2014-12-09 10:52:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000321,17,1000076,800006,0,'LBR')
;

-- 09/12/2014 10h52min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800412,'N','N','N','N',1,'N','N','b6e802ab-a2a8-451b-a06a-a1a63ea97e90','N','LBR_DistributionType','Responsible for distributing the collection, according to Febraban.','Distribution Type',TO_TIMESTAMP('2014-12-09 10:52:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000322,17,1000077,800006,0,'LBR')
;

-- 09/12/2014 10h52min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800413,'N','N','N','N',1,'N','N','429b187e-b066-4702-b719-d2aa128399ec','N','LBR_Accepted','Accepted',TO_TIMESTAMP('2014-12-09 10:52:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000306,17,1000070,800006,0,'LBR')
;

-- 09/12/2014 10h52min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800414,'N','N','N','N',1,'N','N','4dc54702-3f7c-4045-a825-ed01aabeadac','N','LBR_PartialPayment','Authorize Partial Payment',TO_TIMESTAMP('2014-12-09 10:52:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000307,17,1000071,800006,0,'LBR')
;

-- 09/12/2014 10h52min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800415,'N','N','N','N',1,'N','N','b05fcfcd-43be-43cf-95f5-b98523f7111c','N','LBR_DirectDebitNotice','Direct Debit Notice',TO_TIMESTAMP('2014-12-09 10:52:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000308,17,1000072,800006,0,'LBR')
;

-- 09/12/2014 10h52min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800416,'N','N','N','N',131089,'N','N','320a154d-883d-4593-8695-39d57d9fc8e1','N','WriteOffAmt','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.','Write-off Amount',TO_TIMESTAMP('2014-12-09 10:52:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1450,12,800006,0,'LBR')
;

-- 09/12/2014 10h52min31s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800417,'N','N','N','N',131089,'N','N','1c853092-7099-44d9-9469-62747a56daf6','N','LBR_IOFAmt','Defines the IOF Amount','IOF Amount',TO_TIMESTAMP('2014-12-09 10:52:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000164,12,800006,0,'LBR')
;

-- 09/12/2014 10h52min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800418,'N','N','N','N',30,'N','N','3ef6ff04-4ef6-453f-906e-0f6d0eb546c6','N','LBR_Fmt_NumberInBank','Number In Bank Formatted','This field will be filled with the "Number In Bank" formatted as it needs to be printed on the Collection Slip','Number In Bank Formatted',TO_TIMESTAMP('2014-12-09 10:52:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:31','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000384,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800419,'N','N','N','N',30,'N','N','a8711d31-8226-4c45-a0da-26a2d260d99b','N','LBR_Fmt_AgencyClient','Agency and Client Formatted','This field will be filled with the "Agency and Client" formatted as it needs to be printed on the Collection Slip','Agency and Client Formatted',TO_TIMESTAMP('2014-12-09 10:52:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000385,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min34s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800420,'N','N','N','N',15,'N','N','ba990611-73a1-4e73-b39c-bdc6ec1b554f','N','LBR_Fmt_Billfold','Billfold Formatted','This field will be filled with the "Billfold" formatted as it needs to be printed on the Collection Slip','Billfold Formatted',TO_TIMESTAMP('2014-12-09 10:52:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000386,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800421,'N','N','N','N',20,'N','N','d202ad8f-427f-4cc5-a04e-fcb7e53cb445','N','LBR_Fmt_Doctype','Document Type Formatted','This field will be filled with the "Document Type" formatted as it needs to be printed on the Collection Slip','Document Type Formatted',TO_TIMESTAMP('2014-12-09 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:34','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000387,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800422,'N','N','N','N',15,'N','N','f1e59921-2cde-4edb-843e-3139d49dccd0','N','LBR_BankUse','Bank Use','This field will be filled with the "Bank Use" formatted as it needs to be printed on the Collection Slip','Bank Use',TO_TIMESTAMP('2014-12-09 10:52:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000388,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800423,'N','N','N','N',44,'N','N','a29cb48e-50fb-4fea-b039-6f6dd53e6223','N','LBR_Barcode','Barcode','This field will be filled with the barcode value to be printed on the Collection Slip','Barcode',TO_TIMESTAMP('2014-12-09 10:52:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000389,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800424,'N','N','N','N',54,'N','N','8fdc8923-1604-4f22-ba59-348cb5fecdaa','N','LBR_TypeableLine','Typeable Line','This field will be filled with the typeable line to be printed on the Collection Slip','Typeable Line',TO_TIMESTAMP('2014-12-09 10:52:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000390,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800425,'N','N','N','N',1,'N','N','076a2478-44be-446a-8e9b-f97f2c53b4bb','N','IsPaid','The document is paid','Paid',TO_TIMESTAMP('2014-12-09 10:52:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N',1402,20,800006,0,'LBR')
;

-- 09/12/2014 10h52min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800426,'N','N','N','N',1,'N','N','9303785b-6b79-44ab-a028-4f7910746760','N','LBR_IsProtested','The document is protested','''N''','Protested',TO_TIMESTAMP('2014-12-09 10:52:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800022,20,800006,0,'LBR')
;

-- 09/12/2014 10h52min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800427,'N','N','N','N',1,'N','N','ebc45a25-773e-450a-aaa6-2e63499dfd5d','N','LBR_IsBaixado','''N''','Baixado',TO_TIMESTAMP('2014-12-09 10:52:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800023,20,800006,0,'LBR')
;

-- 09/12/2014 10h52min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,DefaultValue,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800428,'N','N','N','N',1,'N','N','bd11dd01-5be0-4588-9589-3ec0b9b343d0','N','LBR_IsSustado','''N''','Sustado',TO_TIMESTAMP('2014-12-09 10:52:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800024,20,800006,0,'LBR')
;

-- 09/12/2014 10h52min44s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800429,'N','N','N','N',10,'N','N','dab742a1-da99-4e5c-b725-a824f0c11409','N','boleto_mov_ad_client_id','boleto_mov_ad_client_id',TO_TIMESTAMP('2014-12-09 10:52:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800041,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800430,'N','N','N','N',10,'N','N','b7ca32df-d3e6-46d8-9cec-cb88989582cb','N','boleto_mov_ad_org_id','boleto_mov_ad_org_id',TO_TIMESTAMP('2014-12-09 10:52:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:44','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800042,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800431,'N','N','N','N',29,'N','N','c9ee97ae-5e17-44c5-96ee-e150c0c0826b','N','boleto_mov_created','boleto_mov_created',TO_TIMESTAMP('2014-12-09 10:52:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800043,16,800006,0,'LBR')
;

-- 09/12/2014 10h52min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800432,'N','N','N','N',10,'N','N','fa8cdeda-5e33-4f4d-8bcf-251e15a1f6b8','N','boleto_mov_createdby','boleto_mov_createdby',TO_TIMESTAMP('2014-12-09 10:52:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800044,11,800006,0,'LBR')
;

-- 09/12/2014 10h52min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800433,'N','N','N','N',29,'N','N','1ee50647-6b97-4d40-b1e0-01687188d09f','N','boleto_mov_updated','boleto_mov_updated',TO_TIMESTAMP('2014-12-09 10:52:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800045,16,800006,0,'LBR')
;

-- 09/12/2014 10h52min50s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800434,'N','N','N','N',10,'N','N','03a7397d-5fdc-432e-ba05-59a46f53c2de','N','boleto_mov_updatedby','boleto_mov_updatedby',TO_TIMESTAMP('2014-12-09 10:52:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:49','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800046,11,800006,0,'LBR')
;

-- 09/12/2014 10h52min51s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800435,'N','N','N','N',1,'N','N','1bcb7117-e091-4eb4-bcdb-29b1a4309b63','N','boleto_mov_isactive','boleto_mov_isactive',TO_TIMESTAMP('2014-12-09 10:52:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:50','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800047,20,800006,0,'LBR')
;

-- 09/12/2014 10h52min52s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800436,'N','N','N','N',10,'N','N','29b3d90c-f63d-4466-bdb1-59c8d2024736','N','LBR_BoletoMovement_ID','Boleto Movement',TO_TIMESTAMP('2014-12-09 10:52:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:51','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000364,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min53s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800437,'N','N','N','N',10,'N','N','0bbb7799-eecf-48c3-af4f-03c5cec7d60d','N','boleto_mov_lbr_boleto_id','boleto_mov_lbr_boleto_id',TO_TIMESTAMP('2014-12-09 10:52:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:52','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800048,19,800006,0,'LBR')
;

-- 09/12/2014 10h52min54s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800438,'N','N','N','N',1,'N','N','8b87d950-eec4-4e21-9516-c5cfa58c7282','N','LBR_CNAB240MovementType','Movement Type',TO_TIMESTAMP('2014-12-09 10:52:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:53','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000363,17,1000083,800006,0,'LBR')
;

-- 09/12/2014 10h52min55s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800439,'N','N','N','N',255,'N','N','c05cf411-484f-44f9-a099-68f5278a0cf3','N','boleto_mov_description','boleto_mov_description',TO_TIMESTAMP('2014-12-09 10:52:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:54','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800049,10,800006,0,'LBR')
;

-- 09/12/2014 10h52min56s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800440,'N','N','N','N',10,'N','N','97eed908-c408-4f9c-bcc1-717e79f4b6de','N','boleto_mov_seqno','boleto_mov_seqno',TO_TIMESTAMP('2014-12-09 10:52:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:55','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800050,11,800006,0,'LBR')
;

-- 09/12/2014 10h52min57s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800441,'N','N','N','N',29,'N','N','7e27c8bf-c856-4e39-971d-6b033517224f','N','LBR_FileGeneratingDate','Indicates when the file was generated','File Generating Date',TO_TIMESTAMP('2014-12-09 10:52:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:56','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000366,15,800006,0,'LBR')
;

-- 09/12/2014 10h52min58s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800442,'N','N','N','N',10,'N','N','dfb573b2-4e28-4251-9aea-2e54cd583238','N','boleto_mov_lbr_cnab240seqno','boleto_mov_lbr_cnab240seqno',TO_TIMESTAMP('2014-12-09 10:52:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:57','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800051,11,800006,0,'LBR')
;

-- 09/12/2014 10h53min0s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800443,'N','N','N','N',20,'N','N','7423e5f0-534c-40d2-80aa-45e9fe0206f1','N','boleto_mov_lbr_numberinbank','boleto_mov_lbr_numberinbank',TO_TIMESTAMP('2014-12-09 10:52:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:52:58','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800052,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min1s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800444,'N','N','N','N',1,'N','N','3d344f82-3cc2-4f61-8d04-0bf7c29df50f','N','boleto_mov_lbr_carteiratype','boleto_mov_lbr_carteiratype',TO_TIMESTAMP('2014-12-09 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800053,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min2s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800445,'N','N','N','N',15,'N','N','0d223551-ad7c-4ef9-9ad3-1747fab8917b','N','boleto_mov_lbr_numberinorg','boleto_mov_lbr_numberinorg',TO_TIMESTAMP('2014-12-09 10:53:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:01','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800054,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min3s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800446,'N','N','N','N',29,'N','N','2945cac9-feb8-41fc-8bd3-2c2672eb489a','N','boleto_mov_duedate','boleto_mov_duedate',TO_TIMESTAMP('2014-12-09 10:53:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:02','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800055,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min4s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800447,'N','N','N','N',131089,'N','N','4080ecfd-db9a-47ee-84ee-e02dc0eb8664','N','boleto_mov_grandtotal','boleto_mov_grandtotal',TO_TIMESTAMP('2014-12-09 10:53:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:03','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800056,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min5s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800448,'N','N','N','N',10,'N','N','a7d8e11f-8783-4397-82db-4b03b4710bea','N','boleto_mov_lbr_collectbankno','boleto_mov_lbr_collectbankno',TO_TIMESTAMP('2014-12-09 10:53:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:04','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800057,11,800006,0,'LBR')
;

-- 09/12/2014 10h53min6s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800449,'N','N','N','N',7,'N','N','e7ae981a-c70d-42c1-9ed2-404e48f00dd2','N','boleto_mov_collectbankagencyno','boleto_mov_collectbankagencyno',TO_TIMESTAMP('2014-12-09 10:53:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:05','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800058,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min7s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800450,'N','N','N','N',30,'N','N','fd6e809c-07b8-4281-9abf-91e403ba8b82','N','boleto_mov_lbr_documentno','boleto_mov_lbr_documentno',TO_TIMESTAMP('2014-12-09 10:53:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:06','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800059,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min8s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800451,'N','N','N','N',2,'N','N','8340b967-215d-4eab-b521-e1e02693e475','N','boleto_mov_lbr_cnab240currency','boleto_mov_lbr_cnab240currency',TO_TIMESTAMP('2014-12-09 10:53:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:07','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800060,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min9s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800452,'N','N','N','N',10,'N','N','c2f38f0e-ce95-4ac2-a129-cae6c46b775e','N','boleto_mov_lbr_loancontractno','boleto_mov_lbr_loancontractno',TO_TIMESTAMP('2014-12-09 10:53:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:08','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800061,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min10s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800453,'N','N','N','N',131089,'N','N','2ce22eca-89ad-4e78-b9ed-c98713e43a53','N','boleto_mov_feeamt','boleto_mov_feeamt',TO_TIMESTAMP('2014-12-09 10:53:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:09','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800062,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min12s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800454,'N','N','N','N',10,'N','N','e3e6cff4-b1da-4ec8-a8d8-0867a218a739','N','LBR_Cob_Ocorrencia1_ID','Collection Occurrence 1',TO_TIMESTAMP('2014-12-09 10:53:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:10','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000371,18,1000084,800006,0,'LBR')
;

-- 09/12/2014 10h53min13s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800455,'N','N','N','N',10,'N','N','98ee0135-45c9-4afd-94e5-eea4c3a9e928','N','LBR_Cob_Ocorrencia2_ID','Collection Occurrence 2',TO_TIMESTAMP('2014-12-09 10:53:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:12','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000372,18,1000084,800006,0,'LBR')
;

-- 09/12/2014 10h53min14s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800456,'N','N','N','N',10,'N','N','4d188f09-f59a-4828-8074-6ba63c9d6d49','N','LBR_Cob_Ocorrencia3_ID','Collection Occurrence 3',TO_TIMESTAMP('2014-12-09 10:53:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:13','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000373,18,1000084,800006,0,'LBR')
;

-- 09/12/2014 10h53min15s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800457,'N','N','N','N',10,'N','N','3da4dc9f-73e4-465d-b475-b095dcbe2fbc','N','LBR_Cob_Ocorrencia4_ID','Collection Occurrence 4',TO_TIMESTAMP('2014-12-09 10:53:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:14','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000374,18,1000084,800006,0,'LBR')
;

-- 09/12/2014 10h53min16s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800458,'N','N','N','N',10,'N','N','5d0a06f2-9e2f-4e31-8b2f-8491ab31696d','N','LBR_Cob_Ocorrencia5_ID','Collection Occurrence 5',TO_TIMESTAMP('2014-12-09 10:53:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:15','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000375,18,1000084,800006,0,'LBR')
;

-- 09/12/2014 10h53min17s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800459,'N','N','N','N',131089,'N','N','0e14d8b6-ae7b-4813-b71c-05d32699abf9','N','boleto_mov_interestamt','boleto_mov_interestamt',TO_TIMESTAMP('2014-12-09 10:53:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:16','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800063,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min18s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800460,'N','N','N','N',131089,'N','N','3d16cc32-50f0-4df0-aacd-565c48d84d23','N','boleto_mov_discountamt','boleto_mov_discountamt',TO_TIMESTAMP('2014-12-09 10:53:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:17','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800064,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min19s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800461,'N','N','N','N',131089,'N','N','4cdafc1c-29a4-4ce8-9ad8-3fbc65ba284d','N','boleto_mov_writeoffamt','boleto_mov_writeoffamt',TO_TIMESTAMP('2014-12-09 10:53:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:18','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800065,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min21s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800462,'N','N','N','N',131089,'N','N','21bf4abd-80d3-48cd-9aa0-99f351a46505','N','boleto_mov_lbr_iofamt','boleto_mov_lbr_iofamt',TO_TIMESTAMP('2014-12-09 10:53:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:19','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800066,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min22s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800463,'N','N','N','N',131089,'N','N','02d370bd-11f6-456f-9357-733aa966ba08','N','boleto_mov_payamt','boleto_mov_payamt',TO_TIMESTAMP('2014-12-09 10:53:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:21','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800067,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min23s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800464,'N','N','N','N',131089,'N','N','94ba4bf6-8841-4559-b969-3cb7bf7b266d','N','boleto_mov_availableamt','boleto_mov_availableamt',TO_TIMESTAMP('2014-12-09 10:53:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:22','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800068,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min24s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800465,'N','N','N','N',131089,'N','N','3e42b160-3425-4734-b854-7d8508a7bd15','N','boleto_mov_otherexpensesamt','boleto_mov_otherexpensesamt',TO_TIMESTAMP('2014-12-09 10:53:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:23','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800069,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min25s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800466,'N','N','N','N',131089,'N','N','3e6a42b7-6247-4539-8461-0d931f7f490d','N','boleto_mov_otherincomesamt','boleto_mov_otherincomesamt',TO_TIMESTAMP('2014-12-09 10:53:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:24','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800070,12,800006,0,'LBR')
;

-- 09/12/2014 10h53min26s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800467,'N','N','N','N',29,'N','N','0b5d7218-39d9-4221-87b4-f699e0d75453','N','boleto_mov_cob_ocorrenciadate','boleto_mov_cob_ocorrenciadate',TO_TIMESTAMP('2014-12-09 10:53:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:25','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800071,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min27s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800468,'N','N','N','N',29,'N','N','d1766034-c6d6-4e6f-bc3a-53feb3b9bbe1','N','boleto_mov_lbr_creditdate','boleto_mov_lbr_creditdate',TO_TIMESTAMP('2014-12-09 10:53:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:26','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800072,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min28s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800469,'N','N','N','N',10,'N','N','dc01f5ea-afcb-445e-bfbc-28fc90ca54aa','N','boleto_mov_lbr_correspbankno','boleto_mov_lbr_correspbankno',TO_TIMESTAMP('2014-12-09 10:53:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:27','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800073,11,800006,0,'LBR')
;

-- 09/12/2014 10h53min29s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800470,'N','N','N','N',20,'N','N','61820367-6377-4fe9-b763-47ae3622cdbb','N','boleto_mov_numberincorrespbank','boleto_mov_numberincorrespbank',TO_TIMESTAMP('2014-12-09 10:53:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:28','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800074,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min30s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800471,'N','N','N','N',20,'N','N','6adcab11-522c-402c-bfa2-ca36c7f1d7ad','N','boleto_mov_lbr_conveniono','boleto_mov_lbr_conveniono',TO_TIMESTAMP('2014-12-09 10:53:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:29','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800075,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min32s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800472,'N','N','N','N',2,'N','N','301b4ba6-a8be-4ac7-b583-a87a06f04cdb','N','boleto_mov_lbr_collectiontype','boleto_mov_lbr_collectiontype',TO_TIMESTAMP('2014-12-09 10:53:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:30','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800076,10,800006,0,'LBR')
;

-- 09/12/2014 10h53min33s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800473,'N','N','N','N',10,'N','N','52b81c61-fad1-4a75-b8bc-85d871aa520c','N','LBR_Cob_Movimento_ID','Collection Movement',TO_TIMESTAMP('2014-12-09 10:53:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:32','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',1000361,19,800006,0,'LBR')
;

-- 09/12/2014 10h53min34s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800474,'N','N','N','N',1,'N','N','7e5386d3-afe5-4cdb-ba63-7324b0e13f04','N','boleto_mov_lbr_interestcode','boleto_mov_lbr_interestcode',TO_TIMESTAMP('2014-12-09 10:53:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:33','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800077,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min35s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800475,'N','N','N','N',29,'N','N','204ad034-cea6-4cd5-b2b9-dcc5c07460ad','N','boleto_mov_lbr_interestdate','boleto_mov_lbr_interestdate',TO_TIMESTAMP('2014-12-09 10:53:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:34','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800078,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min36s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800476,'N','N','N','N',131089,'N','N','7c512fb2-e49b-4993-9b23-b74a017da771','N','boleto_mov_lbr_interestap','boleto_mov_lbr_interestap',TO_TIMESTAMP('2014-12-09 10:53:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:35','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800079,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min37s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800477,'N','N','N','N',131089,'N','N','ac4a8b08-51bd-436f-9084-0a80d2c01b8f','N','boleto_mov_lbr_cnabdiscount1ap','boleto_mov_lbr_cnabdiscount1ap',TO_TIMESTAMP('2014-12-09 10:53:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:36','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800080,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min38s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800478,'N','N','N','N',131089,'N','N','44e96f6c-5734-44be-aadb-9579d3f60f83','N','boleto_mov_lbr_cnabdiscount2ap','boleto_mov_lbr_cnabdiscount2ap',TO_TIMESTAMP('2014-12-09 10:53:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:37','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800081,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min39s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800479,'N','N','N','N',131089,'N','N','abb5f1c0-1209-4792-958e-b682a7834bb1','N','boleto_mov_lbr_cnabdiscount3ap','boleto_mov_lbr_cnabdiscount3ap',TO_TIMESTAMP('2014-12-09 10:53:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:38','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800082,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min40s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800480,'N','N','N','N',1,'N','N','34d32088-b2bd-44c8-bf51-bdf5acbba256','N','boleto_mov_cnabdiscount1code','boleto_mov_cnabdiscount1code',TO_TIMESTAMP('2014-12-09 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800083,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min41s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800481,'N','N','N','N',1,'N','N','8c80fec6-d0d2-4058-890f-dcaa0237b744','N','boleto_mov_cnabdiscount2code','boleto_mov_cnabdiscount2code',TO_TIMESTAMP('2014-12-09 10:53:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:40','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800084,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min42s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800482,'N','N','N','N',1,'N','N','327019a5-e84b-4db4-b6ca-eea5d9ce1b6f','N','boleto_mov_cnabdiscount3code','boleto_mov_cnabdiscount3code',TO_TIMESTAMP('2014-12-09 10:53:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:41','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800085,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min43s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800483,'N','N','N','N',29,'N','N','11b37d3c-cf90-40bc-9620-1ddf36dbaf4b','N','boleto_mov_cnabdiscount1date','boleto_mov_cnabdiscount1date',TO_TIMESTAMP('2014-12-09 10:53:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:42','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800086,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min45s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800484,'N','N','N','N',29,'N','N','040031eb-8c86-4000-95e0-e2ddcbb52a99','N','boleto_mov_cnabdiscount2date','boleto_mov_cnabdiscount2date',TO_TIMESTAMP('2014-12-09 10:53:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:43','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800087,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min46s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800485,'N','N','N','N',29,'N','N','07d6917c-61ec-45d0-82ae-3a18948f1f49','N','boleto_mov_cnabdiscount3date','boleto_mov_cnabdiscount3date',TO_TIMESTAMP('2014-12-09 10:53:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:45','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800088,16,800006,0,'LBR')
;

-- 09/12/2014 10h53min47s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800486,'N','N','N','N',131089,'N','N','61ee9e94-07ab-4ac4-8269-75027c52383a','N','boleto_mov_latepaypenaltyap','boleto_mov_latepaypenaltyap',TO_TIMESTAMP('2014-12-09 10:53:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:46','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800089,22,800006,0,'LBR')
;

-- 09/12/2014 10h53min48s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800487,'N','N','N','N',1,'N','N','2f72e160-988f-435e-ac29-7d544ab0db81','N','boleto_mov_latepaypenaltycode','boleto_mov_latepaypenaltycode',TO_TIMESTAMP('2014-12-09 10:53:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:47','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800090,20,800006,0,'LBR')
;

-- 09/12/2014 10h53min49s BRST
INSERT INTO AD_Column (Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Column_UU,IsUpdateable,ColumnName,Name,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0.0,800488,'N','N','N','N',29,'N','N','a16c9e03-2484-44d7-bc8a-e95f62a96b02','N','boleto_mov_latepaypenaltydate','boleto_mov_latepaypenaltydate',TO_TIMESTAMP('2014-12-09 10:53:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-12-09 10:53:48','YYYY-MM-DD HH24:MI:SS'),0,'N',0,'N','N',800091,16,800006,0,'LBR')
;

-- 09/12/2014 10h55min58s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,EntityType,Description,AD_ReportView_UU,Name,CreatedBy,Updated,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Table_ID,Created) VALUES (800000,'LBR','Boleto Detail','fe46172b-d373-4077-b32e-5ba0effbc1b7','LBR_RV_Boleto_Details',0,TO_TIMESTAMP('2014-12-09 10:55:57','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,800004,TO_TIMESTAMP('2014-12-09 10:55:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h56min34s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,EntityType,Description,AD_ReportView_UU,Name,CreatedBy,Updated,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Table_ID,Created) VALUES (800001,'LBR','Boleto Summary','dbf4b821-c7f3-4725-9f4c-cb4058f9909c','LBR_RV_Boleto_Summary',0,TO_TIMESTAMP('2014-12-09 10:56:33','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,800005,TO_TIMESTAMP('2014-12-09 10:56:33','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 10h57min1s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,EntityType,Description,AD_ReportView_UU,Name,CreatedBy,Updated,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Table_ID,Created) VALUES (800002,'LBR','Boleto Open','ba4a7716-bd9b-4bed-97a1-a48aec118f4b','LBR_RV_Boleto_Open',0,TO_TIMESTAMP('2014-12-09 10:57:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,800006,TO_TIMESTAMP('2014-12-09 10:57:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h11min1s BRST
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,AD_ReportView_ID,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Value,AD_Client_ID,Created,Updated) VALUES ('N',800003,'N',800000,'Y','579b4c77-5aa8-421f-aa0b-30288660d433','3','N','N',0,0,'Y','LBR','Boleto Detail Report','Boleto Detail Report',0,0,'Y',0,'LBR_RV_Boleto_Details',0,TO_TIMESTAMP('2014-12-09 11:11:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 11:11:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h15min19s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,800013,'5802dcd2-285e-4f03-8e19-3c1744dd7ff4','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800003,19,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'-1','Y',0,TO_TIMESTAMP('2014-12-09 11:15:18','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,322,'LBR',TO_TIMESTAMP('2014-12-09 11:15:18','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h16min59s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('Y',265,800014,'7a3cc05b-cd11-4be2-b6ba-4ba878a17cc8','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800003,15,'N','Document Date','DateDoc','Date of the Document',0,'Y',20,'Y',0,TO_TIMESTAMP('2014-12-09 11:16:58','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:16:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h17min31s BRST
UPDATE AD_Process_Para SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-12-09 11:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800014
;

-- 09/12/2014 11h17min51s BRST
UPDATE AD_Process_Para SET Help=NULL, Name='Issue Date', Description='Date of the Issue',Updated=TO_TIMESTAMP('2014-12-09 11:17:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800014
;

-- 09/12/2014 11h18min59s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('Y',2000,800015,'2a09b472-2073-4388-a2db-9313493a4bc7','Date when the payment is due without deductions or discount',800003,15,'N','Due Date','DueDate','Date when the payment is due',0,'Y',30,'Y',0,TO_TIMESTAMP('2014-12-09 11:18:57','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:18:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h21min25s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',836,800016,'5e15ebec-2511-48ee-9d76-22e1a8ac519e','The Bank Account identifies an account at this Bank.',800003,19,1000017,'N','Bank Account','C_BankAccount_ID','Account at the Bank',0,'Y',40,'Y',0,TO_TIMESTAMP('2014-12-09 11:21:24','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:21:24','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h23min6s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1000284,800017,'406a37fe-5f2c-4b86-8469-2a17ca1223cb','Defines the Convênio number for a specific bank account',800003,19,1000018,'N','Bank Account Convênio','LBR_BankAccount_Convenio_ID',0,'Y',50,'Y',0,TO_TIMESTAMP('2014-12-09 11:23:05','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:23:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h24min16s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1000287,800018,'cfc1f4e4-cc74-4b62-827c-2d161de06831','Defines the Carteira number for a specific bank account',800003,19,1000019,'N','Bank Account Carteira','LBR_BankAccount_Carteira_ID',0,'Y',60,'Y',0,TO_TIMESTAMP('2014-12-09 11:24:15','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:24:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h27min49s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',187,800019,'1319d2cc-01b1-4306-bff7-fdab88f717fd','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800003,30,'N','Business Partner ','C_BPartner_ID','Identifies a Business Partner',0,'Y',70,'Y',0,TO_TIMESTAMP('2014-12-09 11:27:48','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,138,'LBR',TO_TIMESTAMP('2014-12-09 11:27:48','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h27min54s BRST
UPDATE AD_Process_Para SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-12-09 11:27:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800019
;

-- 09/12/2014 11h29min5s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1008,800020,'bf802f56-c9e4-4329-bdb0-51b2dd4c2c82','The Invoice Document.',800003,19,'N','Invoice','C_Invoice_ID','Invoice Identifier',0,'Y',80,'Y',0,TO_TIMESTAMP('2014-12-09 11:29:03','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_TIMESTAMP('2014-12-09 11:29:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h30min8s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1402,800021,'3460b024-be38-43ca-9b3f-b8ae621e7820',800003,17,'N','Paid','IsPaid','The document is paid',0,'Y',90,'-1','Y',0,TO_TIMESTAMP('2014-12-09 11:30:07','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,319,'LBR',TO_TIMESTAMP('2014-12-09 11:30:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h31min47s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800023,800022,'50b9534b-e5d6-4844-b772-6f31dc9c94f8',800003,17,'N','Baixado','LBR_IsBaixado',0,'Y',100,'-1','Y',0,TO_TIMESTAMP('2014-12-09 11:31:46','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,319,'LBR',TO_TIMESTAMP('2014-12-09 11:31:46','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h32min35s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800022,800023,'00f74c6e-7bab-435f-aa8a-b7981109c8dd',800003,17,'N','Protested','LBR_IsProtested','The document is protested',0,'Y',110,'-1','Y',0,TO_TIMESTAMP('2014-12-09 11:32:34','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,319,'LBR',TO_TIMESTAMP('2014-12-09 11:32:34','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 11h33min6s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800024,800024,'1e8b2fbd-8907-407d-94cf-378a31318acd',800003,17,'N','Sustado','LBR_IsSustado',0,'Y',120,'-1','Y',0,TO_TIMESTAMP('2014-12-09 11:33:05','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,319,'LBR',TO_TIMESTAMP('2014-12-09 11:33:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 12h41min59s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800002,'N','Y','N',800003,'LBR','Y','Boleto Details','Boleto Detail Report','0b905905-7d42-4600-be61-15ae0dd5774c','R','Y',0,TO_TIMESTAMP('2014-12-09 12:41:58','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-12-09 12:41:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 12h41min59s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800002, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800002)
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 12h42min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 12h42min12s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 09/12/2014 12h42min26s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 09/12/2014 12h54min36s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800006,'LBR_Boleto','LBR','08879f26-78c7-4b0d-97b5-bf29c34d73e4','N','T',0,0,TO_TIMESTAMP('2014-12-09 12:54:35','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-12-09 12:54:35','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 09/12/2014 12h55min21s BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','5849c3aa-4485-46e8-89c1-76526cb787e5',0,TO_TIMESTAMP('2014-12-09 12:55:21','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 12:55:21','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1001031,1001040,800006,1000053,'LBR')
;

-- 09/12/2014 12h55min36s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800006,Updated=TO_TIMESTAMP('2014-12-09 12:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800179
;

-- 09/12/2014 12h56min31s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=130,Updated=TO_TIMESTAMP('2014-12-09 12:56:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800172
;

-- 09/12/2014 12h56min56s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=129,Updated=TO_TIMESTAMP('2014-12-09 12:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800171
;

-- 09/12/2014 12h57min24s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800006,Updated=TO_TIMESTAMP('2014-12-09 12:57:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800199
;

-- 09/12/2014 12h59min18s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800007,'LBR_BoletoMovement','LBR','60919b41-4a02-448a-8751-4e27637ec0e7','N','T',0,0,TO_TIMESTAMP('2014-12-09 12:59:17','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-12-09 12:59:17','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 09/12/2014 13h0min6s BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','110dfc2c-da72-4901-9f79-f03ddc726636',0,TO_TIMESTAMP('2014-12-09 13:00:06','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 13:00:06','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1001199,1001194,800007,1000059,'LBR')
;

-- 09/12/2014 13h0min19s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800007,Updated=TO_TIMESTAMP('2014-12-09 13:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800198
;

-- 09/12/2014 13h0min50s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=130,Updated=TO_TIMESTAMP('2014-12-09 13:00:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800192
;

-- 09/12/2014 13h1min52s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=129,Updated=TO_TIMESTAMP('2014-12-09 13:01:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800191
;

-- 09/12/2014 13h2min17s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800006,Updated=TO_TIMESTAMP('2014-12-09 13:02:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800146
;

-- 09/12/2014 13h2min41s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=130,Updated=TO_TIMESTAMP('2014-12-09 13:02:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800139
;

-- 09/12/2014 13h3min12s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=129,Updated=TO_TIMESTAMP('2014-12-09 13:03:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800138
;

-- 09/12/2014 13h3min57s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (800008,'LBR_BoletoDetails','LBR','2adff8a5-c749-476c-b92d-c7ed53711684','N','T',0,0,TO_TIMESTAMP('2014-12-09 13:03:56','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2014-12-09 13:03:56','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 09/12/2014 13h5min1s BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','d641109a-ed59-41b5-b4d5-ceda68bab183',0,TO_TIMESTAMP('2014-12-09 13:05:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 13:05:01','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1001078,1001078,800008,1000054,'LBR')
;

-- 09/12/2014 13h5min16s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800008,Updated=TO_TIMESTAMP('2014-12-09 13:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800145
;

-- 09/12/2014 13h7min15s BRST
UPDATE AD_Process_Para SET AD_Reference_ID=30, AD_Reference_Value_ID=336,Updated=TO_TIMESTAMP('2014-12-09 13:07:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800020
;

-- 09/12/2014 13h15min14s BRST
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,AD_ReportView_ID,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Value,AD_Client_ID,Created,Updated) VALUES ('N',800004,'N',800001,'Y','b4d8024e-801b-468b-b2dd-d3e402890524','3','N','N',0,0,'Y','LBR','Boleto Summary Report','Boleto Summary Report',0,0,'Y',0,'LBR_RV_Boleto_Summary',0,TO_TIMESTAMP('2014-12-09 13:15:13','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 13:15:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h18min57s BRST
UPDATE AD_Process SET Help=NULL, IsDirectPrint='N', AD_ReportView_ID=800000, IsReport='Y', AccessLevel='3', IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_PrintFormat_ID=NULL, Description='Boleto Detail Report', AD_Workflow_ID=NULL, ProcedureName=NULL, Classname=NULL, AD_Form_ID=NULL,Updated=TO_TIMESTAMP('2014-12-09 13:18:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800004
;

-- 09/12/2014 13h18min59s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,800025,'c95aa822-a35b-4394-aa6c-17661e776049','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800004,19,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:18:57','YYYY-MM-DD HH24:MI:SS'),0,0,0,322,'LBR',TO_TIMESTAMP('2014-12-09 13:18:57','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min0s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('Y',265,800026,'736a2590-a30d-46ce-b05a-6a35d6a9eba2',800004,15,'N','Issue Date','DateDoc','Date of the Issue',0,'N',20,'Y',0,TO_TIMESTAMP('2014-12-09 13:18:59','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:18:59','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min1s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('Y',2000,800027,'8eb7ddff-bc56-469d-a92f-63b01c9ed95a','Date when the payment is due without deductions or discount',800004,15,'N','Due Date','DueDate','Date when the payment is due',0,'Y',30,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:00','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:19:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min2s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',836,800028,'e7cee122-9928-4276-9d3a-925864e4bb77','The Bank Account identifies an account at this Bank.',800004,19,1000017,'N','Bank Account','C_BankAccount_ID','Account at the Bank',0,'Y',40,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:19:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min3s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',1000284,800029,'f86cb5a2-aba6-4182-9070-84f89d139c7f','Defines the Convênio number for a specific bank account',800004,19,1000018,'N','Bank Account Convênio','LBR_BankAccount_Convenio_ID',0,'Y',50,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:02','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:19:02','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min4s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',1000287,800030,'358606e7-4e14-4ab5-a09b-f0d2de3216b5','Defines the Carteira number for a specific bank account',800004,19,1000019,'N','Bank Account Carteira','LBR_BankAccount_Carteira_ID',0,'Y',60,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:19:03','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min5s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',187,800031,'004e711c-eb18-415e-b347-380c8236d070','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800004,30,'N','Business Partner ','C_BPartner_ID','Identifies a Business Partner',0,'N',70,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,138,'LBR',TO_TIMESTAMP('2014-12-09 13:19:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min6s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1008,800032,'5f432d8c-21ed-4b58-883b-e9eec35b300d','The Invoice Document.',800004,30,'N','Invoice','C_Invoice_ID','Invoice Identifier',0,'Y',80,'Y',0,TO_TIMESTAMP('2014-12-09 13:19:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,336,'LBR',TO_TIMESTAMP('2014-12-09 13:19:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min8s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1402,800033,'1ae32617-5805-4859-8237-ce863e2a53e7',800004,17,'N','Paid','IsPaid','The document is paid',0,'Y',90,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:19:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:19:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min9s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800023,800034,'5d07ade2-472d-4d43-9656-dbfa9b03c2af',800004,17,'N','Baixado','LBR_IsBaixado',0,'Y',100,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:19:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:19:08','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min10s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800022,800035,'bd5ab6ee-6210-4b0c-a318-1ee008c78e7f',800004,17,'N','Protested','LBR_IsProtested','The document is protested',0,'Y',110,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:19:09','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:19:09','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min11s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800024,800036,'88f9f3ef-ab97-4af1-bafb-3612ff461619',800004,17,'N','Sustado','LBR_IsSustado',0,'Y',120,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:19:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:19:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h19min30s BRST
UPDATE AD_Process SET AD_ReportView_ID=800001, Description='Boleto Summary Report',Updated=TO_TIMESTAMP('2014-12-09 13:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800004
;

-- 09/12/2014 13h20min36s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800003,'N','Y','N',800004,'LBR','Y','Boleto Summary','Boleto Summary Report','864dfbf3-1ac8-473e-86c7-c99b1c0e9bcf','R','Y',0,TO_TIMESTAMP('2014-12-09 13:20:35','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-12-09 13:20:35','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h20min36s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800003, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800003)
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h20min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h20min47s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h20min57s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 09/12/2014 13h20min58s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 09/12/2014 13h23min30s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=129,Updated=TO_TIMESTAMP('2014-12-09 13:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800310
;

-- 09/12/2014 13h23min52s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=130,Updated=TO_TIMESTAMP('2014-12-09 13:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800311
;

-- 09/12/2014 13h24min15s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800007,Updated=TO_TIMESTAMP('2014-12-09 13:24:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800317
;

-- 09/12/2014 13h24min40s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=800006,Updated=TO_TIMESTAMP('2014-12-09 13:24:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800318
;

-- 09/12/2014 13h26min46s BRST
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,AD_ReportView_ID,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Value,AD_Client_ID,Created,Updated) VALUES ('N',800005,'N',800002,'Y','b2e0ac5a-ffe2-4e07-ba61-bbd25c4e4f16','3','N','N',0,0,'Y','LBR','Boleto Open Report','Boleto Open Report',0,0,'Y',0,'LBR_RV_Boleto_Open',0,TO_TIMESTAMP('2014-12-09 13:26:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-12-09 13:26:45','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min4s BRST
UPDATE AD_Process SET Help=NULL, IsDirectPrint='N', AD_ReportView_ID=800000, IsReport='Y', AccessLevel='3', IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_PrintFormat_ID=NULL, Description='Boleto Detail Report', AD_Workflow_ID=NULL, ProcedureName=NULL, Classname=NULL, AD_Form_ID=NULL,Updated=TO_TIMESTAMP('2014-12-09 13:28:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800005
;

-- 09/12/2014 13h28min5s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,800037,'c586c17f-93b8-476b-83d0-5f96794ad713','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800005,19,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:28:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,322,'LBR',TO_TIMESTAMP('2014-12-09 13:28:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min6s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('Y',265,800038,'59524e81-250f-4a9b-8a4d-73e9612ecf3c',800005,15,'N','Issue Date','DateDoc','Date of the Issue',0,'N',20,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:28:05','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min7s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('Y',2000,800039,'b535a7b6-b259-40f9-bc5e-9ee810be84ec','Date when the payment is due without deductions or discount',800005,15,'N','Due Date','DueDate','Date when the payment is due',0,'Y',30,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:06','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:28:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min9s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',836,800040,'69ac7e8d-10b5-4e90-afcd-d9de57961b33','The Bank Account identifies an account at this Bank.',800005,19,1000017,'N','Bank Account','C_BankAccount_ID','Account at the Bank',0,'Y',40,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:28:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min11s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',1000284,800041,'624fa02a-68ff-42e1-807e-e36cb3404283','Defines the Convênio number for a specific bank account',800005,19,1000018,'N','Bank Account Convênio','LBR_BankAccount_Convenio_ID',0,'Y',50,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:09','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:28:09','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min12s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,EntityType,Created) VALUES ('N',1000287,800042,'a8eb15e7-a71d-4790-bce8-3ef4f3f3d56b','Defines the Carteira number for a specific bank account',800005,19,1000019,'N','Bank Account Carteira','LBR_BankAccount_Carteira_ID',0,'Y',60,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:11','YYYY-MM-DD HH24:MI:SS'),0,0,0,'LBR',TO_TIMESTAMP('2014-12-09 13:28:11','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min13s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',187,800043,'d9f670f5-2a33-4a2f-be71-af8270a9e6f3','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800005,30,'N','Business Partner ','C_BPartner_ID','Identifies a Business Partner',0,'N',70,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,138,'LBR',TO_TIMESTAMP('2014-12-09 13:28:12','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min14s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1008,800044,'e97a151e-7c4e-4667-8f23-b2ff09c71b52','The Invoice Document.',800005,30,'N','Invoice','C_Invoice_ID','Invoice Identifier',0,'Y',80,'Y',0,TO_TIMESTAMP('2014-12-09 13:28:13','YYYY-MM-DD HH24:MI:SS'),0,0,0,336,'LBR',TO_TIMESTAMP('2014-12-09 13:28:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min15s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1402,800045,'7f4b65ad-ca18-4715-be93-37dc927726b9',800005,17,'N','Paid','IsPaid','The document is paid',0,'Y',90,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:28:14','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:28:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min16s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800023,800046,'f3c1959d-c752-41ec-a112-74334565ab9a',800005,17,'N','Baixado','LBR_IsBaixado',0,'Y',100,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:28:15','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:28:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min17s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800022,800047,'7e3a308e-c56c-4145-b679-e360307c7d14',800005,17,'N','Protested','LBR_IsProtested','The document is protested',0,'Y',110,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:28:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:28:16','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min18s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',800024,800048,'9aea66c6-cd3d-4070-b04e-feaeb1fb751a',800005,17,'N','Sustado','LBR_IsSustado',0,'Y',120,'-1','Y',0,TO_TIMESTAMP('2014-12-09 13:28:17','YYYY-MM-DD HH24:MI:SS'),0,0,0,319,'LBR',TO_TIMESTAMP('2014-12-09 13:28:17','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h28min38s BRST
UPDATE AD_Process SET AD_ReportView_ID=800002, Description='Boleto Open Report',Updated=TO_TIMESTAMP('2014-12-09 13:28:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800005
;

-- 09/12/2014 13h32min33s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800004,'N','Y','N',800005,'LBR','Y','Boleto Open','Boleto Open Report','c4ec2a9a-c4d3-4cf2-9973-c2e647a98b9f','R','Y',0,TO_TIMESTAMP('2014-12-09 13:32:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-12-09 13:32:32','YYYY-MM-DD HH24:MI:SS'))
;

-- 09/12/2014 13h32min33s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 800004, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800004)
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h32min38s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h32min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 09/12/2014 13h32min59s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 09/12/2014 14h14min15s BRST
UPDATE AD_Column SET IsToolbarButton='N', FKConstraintType=NULL, AD_Reference_ID=18, AD_Reference_Value_ID=129,Updated=TO_TIMESTAMP('2014-12-09 14:14:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800429
;

-- 09/12/2014 14h14min37s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=130,Updated=TO_TIMESTAMP('2014-12-09 14:14:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800430
;

-- 09/12/2014 14h15min1s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=800007,Updated=TO_TIMESTAMP('2014-12-09 14:15:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800436
;

-- 09/12/2014 14h15min24s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=800006,Updated=TO_TIMESTAMP('2014-12-09 14:15:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800437
;

-- 09/12/2014 16h56min27s BRST
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-12-09 16:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800045
;

-- 09/12/2014 16h56min30s BRST
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-12-09 16:56:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800046
;

-- 09/12/2014 17h0min49s BRST
UPDATE AD_Tab SET OrderByClause='SeqNo',Updated=TO_TIMESTAMP('2014-12-09 17:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000102
;

SELECT lbr_register_migration_script('201412080813.sql') FROM dual
;

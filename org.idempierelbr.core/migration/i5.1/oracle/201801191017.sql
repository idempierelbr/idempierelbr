SET SQLBLANKLINES ON
SET DEFINE OFF

-- Performance adjustments
-- 19/01/2018 8h26min15s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800051,'C_InvoiceLine (LBR)','Invoice Line','T',0,0,'Y',TO_DATE('2018-01-19 08:26:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-19 08:26:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','4a189da6-3587-4794-bff9-73be801fbc15')
;

-- 19/01/2018 8h26min44s BRST
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (800051,333,3828,3838,0,0,'Y',TO_DATE('2018-01-19 08:26:44','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-19 08:26:44','YYYY-MM-DD HH24:MI:SS'),0,'N','LBR','a3cd43ba-1bd8-4f0d-a5af-900660733612')
;

-- 19/01/2018 8h27min4s BRST
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=800051, FKConstraintType=NULL,Updated=TO_DATE('2018-01-19 08:27:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000426
;

-- 19/01/2018 8h27min25s BRST
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=271, FKConstraintType=NULL,Updated=TO_DATE('2018-01-19 08:27:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000425
;

-- 19/01/2018 8h41min42s BRST
--INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800052,'LBR_NFS','Nota Fiscal de Serviço','T',0,0,'Y',TO_DATE('2018-01-19 08:41:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-19 08:41:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','39553300-ffc6-42f8-be82-33b288260c02')
--;

-- 19/01/2018 8h42min20s BRST
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=800033, FKConstraintType=NULL,Updated=TO_DATE('2018-01-19 08:42:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801144
;

-- 19/01/2018 8h43min39s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800053,'LBR_NotaFiscalLine','T',0,0,'Y',TO_DATE('2018-01-19 08:43:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-19 08:43:38','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','e5e59ff5-312c-4876-9fcd-c5a0f5cd97d4')
;

-- 19/01/2018 8h44min1s BRST
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (800053,1000034,1000642,1000651,0,0,'Y',TO_DATE('2018-01-19 08:44:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-19 08:44:01','YYYY-MM-DD HH24:MI:SS'),0,'N','LBR','b2f9030a-c50e-436a-a46c-3c7efa56577b')
;

-- 19/01/2018 8h44min17s BRST
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=800053, FKConstraintType=NULL,Updated=TO_DATE('2018-01-19 08:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000674
;

-- 19/01/2018 8h44min48s BRST
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53307, FKConstraintType=NULL,Updated=TO_DATE('2018-01-19 08:44:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000427
;

-- 19/01/2018 8h48min39s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800076,'ef84636b-d289-4c18-a0ef-d3c613bed189',TO_DATE('2018-01-19 08:48:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_orderline',TO_DATE('2018-01-19 08:48:39','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 8h49min21s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800096,'67572902-d1b5-408d-86aa-0cbf20d825fd',TO_DATE('2018-01-19 08:49:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:49:21','YYYY-MM-DD HH24:MI:SS'),0,1000425,800076,0)
;

-- 19/01/2018 8h49min25s BRST
CREATE INDEX lbr_docline_details_orderline ON LBR_DocLine_Details (C_OrderLine_ID)
;

-- 19/01/2018 8h52min46s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800077,'83279d6d-653d-42fb-9171-039cd677d432',TO_DATE('2018-01-19 08:52:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_invoiceline',TO_DATE('2018-01-19 08:52:45','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 8h52min55s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800097,'2a597659-101b-4f46-8969-22a1f300e96b',TO_DATE('2018-01-19 08:52:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:52:55','YYYY-MM-DD HH24:MI:SS'),0,1000426,800077,0)
;

-- 19/01/2018 8h53min6s BRST
-- CREATE INDEX lbr_docline_details_invoiceline ON LBR_DocLine_Details (C_InvoiceLine_ID)
-- ;

-- 19/01/2018 8h53min27s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800078,'ce4cc93d-801d-4756-89ab-b07f0d3593a2',TO_DATE('2018-01-19 08:53:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_nfline',TO_DATE('2018-01-19 08:53:26','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 8h53min41s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800098,'4281e619-a59c-4697-a107-23d35ac1dc74',TO_DATE('2018-01-19 08:53:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:53:41','YYYY-MM-DD HH24:MI:SS'),0,1000674,800078,0)
;

-- 19/01/2018 8h53min43s BRST
CREATE INDEX lbr_docline_details_nfline ON LBR_DocLine_Details (LBR_NotaFiscalLine_ID)
;

-- 19/01/2018 8h53min56s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800079,'d3162ac9-df76-4ef7-896d-02e2689512e9',TO_DATE('2018-01-19 08:53:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_nfs',TO_DATE('2018-01-19 08:53:56','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 8h54min9s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800099,'f66c01b6-2bae-4aa8-a010-c43dbea01b9d',TO_DATE('2018-01-19 08:54:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:54:09','YYYY-MM-DD HH24:MI:SS'),0,801144,800079,0)
;

-- 19/01/2018 8h54min11s BRST
CREATE INDEX lbr_docline_details_nfs ON LBR_DocLine_Details (LBR_NFS_ID)
;

-- 19/01/2018 8h54min45s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800080,'5890f4c2-9dc2-4c11-b6bd-4f7e9892c9da',TO_DATE('2018-01-19 08:54:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_rmaline',TO_DATE('2018-01-19 08:54:45','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 8h54min58s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800100,'8198e3f5-cbff-487e-b540-821d1a9c1f74',TO_DATE('2018-01-19 08:54:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:54:58','YYYY-MM-DD HH24:MI:SS'),0,1000427,800080,0)
;

-- 19/01/2018 8h55min0s BRST
CREATE INDEX lbr_docline_details_rmaline ON LBR_DocLine_Details (M_RMALine_ID)
;

-- 19/01/2018 8h57min3s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800081,'dc9d3437-8a54-4647-8eca-54cff560da85',TO_DATE('2018-01-19 08:57:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_bankaccount_carteira_convenio',TO_DATE('2018-01-19 08:57:02','YYYY-MM-DD HH24:MI:SS'),0,1000051,'N','N','N','N','N')
;

-- 19/01/2018 8h57min19s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800101,'6ab031d3-f389-4284-b010-97558a999d92',TO_DATE('2018-01-19 08:57:19','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:57:19','YYYY-MM-DD HH24:MI:SS'),0,1000988,800081,0)
;

-- 19/01/2018 8h57min21s BRST
-- CREATE INDEX lbr_bankaccount_carteira_convenio ON LBR_BankAccount_Carteira (LBR_BankAccount_Convenio_ID)
-- ;

-- 19/01/2018 8h58min8s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800082,'30a7ed2d-f513-4b69-9946-0f1902069106',TO_DATE('2018-01-19 08:58:08','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_bankaccount_convenio_acct',TO_DATE('2018-01-19 08:58:08','YYYY-MM-DD HH24:MI:SS'),0,1000050,'N','N','N','N','N')
;

-- 19/01/2018 8h58min31s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800102,'6f87862d-d4ca-41b8-ae02-b48d267afe15',TO_DATE('2018-01-19 08:58:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 08:58:31','YYYY-MM-DD HH24:MI:SS'),0,1000974,800082,0)
;

-- 19/01/2018 8h58min33s BRST
CREATE INDEX lbr_bankaccount_convenio_acct ON LBR_BankAccount_Convenio (C_BankAccount_ID)
;

-- 19/01/2018 9h2min11s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800083,'6de2f494-7eea-4154-ac4f-b83953c8f62d',TO_DATE('2018-01-19 09:02:11','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boleto_bpartner',TO_DATE('2018-01-19 09:02:11','YYYY-MM-DD HH24:MI:SS'),0,1000053,'N','N','N','N','N')
;

-- 19/01/2018 9h2min20s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800103,'1853dfc1-edfa-4887-a0a0-3f9a1bd0f570',TO_DATE('2018-01-19 09:02:20','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:02:20','YYYY-MM-DD HH24:MI:SS'),0,1001043,800083,0)
;

-- 19/01/2018 9h2min23s BRST
CREATE INDEX lbr_boleto_bpartner ON LBR_Boleto (C_BPartner_ID)
;

-- 19/01/2018 9h2min52s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800084,'29daa47f-0ac6-4fff-aac9-5b697f41f978',TO_DATE('2018-01-19 09:02:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boleto_invoice',TO_DATE('2018-01-19 09:02:51','YYYY-MM-DD HH24:MI:SS'),0,1000053,'N','N','N','N','N')
;

-- 19/01/2018 9h3min0s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800104,'12f4c225-6736-4a48-b778-06f6b91afe47',TO_DATE('2018-01-19 09:03:00','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:03:00','YYYY-MM-DD HH24:MI:SS'),0,1001047,800084,0)
;

-- 19/01/2018 9h3min1s BRST
CREATE INDEX lbr_boleto_invoice ON LBR_Boleto (C_Invoice_ID)
;

-- 19/01/2018 9h3min30s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800085,'3f92c0b0-9290-4a30-9b7d-260b6ecad933',TO_DATE('2018-01-19 09:03:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boleto_ips',TO_DATE('2018-01-19 09:03:29','YYYY-MM-DD HH24:MI:SS'),0,1000053,'N','N','N','N','N')
;

-- 19/01/2018 9h3min43s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800105,'a57634a9-2879-46d9-b9bd-b1b8aa5bcdc5',TO_DATE('2018-01-19 09:03:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:03:43','YYYY-MM-DD HH24:MI:SS'),0,1001048,800085,0)
;

-- 19/01/2018 9h3min46s BRST
CREATE INDEX lbr_boleto_ips ON LBR_Boleto (C_InvoicePaySchedule_ID)
;

-- 19/01/2018 9h5min16s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800086,'0f392344-c875-4876-81e5-2f6adcfad088',TO_DATE('2018-01-19 09:05:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boletodetails_boleto',TO_DATE('2018-01-19 09:05:16','YYYY-MM-DD HH24:MI:SS'),0,1000054,'N','N','N','N','N')
;

-- 19/01/2018 9h5min26s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800106,'52db2b14-f694-492e-9f2c-06da7dd4f0c3',TO_DATE('2018-01-19 09:05:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:05:25','YYYY-MM-DD HH24:MI:SS'),0,1001080,800086,0)
;

-- 19/01/2018 9h5min27s BRST
CREATE INDEX lbr_boletodetails_boleto ON LBR_BoletoDetails (LBR_Boleto_ID)
;

-- 19/01/2018 9h6min28s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800087,'d7d2224f-419a-4952-938c-365d58a0facf',TO_DATE('2018-01-19 09:06:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boletomovement_boleto',TO_DATE('2018-01-19 09:06:27','YYYY-MM-DD HH24:MI:SS'),0,1000059,'N','N','N','N','N')
;

-- 19/01/2018 9h6min39s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800107,'1493fe1f-fdee-4f36-84cc-e8a61223061f',TO_DATE('2018-01-19 09:06:38','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:06:38','YYYY-MM-DD HH24:MI:SS'),0,1001196,800087,0)
;

-- 19/01/2018 9h6min40s BRST
CREATE INDEX lbr_boletomovement_boleto ON LBR_BoletoMovement (LBR_Boleto_ID)
;

-- 19/01/2018 9h7min24s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800088,'7c125f1c-9f2a-4af0-ac0a-ef56d01d4907',TO_DATE('2018-01-19 09:07:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boletomovement_cnab',TO_DATE('2018-01-19 09:07:23','YYYY-MM-DD HH24:MI:SS'),0,1000059,'N','N','N','N','N')
;

-- 19/01/2018 9h7min32s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800108,'ba42284b-8d05-43f6-b630-0df339b37cdb',TO_DATE('2018-01-19 09:07:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:07:32','YYYY-MM-DD HH24:MI:SS'),0,800634,800088,0)
;

-- 19/01/2018 9h7min33s BRST
CREATE INDEX lbr_boletomovement_cnab ON LBR_BoletoMovement (LBR_CNAB_ID)
;

-- 19/01/2018 9h8min22s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800089,'e75256ee-48da-4bb7-8a78-1f9a9f3a1f87',TO_DATE('2018-01-19 09:08:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_boletosd_boleto',TO_DATE('2018-01-19 09:08:21','YYYY-MM-DD HH24:MI:SS'),0,1000055,'N','N','N','N','N')
;

-- 19/01/2018 9h8min31s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800109,'0e41a63c-86f0-45af-aee8-104bb724fe3d',TO_DATE('2018-01-19 09:08:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:08:31','YYYY-MM-DD HH24:MI:SS'),0,1001114,800089,0)
;

-- 19/01/2018 9h8min33s BRST
CREATE INDEX lbr_boletosd_boleto ON LBR_BoletoSD (LBR_Boleto_ID)
;

-- 19/01/2018 9h16min30s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800091,'bd4f1702-7324-4151-abe8-99f7d8b941a3',TO_DATE('2018-01-19 09:16:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cest_ncmprod_cest',TO_DATE('2018-01-19 09:16:30','YYYY-MM-DD HH24:MI:SS'),0,800025,'N','N','N','N','N')
;

-- 19/01/2018 9h16min39s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800111,'a595d32e-9273-458c-9b4e-c962817482ed',TO_DATE('2018-01-19 09:16:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:16:39','YYYY-MM-DD HH24:MI:SS'),0,800795,800091,0)
;

-- 19/01/2018 9h16min41s BRST
CREATE INDEX lbr_cest_ncmprod_cest ON LBR_CEST_NCMProd (LBR_CEST_ID)
;

-- 19/01/2018 9h16min51s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800092,'a752666c-0986-4fa7-9595-9da84df3ad15',TO_DATE('2018-01-19 09:16:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cest_ncmprod_ncm',TO_DATE('2018-01-19 09:16:51','YYYY-MM-DD HH24:MI:SS'),0,800025,'N','N','N','N','N')
;

-- 19/01/2018 9h17min1s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800112,'face07f4-22e4-4ce2-9451-c41681c2bb17',TO_DATE('2018-01-19 09:16:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:16:58','YYYY-MM-DD HH24:MI:SS'),0,800794,800092,0)
;

-- 19/01/2018 9h17min5s BRST
CREATE INDEX lbr_cest_ncmprod_ncm ON LBR_CEST_NCMProd (LBR_NCM_ID)
;

-- 19/01/2018 9h17min24s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800093,'b22f3d9e-b1d7-40bc-9369-da5c8a60513a',TO_DATE('2018-01-19 09:17:24','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cest_ncmprod_product',TO_DATE('2018-01-19 09:17:24','YYYY-MM-DD HH24:MI:SS'),0,800025,'N','N','N','N','N')
;

-- 19/01/2018 9h17min32s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800113,'bdc1a28e-2b46-471a-b3aa-df785202ae1e',TO_DATE('2018-01-19 09:17:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:17:32','YYYY-MM-DD HH24:MI:SS'),0,800793,800093,0)
;

-- 19/01/2018 9h17min34s BRST
CREATE INDEX lbr_cest_ncmprod_product ON LBR_CEST_NCMProd (M_Product_ID)
;

-- 19/01/2018 9h18min19s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800094,'831b5da2-fe83-4beb-b1ce-e83f765dbf82',TO_DATE('2018-01-19 09:18:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cfopline_cfop',TO_DATE('2018-01-19 09:18:18','YYYY-MM-DD HH24:MI:SS'),0,1000025,'N','N','N','N','N')
;

-- 19/01/2018 9h18min27s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800114,'17088c13-ad85-4f15-b242-6439ef771a7c',TO_DATE('2018-01-19 09:18:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:18:26','YYYY-MM-DD HH24:MI:SS'),0,1000389,800094,0)
;

-- 19/01/2018 9h18min28s BRST
CREATE INDEX lbr_cfopline_cfop ON LBR_CFOPLine (LBR_CFOP_ID)
;

-- 19/01/2018 9h19min2s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800095,'434630b3-42af-459f-b4bf-d7f0ee9b2fed',TO_DATE('2018-01-19 09:19:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cfopline_tax',TO_DATE('2018-01-19 09:19:02','YYYY-MM-DD HH24:MI:SS'),0,1000025,'N','N','N','N','N')
;

-- 19/01/2018 9h19min11s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800115,'8012535e-c904-4885-b1b2-18a514007b12',TO_DATE('2018-01-19 09:19:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:19:10','YYYY-MM-DD HH24:MI:SS'),0,1000397,800095,0)
;

-- 19/01/2018 9h19min13s BRST
CREATE INDEX lbr_cfopline_tax ON LBR_CFOPLine (LBR_Tax_ID)
;

-- 19/01/2018 9h20min3s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800096,'1481a2ef-9978-4403-bbaa-af4a4ec6e692',TO_DATE('2018-01-19 09:20:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cnab_bank',TO_DATE('2018-01-19 09:20:03','YYYY-MM-DD HH24:MI:SS'),0,800012,'N','N','N','N','N')
;

-- 19/01/2018 9h20min18s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800116,'60e643d6-1243-407c-b9d3-bec6300d50a3',TO_DATE('2018-01-19 09:20:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:20:18','YYYY-MM-DD HH24:MI:SS'),0,800629,800096,0)
;

-- 19/01/2018 9h20min33s BRST
CREATE INDEX lbr_cnab_bank ON LBR_CNAB (C_Bank_ID)
;

-- 19/01/2018 9h20min44s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800097,'ba553df1-36d6-44c4-9847-c7b28d79f08c',TO_DATE('2018-01-19 09:20:44','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_cnab_bankaccount',TO_DATE('2018-01-19 09:20:44','YYYY-MM-DD HH24:MI:SS'),0,800012,'N','N','N','N','N')
;

-- 19/01/2018 9h20min58s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800117,'c1e3ae74-490d-462d-823b-e68075925cc0',TO_DATE('2018-01-19 09:20:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:20:58','YYYY-MM-DD HH24:MI:SS'),0,800630,800097,0)
;

-- 19/01/2018 9h21min0s BRST
CREATE INDEX lbr_cnab_bankaccount ON LBR_CNAB (C_BankAccount_ID)
;

-- 19/01/2018 9h24min30s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800098,'9e9cb3a7-2c47-42eb-bbea-99fdda67af68',TO_DATE('2018-01-19 09:24:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_cofins_details',TO_DATE('2018-01-19 09:24:30','YYYY-MM-DD HH24:MI:SS'),0,1000030,'N','N','N','N','N')
;

-- 19/01/2018 9h24min42s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800118,'64606bcb-3ed5-41db-9764-85a89f766154',TO_DATE('2018-01-19 09:24:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:24:42','YYYY-MM-DD HH24:MI:SS'),0,1000543,800098,0)
;

-- 19/01/2018 9h24min44s BRST
CREATE INDEX lbr_docline_cofins_details ON LBR_DocLine_COFINS (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h26min42s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800099,'965a88b3-c735-4329-ac88-b65be2c3f694',TO_DATE('2018-01-19 09:26:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_icms_',TO_DATE('2018-01-19 09:26:42','YYYY-MM-DD HH24:MI:SS'),0,1000027,'N','N','N','N','N')
;

-- 19/01/2018 9h26min48s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800119,'d4fff8dc-de67-4f97-a3ab-fb0f197f95e0',TO_DATE('2018-01-19 09:26:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:26:48','YYYY-MM-DD HH24:MI:SS'),0,1000460,800099,0)
;

-- 19/01/2018 9h26min50s BRST
CREATE INDEX lbr_docline_icms_ ON LBR_DocLine_ICMS (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h27min18s BRST
UPDATE AD_TableIndex SET Name='lbr_docline_icms_details',Updated=TO_DATE('2018-01-19 09:27:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_TableIndex_ID=800099
;

-- 19/01/2018 9h27min26s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800100,'34bbd156-8f21-455d-b54e-60028bb9c46f',TO_DATE('2018-01-19 09:27:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_icms_cest',TO_DATE('2018-01-19 09:27:26','YYYY-MM-DD HH24:MI:SS'),0,1000027,'N','N','N','N','N')
;

-- 19/01/2018 9h27min32s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800120,'0658a105-6e61-4ba6-911c-de4bc0ae364c',TO_DATE('2018-01-19 09:27:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:27:32','YYYY-MM-DD HH24:MI:SS'),0,800796,800100,0)
;

-- 19/01/2018 9h27min34s BRST
CREATE INDEX lbr_docline_icms_cest ON LBR_DocLine_ICMS (LBR_CEST_ID)
;

-- 19/01/2018 9h28min12s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800101,'eef4d6ca-9758-4cac-9ff3-0a2fa227029b',TO_DATE('2018-01-19 09:28:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_importtax_details',TO_DATE('2018-01-19 09:28:12','YYYY-MM-DD HH24:MI:SS'),0,1000031,'N','N','N','N','N')
;

-- 19/01/2018 9h28min22s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800121,'d23b400c-dd01-41ba-a6e4-f1a320a7f57f',TO_DATE('2018-01-19 09:28:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:28:22','YYYY-MM-DD HH24:MI:SS'),0,1000569,800101,0)
;

-- 19/01/2018 9h28min24s BRST
CREATE INDEX lbr_docline_importtax_details ON LBR_DocLine_ImportTax (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h28min56s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800102,'3ec6fa73-caaa-45ab-b6a8-a97a5bad4bbe',TO_DATE('2018-01-19 09:28:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_ipi_details',TO_DATE('2018-01-19 09:28:56','YYYY-MM-DD HH24:MI:SS'),0,1000028,'N','N','N','N','N')
;

-- 19/01/2018 9h29min4s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800122,'8f1a95c2-5d36-4b91-b328-eeb89b6517b6',TO_DATE('2018-01-19 09:29:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:29:04','YYYY-MM-DD HH24:MI:SS'),0,1000501,800102,0)
;

-- 19/01/2018 9h29min5s BRST
CREATE INDEX lbr_docline_ipi_details ON LBR_DocLine_IPI (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h29min41s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800103,'dd1b76cb-b7bd-46e5-9a19-fe3cbf147b8a',TO_DATE('2018-01-19 09:29:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_issqn_details',TO_DATE('2018-01-19 09:29:40','YYYY-MM-DD HH24:MI:SS'),0,1000032,'N','N','N','N','N')
;

-- 19/01/2018 9h29min48s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800123,'cb938967-d65a-4710-b474-c5c63035878b',TO_DATE('2018-01-19 09:29:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:29:48','YYYY-MM-DD HH24:MI:SS'),0,1000581,800103,0)
;

-- 19/01/2018 9h30min28s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800104,'fb20b86c-3f91-496e-9743-74e5ee8a7caa',TO_DATE('2018-01-19 09:30:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_other_details',TO_DATE('2018-01-19 09:30:27','YYYY-MM-DD HH24:MI:SS'),0,800061,'N','N','N','N','N')
;

-- 19/01/2018 9h30min37s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800124,'627ed5ac-a06d-42ac-82ac-6ad606bfcdab',TO_DATE('2018-01-19 09:30:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:30:36','YYYY-MM-DD HH24:MI:SS'),0,801616,800104,0)
;

-- 19/01/2018 9h30min38s BRST
CREATE INDEX lbr_docline_other_details ON LBR_DocLine_OTHER (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h31min9s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800105,'41f6ba8e-ac21-4973-ae3d-588aa2be38a4',TO_DATE('2018-01-19 09:31:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_pis_details',TO_DATE('2018-01-19 09:31:09','YYYY-MM-DD HH24:MI:SS'),0,1000029,'N','N','N','N','N')
;

-- 19/01/2018 9h31min18s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800125,'00192c14-d4be-46fc-ada2-270d0a2cd649',TO_DATE('2018-01-19 09:31:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:31:17','YYYY-MM-DD HH24:MI:SS'),0,1000521,800105,0)
;

-- 19/01/2018 9h31min20s BRST
CREATE INDEX lbr_docline_pis_details ON LBR_DocLine_PIS (LBR_DocLine_Details_ID)
;

-- 19/01/2018 9h31min55s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800106,'2e8f889b-80a7-4820-a7e5-794a09d815c1',TO_DATE('2018-01-19 09:31:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_fiscaldoc_invoice',TO_DATE('2018-01-19 09:31:55','YYYY-MM-DD HH24:MI:SS'),0,800031,'N','N','N','N','N')
;

-- 19/01/2018 9h32min2s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800126,'bfc4cfd4-c0f2-43f1-a005-9f5c58ad0942',TO_DATE('2018-01-19 09:32:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:32:02','YYYY-MM-DD HH24:MI:SS'),0,801001,800106,0)
;

-- 19/01/2018 9h32min4s BRST
CREATE INDEX lbr_fiscaldoc_invoice ON LBR_FiscalDoc (C_Invoice_ID)
;

-- 19/01/2018 9h33min6s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800107,'9dbe00c5-d364-4fbe-ac0f-380268d227e1',TO_DATE('2018-01-19 09:33:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_ncm_tax',TO_DATE('2018-01-19 09:33:05','YYYY-MM-DD HH24:MI:SS'),0,1000000,'N','N','N','N','N')
;

-- 19/01/2018 9h33min13s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800127,'c8a26e80-2c27-4c62-afe3-306d96da71ee',TO_DATE('2018-01-19 09:33:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:33:13','YYYY-MM-DD HH24:MI:SS'),0,1000212,800107,0)
;

-- 19/01/2018 9h33min15s BRST
CREATE INDEX lbr_ncm_tax ON LBR_NCM (LBR_Tax_ID)
;

-- 19/01/2018 9h33min56s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800108,'fb3463b4-9b27-4341-9408-eecdff9ae246',TO_DATE('2018-01-19 09:33:56','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_ncmmono_tax',TO_DATE('2018-01-19 09:33:56','YYYY-MM-DD HH24:MI:SS'),0,800063,'N','N','N','N','N')
;

-- 19/01/2018 9h34min10s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800128,'9b532b82-0ba2-4695-a792-3e5304ccdaa5',TO_DATE('2018-01-19 09:34:10','YYYY-MM-DD HH24:MI:SS'),0,'U','Y',TO_DATE('2018-01-19 09:34:10','YYYY-MM-DD HH24:MI:SS'),0,801665,800108,0)
;

-- 19/01/2018 9h34min12s BRST
CREATE INDEX lbr_ncmmono_tax ON LBR_NCMMono (C_Tax_ID)
;

-- 19/01/2018 9h35min3s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800109,'e5a89ea5-22b4-4e4e-9484-d7103199143b',TO_DATE('2018-01-19 09:35:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_docline_details_tax',TO_DATE('2018-01-19 09:35:03','YYYY-MM-DD HH24:MI:SS'),0,1000026,'N','N','N','N','N')
;

-- 19/01/2018 9h35min12s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800129,'df3e197c-704e-4784-bcf2-75806f14b5e9',TO_DATE('2018-01-19 09:35:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:35:12','YYYY-MM-DD HH24:MI:SS'),0,1000447,800109,0)
;

-- 19/01/2018 9h35min14s BRST
CREATE INDEX lbr_docline_details_tax ON LBR_DocLine_Details (LBR_Tax_ID)
;

-- 19/01/2018 9h35min57s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800110,'8dd8762c-de6a-4dd2-be87-e553ab65c540',TO_DATE('2018-01-19 09:35:57','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_ncmtax_ncm',TO_DATE('2018-01-19 09:35:57','YYYY-MM-DD HH24:MI:SS'),0,1000014,'N','N','N','N','N')
;

-- 19/01/2018 9h36min7s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800130,'20ea1fbc-9448-47f4-a558-094732662379',TO_DATE('2018-01-19 09:36:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:36:07','YYYY-MM-DD HH24:MI:SS'),0,1000221,800110,0)
;

-- 19/01/2018 9h36min9s BRST
CREATE INDEX lbr_ncmtax_ncm ON LBR_NCMTax (LBR_NCM_ID)
;

-- 19/01/2018 9h36min25s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800111,'16a4f94f-1dfe-49ef-a57b-65c97e19d2e2',TO_DATE('2018-01-19 09:36:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_ncmtax_tax',TO_DATE('2018-01-19 09:36:25','YYYY-MM-DD HH24:MI:SS'),0,1000014,'N','N','N','N','N')
;

-- 19/01/2018 9h37min8s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800131,'4504fed1-23e1-4fc9-b015-4a579b5dd50b',TO_DATE('2018-01-19 09:37:08','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:37:08','YYYY-MM-DD HH24:MI:SS'),0,1000228,800111,0)
;

-- 19/01/2018 9h37min10s BRST
CREATE INDEX lbr_ncmtax_tax ON LBR_NCMTax (LBR_Tax_ID)
;

-- 19/01/2018 9h37min59s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800112,'ad16c438-5ab6-4dee-9898-a943818f6094',TO_DATE('2018-01-19 09:37:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfs_bpartner',TO_DATE('2018-01-19 09:37:59','YYYY-MM-DD HH24:MI:SS'),0,800035,'N','N','N','N','N')
;

-- 19/01/2018 9h38min7s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800132,'cf9ecf07-ed73-4eaa-82e0-a9df0051bd06',TO_DATE('2018-01-19 09:38:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:38:07','YYYY-MM-DD HH24:MI:SS'),0,801108,800112,0)
;

-- 19/01/2018 9h38min9s BRST
CREATE INDEX lbr_nfs_bpartner ON LBR_NFS (C_BPartner_ID)
;

-- 19/01/2018 9h38min41s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800113,'d6272f5a-b110-40d6-8d5a-33fa906b5983',TO_DATE('2018-01-19 09:38:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfs_invoice',TO_DATE('2018-01-19 09:38:41','YYYY-MM-DD HH24:MI:SS'),0,800035,'N','N','N','N','N')
;

-- 19/01/2018 9h38min48s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800133,'de9c32d1-212d-4c2c-984f-1aea9178499e',TO_DATE('2018-01-19 09:38:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:38:48','YYYY-MM-DD HH24:MI:SS'),0,801112,800113,0)
;

-- 19/01/2018 9h38min54s BRST
CREATE INDEX lbr_nfs_invoice ON LBR_NFS (C_Invoice_ID)
;

-- 19/01/2018 9h39min10s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800114,'98e6007c-f074-450d-a009-128c35393b23',TO_DATE('2018-01-19 09:39:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfs_invoiceline',TO_DATE('2018-01-19 09:39:09','YYYY-MM-DD HH24:MI:SS'),0,800035,'N','N','N','N','N')
;

-- 19/01/2018 9h39min18s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800134,'0aee3ad5-8c91-49a5-92a8-d1bce960cc31',TO_DATE('2018-01-19 09:39:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:39:18','YYYY-MM-DD HH24:MI:SS'),0,801122,800114,0)
;

-- 19/01/2018 9h39min21s BRST
CREATE INDEX lbr_nfs_invoiceline ON LBR_NFS (C_InvoiceLine_ID)
;

-- 19/01/2018 9h39min30s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800115,'c7b0095f-065f-4848-a591-6c47ae82e224',TO_DATE('2018-01-19 09:39:29','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfs_order',TO_DATE('2018-01-19 09:39:29','YYYY-MM-DD HH24:MI:SS'),0,800035,'N','N','N','N','N')
;

-- 19/01/2018 9h39min37s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800135,'b2fc94b2-436a-4d58-910a-d7c3e3a3a0dc',TO_DATE('2018-01-19 09:39:37','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:39:37','YYYY-MM-DD HH24:MI:SS'),0,801111,800115,0)
;

-- 19/01/2018 9h39min39s BRST
CREATE INDEX lbr_nfs_order ON LBR_NFS (C_Order_ID)
;

-- 19/01/2018 9h39min46s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800116,'4ecff5ed-08a5-4b66-a17e-3e4b2600bd8e',TO_DATE('2018-01-19 09:39:46','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfs_orderline',TO_DATE('2018-01-19 09:39:46','YYYY-MM-DD HH24:MI:SS'),0,800035,'N','N','N','N','N')
;

-- 19/01/2018 9h39min55s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800136,'3e90ca05-5286-4ca6-bea7-c617a3ebc772',TO_DATE('2018-01-19 09:39:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:39:55','YYYY-MM-DD HH24:MI:SS'),0,801123,800116,0)
;

-- 19/01/2018 9h39min56s BRST
CREATE INDEX lbr_nfs_orderline ON LBR_NFS (C_OrderLine_ID)
;

-- 19/01/2018 9h41min37s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800117,'59850898-8e7f-428a-8f4c-d9d28192154c',TO_DATE('2018-01-19 09:41:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfslotline_nfslot',TO_DATE('2018-01-19 09:41:36','YYYY-MM-DD HH24:MI:SS'),0,800039,'N','N','N','N','N')
;

-- 19/01/2018 9h41min53s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800137,'c18a78d4-4739-4f57-8061-5ac994ea10af',TO_DATE('2018-01-19 09:41:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:41:53','YYYY-MM-DD HH24:MI:SS'),0,801225,800117,0)
;

-- 19/01/2018 9h41min55s BRST
CREATE INDEX lbr_nfslotline_nfslot ON LBR_NFSLotLine (LBR_NFSLot_ID)
;

-- 19/01/2018 9h42min6s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800118,'4d61b1d1-e754-438f-8187-d5d22f9d991e',TO_DATE('2018-01-19 09:42:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfslotline_nfs',TO_DATE('2018-01-19 09:42:05','YYYY-MM-DD HH24:MI:SS'),0,800039,'N','N','N','N','N')
;

-- 19/01/2018 9h42min14s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800138,'4464f314-9058-4203-b8ad-8d6c93ee9417',TO_DATE('2018-01-19 09:42:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:42:14','YYYY-MM-DD HH24:MI:SS'),0,801222,800118,0)
;

-- 19/01/2018 9h42min17s BRST
CREATE INDEX lbr_nfslotline_nfs ON LBR_NFSLotLine (LBR_NFS_ID)
;

-- 19/01/2018 9h43min0s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800119,'1812b275-3628-49a2-9512-de7267bf525d',TO_DATE('2018-01-19 09:42:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_nfstax_nfs',TO_DATE('2018-01-19 09:42:59','YYYY-MM-DD HH24:MI:SS'),0,800036,'N','N','N','N','N')
;

-- 19/01/2018 9h43min9s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800139,'114ed5c5-2322-47a8-99c0-1e512ad692de',TO_DATE('2018-01-19 09:43:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:43:09','YYYY-MM-DD HH24:MI:SS'),0,801161,800119,0)
;

-- 19/01/2018 9h43min12s BRST
CREATE INDEX lbr_nfstax_nfs ON LBR_NFSTax (LBR_NFS_ID)
;

-- 19/01/2018 9h44min13s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800120,'c7b0cc85-c3a9-45b4-8704-22d690585064',TO_DATE('2018-01-19 09:44:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscal_bpartner',TO_DATE('2018-01-19 09:44:13','YYYY-MM-DD HH24:MI:SS'),0,1000033,'N','N','N','N','N')
;

-- 19/01/2018 9h44min23s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800140,'7a55c1cf-b500-46ac-a36f-03c42ca04b91',TO_DATE('2018-01-19 09:44:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:44:23','YYYY-MM-DD HH24:MI:SS'),0,1000628,800120,0)
;

-- 19/01/2018 9h44min25s BRST
CREATE INDEX lbr_notafiscal_bpartner ON LBR_NotaFiscal (C_BPartner_ID)
;

-- 19/01/2018 9h44min41s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800121,'0251898c-61d0-4ac3-aafa-acee2193484d',TO_DATE('2018-01-19 09:44:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscal_order',TO_DATE('2018-01-19 09:44:41','YYYY-MM-DD HH24:MI:SS'),0,1000033,'N','N','N','N','N')
;

-- 19/01/2018 9h44min49s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800141,'c465301c-e5de-4dfa-a0f5-c9b2d5b6ae0a',TO_DATE('2018-01-19 09:44:48','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:44:48','YYYY-MM-DD HH24:MI:SS'),0,1000632,800121,0)
;

-- 19/01/2018 9h44min50s BRST
CREATE INDEX lbr_notafiscal_order ON LBR_NotaFiscal (C_Order_ID)
;

-- 19/01/2018 9h44min59s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800122,'f9db897d-c6a1-4b78-99ea-a5d28528fe09',TO_DATE('2018-01-19 09:44:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscal_invoice',TO_DATE('2018-01-19 09:44:59','YYYY-MM-DD HH24:MI:SS'),0,1000033,'N','N','N','N','N')
;

-- 19/01/2018 9h45min6s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800142,'affba823-d4c7-4b8c-af17-69829aab3e71',TO_DATE('2018-01-19 09:45:06','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:45:06','YYYY-MM-DD HH24:MI:SS'),0,1000633,800122,0)
;

-- 19/01/2018 9h45min8s BRST
CREATE INDEX lbr_notafiscal_invoice ON LBR_NotaFiscal (C_Invoice_ID)
;

-- 19/01/2018 9h45min17s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800123,'893d3f8f-53c2-4192-814c-e10049897650',TO_DATE('2018-01-19 09:45:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscal_rma',TO_DATE('2018-01-19 09:45:17','YYYY-MM-DD HH24:MI:SS'),0,1000033,'N','N','N','N','N')
;

-- 19/01/2018 9h45min25s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800143,'fb5e1b82-25d6-4f5e-97cb-300f782cd0f8',TO_DATE('2018-01-19 09:45:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:45:25','YYYY-MM-DD HH24:MI:SS'),0,1000634,800123,0)
;

-- 19/01/2018 9h45min27s BRST
CREATE INDEX lbr_notafiscal_rma ON LBR_NotaFiscal (M_RMA_ID)
;

-- 19/01/2018 9h47min4s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800124,'a6e9e050-f739-4607-9bcd-b3f362dc497e',TO_DATE('2018-01-19 09:47:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaldi_nfline',TO_DATE('2018-01-19 09:47:03','YYYY-MM-DD HH24:MI:SS'),0,800003,'N','N','N','N','N')
;

-- 19/01/2018 9h47min22s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800144,'83d1ec6d-eaed-4cde-91af-237a1acdcca2',TO_DATE('2018-01-19 09:47:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:47:22','YYYY-MM-DD HH24:MI:SS'),0,800060,800124,0)
;

-- 19/01/2018 9h47min24s BRST
CREATE INDEX lbr_notafiscaldi_nfline ON LBR_NotaFiscalDI (LBR_NotaFiscalLine_ID)
;

-- 19/01/2018 9h49min7s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800125,'fda9238e-def3-4d37-bca6-7cd41f2cec64',TO_DATE('2018-01-19 09:49:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaldocref_nf',TO_DATE('2018-01-19 09:49:07','YYYY-MM-DD HH24:MI:SS'),0,1000043,'N','N','N','N','N')
;

-- 19/01/2018 9h49min16s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800145,'a19507f8-0b15-41b2-aa01-cad695b20176',TO_DATE('2018-01-19 09:49:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:49:16','YYYY-MM-DD HH24:MI:SS'),0,1000798,800125,0)
;

-- 19/01/2018 9h49min18s BRST
CREATE INDEX lbr_notafiscaldocref_nf ON LBR_NotaFiscalDocRef (LBR_NotaFiscal_ID)
;

-- 19/01/2018 9h50min17s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800126,'a853fc42-403c-41be-a8fd-263c3da5f8a7',TO_DATE('2018-01-19 09:50:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaleventline_event',TO_DATE('2018-01-19 09:50:17','YYYY-MM-DD HH24:MI:SS'),0,1000049,'N','N','N','N','N')
;

-- 19/01/2018 9h50min24s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800146,'291e33c5-3394-4adc-b600-c7a9d37ca5f6',TO_DATE('2018-01-19 09:50:24','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:50:24','YYYY-MM-DD HH24:MI:SS'),0,1000947,800126,0)
;

-- 19/01/2018 9h50min26s BRST
CREATE INDEX lbr_notafiscaleventline_event ON LBR_NotaFiscalEventLine (LBR_NotaFiscalEvent_ID)
;

-- 19/01/2018 9h50min34s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800127,'58397684-2043-4e5b-8e0c-b3bd58964906',TO_DATE('2018-01-19 09:50:34','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaleventline_nf',TO_DATE('2018-01-19 09:50:34','YYYY-MM-DD HH24:MI:SS'),0,1000049,'N','N','N','N','N')
;

-- 19/01/2018 9h50min44s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800147,'0fc28708-e77f-4695-93bb-b21fd59cffe5',TO_DATE('2018-01-19 09:50:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:50:43','YYYY-MM-DD HH24:MI:SS'),0,1000948,800127,0)
;

-- 19/01/2018 9h50min46s BRST
CREATE INDEX lbr_notafiscaleventline_nf ON LBR_NotaFiscalEventLine (LBR_NotaFiscal_ID)
;

-- 19/01/2018 9h51min33s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800128,'f642d303-8e7b-48d9-b9f1-a127dc0ac8fc',TO_DATE('2018-01-19 09:51:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalline_nf',TO_DATE('2018-01-19 09:51:32','YYYY-MM-DD HH24:MI:SS'),0,1000034,'N','N','N','N','N')
;

-- 19/01/2018 9h51min45s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800148,'90653e48-7393-44a1-ab1a-e06e7cbf53d8',TO_DATE('2018-01-19 09:51:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:51:45','YYYY-MM-DD HH24:MI:SS'),0,1000649,800128,0)
;

-- 19/01/2018 9h51min46s BRST
CREATE INDEX lbr_notafiscalline_nf ON LBR_NotaFiscalLine (LBR_NotaFiscal_ID)
;

-- 19/01/2018 9h52min15s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800129,'b90868fa-9993-4cd0-8c6e-118251883455',TO_DATE('2018-01-19 09:52:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalline_orderline',TO_DATE('2018-01-19 09:52:15','YYYY-MM-DD HH24:MI:SS'),0,1000034,'N','N','N','N','N')
;

-- 19/01/2018 9h52min24s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800149,'7da538d0-e9a3-4eff-bb20-18bff82f43b3',TO_DATE('2018-01-19 09:52:23','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:52:23','YYYY-MM-DD HH24:MI:SS'),0,1000959,800129,0)
;

-- 19/01/2018 9h52min28s BRST
CREATE INDEX lbr_notafiscalline_orderline ON LBR_NotaFiscalLine (C_OrderLine_ID)
;

-- 19/01/2018 9h52min42s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800130,'d696e75c-43af-4751-a3da-dc322bab8032',TO_DATE('2018-01-19 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalline_invoiceline',TO_DATE('2018-01-19 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,1000034,'N','N','N','N','N')
;

-- 19/01/2018 9h52min51s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800150,'00fca1cd-fbb2-46a5-94a9-802720769eb4',TO_DATE('2018-01-19 09:52:51','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:52:51','YYYY-MM-DD HH24:MI:SS'),0,1000960,800130,0)
;

-- 19/01/2018 9h52min52s BRST
CREATE INDEX lbr_notafiscalline_invoiceline ON LBR_NotaFiscalLine (C_InvoiceLine_ID)
;

-- 19/01/2018 9h53min6s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800131,'112de49a-aa17-49de-b1ca-224500e14bf2',TO_DATE('2018-01-19 09:53:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalline_rmaline',TO_DATE('2018-01-19 09:53:05','YYYY-MM-DD HH24:MI:SS'),0,1000034,'N','N','N','N','N')
;

-- 19/01/2018 9h53min13s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800151,'83178d2a-27b2-4852-9ba8-0ecb51e11290',TO_DATE('2018-01-19 09:53:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:53:12','YYYY-MM-DD HH24:MI:SS'),0,1000961,800131,0)
;

-- 19/01/2018 9h53min14s BRST
CREATE INDEX lbr_notafiscalline_rmaline ON LBR_NotaFiscalLine (M_RMALine_ID)
;

-- 19/01/2018 9h54min17s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800132,'e63faa52-4b0c-4c14-b761-b0020645676d',TO_DATE('2018-01-19 09:54:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscallinecomb_nf',TO_DATE('2018-01-19 09:54:17','YYYY-MM-DD HH24:MI:SS'),0,800008,'N','N','N','N','N')
;

-- 19/01/2018 9h54min32s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800152,'3a4e6196-3b08-4761-9277-74983ec85835',TO_DATE('2018-01-19 09:54:32','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:54:32','YYYY-MM-DD HH24:MI:SS'),0,800531,800132,0)
;

-- 19/01/2018 9h54min36s BRST
UPDATE AD_TableIndex SET Name='lbr_notafiscallinecomb_nfline',Updated=TO_DATE('2018-01-19 09:54:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_TableIndex_ID=800132
;

-- 19/01/2018 9h54min38s BRST
CREATE INDEX lbr_notafiscallinecomb_nfline ON LBR_NotaFiscalLineComb (LBR_NotaFiscalLine_ID)
;

-- 19/01/2018 9h55min30s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800133,'314619c7-32b2-4e1a-9bbc-50e8cafa0505',TO_DATE('2018-01-19 09:55:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscallotline_nflot',TO_DATE('2018-01-19 09:55:30','YYYY-MM-DD HH24:MI:SS'),0,1000047,'N','N','N','N','N')
;

-- 19/01/2018 9h55min52s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800153,'e335c060-5e1d-4db0-976e-3d6a355bcf41',TO_DATE('2018-01-19 09:55:52','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:55:52','YYYY-MM-DD HH24:MI:SS'),0,1000918,800133,0)
;

-- 19/01/2018 9h55min54s BRST
CREATE INDEX lbr_notafiscallotline_nflot ON LBR_NotaFiscalLotLine (LBR_NotaFiscalLot_ID)
;

-- 19/01/2018 9h56min3s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800134,'01ac1a8a-b1ac-420c-a5c5-bc673bc582c6',TO_DATE('2018-01-19 09:56:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscallotline_nf',TO_DATE('2018-01-19 09:56:02','YYYY-MM-DD HH24:MI:SS'),0,1000047,'N','N','N','N','N')
;

-- 19/01/2018 9h56min11s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800154,'ff72e879-d163-4738-b22b-dac4d5bb2820',TO_DATE('2018-01-19 09:56:11','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:56:11','YYYY-MM-DD HH24:MI:SS'),0,1000911,800134,0)
;

-- 19/01/2018 9h56min12s BRST
CREATE INDEX lbr_notafiscallotline_nf ON LBR_NotaFiscalLotLine (LBR_NotaFiscal_ID)
;

-- 19/01/2018 9h57min6s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800135,'eaa07da8-879f-4ec2-95bc-a70f60da2228',TO_DATE('2018-01-19 09:57:06','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalnote_nf',TO_DATE('2018-01-19 09:57:06','YYYY-MM-DD HH24:MI:SS'),0,1000041,'N','N','N','N','N')
;

-- 19/01/2018 9h57min43s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800155,'885fb1a5-1457-4571-b879-28e58c8ca32f',TO_DATE('2018-01-19 09:57:43','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:57:43','YYYY-MM-DD HH24:MI:SS'),0,1000773,800135,0)
;

-- 19/01/2018 9h57min46s BRST
CREATE INDEX lbr_notafiscalnote_nf ON LBR_NotaFiscalNote (LBR_NotaFiscal_ID)
;

-- 19/01/2018 9h58min27s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800136,'7926af39-093e-4994-8690-df93a384c355',TO_DATE('2018-01-19 09:58:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalpackage_nf',TO_DATE('2018-01-19 09:58:27','YYYY-MM-DD HH24:MI:SS'),0,1000038,'N','N','N','N','N')
;

-- 19/01/2018 9h58min46s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800156,'9e40d4ab-6439-4e3c-8c3c-aece0501127d',TO_DATE('2018-01-19 09:58:45','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:58:45','YYYY-MM-DD HH24:MI:SS'),0,1000727,800136,0)
;

-- 19/01/2018 9h58min50s BRST
UPDATE AD_TableIndex SET Name='lbr_notafiscalpackage_nftransp',Updated=TO_DATE('2018-01-19 09:58:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_TableIndex_ID=800136
;

-- 19/01/2018 9h58min52s BRST
CREATE INDEX lbr_notafiscalpackage_nftransp ON LBR_NotaFiscalPackage (LBR_NotaFiscalTransp_ID)
;

-- 19/01/2018 9h59min32s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800137,'3caefcf8-7ba4-4dc6-927d-d2b2d2294dcb',TO_DATE('2018-01-19 09:59:31','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalpay_nf',TO_DATE('2018-01-19 09:59:31','YYYY-MM-DD HH24:MI:SS'),0,1000039,'N','N','N','N','N')
;

-- 19/01/2018 9h59min40s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800157,'02b7bd2c-b30f-4589-b7c8-5d098d199abf',TO_DATE('2018-01-19 09:59:40','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 09:59:40','YYYY-MM-DD HH24:MI:SS'),0,1000744,800137,0)
;

-- 19/01/2018 9h59min42s BRST
CREATE INDEX lbr_notafiscalpay_nf ON LBR_NotaFiscalPay (LBR_NotaFiscal_ID)
;

-- 19/01/2018 10h0min16s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800138,'00d08cf1-3e7a-4ffb-82e0-f64a6f31aa34',TO_DATE('2018-01-19 10:00:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalpaysched_pay',TO_DATE('2018-01-19 10:00:15','YYYY-MM-DD HH24:MI:SS'),0,1000040,'N','N','N','N','N')
;

-- 19/01/2018 10h0min25s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800158,'d8841738-5ee9-4074-ae90-2c6adb3c5f4c',TO_DATE('2018-01-19 10:00:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:00:25','YYYY-MM-DD HH24:MI:SS'),0,1000758,800138,0)
;

-- 19/01/2018 10h0min27s BRST
CREATE INDEX lbr_notafiscalpaysched_pay ON LBR_NotaFiscalPaySched (LBR_NotaFiscalPay_ID)
;

-- 19/01/2018 10h1min4s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800139,'6e73a881-a156-4f87-8aa6-fce2645b78b0',TO_DATE('2018-01-19 10:01:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscalproc_nf',TO_DATE('2018-01-19 10:01:04','YYYY-MM-DD HH24:MI:SS'),0,1000042,'N','N','N','N','N')
;

-- 19/01/2018 10h1min13s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800159,'93814efa-86d4-4082-9753-c398168504bb',TO_DATE('2018-01-19 10:01:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:01:13','YYYY-MM-DD HH24:MI:SS'),0,1000786,800139,0)
;

-- 19/01/2018 10h1min15s BRST
CREATE INDEX lbr_notafiscalproc_nf ON LBR_NotaFiscalProc (LBR_NotaFiscal_ID)
;

-- 19/01/2018 10h1min47s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800140,'85b3c757-742b-47b6-b30b-fc5c0cc8489a',TO_DATE('2018-01-19 10:01:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaltax_nf',TO_DATE('2018-01-19 10:01:47','YYYY-MM-DD HH24:MI:SS'),0,1000035,'N','N','N','N','N')
;

-- 19/01/2018 10h1min55s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800160,'442b2a18-96a9-4fe6-9670-8be8c4f491c2',TO_DATE('2018-01-19 10:01:55','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:01:55','YYYY-MM-DD HH24:MI:SS'),0,1000662,800140,0)
;

-- 19/01/2018 10h1min57s BRST
CREATE INDEX lbr_notafiscaltax_nf ON LBR_NotaFiscalTax (LBR_NotaFiscal_ID)
;

-- 19/01/2018 10h2min28s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800141,'18a0b9f2-5af5-46ef-b8b9-ae7b665d1958',TO_DATE('2018-01-19 10:02:27','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaltrailer_transp',TO_DATE('2018-01-19 10:02:27','YYYY-MM-DD HH24:MI:SS'),0,1000037,'N','N','N','N','N')
;

-- 19/01/2018 10h2min43s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800161,'59a77af4-bcef-4425-916e-c139233145b9',TO_DATE('2018-01-19 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:02:42','YYYY-MM-DD HH24:MI:SS'),0,1000714,800141,0)
;

-- 19/01/2018 10h2min44s BRST
CREATE INDEX lbr_notafiscaltrailer_transp ON LBR_NotaFiscalTrailer (LBR_NotaFiscalTransp_ID)
;

-- 19/01/2018 10h3min28s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800142,'6a465024-db77-41d8-8f25-5353f0bb95bb',TO_DATE('2018-01-19 10:03:12','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_notafiscaltransp_nf',TO_DATE('2018-01-19 10:03:12','YYYY-MM-DD HH24:MI:SS'),0,1000036,'N','N','N','N','N')
;

-- 19/01/2018 10h3min39s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800162,'662a886f-6f4f-4d07-af32-6c797688c6c1',TO_DATE('2018-01-19 10:03:38','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:03:38','YYYY-MM-DD HH24:MI:SS'),0,1000687,800142,0)
;

-- 19/01/2018 10h3min43s BRST
CREATE INDEX lbr_notafiscaltransp_nf ON LBR_NotaFiscalTransp (LBR_NotaFiscal_ID)
;

-- 19/01/2018 10h5min54s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800143,'08060603-565b-47df-bf8e-61a668eb4203',TO_DATE('2018-01-19 10:05:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxassessmentline_header',TO_DATE('2018-01-19 10:05:54','YYYY-MM-DD HH24:MI:SS'),0,800027,'N','N','N','N','N')
;

-- 19/01/2018 10h6min5s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800163,'385ef6c6-f0c3-44e3-870e-45da70c563f8',TO_DATE('2018-01-19 10:06:05','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:06:05','YYYY-MM-DD HH24:MI:SS'),0,800831,800143,0)
;

-- 19/01/2018 10h6min7s BRST
CREATE INDEX lbr_taxassessmentline_header ON LBR_TaxAssessmentLine (LBR_TaxAssessment_ID)
;

-- 19/01/2018 10h7min55s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800144,'609778b0-cdff-42a3-bdf4-011389bcd5fa',TO_DATE('2018-01-19 10:07:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_bpartner_tax',TO_DATE('2018-01-19 10:07:54','YYYY-MM-DD HH24:MI:SS'),0,1000019,'N','N','N','N','N')
;

-- 19/01/2018 10h8min4s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800164,'cb0f7d2c-f60e-4f9b-ad43-682b4eca0121',TO_DATE('2018-01-19 10:08:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:08:03','YYYY-MM-DD HH24:MI:SS'),0,1000278,800144,0)
;

-- 19/01/2018 10h8min5s BRST
CREATE INDEX lbr_taxconfig_bpartner_tax ON LBR_TaxConfig_BPartner (LBR_Tax_ID)
;

-- 19/01/2018 10h8min37s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800145,'76310719-e1d0-45f0-95d5-62a78e9b7434',TO_DATE('2018-01-19 10:08:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_bpartner_bpartner',TO_DATE('2018-01-19 10:08:36','YYYY-MM-DD HH24:MI:SS'),0,1000019,'N','N','N','N','N')
;

-- 19/01/2018 10h8min44s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800165,'2e79d333-907f-454d-a173-90d8ffa8891c',TO_DATE('2018-01-19 10:08:44','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:08:44','YYYY-MM-DD HH24:MI:SS'),0,1000273,800145,0)
;

-- 19/01/2018 10h8min45s BRST
-- CREATE INDEX lbr_taxconfig_bpartner_bpartner ON LBR_TaxConfig_BPartner (C_BPartner_ID)
-- ;

-- 19/01/2018 10h9min42s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800146,'7e19c9b8-7268-4953-bb7d-942e33da4068',TO_DATE('2018-01-19 10:09:41','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_bpgroup_tax',TO_DATE('2018-01-19 10:09:41','YYYY-MM-DD HH24:MI:SS'),0,1000020,'N','N','N','N','N')
;

-- 19/01/2018 10h10min3s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800166,'374de6c3-f8c3-49c6-9d4e-6c5c29b0926a',TO_DATE('2018-01-19 10:10:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:10:03','YYYY-MM-DD HH24:MI:SS'),0,1000292,800146,0)
;

-- 19/01/2018 10h10min5s BRST
CREATE INDEX lbr_taxconfig_bpgroup_tax ON LBR_TaxConfig_BPGroup (LBR_Tax_ID)
;

-- 19/01/2018 10h11min26s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800147,'5eb9ff09-3c10-4307-9670-846098d4cc06',TO_DATE('2018-01-19 10:11:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_product_tax',TO_DATE('2018-01-19 10:11:25','YYYY-MM-DD HH24:MI:SS'),0,1000022,'N','N','N','N','N')
;

-- 19/01/2018 10h11min34s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800167,'f46da8bf-b6f8-48a4-ab90-44c45a9e24b9',TO_DATE('2018-01-19 10:11:34','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:11:34','YYYY-MM-DD HH24:MI:SS'),0,1000320,800147,0)
;

-- 19/01/2018 10h11min36s BRST
CREATE INDEX lbr_taxconfig_product_tax ON LBR_TaxConfig_Product (LBR_Tax_ID)
;

-- 19/01/2018 10h11min59s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800148,'81bd27ff-da6b-420e-8af9-c9b6c9a350ba',TO_DATE('2018-01-19 10:11:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_productgroup_tax',TO_DATE('2018-01-19 10:11:59','YYYY-MM-DD HH24:MI:SS'),0,1000023,'N','N','N','N','N')
;

-- 19/01/2018 10h12min8s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800168,'54ff9304-d8e8-4d98-b822-6aef101392a2',TO_DATE('2018-01-19 10:12:08','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:12:08','YYYY-MM-DD HH24:MI:SS'),0,1000335,800148,0)
;

-- 19/01/2018 10h12min10s BRST
CREATE INDEX lbr_taxconfig_productgroup_tax ON LBR_TaxConfig_ProductGroup (LBR_Tax_ID)
;

-- 19/01/2018 10h12min33s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800149,'aa98eb89-41bb-4c86-bb75-a871cc15a5cb',TO_DATE('2018-01-19 10:12:33','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfig_region_tax',TO_DATE('2018-01-19 10:12:33','YYYY-MM-DD HH24:MI:SS'),0,1000021,'N','N','N','N','N')
;

-- 19/01/2018 10h12min43s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800169,'6bafd253-422b-411a-81e5-a734b0dc3cbb',TO_DATE('2018-01-19 10:12:42','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:12:42','YYYY-MM-DD HH24:MI:SS'),0,1000306,800149,0)
;

-- 19/01/2018 10h12min45s BRST
CREATE INDEX lbr_taxconfig_region_tax ON LBR_TaxConfig_Region (LBR_Tax_ID)
;

-- 19/01/2018 10h13min14s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800150,'83373a95-2bf8-44b3-93d4-6f2b27102c4d',TO_DATE('2018-01-19 10:13:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxconfiguration_product',TO_DATE('2018-01-19 10:13:13','YYYY-MM-DD HH24:MI:SS'),0,1000018,'N','N','N','N','N')
;

-- 19/01/2018 10h13min21s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800170,'48903b2c-d3bf-4ccc-9ece-2d516f562032',TO_DATE('2018-01-19 10:13:21','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:13:21','YYYY-MM-DD HH24:MI:SS'),0,1000268,800150,0)
;

-- 19/01/2018 10h13min23s BRST
CREATE INDEX lbr_taxconfiguration_product ON LBR_TaxConfiguration (M_Product_ID)
;

-- 19/01/2018 10h14min59s BRST
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,800151,'6b99e4b6-7be8-4bd3-9b12-888a145fc8b8',TO_DATE('2018-01-19 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y','lbr_taxline_tax',TO_DATE('2018-01-19 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,1000013,'N','N','N','N','N')
;

-- 19/01/2018 10h15min7s BRST
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,800171,'d094d894-d9d1-402f-8b55-8d178c387a5c',TO_DATE('2018-01-19 10:15:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR','Y',TO_DATE('2018-01-19 10:15:07','YYYY-MM-DD HH24:MI:SS'),0,1000198,800151,0)
;

-- 19/01/2018 10h15min9s BRST
CREATE INDEX lbr_taxline_tax ON LBR_TaxLine (LBR_Tax_ID)
;

SELECT lbr_register_migration_script('201801191017.sql') FROM dual;

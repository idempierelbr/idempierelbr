-- 
SELECT register_migration_script('202607240959_DebitCreditNFe.sql') FROM dual;

-- 24 de jul. de 2026 09:59:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800285,'NF-e Nota de Crédito',(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '85869f17-12ba-49e3-abc3-0965b2e9a21c'),'5',0,0,'Y',TO_TIMESTAMP('2026-07-24 09:59:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 09:59:52','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9435-f80b-76c6-86a4-76b33ed78aa0')
;

-- 24 de jul. de 2026 10:00:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800286,'NF-e Nota de Débito',(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '85869f17-12ba-49e3-abc3-0965b2e9a21c'),'6',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:00:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:00:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9436-32bd-7b2c-bb24-3d468543ae0b')
;

-- 24 de jul. de 2026 10:00:35 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800072,'LBR_tpNFDebito','L',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:00:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:00:34','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','019f9436-9d89-74dc-9501-60be12e75785','N')
;

-- 24 de jul. de 2026 10:00:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800287,'Transferência de créditos para Cooperativas',800072,'01',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:00:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:00:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9436-ead3-7065-8f82-3fd63a184d12')
;

-- 24 de jul. de 2026 10:01:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800288,'Anulação de crédito por saídas imunes/isentas',800072,'02',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:01:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:01:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9437-3713-7037-9de1-507b2d9294c2')
;

-- 24 de jul. de 2026 10:01:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800289,'Débitos de NF não processadas na apuração',800072,'03',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:01:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:01:27','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9437-6c3b-7a3a-8cff-613c51d42b7e')
;

-- 24 de jul. de 2026 10:01:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800290,'Multa e juros',800072,'04',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:01:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9437-a2a4-7b90-8033-3640b135041d')
;

-- 24 de jul. de 2026 10:01:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800291,'Transferência de crédito de sucessão',800072,'05',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:01:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:01:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9437-d931-7be2-9de1-365f6365ed94')
;

-- 24 de jul. de 2026 10:02:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800292,'Pagamento antecipado',800072,'06',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:02:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:02:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9438-139f-7c94-b8ba-5cb61d36ba26')
;

-- 24 de jul. de 2026 10:02:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800293,'Perda em estoque',800072,'07',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:02:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:02:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9438-46a1-77e9-8977-3704874bd4a9')
;

-- 24 de jul. de 2026 10:02:41 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800073,'LBR_tpNFCredito','L',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:02:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:02:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','019f9438-8bcf-71a4-94b0-ab4381e5f8e1','N')
;

-- 24 de jul. de 2026 10:02:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800294,'Multa e juros',800073,'01',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:02:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:02:55','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9438-c54d-7b30-b1d7-8f7c47f0d99a')
;

-- 24 de jul. de 2026 10:03:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800295,'Crédito presumido de IBS na ZFM',800073,'02',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:03:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:03:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9438-fd0a-73a4-a562-b598dfe5ab09')
;

-- 24 de jul. de 2026 10:06:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800627,0,0,'Y',TO_TIMESTAMP('2026-07-24 10:06:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:06:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpNFDebito','NFe Debit Type','NFe Debit Type','LBR','019f943c-69d6-7de7-a5e5-8395fc22fcbc')
;

-- 24 de jul. de 2026 10:07:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800628,0,0,'Y',TO_TIMESTAMP('2026-07-24 10:07:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:07:23','YYYY-MM-DD HH24:MI:SS'),10,'LBR_tpNFCredito','NFe Credit Type','NFe Credit Type','LBR','019f943c-dba9-7b85-a1b2-1c19aa522774')
;

-- 24 de jul. de 2026 10:08:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802104,0,'NFe Debit Type',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '4199f411-1ed8-4e67-9efc-1b1cd0af19c1'),'LBR_tpNFDebito',2,'N','N','N','N','N',0,'N',17,800072,0,0,'Y',TO_TIMESTAMP('2026-07-24 10:08:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:08:44','YYYY-MM-DD HH24:MI:SS'),10,800627,'Y','N','LBR','N','N','N','Y','019f943e-17e2-765c-a1ca-a72e3eb2e37d','Y',0,'N','N','N','N')
;

-- 24 de jul. de 2026 10:08:46 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_tpNFDebito VARCHAR(2) DEFAULT NULL 
;

-- 24 de jul. de 2026 10:09:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802105,0,'NFe Credit Type',(SELECT AD_Table_ID FROM AD_Table WHERE AD_Table_UU = '4199f411-1ed8-4e67-9efc-1b1cd0af19c1'),'LBR_tpNFCredito',2,'N','N','N','N','N',0,'N',17,800073,0,0,'Y',TO_TIMESTAMP('2026-07-24 10:09:33','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:09:33','YYYY-MM-DD HH24:MI:SS'),10,800628,'Y','N','LBR','N','N','N','Y','019f943e-d70f-7950-88fb-028eb949f3a2','Y',0,'N','N','N','N')
;

-- 24 de jul. de 2026 10:09:35 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_tpNFCredito VARCHAR(2) DEFAULT NULL 
;

-- 24 de jul. de 2026 10:09:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802226,'NFe Debit Type',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'e6553657-d315-48db-b056-492ee6a484ef'),802104,'Y',2,530,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:09:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:09:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019f943f-1f26-72f2-b22a-353d3a05a03c','Y',490,2)
;

-- 24 de jul. de 2026 10:09:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802227,'NFe Credit Type',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'e6553657-d315-48db-b056-492ee6a484ef'),802105,'Y',2,540,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-24 10:09:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-24 10:09:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019f943f-20c6-79bd-84bf-bec464d9054f','Y',500,2)
;

-- 24 de jul. de 2026 10:31:00 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FinNFe@=6', MandatoryLogic='@LBR_FinNFe@=6',Updated=TO_TIMESTAMP('2026-07-24 10:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802226
;

-- 24 de jul. de 2026 10:31:38 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FinNFe@=5', MandatoryLogic='@LBR_FinNFe@=5',Updated=TO_TIMESTAMP('2026-07-24 10:31:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802227
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='NFe Credit Type', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=220, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802227
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='NFe Debit Type', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=230, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802226
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='NFe Nature of Operation', Description=NULL, Help=NULL, SeqNo=240, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='57f1adef-cb8f-4987-8c41-e658b2e0f378'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='NFe Destination Type', Description=NULL, Help=NULL, SeqNo=250, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='c91bb1d6-703a-4448-8a34-523d7db5510c'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Is End User', Description=NULL, Help=NULL, SeqNo=260, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='bef6ff80-b7fa-4318-b154-b7035c696952'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Face-to-Face Indicator', Description=NULL, Help=NULL, SeqNo=270, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2a9d64a8-ca11-4714-83b4-189f011c742d'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Intermediary Indicator', Description=NULL, Help=NULL, SeqNo=280, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801531
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Intermediary BP', Description=NULL, Help=NULL, SeqNo=290, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801533
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Intermediary Username', Description=NULL, Help=NULL, SeqNo=300, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801537
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Region', Description='Identifies a geographical Region', Help='The Region identifies a unique Region for this Country.', SeqNo=310, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='23dfd60c-e4a9-4815-b9c8-da5541fc0e4b'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='City', Description='City', Help='City in a country', SeqNo=320, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='cc974157-0da6-43bb-89e9-cacac091158e'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Contingency Date', Description=NULL, Help=NULL, SeqNo=330, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='31107c19-31a0-4ab9-8360-dc40aab15b41'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Contingency Reason', Description=NULL, Help=NULL, SeqNo=340, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='613ea934-d36a-468b-a9fd-d72fc649ed97'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Business Partner', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', SeqNo=350, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2a15a780-e243-4ca5-a908-9cb9d545158d'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Partner Location', Description='Identifies the (ship to) address for this Business Partner', Help='The Partner address indicates the location of a Business Partner', SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='5d017de8-9785-4c3e-9f8b-8d1e9a82576d'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Unidentified Customer’s CPF Number', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800148
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Partner Location', Description='Identifies the (Pickup) address for this Business Partner', Help='The Partner address indicates the location of a Business Partner', SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='7e11caea-036b-489c-acd1-0535e02fffcf'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Business Partner (Pickup)', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b62665bd-6714-471a-b471-442f7ba03105'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Business Partner (Ship)', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='ea822081-0fdb-4560-a9f7-8bbe56d961c6'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Partner Location', Description='Identifies the (ship to) address for this Business Partner', Help='The Partner address indicates the location of a Business Partner', SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='00d2874a-7df5-4c03-89b2-8ae3eba03082'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Transaction Type', Description='Identifies a Transaction Type', Help=NULL, SeqNo=420, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='01edbecc-3b4a-4fd6-9bff-45e3a0a6d69e'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Order', Description='Order', Help='The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.', SeqNo=430, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='d718fea7-18c8-49c3-b9c6-17638f1f0b6d'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Invoice', Description='Invoice Identifier', Help='The Invoice Document.', SeqNo=440, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2f8bbe81-c9b8-47b4-af49-12def21613d9'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='RMA', Description='Return Material Authorization', Help='A Return Material Authorization may be required to accept returns and to create Credit Memos', SeqNo=450, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='4db5c278-5a82-4425-824d-67cc344adcf3'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Fiscal Info', Description='Fiscal Information', Help=NULL, SeqNo=460, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='8b635c78-5bda-4ad6-8442-1ad18df6342d'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Tax Payer Info', Description='Tax Payer Information', Help=NULL, SeqNo=470, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='b3348a73-924e-44c0-be81-85b1585a7f98'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Total Lines', Description='Total of all document lines', Help='The Total amount displays the total of all lines in document currency', SeqNo=480, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='8eb83595-bb0b-4561-965c-d3b0ce04bb78'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Grand Total', Description='Total amount of document', Help='The Grand Total displays the total amount including Tax and Freight in document currency', SeqNo=490, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='454e2a5a-53dd-44e0-8038-20bb66558feb'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Document Status', Description='The current status of the document', Help='The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', SeqNo=500, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2ca662e3-46a7-4155-8fdf-26b87b505350'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Process NotaFiscal', Description=NULL, Help=NULL, SeqNo=510, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='63771cae-dcdc-44d8-a21d-bfd8f89afe91'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Posted', Description='Posting status', Help='The Posted field indicates the status of the Generation of General Ledger Accounting Lines ', SeqNo=520, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='fa1f533d-a3d6-47db-9e57-aad118f20834'
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Distribute Amount to Doc Line Details', Description='Distribute a given amount to line details of a document', Help=NULL, SeqNo=530, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800059
;

-- 24 de jul. de 2026 10:34:30 BRT
UPDATE AD_Field SET Name='Create PO From Nota Fiscal', Description='Generate and Process PO from Nota Fiscal', Help='This process allows to generate purchase order to completed Nota Fiscal.', SeqNo=540, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-24 10:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800060
;


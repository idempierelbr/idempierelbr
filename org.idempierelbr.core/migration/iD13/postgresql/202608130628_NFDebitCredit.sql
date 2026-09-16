-- 
SELECT register_migration_script('202608130628_NFDebitCredit.sql') FROM dual;

-- 13 de ago. de 2026 06:28:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800298,'Desenquadramento do SN',800072,'08',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:28:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:28:58','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa74-1286-75fc-a52a-5ef687740bab')
;

-- 13 de ago. de 2026 06:34:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800299,'Retorno por recusa total na entrega ou por não localização do destinatário',800073,'03',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:34:29','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:34:29','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa79-2080-74ee-8739-e07a08a2f1e9')
;

-- 13 de ago. de 2026 06:34:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800300,'Redução de valores',800073,'04',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:34:46','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:34:46','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa79-61b3-72b6-a04d-2daec4479bf5')
;

-- 13 de ago. de 2026 06:35:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800301,'Transferência de crédito na sucessão',800073,'05',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:35:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:35:05','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa79-abb4-7ce8-9a68-2f7ceec49f4a')
;

-- 13 de ago. de 2026 06:35:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800302,'Retorno por recusa parcial na entrega',800073,'06',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:35:25','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:35:25','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa79-fce9-70d3-a98d-d8697fdfbe6f')
;

-- 13 de ago. de 2026 06:37:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802107,0,'NFe Issue Goal',217,'LBR_FinNFe','1',1,'N','N','N','N','N',0,'N',17,(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = '85869f17-12ba-49e3-abc3-0965b2e9a21c'),0,0,'Y',TO_TIMESTAMP('2026-08-13 06:37:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:37:30','YYYY-MM-DD HH24:MI:SS'),10,(SELECT AD_Element_ID FROM AD_Element WHERE AD_Element_UU = 'c192ea65-2d83-4241-968b-95a701558a90'),'Y','N','LBR','N','N','N','Y','019ffa7b-e241-7ee2-ae5e-29b0a7d0af48','Y',0,'N','N','N','N','N')
;

-- 13 de ago. de 2026 06:37:37 BRT
ALTER TABLE C_DocType ADD COLUMN LBR_FinNFe CHAR(1) DEFAULT '1' 
;

-- 13 de ago. de 2026 06:38:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802108,0,'NFe Debit Type',217,'LBR_tpNFDebito',2,'N','N','N','N','N',0,'N',17,800072,0,0,'Y',TO_TIMESTAMP('2026-08-13 06:38:04','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:38:04','YYYY-MM-DD HH24:MI:SS'),10,800627,'Y','N','LBR','N','N','N','Y','019ffa7c-69b7-7185-80e5-1f4f988f9695','Y',0,'N','N','N','N','N')
;

-- 13 de ago. de 2026 06:38:06 BRT
ALTER TABLE C_DocType ADD COLUMN LBR_tpNFDebito VARCHAR(2) DEFAULT NULL 
;

-- 13 de ago. de 2026 06:38:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802109,0,'NFe Credit Type',217,'LBR_tpNFCredito',2,'N','N','N','N','N',0,'N',17,800073,0,0,'Y',TO_TIMESTAMP('2026-08-13 06:38:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:38:27','YYYY-MM-DD HH24:MI:SS'),10,800628,'Y','N','LBR','N','N','N','Y','019ffa7c-c078-76cd-acea-3bc48f49cd3b','Y',0,'N','N','N','N','N')
;

-- 13 de ago. de 2026 06:38:28 BRT
ALTER TABLE C_DocType ADD COLUMN LBR_tpNFCredito VARCHAR(2) DEFAULT NULL 
;

-- 13 de ago. de 2026 06:39:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802229,'NFe Issue Goal',167,802107,'Y',1,530,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:39:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:39:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019ffa7d-45af-720d-9b52-cd4bfdb92a82','Y',550,2)
;

-- 13 de ago. de 2026 06:39:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802230,'NFe Debit Type',167,802108,'Y',2,540,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:39:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:39:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019ffa7d-4752-75e5-8b23-552bd619a534','Y',560,2)
;

-- 13 de ago. de 2026 06:39:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802231,'NFe Credit Type',167,802109,'Y',2,550,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:39:02','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:39:02','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','019ffa7d-48e4-70ac-9d42-716001b7cca7','Y',570,2)
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Tenant', Description='Tenant for this installation.', Help='A Tenant is a company or a legal entity. You cannot share data between Tenants.', SeqNo=10, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=793
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within tenant', Help='An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.', SeqNo=20, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2033
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', SeqNo=30, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=795
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.', SeqNo=40, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=796
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Print Text', Description='The label text to be printed on a document or correspondence.', Help='The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.', SeqNo=50, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2081
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Document Note', Description='Additional information for a Document', Help='The Document Note is used for recording any additional information regarding this product.', SeqNo=60, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2080
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', SeqNo=70, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=794
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Default', Description='Default value', Help='The Default Checkbox indicates if this record will be used as a default value.', SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3126
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='GL Category', Description='General Ledger Category', Help='The General Ledger Category is an optional, user defined method of grouping journal lines.', SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=812
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Sales Transaction', Description='This is a Sales Transaction', Help='The Sales Transaction checkbox indicates if this item is a Sales Transaction.', SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3317
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Document Base Type', Description='Logical type of document', Help='The Document Base Type identifies the base or starting point for a document.  Multiple document types may share a single document base type.', SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2079
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='SO Sub Type', Description='Sales Order Sub Type', Help='The SO Sub Type indicates the type of sales order this document refers to.  This field only appears when the Document Base Type is Sales Order.  The selection made here will determine which documents will be generated when an order is processed and which documents must be generated manually or in batches.  <br>
The following outlines this process.<br>
SO Sub Type of <b>Standard Order</b> will generate just the <b>Order</b> document when the order is processed.  <br>
The <b>Delivery Note</b>, <b>Invoice</b> and <b>Receipt</b> must be generated via other processes.  <br>
SO Sub Type of <b>Warehouse Order</b> will generate the <b>Order</b> and <b>Delivery Note</b>. <br> The <b>Invoice</b> and <b>Receipt</b> must be generated via other processes.<br>
SO Sub Type of <b>Credit Order</b> will generate the <b>Order</b>, <b>Delivery Note</b> and <b>Invoice</b>. <br> The <b>Receipt</b> must be generated via other processes.<br>
SO Sub Type of <b>POS</b> (Point of Sale) will generate all document', SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2581
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Inv Sub Type', Description='Inventory Sub Type', Help='The Inventory Sub Type indicates the type of inventory this document refers to.  This field only appears when the Document Base Type is Material Physical Inventory.  The selection made here will determine which window must be used and which data in the lines is relevant for the document.  Internal Use inventory (based on Internal Used Quantity) or Physical Inventory (based on difference between Qty Counted vs Qty Book)', SeqNo=130, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=201886
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Generate Invoice', Description='Automatically Generate Invoice after (Sales/Purchase) Order completed', Help='When selected the Order will generate Invoice automatically. Note that only Orders with document subtype Standard and Prepay Order can be applied!', SeqNo=140, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=208492
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Document Type for Invoice', Description='Document type used for invoices generated from this sales document', Help='The Document Type for Invoice indicates the document type that will be used when an invoice is generated from this sales document.  This field will display only when the base document type is Sales Order.', SeqNo=150, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3071
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Document Type for Brazilian Fiscal Invoice', Description='Document type used for Brazilian Fiscal Invoice generated from this document', Help='The Document Type for Brazilian Fiscal Invoice indicates the document type that will be used when an Brazilian Fiscal Invoice is generated from this document. This field will display only for some base document type.', SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='d06cc289-1a96-4f2a-9195-d672cfe5aaa8'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Generate Shipment', Description='Automatically Generate Shipment after (Sales/Purchase) Order completed', Help='When selected the Order will generate Shipment automatically. Note that only Orders with document subtype Standard and Prepay Order can be applied!', SeqNo=170, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=208493
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Document Type for Shipment', Description='Document type used for shipments generated from this sales document', Help='he Document Type for Shipments indicates the document type that will be used when a shipment is generated from this sales document.  This field will display only when the base document type is Sales Order.', SeqNo=200, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3073
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Tipo de Documento de NFS', Description=NULL, Help='Indica o Tipo de Documento de NFS', SeqNo=210, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801132
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Is Document Issued by Client/Org?', Description=NULL, Help=NULL, SeqNo=220, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='10de6c60-120c-40d9-8433-caa35ccb5b83'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='RPS', Description='Flag para indicação ser o Documento é um RPS', Help=NULL, SeqNo=230, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801140
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Allow Product Without Price List', Description=NULL, Help='Allow product without price list on this document type.', SeqNo=240, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=206753
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='NFB (DocType) Model', Description=NULL, Help=NULL, SeqNo=270, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='d16fe352-5553-4eea-8a29-331217410474'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Ship/Receipt Confirmation', Description='Require Ship or Receipt Confirmation before processing', Help='The processing of the Shipment (Receipt) requires Ship (Receipt) Confirmation. Note that shipments for automatic documents like POS/Warehouse Orders cannot have confirmations!', SeqNo=280, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10346
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='NF Serie', Description=NULL, Help=NULL, SeqNo=290, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='9816c2aa-f29d-4384-b47f-eb6a6fba935b'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Configuração de Nota Fiscal de Serviço', Description=NULL, Help=NULL, SeqNo=300, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801192
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Sefaz NF-e Environment', Description=NULL, Help=NULL, SeqNo=310, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='578abc40-152e-4fcb-aabb-9c7ca8c6679f'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='DANFE Format', Description=NULL, Help=NULL, SeqNo=320, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='4b2f5d2b-dbae-424e-bba6-6b4fcfe775fc'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='In Transit', Description='Movement is in transit', Help='Material Movement is in transit - shipped, but not received.
The transaction is completed, if confirmed.', SeqNo=330, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10371
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Is End User', Description=NULL, Help=NULL, SeqNo=340, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='9c71287c-1144-47d3-897e-eaf972e49c0d'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Face-to-Face Indicator', Description=NULL, Help=NULL, SeqNo=350, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='a37e5868-a186-46e6-9ef4-9710547a41f7'
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Default Counter Document', Description='The document type is the default counter document type', Help='When using explicit documents for inter-org transaction (after linking a Business Partner to an Organization), you can determine what document type the counter document is based on the document type of the original transaction.  Example: when generating a Sales Order, use this Sales Order document type.
This default can be overwritten by defining explicit counter document relationships.', SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10340
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Intermediary Indicator', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801530
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Mandatory Charge or Product', Description=NULL, Help=NULL, SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=200004
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Intermediary BP', Description=NULL, Help=NULL, SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801532
;

-- 13 de ago. de 2026 06:43:48 BRT
UPDATE AD_Field SET Name='Always Posted', Description='Posts the document if "AlwaysPosted" is checked, regardless of accounting schema.', Help='Posts the document if "AlwaysPosted" is checked, even without a valid accounting schema.', SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=208515
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Intermediary Username', Description=NULL, Help=NULL, SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801536
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Can Be Reactivated', Description='This document can be reactivated', Help='If ticked, this checkbox allow user to reactivate once it has been completed (according to rights given to the role)', SeqNo=420, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=208710
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Bank Collection Defaults', Description=NULL, Help=NULL, SeqNo=430, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='cbcab854-2afd-4b62-b1c3-0c53cbd924c0'
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Print Format', Description='Data Print Format', Help='The print format determines how data is rendered for print.', SeqNo=440, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6567
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Message 3', Description=NULL, Help='Message 3', SeqNo=450, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='d4c4110a-3cca-4a33-a66d-6a7039951e60'
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Document Copies', Description='Number of copies to be printed', Help='The Document Copies indicates the number of copies of each document that will be generated.', SeqNo=460, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3125
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Message 4', Description=NULL, Help='Message 4', SeqNo=470, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='bc243458-2141-4c54-bb7e-f1dc9d9b984e'
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Message 7', Description=NULL, Help='Message 7', SeqNo=480, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='5f01425d-8768-4731-880f-c0d2dd30eae2'
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Message 8', Description=NULL, Help='Message 8', SeqNo=490, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='ebea5c35-2581-4f54-9d3e-008aa4de11a6'
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Document is Number Controlled', Description='The document has a document sequence', Help='The Document Number Controlled checkbox indicates if this document type will have a sequence number.', SeqNo=500, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=807
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Document Sequence', Description='Document sequence determines the numbering of documents', Help='The Document Sequence indicates the sequencing rule to use for this document type.', SeqNo=510, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=808
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Overwrite Sequence on Complete', Description=NULL, Help=NULL, SeqNo=520, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=54233
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Definite Sequence', Description=NULL, Help=NULL, SeqNo=530, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=54230
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Overwrite Date on Complete', Description=NULL, Help=NULL, SeqNo=540, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=54232
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Pro forma Invoice', Description='Indicates if Pro Forma Invoices can be generated from this document', Help='The Pro Forma Invoice checkbox indicates if pro forma invoices can be generated from this sales document. A pro forma invoice indicates the amount that will be due should an order be shipped.', SeqNo=550, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3075
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Document Type for ProForma', Description='Document type used for pro forma invoices generated from this sales document', Help='he Document Type for Invoice indicates the document type that will be used when an invoice is generated from this sales document.  This field will display only when the base document type is Sales Order and the Pro Forma Invoice checkbox is selected', SeqNo=560, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3072
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Split when Difference', Description='Split document when there is a difference', Help='If the confirmation contains differences, the original document is split allowing the original document (shipment) to be processed and updating Inventory - and the newly created document for handling the dispute at a later time. Until the confirmation is processed, the inventory is not updated.', SeqNo=570, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10481
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Difference Document', Description='Document type for generating in dispute Shipments', Help='If the confirmation contains differences, the original document is split allowing the original document (shipment) to be processed and updating Inventory - and the newly created document for handling the dispute at a later time. Until the confirmation is processed, the inventory is not updated.', SeqNo=580, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10480
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Prepare Split Document', Description='Prepare generated split shipment/receipt document', Help=NULL, SeqNo=590, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=58859
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='Create Counter Document', Description='Create Counter Document', Help='If selected, create specified counter document.  If not selected, no counter document is created for the document type.', SeqNo=600, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10528
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='NFe Issue Goal', Description=NULL, Help=NULL, DisplayLogic='@DocBaseType@=''NFB''', SeqNo=610, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802229
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='NFe Debit Type', Description=NULL, Help=NULL, DisplayLogic='@DocBaseType@=''NFB''', SeqNo=620, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802230
;

-- 13 de ago. de 2026 06:43:49 BRT
UPDATE AD_Field SET Name='NFe Credit Type', Description=NULL, Help=NULL, DisplayLogic='@DocBaseType@=''NFB''', SeqNo=630, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-08-13 06:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802231
;

-- 13 de ago. de 2026 06:45:09 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-13 06:45:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800147
;

-- 13 de ago. de 2026 06:45:27 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-13 06:45:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800148
;

-- 13 de ago. de 2026 06:45:31 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2026-08-13 06:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800149
;

-- 13 de ago. de 2026 06:52:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800303,'NF-e de Pagamento Antecipado',(SELECT AD_Reference_ID FROM AD_Reference WHERE AD_Reference_UU = 'a7b01e3d-6d2f-443a-8e88-63b40bbd94a9'),'5',0,0,'Y',TO_TIMESTAMP('2026-08-13 06:52:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-08-13 06:52:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019ffa89-5aee-72f2-9766-008f90506dd8')
;

-- 13 de ago. de 2026 06:56:33 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 06:56:33','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800001,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 06:56:33','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa8d-522e-7fc4-87f9-0a0b720f9cb3','W',294,800105,'@DocStatus@=CO | @DocStatus@=CL',10,'LBR')
;

-- 13 de ago. de 2026 06:58:54 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 06:58:54','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800002,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 06:58:54','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa8f-79f3-733d-a451-fb8c68eb9da1','W',186,800105,'@DocStatus@=CO | @DocStatus@=CL',20,'LBR')
;

-- 13 de ago. de 2026 07:00:42 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 07:00:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800003,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 07:00:41','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa91-1e07-7f79-8682-df535d71861c','W',263,800105,'@DocStatus@=CO | @DocStatus@=CL',20,'LBR')
;

-- 13 de ago. de 2026 07:02:07 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 07:02:06','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800004,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 07:02:06','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa92-6997-766a-ab79-0bab53bdfdf0','W',290,800105,'@DocStatus@=CO | @DocStatus@=CL',20,'LBR')
;

-- 13 de ago. de 2026 07:07:18 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 07:07:17','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800005,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 07:07:17','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa97-2931-70f8-a8d4-9ce8df208974','W',628,800105,'@DocStatus@=CO | @DocStatus@=CL',10,'LBR')
;

-- 13 de ago. de 2026 07:08:10 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-08-13 07:08:10','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800006,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-08-13 07:08:10','YYYY-MM-DD HH24:MI:SS'),10,'N','019ffa97-f665-7c95-a2e6-71d2a393a122','W',53280,800105,'@DocStatus@=CO | @DocStatus@=CL',10,'LBR')
;


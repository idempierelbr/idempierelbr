-- 
SELECT register_migration_script('202607010954_CBenef.sql') FROM dual;

-- 1 de jul. de 2026 09:54:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800571,0,0,'Y',TO_TIMESTAMP('2026-07-01 09:53:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:53:35','YYYY-MM-DD HH24:MI:SS'),10,'LBR_CBenef','Código de Benefício Fiscal','Código de Benefício Fiscal','LBR','4d5e8d44-9fd1-456d-9494-d961dc5213b3')
;

-- 1 de jul. de 2026 09:56:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802043,0,'Código de Benefício Fiscal',toRecordId('AD_Table','e8ca6bd6-b271-4531-9f4d-c2910b339df5'),'LBR_CBenef',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-07-01 09:55:23','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:55:23','YYYY-MM-DD HH24:MI:SS'),10,800571,'Y','N','LBR','N','Y','N','Y','6e4da844-233c-4248-9e01-821108d4477a','Y',0,'N','N','N','N')
;

-- 1 de jul. de 2026 09:56:15 BRT
ALTER TABLE LBR_TaxStatus ADD COLUMN LBR_CBenef VARCHAR(10) DEFAULT NULL 
;

-- 1 de jul. de 2026 09:56:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802223,'Código de Benefício Fiscal',toRecordId('AD_Tab','3e9174c7-e77f-4d3b-906c-2476ecb6b517'),802043,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-01 09:56:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:56:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','7c700932-2691-44d4-9fac-99c7415e73d9','Y',120,2)
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Código de Benefício Fiscal', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=70, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802223
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Valid from', Description='Valid from including this date (first day)', Help='The Valid From date indicates the first day of a date range', SeqNo=80, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='7e707db7-1898-4f1a-968c-9750518456a0'
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Valid to', Description='Valid to including this date (last day)', Help='The Valid To date indicates the last day of a date range', SeqNo=90, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='ec9d01c3-294d-4bf2-9628-4a08ec589bbf'
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Tax Name', Description='Primary key table LBR_TaxName', Help='Primary key table LBR_TaxName', SeqNo=100, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='34f81d13-59c8-4beb-8bd5-9ad2752c57d1'
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', SeqNo=110, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='58476333-d962-43af-9d5e-be4c7581b892'
;

-- 1 de jul. de 2026 09:57:00 BRT
UPDATE AD_Field SET Name='Script', Description='Dynamic Java Language Script to calculate result', Help='Use Java language constructs to define the result of the calculation', SeqNo=120, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='d19a6665-f9bd-4f3b-82e8-599b3439a285'
;

-- 1 de jul. de 2026 09:57:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802101,0,'Código de Benefício Fiscal',208,'LBR_CBenef',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-07-01 09:57:31','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:57:31','YYYY-MM-DD HH24:MI:SS'),10,800571,'Y','N','LBR','N','Y','N','Y','42eb8e4c-dca1-4870-b597-4c3eaae0a79f','Y',0,'N','N','N','N','N')
;

-- 1 de jul. de 2026 09:57:32 BRT
ALTER TABLE M_Product ADD COLUMN LBR_CBenef VARCHAR(10) DEFAULT NULL 
;

-- 1 de jul. de 2026 09:57:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (802224,'Código de Benefício Fiscal',180,802101,'Y',10,640,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-07-01 09:57:48','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:57:48','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','b4f48fb0-8afc-46b8-8646-870a18088ae0','Y',750,2)
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Revenue Recognition', Description='Method for recording revenue', Help='The Revenue Recognition indicates how revenue will be recognized for this product', SeqNo=150, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3079
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='CFOP Product Category', Description='Identifies a CFOP Product Category', Help=NULL, SeqNo=160, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='56e21592-3d1b-468e-81f0-6ee353861867'
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='UOM', Description='Unit of Measure', Help='The UOM defines a unique non monetary Unit of Measure', SeqNo=170, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1025
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Service Code', Description=NULL, Help=NULL, SeqNo=180, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801123
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Sales Representative', Description='Sales Representative or Company Agent', Help='The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.', SeqNo=190, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=2587
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Código de Tributação do Município', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=200, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801366
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Product Type', Description='Type of product', Help='The type of product also determines accounting consequences.', SeqNo=210, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=5888
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Mail Template', Description='Text templates for mailings', Help='The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.', SeqNo=220, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6129
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Customs Tariff Number', Description='Customs Tariff Number, usually the HS-Code', Help=NULL, SeqNo=230, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=206544
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Freight Category', Description='Category of the Freight', Help='Freight Categories are used to calculate the Freight for the Shipper selected', SeqNo=240, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6841
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Drop Shipment', Description='Drop Shipments are sent directly to the Drop Shipment Location', Help='Drop Shipments are sent directly to the Drop Shipment Location using the Drop Ship Business Partner name and contact.', SeqNo=250, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=10411
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Tax Category', Description='Tax Category', Help='The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.', SeqNo=260, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1041
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Manufactured', Description='This product is manufactured', Help=NULL, SeqNo=290, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=200294
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Phantom', Description='Phantom Component', Help='Phantom Component are not stored and produced with the product. This is an option to avild maintaining an Engineering and Manufacturing Bill of Materials.', SeqNo=300, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=200295
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Product Source', Description='Identifies a Product Source', Help=NULL, SeqNo=310, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='2165ab45-529b-4a1c-8f07-9f09ba287fa0'
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Kanban controlled', Description='This part is Kanban controlled', Help=NULL, SeqNo=320, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=200296
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='NCM', Description='NCM stands for Nomenclatura Comum do MERCOSUL', Help=NULL, SeqNo=330, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_UU='dcaa22a0-92c7-4008-85ab-4f5ab1dab85d'
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Código de Benefício Fiscal', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=340, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802224
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Part Type', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=350, XPosition=1, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=200297
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Locator', Description='Warehouse Locator', Help='The Locator indicates where in a Warehouse a product is located.', SeqNo=360, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=7646
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Own Box', Description=NULL, Help=NULL, SeqNo=370, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=201343
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Shelf Width', Description='Shelf width required', Help='The Shelf Width indicates the width dimension required on a shelf for a product', SeqNo=380, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1319
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Shelf Height', Description='Shelf height required', Help='The Shelf Height indicates the height dimension required on a shelf for a product', SeqNo=390, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1320
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Shelf Depth', Description='Shelf depth required', Help='The Shelf Depth indicates the depth dimension required on a shelf for a product ', SeqNo=400, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1321
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Units Per Pallet', Description='Units Per Pallet', Help='The Units per Pallet indicates the number of units of this product which fit on a pallet.', SeqNo=410, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1322
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Bill of Materials', Description='Bill of Materials', Help='The Bill of Materials check box indicates if this product consists of a bill of materials.', SeqNo=420, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3743
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Verified', Description='The BOM configuration has been verified', Help='The Verified check box indicates if the configuration of this product has been verified.  This is used for products that consist of a bill of materials', SeqNo=430, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3746
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Verify BOM Structure', Description='Verify BOM for correctness', Help='The Verify BOM process checks for circular BOMs (unsupported).', SeqNo=440, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3747
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Auto Produce', Description='Auto create production to fulfill shipment', Help=NULL, SeqNo=450, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=206800
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Print detail records on invoice', Description='Print detail BOM elements on the invoice', Help='The Print Details on Invoice indicates that the BOM element products will print on the Invoice as opposed to this product.', SeqNo=460, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3744
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Weight', Description='Weight of a product', Help='The Weight indicates the weight  of the product in the Weight UOM of the Tenant', SeqNo=470, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1032
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Print detail records on pick list', Description='Print detail BOM elements on the pick list', Help='The Print Details on Pick List indicates that the BOM element products will print on the Pick List as opposed to this product.', SeqNo=480, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=3745
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Volume', Description='Volume of a product', Help='The Volume indicates the volume of the product in the Volume UOM of the Tenant', SeqNo=490, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1031
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Purchased', Description='Organization purchases this product', Help='The Purchased check box indicates if this product is purchased by this organization.', SeqNo=500, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1027
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Sold', Description='Organization sells this product', Help='The Sold check box indicates if this product is sold by this organization.', SeqNo=510, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1028
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Discontinued', Description='This product is no longer available', Help='The Discontinued check box indicates a product that has been discontinued.', SeqNo=520, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1568
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Discontinued At', Description='Discontinued At indicates Date when product was discontinued', Help=NULL, SeqNo=530, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=1569
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Expense Type', Description='Expense report type', Help=NULL, SeqNo=540, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=5381
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Resource', Description='Resource', Help=NULL, SeqNo=550, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=5383
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Exclude Auto Delivery', Description='Exclude from automatic Delivery', Help='The product is excluded from generating Shipments.  This allows manual creation of shipments for high demand items. If selected, you need to create the shipment manually.
But, the item is always included, when the delivery rule of the Order is Force (e.g. for POS). 
This allows finer granularity of the Delivery Rule Manual.', SeqNo=560, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=12418
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Image URL', Description='URL of  image', Help='URL of image; The image is not stored in the database, but retrieved at runtime. The image can be a gif, jpeg or png.', SeqNo=570, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=5910
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Description URL', Description='URL for the description', Help=NULL, SeqNo=580, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=5911
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Guarantee Days', Description='Number of days the product is guaranteed or available', Help='If the value is 0, there is no limit to the availability or guarantee, otherwise the guarantee date is calculated by adding the days to the delivery date.', SeqNo=590, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6130
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Min Guarantee Days', Description='Minimum number of guarantee days', Help='When selecting batch/products with a guarantee date, the minimum left guarantee days for automatic picking.  You can pick any batch/product manually. ', SeqNo=600, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=8307
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Attribute Set', Description='Product Attribute Set', Help='Define Product Attribute Sets to add additional attributes and values to the product. You need to define a Attribute Set if you want to enable Serial and Lot Number tracking.', SeqNo=610, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6343
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Attribute Set Instance', Description='Product Attribute Values', Help='The values of the actual Product Attributes. Product Instance attributes are defined in the actual transactions.', SeqNo=620, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=6344
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Copy from product', Description='Copy prices etc from other product', Help=NULL, SeqNo=630, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=58973
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Featured in Web Store', Description='If selected, the product is displayed in the initial or any empty search', Help='In the display of products in the Web Store, the product is displayed in the initial view or if no search criteria are entered. To be displayed, the product must be in the price list used.', SeqNo=640, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=8608
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Self-Service', Description='This is a Self-Service entry or this entry can be changed via Self-Service', Help='Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.', SeqNo=650, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=8613
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Group1', Description=NULL, Help=NULL, SeqNo=660, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=52015
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Group2', Description=NULL, Help=NULL, SeqNo=670, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=52016
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='ANP Code', Description='Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.', Help=NULL, SeqNo=680, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=800091
;

-- 1 de jul. de 2026 09:58:56 BRT
UPDATE AD_Field SET Name='Descrição do Produto na ANP', Description=NULL, Help=NULL, SeqNo=690, Placeholder=NULL,Updated=TO_TIMESTAMP('2026-07-01 09:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=801515
;

-- 1 de jul. de 2026 09:59:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml,IsPartitionKey) VALUES (802102,0,'Código de Benefício Fiscal',toRecordId('AD_Table','1b1f7f5a-ec45-4622-ad7c-0ef023f023f9'),'LBR_CBenef',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2026-07-01 09:59:26','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-01 09:59:26','YYYY-MM-DD HH24:MI:SS'),10,800571,'Y','N','LBR','N','N','N','Y','265b5bdc-ed9b-4505-a11c-72caa3e7bb11','Y',0,'N','N','N','N','N')
;

-- 1 de jul. de 2026 09:59:28 BRT
ALTER TABLE LBR_DocLine_ICMS ADD COLUMN LBR_CBenef VARCHAR(10) DEFAULT NULL 
;


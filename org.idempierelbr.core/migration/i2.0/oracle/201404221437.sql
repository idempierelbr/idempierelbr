SET SQLBLANKLINES ON
SET DEFINE OFF

-- Apr 22, 2014 1:48:58 PM BRT
-- Details Tab (and children) for Purchase Order and Invoice (vendor)
-- Adjusting Tax Status for some identical codes (*_1 and *_2)
-- Adjusting field exhibition for tab IPI (when changing Tax Status field)
UPDATE AD_Tab SET SeqNo=21,Updated=TO_DATE('2014-04-22 13:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000026
;

-- Apr 22, 2014 1:49:03 PM BRT
UPDATE AD_Tab SET SeqNo=22,Updated=TO_DATE('2014-04-22 13:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000027
;

-- Apr 22, 2014 1:49:08 PM BRT
UPDATE AD_Tab SET SeqNo=23,Updated=TO_DATE('2014-04-22 13:49:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000028
;

-- Apr 22, 2014 1:49:13 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_DATE('2014-04-22 13:49:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000029
;

-- Apr 22, 2014 1:49:17 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_DATE('2014-04-22 13:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000030
;

-- Apr 22, 2014 1:49:22 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_DATE('2014-04-22 13:49:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000031
;

-- Apr 22, 2014 1:49:27 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_DATE('2014-04-22 13:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000032
;

-- Apr 22, 2014 1:49:33 PM BRT
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2014-04-22 13:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=236
;

-- Apr 22, 2014 1:49:37 PM BRT
UPDATE AD_Tab SET SeqNo=40,Updated=TO_DATE('2014-04-22 13:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=53374
;

-- Apr 22, 2014 1:49:42 PM BRT
UPDATE AD_Tab SET SeqNo=50,Updated=TO_DATE('2014-04-22 13:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=200016
;

-- Apr 22, 2014 1:50:09 PM BRT
UPDATE AD_Tab SET SeqNo=21,Updated=TO_DATE('2014-04-22 13:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000033
;

-- Apr 22, 2014 1:50:14 PM BRT
UPDATE AD_Tab SET SeqNo=22,Updated=TO_DATE('2014-04-22 13:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000034
;

-- Apr 22, 2014 1:50:19 PM BRT
UPDATE AD_Tab SET SeqNo=23,Updated=TO_DATE('2014-04-22 13:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000035
;

-- Apr 22, 2014 1:50:25 PM BRT
UPDATE AD_Tab SET SeqNo=24,Updated=TO_DATE('2014-04-22 13:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000036
;

-- Apr 22, 2014 1:50:30 PM BRT
UPDATE AD_Tab SET SeqNo=25,Updated=TO_DATE('2014-04-22 13:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000037
;

-- Apr 22, 2014 1:50:35 PM BRT
UPDATE AD_Tab SET SeqNo=26,Updated=TO_DATE('2014-04-22 13:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000038
;

-- Apr 22, 2014 1:50:41 PM BRT
UPDATE AD_Tab SET SeqNo=27,Updated=TO_DATE('2014-04-22 13:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000039
;

-- Apr 22, 2014 1:50:46 PM BRT
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2014-04-22 13:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=271
;

-- Apr 22, 2014 1:50:52 PM BRT
UPDATE AD_Tab SET SeqNo=40,Updated=TO_DATE('2014-04-22 13:50:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=460
;

-- Apr 22, 2014 1:50:59 PM BRT
UPDATE AD_Tab SET SeqNo=50,Updated=TO_DATE('2014-04-22 13:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=684
;

-- Apr 22, 2014 1:54:53 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,21,'The Order Line Details Tab defines details for the individual line item.','N','N','N','N','N','N','N',2,'e937430c-3498-44cc-89b7-52f368da7ef2','LBR','Order Line Details','Order Line Details',1000040,'@Processed@=Y',0,TO_DATE('2014-04-22 13:54:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:54:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000425,1000026,'B')
;

-- Apr 22, 2014 1:55:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,10,'N','N',0,'Y',1000606,'N','The Sales Order Line is a unique identifier for a line in an order.','LBR','Sales Order Line','Sales Order Line','80dee157-8c9d-4f66-bcd2-374bb513b7a3','N','N',0,0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000425)
;

-- Apr 22, 2014 1:55:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,1,'N','N',0,'Y',1000607,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8792100b-4873-480b-99f9-800b12188016','N','N',0,0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000422)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,10,'N','N',0,'Y',1000608,'N','Detail information about the returned goods','LBR','Return Material Authorization Line','RMA Line','1ecdc714-73cf-49ff-870b-1f567e94d94e','N','N',0,0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:06','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000427)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,36,'N','N',0,'Y',1000609,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','83b64878-d9ee-4dd8-b75e-992e5b374ff2','N','N',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000424)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',0,'Y',1000610,'N','The Invoice Line uniquely identifies a single line of an Invoice.','LBR','Invoice Detail Line','Invoice Line','7255cacb-6b96-4384-8fbe-22bd8049819a','N','N',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000426)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',0,'Y',1000611,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','bf8b0131-03bc-4053-9017-9dce289718b6','N','N',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000423)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',10,'Y',1000612,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','454a8293-dad8-4c5d-bcfd-532858f9e9a8','N','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000416)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'Y','N',20,'Y',1000613,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','531f2d71-7a9b-43ae-8413-e1ab106972c4','N','Y','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000417)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,40,'N','N',30,'Y',1000614,'N','LBR','Key of the Product','Product Key','3f11f4df-8835-494d-84c6-27ffba0323c4','N','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000428)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,255,'N','N',40,'Y',1000615,'N','LBR','Name of the Product','Product Name','22f7b2e5-30df-49e9-8b55-9463f5bf5c3b','N','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,1,'N',0,5,1,'N','N',1000429)
;

-- Apr 22, 2014 1:55:07 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',50,'Y',1000616,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','a70da752-4365-499e-a13e-eb779d134fad','N','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000430)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,6,'Y','N',60,'Y',1000617,'N','Identifies an exception to a NCM rule.','LBR','NCM Exception','EX TIPI','e8b288c5-b843-41a3-92aa-f269545d72f6','N','Y',0,0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,4,'N',0,2,1,'N','N',1000431)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',70,'Y',1000618,'N','LBR','Indentifies the CFOP','CFOP','4ea18197-53cb-4627-898b-3a9eb03350a5','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000432)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,30,'Y','N',80,'Y',1000619,'N','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','LBR','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','1c3ba108-27de-4b97-a21b-b94ce040533d','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,4,'N',0,2,1,'N','N',1000439)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'N','N',90,'Y',1000620,'N','The Taxable Quantity indicates the number of a specific product or item for this document.','LBR','Taxable Quantity','Taxable Quantity','db7c00ed-2c0a-45fc-85a2-9c9f0958f2ee','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000434)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000040,22,'Y','N',100,'Y',1000621,'N','The Taxable UOM defines a unique non monetary Unit of Measure','LBR','Taxable Unit of Measure','Taxable UOM','9258407f-7e95-4845-ae09-c20a1daa5682','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,4,'N',0,2,1,'N','N',1000433)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,10,'N','N',110,'Y',1000622,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','1fe6e500-4275-48c3-b194-06e816fd031d','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000447,1000002)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,2,'Y','N',120,'Y',1000623,'N','Indicates the taxation type used to calculate taxes','LBR','Taxation type used to calculate taxes','Taxation Type','11f20a71-3c58-4567-975c-5e24bd196f59','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000450,1000002)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'N','N',130,'Y',1000624,'N','The Taxable Price indicates the Price for a product or service.','LBR','Taxable Price','Taxable Price','20eb4fe0-cd2e-489e-aa81-4054579c256d','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1000435,103)
;

-- Apr 22, 2014 1:55:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,14,'N','N',140,'Y',1000625,'N','LBR','Insured Amount','d46cbac9-6e49-4387-81c5-396f70953be2','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000436,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'Y','N',150,'Y',1000626,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','b06784c1-05b2-45ea-9ed0-b65afaa2a126','N','Y',0,0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000437,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'N','N',160,'Y',1000627,'N','The Freight Amount indicates the amount charged for Freight in the document currency.','LBR','Freight Amount ','Freight Amount','d42a42bc-319e-4f96-828e-2a58c85240bd','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000438,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,14,'Y','N',170,'Y',1000628,'N','LBR','Surcharges','38678335-8187-40ff-bca0-74ad8bf07522','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,4,'N',0,2,1,'N','N',1000440,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'N','N',180,'Y',1000629,'N','Indicates the gross amount for a product/service/tax/etc.','LBR','Gross Amount','Gross Amount','09103beb-182d-45bd-ab95-3276ab52ffa8','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000441,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,1,'Y','N',190,'Y',1000630,'N','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','LBR','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','57b0d02a-476c-4c31-9f10-8f9f12235425','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,5,'N',0,2,1,'N','N',1000442,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'N','N',200,'N',1000631,'N','LBR','Tax Line Total Amount','Tax Line Total','a46df0a0-6e68-44d6-8464-dba4d553ba14','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000449,103)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,20,'N','N',210,'Y',1000632,'N','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','LBR','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','Order Reference','ad551114-847d-44a7-a74c-0aac37ea2afd','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000443,104)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,22,'Y','N',220,'Y',1000633,'N','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','LBR','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','863a6825-30e4-468d-9d0b-ec5d8e8a6382','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000444,104)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,3,'N','N',230,'Y',1000634,'N','LBR','Specific Product in a NF-e','NF-e Specific Product','ea26e348-7aaf-4ff0-881f-590f51c9178f','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000445,104)
;

-- Apr 22, 2014 1:55:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000040,36,'Y','N',240,'Y',1000635,'N','Identifies the FCI Control Number','LBR','Import Content Sheet (FCI) Control Number','FCI Control Number','f30f0575-3ba1-4268-a923-42841d658bfb','N','Y',0,0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000446,104)
;

-- Apr 22, 2014 1:55:10 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',1000040,0,'N','N',250,'N',1000636,'N','LBR','Memo','Memo','79ab67b6-530a-420d-922a-01d23ddf82eb','N','Y',0,0,TO_DATE('2014-04-22 13:55:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:55:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,5,4,'N','N',1000448,104)
;

-- Apr 22, 2014 1:59:47 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,22,'The ICMS Tab defines amounts for ICMS Tax','N','N','N','N','N','N','N',3,'7b8ae10c-2f0a-4496-a236-bb882ece4a96','LBR','ICMS','ICMS',1000041,'@Processed@=Y',0,TO_DATE('2014-04-22 13:59:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 13:59:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000460,1000027,'B')
;

-- Apr 22, 2014 2:00:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,22,'N','N',0,'Y',1000637,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','4ae9b092-d21a-4cf4-b59a-99aec8c9a240','N','N',0,0,TO_DATE('2014-04-22 14:00:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000458)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,36,'N','N',0,'Y',1000638,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','40f63822-3245-47e7-bae7-34c7cd89ef16','N','N',0,0,TO_DATE('2014-04-22 14:00:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:01','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000459)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,22,'N','N',0,'Y',1000639,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','5c7efb2a-0784-4fb8-a4cb-edda4a1f79ea','N','N',0,0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000460)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,1,'N','N',0,'Y',1000640,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','0ef370c6-55d1-4b35-bac9-c3eca1394620','N','N',0,0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000453)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,22,'N','N',10,'Y',1000641,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','2bcc22d9-f562-4259-966a-71ea30210a3f','N','Y',0,0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000451)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,22,'N','N',20,'Y',1000642,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','f986df70-ecc0-4fe8-9b0c-f95f990bb73b','N','Y','Y',0,0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000452)
;

-- Apr 22, 2014 2:00:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,2,'N','N',30,'Y',1000643,'N','LBR','Identifies a ICMS Regime for taxes','ICMS Regime','40bf47ec-9ea2-4f4a-9843-277cf4faed5a','N','Y',0,0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000461)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,5,'N','N',40,'Y',1000644,'N','@LBR_ICMSRegime@=TN','LBR','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','8bd65da8-95ca-4df0-8db3-2a8161f3a896','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,5,1,'N','N',1000462)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,5,'N','N',50,'Y',1000645,'N','@LBR_ICMSRegime@=SN','LBR','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','0110b4a2-4227-4e57-b0c8-9aef78d903dd','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,5,1,'N','N',1000463)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,1,'N','N',60,'Y',1000646,'N','LBR','Identifies a Product Source','Product Source','85486acc-dd3a-4547-bfca-5b30bec06ec6','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,5,1,'N','N',1000464)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,10,'N','N',70,'Y',1000647,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','58894a34-24d2-4c2d-aac2-611da27d7854','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,2,1,'N','N',1000471)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000041,10,'N','N',80,'Y',1000648,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Amount Credit','Tax Amount Credit','c299255e-6778-4508-aa83-77d9e06ea9cf','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,4,'N',0,2,1,'N','N',1000472)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,1,'N','N',90,'Y',1000649,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','3634c810-52c7-44de-8b3c-9d131da79afc','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1000465,1000003)
;

-- Apr 22, 2014 2:00:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',100,'Y',1000650,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Indicates the Tax Base','Tax Base','06d9e10b-e61f-45e8-aa8b-d1ef2cb0f96d','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,1,'N',0,2,1,'N','N',1000466,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',110,'Y',1000651,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Base Amount','Tax Base Amount','3e1a9f66-5f4e-46a9-8fb7-f0eee1854c33','N','Y',0,0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,1,'N',0,2,1,'N','N',1000467,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',120,'Y',1000652,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the Tax Rate','Tax Rate','cd039b71-4798-44c6-8bda-d7b77cfc3160','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,4,'N',0,2,1,'N','N',1000468,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',130,'Y',1000653,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Amount','Tax Amount','c7bda32c-f393-4f5a-b5e9-c5733dbf3c93','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000469,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',140,'Y',1000654,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','b6fb065a-6b84-48e4-9b30-aa37911e7827','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1000470,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,2,'N','N',150,'Y',1000655,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','e6f63fe8-32ae-429a-b46c-4882c8b45476','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,2,1,'N','N',1000473,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',160,'Y',1000656,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the Tax Relief Amount','Tax Relief Amount','b01708d4-ff4e-4651-b026-a246cb416bb4','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,4,'N',0,2,1,'N','N',1000474,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',170,'Y',1000657,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','91b60f90-7cd7-402f-979d-69b6ac2d1dbe','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,1,'N',0,2,1,'N','N',1000476,1000003)
;

-- Apr 22, 2014 2:00:04 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',180,'Y',1000658,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','f0a2b3b6-64da-4a1b-829a-055697349a86','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1000475,1000003)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',190,'Y',1000659,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Amount','Tax Deferral Amount','3ad20e3d-a28f-4820-8e69-55e8c3ad1b94','N','Y',0,0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1000477,1000003)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,1,'N','N',200,'Y',1000660,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','82ca07a7-86c7-44e7-9068-37b7cfe209d2','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000479,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',210,'Y',1000661,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','09a2fd0d-0b65-4003-93d5-15530a841ecb','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000480,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',220,'Y',1000662,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','6fa3507b-5aad-44bd-a154-34f684517998','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000481,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',230,'Y',1000663,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','c111f31f-b52d-476d-9113-f568ebe0c24f','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000482,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',240,'Y',1000664,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','34e94f30-799a-45b7-8fb2-b2b8bfb94a3f','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,4,'N',0,2,1,'N','N',1000483,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',250,'Y',1000665,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','35e7f00a-8cce-46ce-a7c8-97eff1c53900','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000484,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,22,'N','N',260,'Y',1000666,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','6d584dec-f0d2-420b-83ab-fe086287d3b8','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',1000485,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',270,'Y',1000667,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','d58d0920-4120-4f50-8283-8dd6c30d68eb','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000486,1000004)
;

-- Apr 22, 2014 2:00:05 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',280,'Y',1000668,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','a31ba64e-4cdf-48e8-8b7d-7dc7b0ecd783','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000487,1000004)
;

-- Apr 22, 2014 2:00:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',290,'Y',1000669,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','30e81888-ce6a-4de5-99b7-7bd6c30f4466','N','Y',0,0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:05','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000488,1000004)
;

-- Apr 22, 2014 2:00:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',300,'Y',1000670,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','c130da98-b6d2-4464-bb4e-3589ebd56daf','N','Y',0,0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,4,'N',0,2,1,'N','N',1000489,1000004)
;

-- Apr 22, 2014 2:00:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'N','N',310,'Y',1000671,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','88d69823-4d22-4d27-b890-926b8d81cceb','N','Y',0,0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000490,1000004)
;

-- Apr 22, 2014 2:00:06 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000041,10,'Y','N',320,'Y',1000672,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','086eb52f-bca6-4a4d-82bb-7eddef15403b','N','Y',0,0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:00:06','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,4,'N',0,2,1,'N','N',1000491,1000004)
;

-- Apr 22, 2014 2:01:24 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,23,'The IPI Tab defines amounts for IPI Tax','N','N','N','N','N','N','N',3,'ed9a01e2-6b4a-4d49-b979-894a51622770','LBR','IPI','IPI',1000042,'@Processed@=Y',0,TO_DATE('2014-04-22 14:01:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:01:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000501,1000028,'B')
;

-- Apr 22, 2014 2:03:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'N','N',0,'Y',1000673,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','9838857f-bdac-4d3c-8dcf-aece8bbe12d7','N','N',0,0,TO_DATE('2014-04-22 14:03:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000501)
;

-- Apr 22, 2014 2:03:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,1,'N','N',0,'Y',1000674,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','2beb0388-2737-46ed-9c3b-4f760e4bb61a','N','N',0,0,TO_DATE('2014-04-22 14:03:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000498)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'N','N',0,'Y',1000675,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','a053a2fd-1501-480f-97bd-aeb913998591','N','N',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000499)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,36,'N','N',0,'Y',1000676,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','79a88fb6-e38c-476a-ac2e-ef3a9742ad48','N','N',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000500)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'N','N',10,'Y',1000677,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f9a3a02b-1eb9-4a0a-8fc9-e6a927029f4d','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000492)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'Y','N',20,'Y',1000678,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','438e52a6-9176-4284-a047-35b99f242606','N','Y','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000493)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,2,'N','N',30,'Y',1000679,'N','LBR','Identifies a IPI Tax Status','IPI Tax Status','10637c3d-f45c-4b63-859e-efdd51d907fe','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000502)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,5,'N','N',40,'Y',1000680,'N','LBR','Identifies the IPI Tax Regarding Class','IPI Tax Regarding Class','d67642ec-efcf-40bd-a7bd-2185031a4542','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000503)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,3,'Y','N',50,'Y',1000681,'N','LBR','Identifies the IPI Tax Regarding Code','IPI Tax Regarding Code','b7f17be0-6ac7-4de8-9aaa-982ce395aac3','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000504)
;

-- Apr 22, 2014 2:03:38 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,14,'N','N',60,'Y',1000682,'N','Used to identify Legal Entities in Brazil','LBR','Used to identify Legal Entities in Brazil','CNPJ','2c2b8b74-a3c4-4006-84eb-9993480e5109','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000505)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,60,'N','N',70,'Y',1000683,'N','LBR','Identifies the IPI Tax Seal Code','IPI Tax Seal Code','ecc2fcad-01f6-4bb2-b313-860724da4a30','N','Y',0,0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000506)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,12,'Y','N',80,'Y',1000684,'N','LBR','Identifies the IPI Tax Seal Qty','IPI Tax Seal Qty','c59b210e-f89d-465f-97db-339ab6d3a609','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000507)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,3,'N','N',90,'Y',1000685,'N','LBR','Calculation','0a766966-91b6-4c13-98f6-f01dafdd34f4','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000508)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,10,'N','N',100,'Y',1000686,'N','@CalculationType@=PER','LBR','Defines the Tax Base Amount','Tax Base Amount','c599ed17-27dc-4f4d-af73-1192e686e592','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000509)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,10,'Y','N',110,'Y',1000687,'N','@CalculationType@=PER','LBR','Indicates the Tax Rate','Tax Rate','48b1a98b-079e-4936-aa54-dd44b4aae7ce','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,4,'N',0,2,1,'N','N',1000510)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'N','N',120,'Y',1000688,'N','@CalculationType@=AMT','LBR','Total Quantity','Total Quantity','57c5e368-a017-4693-a087-746f0b635d52','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000511)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,22,'Y','N',130,'Y',1000689,'N','The Actual or Unit Price indicates the Price for a product in source currency.','@CalculationType@=AMT','LBR','Actual Price ','Unit Price','fd7622ce-9e79-44ea-b1dd-cf611860ec4f','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000512)
;

-- Apr 22, 2014 2:03:39 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000042,10,'N','N',140,'Y',1000690,'N','@CalculationType@=PER | @CalculationType@=AMT','LBR','Defines the Tax Amount','Tax Amount','eafaa474-fece-4b5c-91c7-7892e11c7180','N','Y',0,0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:03:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000513)
;

-- Apr 22, 2014 2:05:16 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,24,'The PIS Tab defines amounts for PIS Tax','N','N','N','N','N','N','N',3,'26a5713a-86f8-4a41-bfcb-cbc7eb908b4c','LBR','PIS','PIS',1000043,'@Processed@=Y',0,TO_DATE('2014-04-22 14:05:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000521,1000029,'B')
;

-- Apr 22, 2014 2:05:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,22,'N','N',0,'Y',1000691,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','c80ccbce-db82-4710-8d7f-9e2227fad467','N','N',0,0,TO_DATE('2014-04-22 14:05:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000521)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,1,'N','N',0,'Y',1000692,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','89583b49-89be-4283-b21d-32b52ef5d914','N','N',0,0,TO_DATE('2014-04-22 14:05:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000520)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,36,'N','N',0,'Y',1000693,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','e2866e8e-ff40-4301-a65e-57081bfe3247','N','N',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000523)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,22,'N','N',0,'Y',1000694,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','ea59a532-6cd6-4eb9-9bcb-c3a4d1ddefdb','N','N',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000522)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,22,'N','N',10,'Y',1000695,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','fe38fc38-65a9-4d73-a51d-9d4a31a1c391','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000514)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000043,22,'Y','N',20,'Y',1000696,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','f3831de7-a58b-4725-90b9-b54c2de072c4','N','Y','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000515)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,2,'N','N',30,'Y',1000697,'N','LBR','Identifies a PIS Tax Status','PIS Tax Status','836e03dd-a7b6-49fe-be3b-9e231f7164ff','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000524,1000005)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,3,'N','N',40,'Y',1000698,'N','@LBR_PIS_TaxStatus@!'''' & @LBR_PIS_TaxStatus@!01 & @LBR_PIS_TaxStatus@!02 & @LBR_PIS_TaxStatus@!03 & @LBR_PIS_TaxStatus@!04 & @LBR_PIS_TaxStatus@!05 & @LBR_PIS_TaxStatus@!06 & @LBR_PIS_TaxStatus@!07 & @LBR_PIS_TaxStatus@!08 & @LBR_PIS_TaxStatus@!09','LBR','Calculation','b9262668-9434-436d-97dc-141be68d3a9a','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000525,1000005)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',50,'Y',1000699,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','fdc6829c-8601-4f10-85a3-51454b8fa5be','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000526,1000005)
;

-- Apr 22, 2014 2:05:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',60,'Y',1000700,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','d2c5f8bb-a63a-4eef-a435-1255676be09d','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000527,1000005)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',70,'Y',1000701,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','7f23e66d-49ed-42e9-aa9f-7ebbfa9168be','N','Y',0,0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000528,1000005)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',80,'Y',1000702,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Total Quantity','Total Quantity','851e5867-7eb8-4920-8d14-8792099b29ee','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000529,1000005)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',90,'Y',1000703,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02 | @LBR_PIS_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','d20c9b46-3aa4-4dbb-857d-3e83d8ce0855','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000530,1000005)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,3,'N','N',100,'Y',1000704,'N','@LBR_PIS_TaxStatus@!''''','LBR','Calculation','c2b0536e-1199-4ac6-8916-bacf5cf0c3e3','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000531,1000006)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',110,'Y',1000705,'N','@LBR_PISST_CalcType@=PER','LBR','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','ebfaf8a2-5352-4fc3-9e15-e23ae9c85c71','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000532,1000006)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',120,'Y',1000706,'N','@LBR_PISST_CalcType@=PER','LBR','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','26b7a175-381a-404c-83aa-560ba1a4ab44','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000533,1000006)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',130,'Y',1000707,'N','@LBR_PISST_CalcType@=AMT','LBR','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','821cb792-e50b-481f-a6a9-e7f6227bdfec','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000534,1000006)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',140,'Y',1000708,'N','@LBR_PISST_CalcType@=AMT','LBR','PIS-ST Total Quantity','PIS-ST Total Quantity','b7469a69-4f70-4480-8c3f-0d5ce9d0371c','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000535,1000006)
;

-- Apr 22, 2014 2:05:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000043,10,'N','N',150,'Y',1000709,'N','@LBR_PISST_CalcType@=PER | @LBR_PISST_CalcType@=AMT','LBR','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','1eaf5cf5-7606-40b5-888c-61d130e8c666','N','Y',0,0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000536,1000006)
;

-- Apr 22, 2014 2:06:15 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,25,'The COFINS Tab defines amounts for COFINS Tax','N','N','N','N','N','N','N',3,'edb7a425-e04d-402a-ab47-47e651454911','LBR','COFINS','COFINS',1000044,'@Processed@=Y',0,TO_DATE('2014-04-22 14:06:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000543,1000030,'B')
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,1,'N','N',0,'Y',1000710,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','4816ad03-fef1-4bfe-bed4-c0c252292158','N','N',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000542)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,22,'N','N',0,'Y',1000711,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','b9e46580-d0ad-42eb-a53e-3be4eab56616','N','N',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000543)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,22,'N','N',0,'Y',1000712,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','9cd9ff9f-418b-4843-be0c-84cae1df053f','N','N',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000544)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,36,'N','N',0,'Y',1000713,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','6dc28390-7a8a-406c-87e8-7c383c787772','N','N',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000545)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,22,'N','N',10,'Y',1000714,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','53ba2af2-4d0a-468b-8ebb-d3dcbb25cd31','N','Y',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000537)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000044,22,'Y','N',20,'Y',1000715,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','4604ab42-dafe-4b80-8784-46bc45cdccbf','N','Y','Y',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000538)
;

-- Apr 22, 2014 2:06:26 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,2,'N','N',30,'Y',1000716,'N','LBR','Identifies a COFINS Tax Status','COFINS Tax Status','3ca38404-85ec-448f-9e0c-0b0514daa915','N','Y',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000552,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,3,'N','N',40,'Y',1000717,'N','@LBR_COF_TaxStatus@!'''' & @LBR_COF_TaxStatus@!01 & @LBR_COF_TaxStatus@!02 & @LBR_COF_TaxStatus@!03 & @LBR_COF_TaxStatus@!04 & @LBR_COF_TaxStatus@!05 & @LBR_COF_TaxStatus@!06 & @LBR_COF_TaxStatus@!07 & @LBR_COF_TaxStatus@!08 & @LBR_COF_TaxStatus@!09','LBR','Calculation','6cd90a40-3ab1-4a55-8d6c-f95c121aed86','N','Y',0,0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000539,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',50,'Y',1000718,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','0bad2122-fac0-4d80-9c4a-4c7d93d37a21','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000554,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',60,'Y',1000719,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','ece3ece7-c7b8-4a75-9a7f-a9422acdeb40','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000555,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',70,'Y',1000720,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','d802e983-897b-4f1d-839e-14b84aa556ef','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000556,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',80,'Y',1000721,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Total Quantity','Total Quantity','d55f63e9-1b41-466a-9dc9-47500600e2cf','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000557,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',90,'Y',1000722,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02 | @LBR_COF_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','b94b5df9-dd26-4e5a-941d-6cc0f3c81d41','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000553,1000007)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,3,'N','N',100,'Y',1000723,'N','@LBR_COF_TaxStatus@!''''','LBR','Calculation','f82dcf85-6f9b-44f0-9f50-961d4cfffa2b','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000546,1000008)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',110,'Y',1000724,'N','@LBR_COFST_CalcType@=PER','LBR','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','520fe900-563f-4d1a-8120-295ceeba016b','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000548,1000008)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',120,'Y',1000725,'N','@LBR_COFST_CalcType@=PER','LBR','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','d83b69e1-d04e-4d19-aea9-bb6687f677c6','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000549,1000008)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',130,'Y',1000726,'N','@LBR_COFST_CalcType@=AMT','LBR','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','57ec6321-2f59-4105-8796-f065b13a9b9f','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000550,1000008)
;

-- Apr 22, 2014 2:06:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',140,'Y',1000727,'N','@LBR_COFST_CalcType@=AMT','LBR','COFINS-ST Total Quantity','COFINS-ST Total Quantity','8bdf7fb4-5b94-49e1-ab8b-f57bbaf60cba','N','Y',0,0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000551,1000008)
;

-- Apr 22, 2014 2:06:28 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000044,10,'N','N',150,'Y',1000728,'N','@LBR_COFST_CalcType@=PER | @LBR_COFST_CalcType@=AMT','LBR','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','c6a46316-2fec-438d-b481-7037e986cbf2','N','Y',0,0,TO_DATE('2014-04-22 14:06:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:06:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000547,1000008)
;

-- Apr 22, 2014 2:07:40 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,26,'The Import Tax Tab defines amounts for Import Tax','N','N','N','N','N','N','N',3,'c90e7ae9-35d5-48b7-acc1-6d56f1e0119c','LBR','Import Tax','Import Tax',1000045,'@Processed@=Y',0,TO_DATE('2014-04-22 14:07:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000569,1000031,'B')
;

-- Apr 22, 2014 2:07:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,22,'N','N',0,'Y',1000729,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','93a23de4-778f-4f88-bba6-e765e75f0da3','N','N',0,0,TO_DATE('2014-04-22 14:07:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000569)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,1,'N','N',0,'Y',1000730,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','be6d6742-aaa5-4fb8-b704-c34134dac994','N','N',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000566)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,22,'N','N',0,'Y',1000731,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','3f9ad361-e959-4dfb-a990-b6a163052cef','N','N',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000567)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,36,'N','N',0,'Y',1000732,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','f2f28ab1-74ec-45cf-b919-21970ef97fb5','N','N',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000568)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,22,'N','N',10,'Y',1000733,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','a1e88770-0d27-4c4e-8d9d-3a742f134dd7','N','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000560)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,22,'N','N',20,'Y',1000734,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','6d9402ea-13be-4054-8278-95d745669050','N','Y','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000561)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,10,'N','N',30,'Y',1000735,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','c19e41d5-6e0f-4a81-a411-e685674bf2bb','N','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000570)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,10,'N','N',40,'Y',1000736,'N','LBR','Customs Value','1495d4fa-989e-4a18-b41f-14371404e474','N','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000571)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,10,'N','N',50,'Y',1000737,'N','LBR','Defines the IOF Amount','IOF Amount','34c37301-262f-4d3d-bd81-7b84d3cd5d87','N','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000572)
;

-- Apr 22, 2014 2:07:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000045,10,'N','N',60,'Y',1000738,'N','LBR','Defines the Tax Amount','Tax Amount','f7070f4e-c3b8-4017-b6b8-922abb0565a4','N','Y',0,0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:07:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000573)
;

-- Apr 22, 2014 2:08:36 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',181,27,'The ISSQN Tab defines amounts for ISSQN Tax','N','N','N','N','N','N','N',3,'b90374e0-9f42-4975-96e5-77f438b751a4','LBR','ISSQN','ISSQN',1000046,'@Processed@=Y',0,TO_DATE('2014-04-22 14:08:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000581,1000032,'B')
;

-- Apr 22, 2014 2:08:45 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,36,'N','N',0,'Y',1000739,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','732b46ed-3f33-469c-b4b8-a760cd5d140f','N','N',0,0,TO_DATE('2014-04-22 14:08:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000583)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,1,'N','N',0,'Y',1000740,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','62e2c6c0-2421-4680-bcc4-baf022e12a43','N','N',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000580)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,22,'N','N',0,'Y',1000741,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','4cd3a801-0f9d-437a-8bdf-f80153fdd97b','N','N',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000581)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,22,'N','N',0,'Y',1000742,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','29f705a1-2da9-4e1a-80a8-fb3123d3c82a','N','N',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000582)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,22,'N','N',10,'Y',1000743,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','1fab4144-5282-4a51-9e06-29fdb93a7b79','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000574)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,22,'Y','N',20,'Y',1000744,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','7d41f5f9-4626-4a3c-9b1f-1cb517aca441','N','Y','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000575)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,10,'N','N',30,'Y',1000745,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','b99ff8f6-8aba-4ef5-8cbb-bcb5caf99c60','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000584)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,10,'Y','N',40,'Y',1000746,'N','LBR','Indicates the Tax Rate','Tax Rate','7c5d1869-9592-4d4f-919a-179a8b9de1d7','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,4,'N',0,2,1,'N','N',1000585)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,5,'N','N',50,'Y',1000747,'N','LBR','Service Type','c792e96c-e47a-4078-a61a-ff52d5b6a826','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000586)
;

-- Apr 22, 2014 2:08:46 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,10,'N','N',60,'Y',1000748,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','b326aa51-25f0-4f87-8a2f-06b3fcbc47cc','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000587)
;

-- Apr 22, 2014 2:08:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,10,'Y','N',70,'Y',1000749,'N','City in a country','LBR','City','City','204ea352-a71d-46e6-95a2-5fb9db62cea8','N','Y',0,0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:46','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000589)
;

-- Apr 22, 2014 2:08:47 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000046,10,'N','N',80,'Y',1000750,'N','LBR','Defines the Tax Amount','Tax Amount','42e10d86-f57b-49cb-9d0e-108ceb86d32b','N','Y',0,0,TO_DATE('2014-04-22 14:08:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:08:47','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000588)
;

-- Apr 22, 2014 2:27:07 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,21,'The Order Line Details Tab defines details for the individual line item.','N','N','N','N','N','N','N',2,'3ad1dc36-44b3-4ce4-b0ab-8ea41c7c74b5','LBR','Order Line Details','Order Line Details',1000047,'@Processed@=Y',0,TO_DATE('2014-04-22 14:27:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:27:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000426,1000026,'B')
;

-- Apr 22, 2014 2:28:33 PM BRT
UPDATE AD_Tab SET Help='The Invoice Line Details Tab defines details for the individual line item.', Name='Invoice Line Details', Description='Invoice Line Details',Updated=TO_DATE('2014-04-22 14:28:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000047
;

-- Apr 22, 2014 2:28:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,36,'N','N',0,'Y',1000751,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','9d8c787f-5ada-4094-a109-1d08d21ae010','N','N',0,0,TO_DATE('2014-04-22 14:28:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000424)
;

-- Apr 22, 2014 2:28:48 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,1,'N','N',0,'Y',1000752,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','fcba9766-6237-4539-a5a5-125187c569c9','N','N',0,0,TO_DATE('2014-04-22 14:28:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000422)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',0,'Y',1000753,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','4aff0931-f462-4b90-aa29-6205b86bc76c','N','N',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000423)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,10,'N','N',0,'Y',1000754,'N','The Sales Order Line is a unique identifier for a line in an order.','LBR','Sales Order Line','Sales Order Line','229b4f08-a4e5-4121-ab3b-f0c77f4f3c57','N','N',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000425)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',0,'Y',1000755,'N','The Invoice Line uniquely identifies a single line of an Invoice.','LBR','Invoice Detail Line','Invoice Line','c92eb1c1-7906-4632-a987-ad5679d580e7','N','N',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000426)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,10,'N','N',0,'Y',1000756,'N','Detail information about the returned goods','LBR','Return Material Authorization Line','RMA Line','e0d44db1-ff0d-448d-8a5b-1c77890aef40','N','N',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000427)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',10,'Y',1000757,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','f014f0ed-2487-401a-bb4d-48132866f1b3','N','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000416)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'Y','N',20,'Y',1000758,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','c3c44078-d8cb-4886-8d8f-8ae5eeabbe95','N','Y','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000417)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,40,'N','N',30,'Y',1000759,'N','LBR','Key of the Product','Product Key','2471b4d7-06ec-40f9-9bac-2e99808136e9','N','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000428)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,255,'N','N',40,'Y',1000760,'N','LBR','Name of the Product','Product Name','5cc5abcc-bcf8-4fb1-b76a-efcd20327c69','N','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,1,'N',0,5,1,'N','N',1000429)
;

-- Apr 22, 2014 2:28:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',50,'Y',1000761,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','e9a64a39-3b99-4b8e-b25e-e0438dd1d493','N','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000430)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,6,'Y','N',60,'Y',1000762,'N','Identifies an exception to a NCM rule.','LBR','NCM Exception','EX TIPI','78d91181-5850-4083-b3e6-6e4c8054feb4','N','Y',0,0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,4,'N',0,2,1,'N','N',1000431)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',70,'Y',1000763,'N','LBR','Indentifies the CFOP','CFOP','139a42fb-9219-4242-b952-9ef7fe0bd26c','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000432)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,30,'Y','N',80,'Y',1000764,'N','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','LBR','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','2be3e777-2c63-475d-b90b-c7bb5b3889f0','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,4,'N',0,2,1,'N','N',1000439)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'N','N',90,'Y',1000765,'N','The Taxable Quantity indicates the number of a specific product or item for this document.','LBR','Taxable Quantity','Taxable Quantity','fca6624e-acc9-4dd7-b0f7-19dda945bff1','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000434)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000047,22,'Y','N',100,'Y',1000766,'N','The Taxable UOM defines a unique non monetary Unit of Measure','LBR','Taxable Unit of Measure','Taxable UOM','6f3b759e-3d84-455f-bd77-5bf13e3d61db','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,4,'N',0,2,1,'N','N',1000433)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,10,'N','N',110,'Y',1000767,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','3a33e8ac-0bbe-4bef-8018-8533da97a681','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000447,1000002)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,2,'Y','N',120,'Y',1000768,'N','Indicates the taxation type used to calculate taxes','LBR','Taxation type used to calculate taxes','Taxation Type','6cb30ac7-aed8-4372-ab43-59a561e57253','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000450,1000002)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'N','N',130,'Y',1000769,'N','The Taxable Price indicates the Price for a product or service.','LBR','Taxable Price','Taxable Price','b17975d4-42ef-449c-9260-0a2ccffb966b','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1000435,103)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,14,'N','N',140,'Y',1000770,'N','LBR','Insured Amount','1e8e1d64-3675-44a2-8bb7-a9758c29b9c2','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000436,103)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'Y','N',150,'Y',1000771,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','5bfebf64-0c3c-4a63-8120-5e192825ceaf','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000437,103)
;

-- Apr 22, 2014 2:28:50 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'N','N',160,'Y',1000772,'N','The Freight Amount indicates the amount charged for Freight in the document currency.','LBR','Freight Amount ','Freight Amount','0fc1be8a-3c9d-4c99-92e9-50b669436da9','N','Y',0,0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:50','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000438,103)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,14,'Y','N',170,'Y',1000773,'N','LBR','Surcharges','8b8d0280-277e-4f2b-a96b-106a9ca9987f','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,4,'N',0,2,1,'N','N',1000440,103)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'N','N',180,'Y',1000774,'N','Indicates the gross amount for a product/service/tax/etc.','LBR','Gross Amount','Gross Amount','7a74b449-259c-48dd-853d-8995c634e84f','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000441,103)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,1,'Y','N',190,'Y',1000775,'N','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','LBR','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','3cad585e-bbdc-49a2-9283-fd8cdb35586a','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,5,'N',0,2,1,'N','N',1000442,103)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'N','N',200,'N',1000776,'N','LBR','Tax Line Total Amount','Tax Line Total','a11eeef2-ecc2-4534-9dd8-50dcae9dc9e1','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000449,103)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,20,'N','N',210,'Y',1000777,'N','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','LBR','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','Order Reference','91f615ac-3cda-4bdb-870c-7887af682659','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000443,104)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,22,'Y','N',220,'Y',1000778,'N','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','LBR','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','8944bcbb-6414-464b-9cab-07d36bd8b068','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000444,104)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,3,'N','N',230,'Y',1000779,'N','LBR','Specific Product in a NF-e','NF-e Specific Product','e7b23902-0246-42a0-b12b-1a3a1bf1e11c','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000445,104)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000047,36,'Y','N',240,'Y',1000780,'N','Identifies the FCI Control Number','LBR','Import Content Sheet (FCI) Control Number','FCI Control Number','ce29d86f-21f2-459f-a1db-5f0289b5200a','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000446,104)
;

-- Apr 22, 2014 2:28:51 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',1000047,0,'N','N',250,'N',1000781,'N','LBR','Memo','Memo','26f36bac-f285-4b00-956e-1de899e429a2','N','Y',0,0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:28:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,5,4,'N','N',1000448,104)
;

-- Apr 22, 2014 2:29:57 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,22,'The ICMS Tab defines amounts for ICMS Tax','N','N','N','N','N','N','N',3,'ac964f04-8ef0-4418-a7df-a71a847bf232','LBR','ICMS','ICMS',1000048,'@Processed@=Y',0,TO_DATE('2014-04-22 14:29:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:29:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000460,1000027,'B')
;

-- Apr 22, 2014 2:30:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,22,'N','N',0,'Y',1000782,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','c16c69f5-99e0-4741-a117-103ad0e0d90e','N','N',0,0,TO_DATE('2014-04-22 14:30:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000460)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,1,'N','N',0,'Y',1000783,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','055ee580-ad71-4f91-89db-50f5789f3023','N','N',0,0,TO_DATE('2014-04-22 14:30:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000453)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,22,'N','N',0,'Y',1000784,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','c0b4f8cc-be03-4606-ba37-fb3df324b622','N','N',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000458)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,36,'N','N',0,'Y',1000785,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','683cfc65-84ac-425b-a0cb-8e9b02bd9f87','N','N',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000459)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,22,'N','N',10,'Y',1000786,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','400790c3-6f95-4e12-865d-04bdee70b9b0','N','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000451)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,22,'N','N',20,'Y',1000787,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','ed27ef26-44c8-4648-a379-370c0dcbf9cb','N','Y','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000452)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,2,'N','N',30,'Y',1000788,'N','LBR','Identifies a ICMS Regime for taxes','ICMS Regime','60f3c81a-6212-4b31-be7b-44be7ac0df25','N','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000461)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,5,'N','N',40,'Y',1000789,'N','@LBR_ICMSRegime@=TN','LBR','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','dc3ab9e7-8d06-48fa-876f-b2da76f71ad3','N','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,5,1,'N','N',1000462)
;

-- Apr 22, 2014 2:30:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,5,'N','N',50,'Y',1000790,'N','@LBR_ICMSRegime@=SN','LBR','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','eebbe4db-756f-4849-9c70-784c571db4d8','N','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,5,1,'N','N',1000463)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,1,'N','N',60,'Y',1000791,'N','LBR','Identifies a Product Source','Product Source','dff0b7b4-823a-4797-a809-379adab79781','N','Y',0,0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,5,1,'N','N',1000464)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,10,'N','N',70,'Y',1000792,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','9ba3b42a-33ff-4690-a924-f398c433c2fd','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,2,1,'N','N',1000471)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000048,10,'N','N',80,'Y',1000793,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Amount Credit','Tax Amount Credit','ac9ff5b6-4544-4bef-9913-178c0e58a7dc','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,4,'N',0,2,1,'N','N',1000472)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,1,'N','N',90,'Y',1000794,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','0e599cf8-be5f-4d7d-9c97-eee3b5d3c32c','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1000465,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',100,'Y',1000795,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Indicates the Tax Base','Tax Base','5c27b176-cad1-4c6b-9400-99718983cc12','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,1,'N',0,2,1,'N','N',1000466,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',110,'Y',1000796,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Base Amount','Tax Base Amount','61fe2023-2802-40dd-9521-fe68c31ed307','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,1,'N',0,2,1,'N','N',1000467,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',120,'Y',1000797,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the Tax Rate','Tax Rate','b6169d60-f9b2-44cd-8d48-4081ba81fb3c','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,4,'N',0,2,1,'N','N',1000468,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',130,'Y',1000798,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Amount','Tax Amount','61ad0311-02ab-45a8-a3af-299d25ff677c','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000469,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',140,'Y',1000799,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','b4a8fa05-f6b5-46b7-adc0-efea7cb8e402','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1000470,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,2,'N','N',150,'Y',1000800,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','13203d43-2273-435c-9d58-c02cb774de6b','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,2,1,'N','N',1000473,1000003)
;

-- Apr 22, 2014 2:30:10 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',160,'Y',1000801,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the Tax Relief Amount','Tax Relief Amount','0f7fec94-60b1-4c6a-af8e-0d1a87ce9f9f','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,4,'N',0,2,1,'N','N',1000474,1000003)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',170,'Y',1000802,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','4d40fb2d-276d-4e15-85ea-2a374263732e','N','Y',0,0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:10','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,1,'N',0,2,1,'N','N',1000476,1000003)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',180,'Y',1000803,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','7db0d8d8-7bd2-4424-857a-9ec3c25781db','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1000475,1000003)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',190,'Y',1000804,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Amount','Tax Deferral Amount','51a21e53-774f-4ac0-8e64-d6728db657cf','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1000477,1000003)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,1,'N','N',200,'Y',1000805,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','2054442c-fefe-4b2f-9465-72ef2a3cb052','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000479,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',210,'Y',1000806,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','5376695a-b322-4a7a-8956-1d278e502985','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000480,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',220,'Y',1000807,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','841acae5-26cd-4395-a036-26c7a78f6131','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000481,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',230,'Y',1000808,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','e9399590-0630-44e6-987f-a640d02d6dc3','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000482,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',240,'Y',1000809,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','8a1e3db1-1357-44c3-b460-556ffc18afbd','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,4,'N',0,2,1,'N','N',1000483,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',250,'Y',1000810,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','74d0b3a3-ea61-4f40-b58b-7587dbd6b3e6','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000484,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,22,'N','N',260,'Y',1000811,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','9f8a91a4-e07f-4b0d-b629-58cac1cabd77','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',1000485,1000004)
;

-- Apr 22, 2014 2:30:11 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',270,'Y',1000812,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','31975fa4-a95d-4a1c-b5bf-0877a12648d7','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000486,1000004)
;

-- Apr 22, 2014 2:30:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',280,'Y',1000813,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','a523b5ce-08bc-4858-8e58-c56d74b73a0d','N','Y',0,0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:11','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000487,1000004)
;

-- Apr 22, 2014 2:30:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',290,'Y',1000814,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','9c56eb4b-4b93-4bd9-a1ad-3af6a4e2b754','N','Y',0,0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000488,1000004)
;

-- Apr 22, 2014 2:30:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',300,'Y',1000815,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','2881ebdd-a052-4be1-9280-eb246eaffbb0','N','Y',0,0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,4,'N',0,2,1,'N','N',1000489,1000004)
;

-- Apr 22, 2014 2:30:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'N','N',310,'Y',1000816,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','de09b412-8061-456d-a354-01d1209f8031','N','Y',0,0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000490,1000004)
;

-- Apr 22, 2014 2:30:12 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000048,10,'Y','N',320,'Y',1000817,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','96bdb5bb-901e-4afa-a360-cb3bc4db7b91','N','Y',0,0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:12','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,4,'N',0,2,1,'N','N',1000491,1000004)
;

-- Apr 22, 2014 2:30:51 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,23,'The IPI Tab defines amounts for IPI Tax','N','N','N','N','N','N','N',3,'f0dd8b0f-1eb1-4289-8e54-79657a7f61fb','LBR','IPI','IPI',1000049,'@Processed@=Y',0,TO_DATE('2014-04-22 14:30:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000501,1000028,'B')
;

-- Apr 22, 2014 2:30:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'N','N',0,'Y',1000818,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','84330f2f-cfbf-495e-b18c-e3d48e1a6df6','N','N',0,0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000501)
;

-- Apr 22, 2014 2:30:59 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,1,'N','N',0,'Y',1000819,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','59deabab-ee6e-4ef5-8a92-2e0f5090c92e','N','N',0,0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000498)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'N','N',0,'Y',1000820,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','7ce398cb-8e20-4412-9b3d-4ec3801323b7','N','N',0,0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:30:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000499)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,36,'N','N',0,'Y',1000821,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','91ecd245-03f4-4fa6-a689-045b168ffacf','N','N',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000500)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'N','N',10,'Y',1000822,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ba4292c0-87da-431b-ba19-8d1f1499ce29','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000492)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'Y','N',20,'Y',1000823,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','36b8bf6e-238f-4a8c-a328-dafb874419a3','N','Y','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000493)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,2,'N','N',30,'Y',1000824,'N','LBR','Identifies a IPI Tax Status','IPI Tax Status','1a84f1f1-169d-407c-98bd-6df602e1cfd3','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000502)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,5,'N','N',40,'Y',1000825,'N','LBR','Identifies the IPI Tax Regarding Class','IPI Tax Regarding Class','661ab04a-b159-4e2e-b87a-7f3bad70491c','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000503)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,3,'Y','N',50,'Y',1000826,'N','LBR','Identifies the IPI Tax Regarding Code','IPI Tax Regarding Code','a87d4e8b-03f0-46fe-aa47-01671b61f2a9','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000504)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,14,'N','N',60,'Y',1000827,'N','Used to identify Legal Entities in Brazil','LBR','Used to identify Legal Entities in Brazil','CNPJ','1b93ba24-371c-4600-8707-2f8e5d9edbe3','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000505)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,60,'N','N',70,'Y',1000828,'N','LBR','Identifies the IPI Tax Seal Code','IPI Tax Seal Code','d79e41ae-84b2-4f71-9fb5-ba806497b954','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000506)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,12,'Y','N',80,'Y',1000829,'N','LBR','Identifies the IPI Tax Seal Qty','IPI Tax Seal Qty','61759402-4ee9-42e7-8341-a9e07f191dd2','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000507)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,3,'N','N',90,'Y',1000830,'N','LBR','Calculation','5d684781-09b6-4681-80c0-fb0f5bc4d8c2','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000508)
;

-- Apr 22, 2014 2:31:00 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,10,'N','N',100,'Y',1000831,'N','@CalculationType@=PER','LBR','Defines the Tax Base Amount','Tax Base Amount','801572e4-0375-4563-9fd6-51a0c2b9c8aa','N','Y',0,0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000509)
;

-- Apr 22, 2014 2:31:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,10,'Y','N',110,'Y',1000832,'N','@CalculationType@=PER','LBR','Indicates the Tax Rate','Tax Rate','bc7a90fa-1b82-4e27-a203-564db1a7c826','N','Y',0,0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,4,'N',0,2,1,'N','N',1000510)
;

-- Apr 22, 2014 2:31:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'N','N',120,'Y',1000833,'N','@CalculationType@=AMT','LBR','Total Quantity','Total Quantity','7cc0b047-4c7e-4b75-8da0-95fa4fd09124','N','Y',0,0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000511)
;

-- Apr 22, 2014 2:31:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,22,'Y','N',130,'Y',1000834,'N','The Actual or Unit Price indicates the Price for a product in source currency.','@CalculationType@=AMT','LBR','Actual Price ','Unit Price','717c7dac-6454-43cd-9350-134620348c4c','N','Y',0,0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000512)
;

-- Apr 22, 2014 2:31:01 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000049,10,'N','N',140,'Y',1000835,'N','@CalculationType@=PER | @CalculationType@=AMT','LBR','Defines the Tax Amount','Tax Amount','7c2834fd-beb8-44ff-afe3-f2b6acf23b74','N','Y',0,0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000513)
;

-- Apr 22, 2014 2:31:46 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,24,'The PIS Tab defines amounts for PIS Tax','N','N','N','N','N','N','N',3,'7ae1e532-9ccb-4270-a660-d1235752d210','LBR','PIS','PIS',1000050,'@Processed@=Y',0,TO_DATE('2014-04-22 14:31:46','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000521,1000029,'B')
;

-- Apr 22, 2014 2:31:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,22,'N','N',0,'Y',1000836,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','b07d79d0-f358-474f-85ed-87177fbdf506','N','N',0,0,TO_DATE('2014-04-22 14:31:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:56','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000521)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,1,'N','N',0,'Y',1000837,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','086a3e44-6442-473e-b8a8-81965a31c830','N','N',0,0,TO_DATE('2014-04-22 14:31:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:56','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000520)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,36,'N','N',0,'Y',1000838,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','a9b578ff-138f-4b32-a4ef-c06145f538a7','N','N',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000523)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,22,'N','N',0,'Y',1000839,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','2d78ff82-42c8-46e3-a1a9-fa69f398b5e1','N','N',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000522)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,22,'N','N',10,'Y',1000840,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','fd04f583-9815-4eda-85ec-c5129c4e5f06','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000514)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000050,22,'Y','N',20,'Y',1000841,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','cdf6f0c7-8dec-44aa-95a4-94b2cdbb8d38','N','Y','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000515)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,2,'N','N',30,'Y',1000842,'N','LBR','Identifies a PIS Tax Status','PIS Tax Status','84b175dd-82f2-4a1a-bbff-258c6cc89a45','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000524,1000005)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,3,'N','N',40,'Y',1000843,'N','@LBR_PIS_TaxStatus@!'''' & @LBR_PIS_TaxStatus@!01 & @LBR_PIS_TaxStatus@!02 & @LBR_PIS_TaxStatus@!03 & @LBR_PIS_TaxStatus@!04 & @LBR_PIS_TaxStatus@!05 & @LBR_PIS_TaxStatus@!06 & @LBR_PIS_TaxStatus@!07 & @LBR_PIS_TaxStatus@!08 & @LBR_PIS_TaxStatus@!09','LBR','Calculation','4d2314a7-1632-4837-aff4-0870a594e915','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000525,1000005)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',50,'Y',1000844,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','d28c3159-2c9b-45d7-b720-9d341d296d52','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000526,1000005)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',60,'Y',1000845,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','aa6897c0-9721-4da7-832f-1a51248cda4a','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000527,1000005)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',70,'Y',1000846,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','516a3ce1-85ff-4fd2-b35f-d3093be494e3','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000528,1000005)
;

-- Apr 22, 2014 2:31:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',80,'Y',1000847,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Total Quantity','Total Quantity','db7a7dd2-87fc-4e41-ab23-13f8c5ee9650','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000529,1000005)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',90,'Y',1000848,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02 | @LBR_PIS_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','46b356ad-3ecb-4c20-bbed-930855d946dc','N','Y',0,0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000530,1000005)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,3,'N','N',100,'Y',1000849,'N','@LBR_PIS_TaxStatus@!''''','LBR','Calculation','4e485d80-1e5e-4a4a-bfc7-b5bd9b74cc61','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000531,1000006)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',110,'Y',1000850,'N','@LBR_PISST_CalcType@=PER','LBR','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','7151366d-04bd-4024-b2df-e76b4540c091','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000532,1000006)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',120,'Y',1000851,'N','@LBR_PISST_CalcType@=PER','LBR','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','442501f4-d231-4b85-88c8-d94ae47e5f2c','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000533,1000006)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',130,'Y',1000852,'N','@LBR_PISST_CalcType@=AMT','LBR','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','a60cd6c8-65e3-43b8-af82-9c374c7879ae','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000534,1000006)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',140,'Y',1000853,'N','@LBR_PISST_CalcType@=AMT','LBR','PIS-ST Total Quantity','PIS-ST Total Quantity','54b108a2-a33c-47a1-b287-b074f3afaa8b','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000535,1000006)
;

-- Apr 22, 2014 2:31:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000050,10,'N','N',150,'Y',1000854,'N','@LBR_PISST_CalcType@=PER | @LBR_PISST_CalcType@=AMT','LBR','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','e1a2c6ae-cb6d-4502-b17f-e8d529058a29','N','Y',0,0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:31:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000536,1000006)
;

-- Apr 22, 2014 2:32:48 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,25,'The COFINS Tab defines amounts for COFINS Tax','N','N','N','N','N','N','N',3,'8de69c6b-6f4f-4350-8a72-67f824f8ddce','LBR','COFINS','COFINS',1000051,'@Processed@=Y',0,TO_DATE('2014-04-22 14:32:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:32:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000543,1000030,'B')
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,1,'N','N',0,'Y',1000855,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','93ffe0f8-05d9-413c-8cfb-a2bd58d9220f','N','N',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000542)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,22,'N','N',0,'Y',1000856,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','1a24e27c-20fc-4b09-868d-6137de786d86','N','N',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000543)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,22,'N','N',0,'Y',1000857,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','8a414562-ca3e-460a-9ae6-52f65877b3ab','N','N',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000544)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,36,'N','N',0,'Y',1000858,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','52663fcc-314e-40fc-bd38-9bf19968e84a','N','N',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000545)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,22,'N','N',10,'Y',1000859,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','b97eb00b-b711-4f67-864c-e09cf70b0e1c','N','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000537)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000051,22,'Y','N',20,'Y',1000860,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','350b9fca-ca96-47d0-81a5-86399291a918','N','Y','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000538)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,2,'N','N',30,'Y',1000861,'N','LBR','Identifies a COFINS Tax Status','COFINS Tax Status','d4723f99-4224-4d73-92d8-208e3b989dcf','N','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000552,1000007)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,3,'N','N',40,'Y',1000862,'N','@LBR_COF_TaxStatus@!'''' & @LBR_COF_TaxStatus@!01 & @LBR_COF_TaxStatus@!02 & @LBR_COF_TaxStatus@!03 & @LBR_COF_TaxStatus@!04 & @LBR_COF_TaxStatus@!05 & @LBR_COF_TaxStatus@!06 & @LBR_COF_TaxStatus@!07 & @LBR_COF_TaxStatus@!08 & @LBR_COF_TaxStatus@!09','LBR','Calculation','4a93380d-a84c-4d5c-a761-dd53c4ecb5f6','N','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000539,1000007)
;

-- Apr 22, 2014 2:33:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',50,'Y',1000863,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','7cbdf198-f9fb-4be2-97c7-96375a700fe8','N','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000554,1000007)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',60,'Y',1000864,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','307508bc-c627-4ceb-8989-63ce7f04396c','N','Y',0,0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000555,1000007)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',70,'Y',1000865,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','cafde978-b968-49ac-a9c7-ce651bc55d86','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000556,1000007)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',80,'Y',1000866,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Total Quantity','Total Quantity','29267c0f-d21a-48d9-b00c-447f56c438b9','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000557,1000007)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',90,'Y',1000867,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02 | @LBR_COF_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','83b10aeb-c051-482e-9277-c8ed5cf1653a','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000553,1000007)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,3,'N','N',100,'Y',1000868,'N','@LBR_COF_TaxStatus@!''''','LBR','Calculation','a001a97e-e616-4a4a-a2e7-a6a1f6296c1a','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000546,1000008)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',110,'Y',1000869,'N','@LBR_COFST_CalcType@=PER','LBR','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','eda9199c-ac79-4482-9257-e0af0e711bf6','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000548,1000008)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',120,'Y',1000870,'N','@LBR_COFST_CalcType@=PER','LBR','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','a8a583d6-565f-4b03-8d89-5e726973ee25','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000549,1000008)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',130,'Y',1000871,'N','@LBR_COFST_CalcType@=AMT','LBR','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','3480f06e-1e00-432b-a72d-abeba84fd3c1','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000550,1000008)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',140,'Y',1000872,'N','@LBR_COFST_CalcType@=AMT','LBR','COFINS-ST Total Quantity','COFINS-ST Total Quantity','ebc59f5d-91e0-40a8-b3ff-a3daad1562dd','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000551,1000008)
;

-- Apr 22, 2014 2:33:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000051,10,'N','N',150,'Y',1000873,'N','@LBR_COFST_CalcType@=PER | @LBR_COFST_CalcType@=AMT','LBR','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','57dce0b2-d482-414b-a707-c19a395f6ce0','N','Y',0,0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:33:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000547,1000008)
;

-- Apr 22, 2014 2:34:00 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,26,'The Import Tax Tab defines amounts for Import Tax','N','N','N','N','N','N','N',3,'977ede7b-5f67-41b0-a379-8ac883014721','LBR','Import Tax','Import Tax',1000052,'@Processed@=Y',0,TO_DATE('2014-04-22 14:34:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000569,1000031,'B')
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,22,'N','N',0,'Y',1000874,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','ff2d31eb-97ff-4f1d-a63e-eca35215b287','N','N',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000569)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,1,'N','N',0,'Y',1000875,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','46bb2d44-adb8-44a1-a233-5acd510a6e3e','N','N',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000566)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,22,'N','N',0,'Y',1000876,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','3d7133ee-e16d-4afa-957b-fdcbb5fe3d74','N','N',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000567)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,36,'N','N',0,'Y',1000877,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','c833689e-1c0e-490a-9547-f25cffc4b02d','N','N',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000568)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,22,'N','N',10,'Y',1000878,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','664245f5-f902-4851-bd03-df58d0fafc34','N','Y',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000560)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,22,'N','N',20,'Y',1000879,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','4036d143-b5d2-431e-8b07-fe90e63a470c','N','Y','Y',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000561)
;

-- Apr 22, 2014 2:34:08 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,10,'N','N',30,'Y',1000880,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','3420b8ba-0f88-4490-919a-f1aba6a06e53','N','Y',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000570)
;

-- Apr 22, 2014 2:34:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,10,'N','N',40,'Y',1000881,'N','LBR','Customs Value','85d3e539-deb6-44af-8a54-8024711f1d90','N','Y',0,0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000571)
;

-- Apr 22, 2014 2:34:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,10,'N','N',50,'Y',1000882,'N','LBR','Defines the IOF Amount','IOF Amount','73f632ca-7765-4513-a944-d16619e831d7','N','Y',0,0,TO_DATE('2014-04-22 14:34:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000572)
;

-- Apr 22, 2014 2:34:09 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000052,10,'N','N',60,'Y',1000883,'N','LBR','Defines the Tax Amount','Tax Amount','3de5bdb3-5d9a-4d15-95eb-f98e220feee4','N','Y',0,0,TO_DATE('2014-04-22 14:34:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:09','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000573)
;

-- Apr 22, 2014 2:34:48 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',183,27,'The ISSQN Tab defines amounts for ISSQN Tax','N','N','N','N','N','N','N',3,'448551a2-9faa-4001-b5c4-a789db9ac489','LBR','ISSQN','ISSQN',1000053,'@Processed@=Y',0,TO_DATE('2014-04-22 14:34:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000581,1000032,'B')
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,36,'N','N',0,'Y',1000884,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','37eebd39-cf57-4fee-bf84-8c353995c44e','N','N',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000583)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,1,'N','N',0,'Y',1000885,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','14ac2f75-235d-466c-9b91-6810962eeeed','N','N',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000580)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,22,'N','N',0,'Y',1000886,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','91f99778-415e-47c5-b13e-fbb20dbfb33e','N','N',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000581)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,22,'N','N',0,'Y',1000887,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','20b9662b-9f70-46e6-b7b0-16082d622541','N','N',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000582)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,22,'N','N',10,'Y',1000888,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','b4c86782-ff10-43cc-b233-33b396ddb7a5','N','Y',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000574)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,22,'Y','N',20,'Y',1000889,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9e224d64-0942-4bf8-9f67-3703f1585276','N','Y','Y',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000575)
;

-- Apr 22, 2014 2:34:55 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,10,'N','N',30,'Y',1000890,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','0ad5d819-f64b-4e07-8208-fdbcddc4da09','N','Y',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000584)
;

-- Apr 22, 2014 2:34:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,10,'Y','N',40,'Y',1000891,'N','LBR','Indicates the Tax Rate','Tax Rate','fe613b13-b61e-40c2-8b90-b46353d60b88','N','Y',0,0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:55','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,4,'N',0,2,1,'N','N',1000585)
;

-- Apr 22, 2014 2:34:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,5,'N','N',50,'Y',1000892,'N','LBR','Service Type','8e6385c8-633a-45f6-9051-0dae61533278','N','Y',0,0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000586)
;

-- Apr 22, 2014 2:34:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,10,'N','N',60,'Y',1000893,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','d70482b4-300f-46c9-9267-b356166314f1','N','Y',0,0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000587)
;

-- Apr 22, 2014 2:34:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,10,'Y','N',70,'Y',1000894,'N','City in a country','LBR','City','City','2e4e53ee-a4ae-40a9-9bc7-e8bcfd025101','N','Y',0,0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000589)
;

-- Apr 22, 2014 2:34:56 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000053,10,'N','N',80,'Y',1000895,'N','LBR','Defines the Tax Amount','Tax Amount','46a36ead-8c83-424f-b479-1a5e2151a571','N','Y',0,0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-22 14:34:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000588)
;

-- Apr 22, 2014 2:46:06 PM BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2014-04-22 14:46:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000307
;

-- Apr 22, 2014 2:47:23 PM BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2014-04-22 14:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000305
;

-- Apr 22, 2014 4:50:09 PM BRT
UPDATE LBR_TaxStatus SET Name='10_1',Updated=TO_DATE('2014-04-22 16:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000034
;

-- Apr 22, 2014 4:50:24 PM BRT
UPDATE LBR_TaxStatus SET Name='41_1',Updated=TO_DATE('2014-04-22 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000038
;

-- Apr 22, 2014 4:50:45 PM BRT
UPDATE LBR_TaxStatus SET Name='90_2',Updated=TO_DATE('2014-04-22 16:50:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000043
;

-- Apr 22, 2014 4:52:27 PM BRT
UPDATE LBR_TaxStatus SET Name='10_1',Updated=TO_DATE('2014-04-22 16:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000055
;

-- Apr 22, 2014 4:52:43 PM BRT
UPDATE LBR_TaxStatus SET Name='41_1',Updated=TO_DATE('2014-04-22 16:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000059
;

-- Apr 22, 2014 4:52:54 PM BRT
UPDATE LBR_TaxStatus SET Name='90_2',Updated=TO_DATE('2014-04-22 16:52:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE LBR_TaxStatus_ID=1000064
;

-- Apr 22, 2014 5:15:07 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IPI_TaxStatus@=00 | @LBR_IPI_TaxStatus@=49 | @LBR_IPI_TaxStatus@=50 | @LBR_IPI_TaxStatus@=99',Updated=TO_DATE('2014-04-22 17:15:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000394
;

-- Apr 22, 2014 5:21:00 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IPI_TaxStatus@=00 | @LBR_IPI_TaxStatus@=49 | @LBR_IPI_TaxStatus@=50 | @LBR_IPI_TaxStatus@=99',Updated=TO_DATE('2014-04-22 17:21:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000685
;

-- Apr 22, 2014 5:21:35 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IPI_TaxStatus@=00 | @LBR_IPI_TaxStatus@=49 | @LBR_IPI_TaxStatus@=50 | @LBR_IPI_TaxStatus@=99',Updated=TO_DATE('2014-04-22 17:21:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000540
;

-- Apr 22, 2014 5:22:16 PM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IPI_TaxStatus@=00 | @LBR_IPI_TaxStatus@=49 | @LBR_IPI_TaxStatus@=50 | @LBR_IPI_TaxStatus@=99',Updated=TO_DATE('2014-04-22 17:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000830
;

SELECT lbr_register_migration_script('201404221437.sql') FROM dual
;

-- 
SELECT register_migration_script('202609071011_DFeMonitor.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de set. de 2026 10:11:11 BRT
UPDATE AD_Window SET Name='Monitor de DF-e (Todos)',Updated=TO_TIMESTAMP('2026-09-07 10:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Window_ID=800021
;

-- 7 de set. de 2026 10:11:11 BRT
UPDATE AD_Menu SET Name='Monitor de DF-e (Todos)', Description=NULL, IsActive='Y',Updated=TO_TIMESTAMP('2026-09-07 10:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Menu_ID=800052
;

-- 7 de set. de 2026 10:11:36 BRT
UPDATE AD_Tab SET Name='Monitor de DF-e (Todos)',Updated=TO_TIMESTAMP('2026-09-07 10:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800061
;

-- 7 de set. de 2026 10:11:51 BRT
UPDATE AD_Tab SET Name='Monitor de DF-e (Ciência Pendente)',Updated=TO_TIMESTAMP('2026-09-07 10:11:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800099
;

-- 7 de set. de 2026 10:13:38 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800037,'Monitor de DF-e (NF-e Completas)',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:13:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:13:37','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','N','N',0,0,'N','01a07c00-bd3a-7c0f-a7d8-8c2a652c016d')
;

-- 7 de set. de 2026 10:15:38 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800100,'Monitor de DF-e (NF-e Completas)',800037,10,'N',800064,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:15:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:15:38','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','Y','LBR_DFeType=''NFE'' AND LBR_IsXMLComplete=''Y''','N','N',0,'N','LBR','N','N','01a07c02-9331-7b1a-b68b-49270c87736f','B','N','Y',0)
;

-- 7 de set. de 2026 10:17:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802331,'NFe XML',800100,801674,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:34','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:34','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-5a0f-744c-843d-542382cfb2ac','N',1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802332,'NFe XML',800100,801675,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-5c09-78e1-8857-059ce2388b62','Y',30,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802333,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800100,801676,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:35','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:35','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-5dd3-7f68-90fa-c58cc5fc0048','N',1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802334,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800100,801677,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-5f77-7220-8d2e-3f24969042d3','Y','Y',10,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802335,'Description','Optional short description of the record','A description is limited to 255 characters.',800100,801683,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-612e-789b-8021-db1c4222d700','Y',20,1,5,3,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802336,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800100,801682,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:36','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-62c7-7563-966c-33c45c964674','Y',80,2,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802337,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800100,802123,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:37','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','01a07c04-6465-726d-8e49-481769748504','Y',220,5,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802338,'XML Completo',800100,802112,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:37','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-660e-767f-ba96-bca56e6facad','Y',110,2,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802339,'Tipo de DF-e',800100,802110,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-67fe-7b23-b4a9-e3dc3e118e1c','Y',90,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802340,'Situação do DF-e',800100,802111,'Y',8,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:38','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:38','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-6a06-739b-9cb3-aaff06839503','Y',100,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802341,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800100,802114,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-6b94-7e05-84c2-29a1384b8e19','Y',130,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802342,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800100,802113,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:39','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:39','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-6d2d-746d-9eca-a3c337d7b252','Y',120,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802343,'CNPJ do Emitente',800100,802115,'Y',14,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-6f2e-7c0a-9b4e-f2245e25c8fd','Y',140,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802344,'Razão Social do Emitente',800100,802116,'Y',120,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:40','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-712f-712b-a73d-9d41846d5539','Y',150,1,5,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802345,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800100,802117,'Y',30,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-72cc-70a4-ae31-67359cfa328a','Y',160,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802346,'NF Serie',800100,802118,'Y',3,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-7470-71ce-a750-fcca3829622d','Y',170,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802347,'NFe ID',800100,801685,'Y',255,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:41','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-7632-7477-9101-f6b4bfeadb17','Y',50,1,5,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802348,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800100,802119,'Y',7,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-77f9-75e8-b5e2-5fe121bfc06b','Y',180,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802349,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800100,802120,'Y',22,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:42','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:42','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-79fa-7ac7-b8b0-0e9915444bd5','Y',190,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802350,'NF Model',800100,802121,'Y',2,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-7bfb-77ce-856b-1ca889ccef2d','Y',200,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802351,'NFe Status',800100,802122,'Y',4,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:43','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:43','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-7d8b-7ff8-9a47-9b00d9e71120','Y',210,1,5,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802352,'Schema Name',800100,801686,'Y',250,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-7f26-773f-bd75-6d35350917c2','Y',60,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802353,'NSU',800100,801684,'Y',15,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:44','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:44','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-80cd-7ce8-b2a2-921e9e059880','Y',40,4,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:17:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802354,'Ultima Manifestacao',800100,801687,'Y',6,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-07 10:17:45','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:17:45','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a07c04-832e-7053-8b39-308a9c8e2b1d','Y',70,1,2,1,'N','N','N','N')
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802337
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802350
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802346
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802341
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802342
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802338
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802340
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802339
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802336
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802354
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802352
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802353
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802332
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802335
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802344
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802343
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=40,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802348
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=50,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802345
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=60,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802349
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=70,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802347
;

-- 7 de set. de 2026 10:23:23 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=80,Updated=TO_TIMESTAMP('2026-09-07 10:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802351
;

-- 7 de set. de 2026 10:33:16 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800074,'Monitor de DF-e (NF-e Completas)','W',800037,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:33:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:33:16','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','N','LBR','Y','01a07c12-b8d8-7df7-955a-4de91de37229')
;

-- 7 de set. de 2026 10:33:16 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', getDate(), 10, getDate(), 10,t.AD_Tree_ID, 800074, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800074)
;

-- 7 de set. de 2026 10:33:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=21,Updated=TO_TIMESTAMP('2026-09-07 10:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800074
;

-- 7 de set. de 2026 10:33:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=22,Updated=TO_TIMESTAMP('2026-09-07 10:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800072
;

-- 7 de set. de 2026 10:33:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=23,Updated=TO_TIMESTAMP('2026-09-07 10:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800071
;

-- 7 de set. de 2026 10:33:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=24,Updated=TO_TIMESTAMP('2026-09-07 10:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;

-- 7 de set. de 2026 10:35:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802690,0,'Printed','Indicates if this document / line is printed','The Printed checkbox indicates if this document or line will included when printing.',800064,'IsPrinted','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:35:12','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:35:12','YYYY-MM-DD HH24:MI:SS'),10,399,'Y','N','LBR','N','N','N','Y','01a07c14-7d44-7ea7-aa22-25e4a003df32','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:35:14 BRT
ALTER TABLE LBR_NFeXML ADD IsPrinted CHAR(1) DEFAULT 'N' CHECK (IsPrinted IN ('Y','N')) NOT NULL
;

-- 7 de set. de 2026 10:36:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (802691,0,'Invoice','Invoice Identifier','The Invoice Document.',800064,'C_Invoice_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:36:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:36:28','YYYY-MM-DD HH24:MI:SS'),10,1008,'Y','N','LBR','N','N','N','Y','01a07c15-a57c-7908-9df8-f02373e3ca66','Y',0,'N','N','N','N')
;

-- 7 de set. de 2026 10:36:30 BRT
UPDATE AD_Column SET FKConstraintName='CInvoice_LBRNFeXML', FKConstraintType='N',Updated=TO_TIMESTAMP('2026-09-07 10:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Column_ID=802691
;

-- 7 de set. de 2026 10:36:30 BRT
ALTER TABLE LBR_NFeXML ADD C_Invoice_ID NUMBER(10) DEFAULT NULL 
;

-- 7 de set. de 2026 10:36:30 BRT
ALTER TABLE LBR_NFeXML ADD CONSTRAINT CInvoice_LBRNFeXML FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 7 de set. de 2026 10:40:56 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800106,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:40:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:40:55','YYYY-MM-DD HH24:MI:SS'),10,'Gerar DANFE','Y','LBR_GenerateDanfeFromDFe','N','org.idempierelbr.nfe.process.GenerateDanfeFromDFe','3','LBR',0,0,'N','N','N','01a07c19-bb85-7544-83f5-04f3b9f0c74b','Y')
;

-- 7 de set. de 2026 10:42:28 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800107,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:42:27','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:42:27','YYYY-MM-DD HH24:MI:SS'),10,'Gerar Fatura','N','LBR_GenerateInvoiceFromDFe','N','org.idempierelbr.nfe.process.GenerateInvoiceFromDFe','3','LBR',0,0,'N','Y','N','01a07c1b-22e9-7b9a-9da9-6fa9597ad85c','P')
;

-- 7 de set. de 2026 10:44:01 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800154,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:44:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:44:00','YYYY-MM-DD HH24:MI:SS'),10,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',800107,10,18,170,'N',200097,10,'Y','C_DocTypeTarget_ID','Y','LBR',197,'01a07c1c-8e15-740d-b2cd-9a23521b487f','N','N','D','N')
;

-- 7 de set. de 2026 10:44:49 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800155,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:44:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:44:49','YYYY-MM-DD HH24:MI:SS'),10,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',800107,20,19,'N',10,'Y','C_Charge_ID','Y','LBR',968,'01a07c1d-4ba4-7359-8c6a-0d9e044776fa','N','N','D','N')
;

-- 7 de set. de 2026 10:45:36 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800156,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:45:36','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:45:36','YYYY-MM-DD HH24:MI:SS'),10,'C_PaymentTerm_ID',800107,30,19,'N',52098,22,'N','C_PaymentTerm_ID','N','LBR','01a07c1e-02d7-7832-9a6d-fc45c3e83d61','N','N','D','N')
;

-- 7 de set. de 2026 10:46:30 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800157,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:46:30','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:46:30','YYYY-MM-DD HH24:MI:SS'),10,'SalesRep_ID',800107,40,30,190,'N',10,'N','SalesRep_ID','N','LBR','01a07c1e-d641-7cea-a83f-0ef79566dabf','N','N','D','N')
;

-- 7 de set. de 2026 10:47:07 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800158,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:47:06','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:47:06','YYYY-MM-DD HH24:MI:SS'),10,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',800107,50,18,134,'N',10,'N','User1_ID','Y','LBR',613,'01a07c1f-63f6-7be0-969a-d2c11561e82e','N','N','D','N')
;

-- 7 de set. de 2026 10:48:16 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800159,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:48:15','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:48:15','YYYY-MM-DD HH24:MI:SS'),10,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',800107,60,18,137,'N',10,'N','User2_ID','Y','LBR',614,'01a07c20-7150-7f23-af4c-d3ae75939c83','N','N','D','N')
;

-- 7 de set. de 2026 10:48:53 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800160,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:48:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:48:52','YYYY-MM-DD HH24:MI:SS'),10,'C_Project_ID',800107,70,19,'N',0,'N','C_Project_ID','N','LBR','01a07c21-021c-71b6-95a5-683ac981af54','N','N','D','N')
;

-- 7 de set. de 2026 10:49:19 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800161,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:49:19','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:49:19','YYYY-MM-DD HH24:MI:SS'),10,'Description',800107,80,10,'N',255,'N','Description','N','LBR','01a07c21-6a82-7da5-b1f0-593f1bf37b9f','N','N','D','N')
;

-- 7 de set. de 2026 10:50:11 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800162,0,0,'Y',TO_TIMESTAMP('2026-09-07 10:50:10','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-07 10:50:10','YYYY-MM-DD HH24:MI:SS'),10,'DocAction',800107,90,17,135,'N',219,0,'N','DR','DocAction','N','LBR','01a07c22-3362-76d0-85a0-7c9be9a25b5c','N','N','D','N')
;

-- 7 de set. de 2026 10:51:07 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-07 10:51:07','YYYY-MM-DD HH24:MI:SS'),10,'Gerar DANFE','Y',800009,'Gerar DANFE',TO_TIMESTAMP('2026-09-07 10:51:07','YYYY-MM-DD HH24:MI:SS'),10,'N','01a07c23-0fb8-7fc2-bed8-d0b77d7b7c66','W',800100,800106,10,'LBR')
;

-- 7 de set. de 2026 10:51:41 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-07 10:51:41','YYYY-MM-DD HH24:MI:SS'),10,'Gerar Fatura','Y',800010,'Gerar Fatura',TO_TIMESTAMP('2026-09-07 10:51:41','YYYY-MM-DD HH24:MI:SS'),10,'N','01a07c23-954f-7195-957e-04bf33af1c4f','W',800100,800107,20,'LBR')
;


-- 
SELECT register_migration_script('202609020822_DFeMonitor.sql') FROM dual;

-- 2 de set. de 2026 08:22:49 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (800036,'Monitor de DF-e (Ciência Pendente)',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:22:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:22:49','YYYY-MM-DD HH24:MI:SS'),10,'M','N','LBR','N','N',0,0,'N','01a061db-7df1-7e24-9a9b-2034efe9a970')
;

-- 2 de set. de 2026 08:23:50 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup,MaxQueryRecords) VALUES (800099,'Monitor de DF-e',800036,10,'Y',800064,0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:49','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:49','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','Y','N','N',0,'N','LBR','N','N','01a061dc-6b19-7742-a910-19f56eac6739','B','N','Y',0)
;

-- 2 de set. de 2026 08:23:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802307,'NFe XML',800099,801674,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:50','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-6d16-7ebc-a190-13cc8c4c2edb','N',1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802308,'NFe XML',800099,801675,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:50','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-6f81-782b-a8f7-7d56bdf7a99f','Y',30,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802309,'Tenant','Tenant for this installation.','A Tenant is a company or a legal entity. You cannot share data between Tenants.',800099,801676,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:51','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:51','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7181-7e76-8f60-05f6754425a4','N',1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802310,'Organization','Organizational entity within tenant','An organization is a unit of your tenant or legal entity - examples are store, department. You can share data between organizations.',800099,801677,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-737c-791a-9173-9175f3cf8b25','Y','Y',10,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802311,'Description','Optional short description of the record','A description is limited to 255 characters.',800099,801683,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:52','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:52','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7538-7c5b-9e6e-9ccf0857c148','Y',20,1,5,3,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802312,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800099,801682,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-76f6-7c6f-afe5-bf2982f761b3','Y',80,2,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802313,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',800099,802123,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,'Y','Y','LBR','01a061dc-78b6-7040-bab9-99ec11b4d549','Y',220,5,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802314,'XML Completo',800099,802112,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:53','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7a78-71db-adce-d5b5cfe84152','Y',110,2,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802315,'Tipo de DF-e',800099,802110,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7c36-790b-b93d-bb369f8597d2','Y',90,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802316,'Situação do DF-e',800099,802111,'Y',8,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:54','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:54','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7df5-7529-bad0-d4c6770ac715','Y',100,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802317,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',800099,802114,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-7fb2-7b0d-9c6c-21fcd5e95f3e','Y',130,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802318,'Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',800099,802113,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:55','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:55','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-817b-7867-b360-98dc8ba87461','Y',120,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802319,'CNPJ do Emitente',800099,802115,'Y',14,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-837c-71cd-9f9e-902db13d9c08','Y',140,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802320,'Razão Social do Emitente',800099,802116,'Y',120,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:56','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:56','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8534-72f8-81ab-db7d8d53d605','Y',150,1,5,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802321,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800099,802117,'Y',30,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8713-7da0-b97d-f1c8b943d0bd','Y',160,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802322,'NF Serie',800099,802118,'Y',3,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:57','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:57','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-88f4-74a9-b6d8-205af609f5d7','Y',170,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802323,'NFe ID',800099,801685,'Y',255,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8aac-7fdb-b24d-e8c592990187','Y',50,1,5,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802324,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800099,802119,'Y',7,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8c55-7dc1-a628-54b806cd7692','Y',180,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802325,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',800099,802120,'Y',22,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:58','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8e0c-784b-8740-483d64933f23','Y',190,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:23:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802326,'NF Model',800099,802121,'Y',2,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:59','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-8fec-75b0-8a9c-128f82ac8dd9','Y',200,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:24:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802327,'NFe Status',800099,802122,'Y',4,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:23:59','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:23:59','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-91c7-7ca4-8c35-443e3f195f7a','Y',210,1,5,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:24:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802328,'Schema Name',800099,801686,'Y',250,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:24:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:24:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-937c-74b9-8634-a384792ce940','Y',60,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:24:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802329,'NSU',800099,801684,'Y',15,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:24:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:24:00','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-957a-792c-a5e7-c9785e410da0','Y',40,4,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:24:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (802330,'Ultima Manifestacao',800099,801687,'Y',6,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2026-09-02 08:24:01','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:24:01','YYYY-MM-DD HH24:MI:SS'),10,'N','Y','LBR','01a061dc-977a-7ed7-82a6-3921de82161a','Y',70,1,2,1,'N','N','N','N')
;

-- 2 de set. de 2026 08:24:57 BRT
UPDATE AD_Tab SET WhereClause='LBR_DFeType=''NFE'' AND LBR_DFeStatus=''NEW'' AND LBR_IsXMLComplete=''N'' AND LBR_UltimaManifestacao IS NULL',Updated=TO_TIMESTAMP('2026-09-02 08:24:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800099
;

-- 2 de set. de 2026 08:25:41 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-09-02 08:25:41','YYYY-MM-DD HH24:MI:SS'),10,'LBR_ManifestNFeXML','Y',800008,'LBR_ManifestNFeXML',TO_TIMESTAMP('2026-09-02 08:25:41','YYYY-MM-DD HH24:MI:SS'),10,'N','01a061de-1de5-7824-9527-0e7d53df1bb1','W',800099,800101,10,'LBR')
;

-- 2 de set. de 2026 08:25:54 BRT
UPDATE AD_Tab SET IsSingleRow='N',Updated=TO_TIMESTAMP('2026-09-02 08:25:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tab_ID=800099
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802313
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802326
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802322
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802317
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802318
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802314
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802316
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802315
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802312
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802330
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802328
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802329
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802308
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802311
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='N', SeqNoGrid=0,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802310
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=10,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802320
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802319
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802324
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=40,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802321
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=50,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802325
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=60,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802323
;

-- 2 de set. de 2026 08:28:39 BRT
UPDATE AD_Field SET IsDisplayedGrid='Y', SeqNoGrid=70,Updated=TO_TIMESTAMP('2026-09-02 08:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Field_ID=802327
;

-- 2 de set. de 2026 08:29:14 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800073,'Monitor de DF-e (Ciência Pendente)','W',800036,0,0,'Y',TO_TIMESTAMP('2026-09-02 08:29:14','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-09-02 08:29:14','YYYY-MM-DD HH24:MI:SS'),10,'N','N','N','LBR','Y','01a061e1-5e62-7bab-98fb-a47ea5798536')
;

-- 2 de set. de 2026 08:29:14 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 10, statement_timestamp(), 10,t.AD_Tree_ID, 800073, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800073)
;

-- 2 de set. de 2026 08:29:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=20,Updated=TO_TIMESTAMP('2026-09-02 08:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800073
;

-- 2 de set. de 2026 08:29:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=21,Updated=TO_TIMESTAMP('2026-09-02 08:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800072
;

-- 2 de set. de 2026 08:29:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=22,Updated=TO_TIMESTAMP('2026-09-02 08:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800071
;

-- 2 de set. de 2026 08:29:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=23,Updated=TO_TIMESTAMP('2026-09-02 08:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Tree_ID=10 AND Node_ID=800070
;


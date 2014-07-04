-- Jun 30, 2014 10:55:22 AM BRT
-- Creating processes to generate/link/unlink Nota Fiscal
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000006,'N','N','e6b71e86-1f7c-49bd-8ad9-79a0746ae7b0','3','N','N',55,37,'Y','LBR','Link Nota Fiscal','Link Nota Fiscal',0,0,'Y',0,'org.idempierelbr.nfe.process.LinkNotaFiscal','LBR_ProcLinkNotaFiscal',0,TO_TIMESTAMP('2014-06-30 10:55:22','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-30 10:55:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 10:57:30 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000169,1000002,'855c87e6-b29c-4ab3-a381-bc9c8616fc81','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',1000006,30,'Y','Brazilian Fiscal Invoice (Nota Fiscal)','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier',22,'Y',10,'Y',0,TO_TIMESTAMP('2014-06-30 10:57:30','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,1000058,'LBR',TO_TIMESTAMP('2014-06-30 10:57:30','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 10:58:38 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',558,1000003,'5ca61bf3-752d-41d5-81cf-0fabfca25d74','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1000006,30,'N','Order','C_Order_ID','Order',22,'Y',20,'Y',0,TO_TIMESTAMP('2014-06-30 10:58:38','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,290,'LBR',TO_TIMESTAMP('2014-06-30 10:58:38','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:03:11 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1008,1000004,'91023637-264b-41b7-90bc-7d155b49bb0b','The Invoice Document.',1000006,30,'N','Invoice','C_Invoice_ID','Invoice Identifier',22,'Y',30,'Y',0,TO_TIMESTAMP('2014-06-30 11:03:11','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,336,'LBR',TO_TIMESTAMP('2014-06-30 11:03:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:03:57 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',2412,1000005,'f1940319-04b9-4b2a-b70f-3c0ce5645fa5','A Return Material Authorization may be required to accept returns and to create Credit Memos',1000006,30,'N','RMA','M_RMA_ID','Return Material Authorization',22,'Y',40,'Y',0,TO_TIMESTAMP('2014-06-30 11:03:57','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,53306,'LBR',TO_TIMESTAMP('2014-06-30 11:03:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:07:03 AM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000023,'N','Y','N',1000006,'LBR','Y','Link Brazilian Fiscal Invoice','Link Brazilian Fiscal Invoice to other Documents','63c5ee18-91ba-49eb-ad3a-a3b960b8866e','P','Y',0,TO_TIMESTAMP('2014-06-30 11:07:03','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-06-30 11:07:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:07:03 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000023, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000023)
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- Jun 30, 2014 11:07:30 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- Jun 30, 2014 11:07:36 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jun 30, 2014 11:07:36 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Jun 30, 2014 11:07:36 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- Jun 30, 2014 11:07:36 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Jun 30, 2014 11:07:36 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- Jun 30, 2014 11:09:37 AM BRT
UPDATE AD_Process SET Description='Link Nota Fiscal to other Documents',Updated=TO_TIMESTAMP('2014-06-30 11:09:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000006
;

-- Jun 30, 2014 11:09:37 AM BRT
UPDATE AD_Menu SET Name='Link Nota Fiscal', Description='Link Nota Fiscal to other Documents', IsActive='Y',Updated=TO_TIMESTAMP('2014-06-30 11:09:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1000023
;

-- Jun 30, 2014 11:12:28 AM BRT
UPDATE AD_Process SET Help='This process allows you to link a Brazilian Fiscal Invoice to other Documents, like an Order, Invoice, RMA, etc.',Updated=TO_TIMESTAMP('2014-06-30 11:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000006
;

-- Jun 30, 2014 11:23:22 AM BRT
INSERT INTO AD_Process (CopyFromProcess,Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N','This process allows you to unlink a Brazilian Fiscal Invoice from other Documents, like Order, Invoice, RMA, etc.',1000007,'N','N','c216a892-154d-425d-84c9-7f3968a922d9','3','N','N',55,37,'Y','LBR','Unlink Nota Fiscal from other Documents','Unlink Nota Fiscal',0,0,'Y',0,'org.idempierelbr.nfe.process.UnlinkNotaFiscal','LBR_ProcUnlinkNotaFiscal',0,TO_TIMESTAMP('2014-06-30 11:23:22','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-06-30 11:23:22','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:24:36 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000169,1000006,'a52cd1ec-4343-4d04-b02c-76132948cee4','The Brazilian Fiscal Invoice (Nota Fiscal) Document.',1000007,30,'Y','Brazilian Fiscal Invoice (Nota Fiscal)','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier',22,'Y',10,'Y',0,TO_TIMESTAMP('2014-06-30 11:24:36','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,1000058,'LBR',TO_TIMESTAMP('2014-06-30 11:24:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:28:04 AM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,"action",IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000024,'N','Y','N',1000007,'LBR','Y','Unlink Nota Fiscal','Unlink Nota Fiscal from other Documents','70686329-dd82-4e77-882b-8b311689554e','P','Y',0,TO_TIMESTAMP('2014-06-30 11:28:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_TIMESTAMP('2014-06-30 11:28:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 30, 2014 11:28:04 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 0, statement_timestamp(), 0,t.AD_Tree_ID, 1000024, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000024)
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- Jun 30, 2014 11:28:10 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- Jul 1, 2014 12:42:34 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_CreateNotaFiscal',1000282,'Create Brazilian Fiscal Invoice','Create Brazilian Fiscal Invoice','6e98cb24-b610-4421-b77d-7309bf005416',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-07-01 12:42:34','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-07-01 12:42:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 1, 2014 12:46:43 PM BRT
INSERT INTO AD_Process (Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('The document should be correct and completed.',1000008,'N','N','67a75537-387b-403c-8fb8-09ed1bd318dc','1','N','N',0,0,'Y','LBR','Create and process Brazilian Fiscal Invoice from this document','Generate Brazilian Fiscal Invoice',0,0,'Y',0,'org.idempierelbr.nfe.process.CreateNotaFiscal','LBR_ProcCreateNotaFiscal',0,TO_TIMESTAMP('2014-07-01 12:46:43','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-07-01 12:46:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 1, 2014 12:47:03 PM BRT
UPDATE AD_Process SET Description='Create and process Brazilian Fiscal Invoice from source document',Updated=TO_TIMESTAMP('2014-07-01 12:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000008
;

-- Jul 1, 2014 12:50:15 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',287,1000007,'0bd3279c-fd79-4d3f-b1b2-438318b473c4','You find the current status in the Document Status field. The options are listed in a popup',1000008,17,219,'N','Document Action','DocAction','The targeted status of the document',0,'Y',10,'CO','Y',0,TO_TIMESTAMP('2014-07-01 12:50:15','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,135,'LBR',TO_TIMESTAMP('2014-07-01 12:50:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 1, 2014 12:52:41 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000958,'N','N','N',0,'N',1,'N','N',1000008,'N','Y','e9e7a0f9-0549-473b-9d9d-abcb65327f91','Y','LBR_CreateNotaFiscal','Create Brazilian Fiscal Invoice','Y',TO_TIMESTAMP('2014-07-01 12:52:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-01 12:52:41','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',1000282,28,259,0,'LBR')
;

-- Jul 1, 2014 12:54:14 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',186,0,'N','N',570,'Y',1001703,'N','LBR','Create Brazilian Fiscal Invoice','c01ec86b-f66c-428a-988f-48c71026ba66','N','Y',0,0,0,TO_TIMESTAMP('2014-07-01 12:54:14','YYYY-MM-DD HH24:MI:SS'),'Y','N',580,1,'N',0,1,1,'N','N',1000958,TO_TIMESTAMP('2014-07-01 12:54:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 1, 2014 12:56:07 PM BRT
ALTER TABLE C_Order ADD COLUMN LBR_CreateNotaFiscal CHAR(1) DEFAULT NULL 
;

-- Jul 1, 2014 12:58:06 PM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2014-07-01 12:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000958
;

-- Jul 3, 2014 9:03:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000959,'N','N','N',0,'N',10,'N','N','N','Y','d7fe92b7-81a2-4066-a164-dd6538f7f449','N','C_OrderLine_ID','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.','Sales Order Line','Y',TO_TIMESTAMP('2014-07-03 09:03:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 09:03:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',561,19,1000034,0,'LBR')
;

-- Jul 3, 2014 9:04:04 AM BRT
UPDATE AD_Column SET FKConstraintName='COrderLine_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-07-03 09:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000959
;

-- Jul 3, 2014 9:04:04 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_OrderLine_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 3, 2014 9:04:04 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT COrderLine_LBRNotaFiscalLine FOREIGN KEY (C_OrderLine_ID) REFERENCES c_orderline(c_orderline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jul 3, 2014 9:04:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000960,'N','N','N',0,'N',22,'N','N','N','Y','ee602488-ae7c-497c-a744-ffc8e28eb6b2','N','C_InvoiceLine_ID','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.','Invoice Line','Y',TO_TIMESTAMP('2014-07-03 09:04:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 09:04:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1076,30,1000034,0,'LBR')
;

-- Jul 3, 2014 9:04:30 AM BRT
UPDATE AD_Column SET FKConstraintName='CInvoiceLine_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-07-03 09:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000960
;

-- Jul 3, 2014 9:04:30 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_InvoiceLine_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 3, 2014 9:04:30 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CInvoiceLine_LBRNotaFiscalLine FOREIGN KEY (C_InvoiceLine_ID) REFERENCES c_invoiceline(c_invoiceline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jul 3, 2014 9:04:51 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000961,'N','N','N',0,'N',10,'N','N','N','Y','54e99fd4-0d49-4d09-9dd2-73d91d773f38','N','M_RMALine_ID','Return Material Authorization Line','Detail information about the returned goods','RMA Line','Y',TO_TIMESTAMP('2014-07-03 09:04:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 09:04:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2413,19,1000034,0,'LBR')
;

-- Jul 3, 2014 9:04:53 AM BRT
UPDATE AD_Column SET FKConstraintName='MRMALine_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-07-03 09:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000961
;

-- Jul 3, 2014 9:04:53 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN M_RMALine_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 3, 2014 9:04:53 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT MRMALine_LBRNotaFiscalLine FOREIGN KEY (M_RMALine_ID) REFERENCES m_rmaline(m_rmaline_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jul 3, 2014 9:49:38 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO | @DocStatus@=CL',Updated=TO_TIMESTAMP('2014-07-03 09:49:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001703
;

-- Jul 3, 2014 9:58:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000962,'N','N','N',0,'N',1,'N','N',1000008,'N','Y','d75dd148-e9fb-4a7b-9c9f-fd72cf4e3e5c','Y','LBR_CreateNotaFiscal','Create Brazilian Fiscal Invoice','Y',TO_TIMESTAMP('2014-07-03 09:58:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 09:58:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',0,'N','N','N',1000282,28,318,0,'LBR')
;

-- Jul 3, 2014 9:58:41 AM BRT
ALTER TABLE C_Invoice ADD COLUMN LBR_CreateNotaFiscal CHAR(1) DEFAULT NULL 
;

-- Jul 3, 2014 10:02:45 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',263,0,'N','N',460,'Y',1001704,'N','@DocStatus@=CO | @DocStatus@=CL','LBR','Create Brazilian Fiscal Invoice','54f3e669-1528-47bc-8c51-67b1f7e85b1a','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 10:02:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',460,1,'N',0,1,1,'N','N',1000962,TO_TIMESTAMP('2014-07-03 10:02:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 10:08:28 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',290,0,'N','N',440,'Y',1001705,'N','@DocStatus@=CO | @DocStatus@=CL','LBR','Create Brazilian Fiscal Invoice','50f375e4-9aa0-4ee5-8753-cb845aa9169b','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 10:08:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',440,1,'N',0,1,1,'N','N',1000962,TO_TIMESTAMP('2014-07-03 10:08:28','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 10:09:32 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',294,0,'N','N',490,'Y',1001706,'N','@DocStatus@=CO | @DocStatus@=CL','LBR','Create Brazilian Fiscal Invoice','b3049526-2062-4a7e-ab09-8053f56f31d9','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 10:09:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',500,1,'N',0,1,1,'N','N',1000958,TO_TIMESTAMP('2014-07-03 10:09:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 10:10:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000963,'N','N','N',0,'N',1,'N','N',1000008,'N','Y','7b8b06e2-8bc3-48cc-8231-1799cbf56df5','Y','LBR_CreateNotaFiscal','Create Brazilian Fiscal Invoice','Y',TO_TIMESTAMP('2014-07-03 10:10:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 10:10:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','Y',0,'N','N','N',1000282,28,661,0,'LBR')
;

-- Jul 3, 2014 10:10:41 AM BRT
ALTER TABLE M_RMA ADD COLUMN LBR_CreateNotaFiscal CHAR(1) DEFAULT NULL 
;

-- Jul 3, 2014 10:12:27 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',628,0,'N','N',180,'Y',1001707,'N','@DocStatus@=CO | @DocStatus@=CL','LBR','Create Brazilian Fiscal Invoice','7781f44e-7858-4e71-921f-2439c4f254cb','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 10:12:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',170,1,'N',0,1,1,'N','N',1000963,TO_TIMESTAMP('2014-07-03 10:12:27','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 10:13:26 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',53280,0,'N','N',180,'Y',1001708,'N','@DocStatus@=CO | @DocStatus@=CL','LBR','Create Brazilian Fiscal Invoice','b59ccdd7-364f-446b-bfb7-493b1894d8c4','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 10:13:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',170,1,'N',0,1,1,'N','N',1000963,TO_TIMESTAMP('2014-07-03 10:13:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 1:13:04 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_C_DocTypeNF_ID',1000283,'The Document Type for Brazilian Fiscal Invoice indicates the document type that will be used when an Brazilian Fiscal Invoice is generated from this document. This field will display only for some base document type.','Document Type for Brazilian Fiscal Invoice','Document type used for Brazilian Fiscal Invoice generated from this document','Doc Type NF','966b9fef-b0b7-4342-b502-d4840335ff27',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2014-07-03 13:13:04','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-07-03 13:13:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 1:19:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000964,'N','N','N',0,'N',22,'N','N','N','Y','99508070-79e7-4a22-874c-ae24800aeb48','Y','LBR_C_DocTypeNF_ID','Document type used for Brazilian Fiscal Invoice generated from this document','The Document Type for Brazilian Fiscal Invoice indicates the document type that will be used when an Brazilian Fiscal Invoice is generated from this document. This field will display only for some base document type.','Document Type for Brazilian Fiscal Invoice','Y',TO_TIMESTAMP('2014-07-03 13:19:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 13:19:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000283,18,170,217,1000006,0,'LBR')
;

-- Jul 3, 2014 1:19:46 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRCDocTypeNF_CDocType', FKConstraintType='N',Updated=TO_TIMESTAMP('2014-07-03 13:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000964
;

-- Jul 3, 2014 1:19:46 PM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_C_DocTypeNF_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 3, 2014 1:19:47 PM BRT
ALTER TABLE C_DocType ADD CONSTRAINT LBRCDocTypeNF_CDocType FOREIGN KEY (LBR_C_DocTypeNF_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jul 3, 2014 1:22:40 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',167,0,'N','N',390,'Y',1001709,'N','The Document Type for Brazilian Fiscal Invoice indicates the document type that will be used when an Brazilian Fiscal Invoice is generated from this document. This field will display only for some base document type.','@DocBaseType@=''SOO'' | @DocBaseType@=''POO''','LBR','Document type used for Brazilian Fiscal Invoice generated from this document','Document Type for Brazilian Fiscal Invoice','d06cc289-1a96-4f2a-9195-d672cfe5aaa8','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 13:22:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',330,1,'N',0,1,1,'N','N',1000964,TO_TIMESTAMP('2014-07-03 13:22:40','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 1:35:17 PM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' | @DocBaseType@=''POO'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARC'' | @DocBaseType@=''API'' | @DocBaseType@=''ARI'' ',Updated=TO_TIMESTAMP('2014-07-03 13:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001709
;

-- Jul 3, 2014 3:59:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000965,'N','N','N',0,'N',1,'N','N','N','Y','b967bb61-0197-4f30-aa58-b1cb06058cfe','Y','LBR_NFeIndFinal','Is End User','Y',TO_TIMESTAMP('2014-07-03 15:59:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 15:59:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000184,17,1000034,217,0,'LBR')
;

-- Jul 3, 2014 3:59:08 PM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFeIndFinal CHAR(1) DEFAULT NULL 
;

-- Jul 3, 2014 4:00:01 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000966,'N','N','N',0,'N',1,'N','N','N','Y','e1f7fc2c-49a5-4768-a4e6-f5847e086ae4','Y','LBR_NFeIndPres','Face-to-Face Indicator','Y',TO_TIMESTAMP('2014-07-03 16:00:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-07-03 16:00:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000185,17,1000035,217,0,'LBR')
;

-- Jul 3, 2014 4:00:06 PM BRT
ALTER TABLE C_DocType ADD COLUMN LBR_NFeIndPres CHAR(1) DEFAULT NULL 
;

-- Jul 3, 2014 4:09:13 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',167,0,'N','N',390,'Y',1001710,'N','LBR','Is End User','9c71287c-1144-47d3-897e-eaf972e49c0d','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 16:09:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',340,1,'N',0,1,1,'N','N',1000965,TO_TIMESTAMP('2014-07-03 16:09:13','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 4:09:43 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,Created) VALUES (0,'N',167,0,'N','N',400,'Y',1001711,'N','LBR','Face-to-Face Indicator','a37e5868-a186-46e6-9ef4-9710547a41f7','N','Y',0,0,0,TO_TIMESTAMP('2014-07-03 16:09:43','YYYY-MM-DD HH24:MI:SS'),'Y','Y',350,1,'N',0,1,1,'N','N',1000966,TO_TIMESTAMP('2014-07-03 16:09:43','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 3, 2014 4:13:16 PM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''', XPosition=4, ColumnSpan=2,Updated=TO_TIMESTAMP('2014-07-03 16:13:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001711
;

-- Jul 3, 2014 4:13:25 PM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''NFB''', ColumnSpan=2,Updated=TO_TIMESTAMP('2014-07-03 16:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001710
;

-- Jul 4, 2014 10:54:04 AM BRT
UPDATE AD_Field SET SeqNo=175,Updated=TO_TIMESTAMP('2014-07-04 10:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001709
;

SELECT lbr_register_migration_script('201406301200.sql') FROM dual
;

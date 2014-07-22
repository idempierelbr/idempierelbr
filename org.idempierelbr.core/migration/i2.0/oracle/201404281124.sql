SET SQLBLANKLINES ON
SET DEFINE OFF

-- Apr 28, 2014 9:49:26 AM BRT
-- Table/Window/Menu: Brazilian Fiscal Invoice (Nota Fiscal)
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,AD_Menu_UU,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000016,'Y','N','N','LBR','N','Tax & Fiscal Management','ef2b219b-3f31-47a3-9ee2-e1ff3a667ce8','Y',0,TO_DATE('2014-04-28 09:49:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-28 09:49:26','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Apr 28, 2014 9:49:26 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000016, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000016)
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Apr 28, 2014 9:49:48 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Apr 28, 2014 10:15:37 AM BRT
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Brazilian Fiscal Invoice',1000014,'df8ad221-e4c0-4415-80cb-4be3f5af2af3',TO_DATE('2014-04-28 10:15:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-28 10:15:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Apr 28, 2014 10:17:48 AM BRT
UPDATE AD_Window SET Help='The Brazilian Fiscal Invoice Window allows you to display and enter fiscal invoices for a customer or vendor.  Invoices can also be generated from Order, Invoices or RMA''s', Description='Customer & Vendor Brazilian Fiscal Invoice Entry',Updated=TO_DATE('2014-04-28 10:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000014
;

-- Apr 28, 2014 10:22:05 AM BRT
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000014,1000017,'N','Y','N','LBR','Y','Brazilian Fiscal Invoice','Customer & Vendor Brazilian Fiscal Invoice Entry','48ca843e-10e6-4155-86ef-8e93a5a73a79','W','Y',0,TO_DATE('2014-04-28 10:22:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-04-28 10:22:05','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Apr 28, 2014 10:22:05 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000017, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000017)
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Apr 28, 2014 10:22:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- Apr 28, 2014 12:46:08 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000032,'LBR_NFE_DestionationType','LBR','29aefb14-f082-4dc3-b659-231e0c223f0d','N','L',0,0,TO_DATE('2014-04-28 12:46:08','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-04-28 12:46:08','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Apr 28, 2014 12:46:43 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000130,1000032,'c00fbafc-b7f9-4786-9645-a4afb4bebe94','1',TO_DATE('2014-04-28 12:46:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:46:43','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Operacao Interna')
;

-- Apr 28, 2014 12:46:55 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000131,1000032,'2f3a928a-3042-4d97-b016-cdea077ef02d','2',TO_DATE('2014-04-28 12:46:55','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:46:55','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Operacao Interestadual')
;

-- Apr 28, 2014 12:47:04 PM BRT
UPDATE AD_Ref_List SET EntityType='LBR',Updated=TO_DATE('2014-04-28 12:47:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000131
;

-- Apr 28, 2014 12:47:24 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000132,1000032,'c6dd6f44-c62b-4e92-bff9-4c997e5dff7e','3',TO_DATE('2014-04-28 12:47:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:47:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Operacao com Exterior')
;

-- Apr 28, 2014 12:58:13 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000033,'LBR_FinNFe','LBR','85869f17-12ba-49e3-abc3-0965b2e9a21c','N','L',0,0,TO_DATE('2014-04-28 12:58:13','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-04-28 12:58:13','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Apr 28, 2014 12:58:53 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000133,1000033,'8cdae42d-0be5-4f54-885c-2804f5b64e80','1',TO_DATE('2014-04-28 12:58:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:58:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF-e Normal')
;

-- Apr 28, 2014 12:59:05 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000134,1000033,'a9c99afe-1a7c-4f85-b34c-06fa72e9404c','2',TO_DATE('2014-04-28 12:59:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:59:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF-e Complementar')
;

-- Apr 28, 2014 12:59:17 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000135,1000033,'3d952693-1d3e-45bd-bd52-dc42e9338552','3',TO_DATE('2014-04-28 12:59:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:59:17','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF-e de Ajuste')
;

-- Apr 28, 2014 12:59:39 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000136,1000033,'a351a0f7-acdb-40d2-bfae-841b54392a04','4',TO_DATE('2014-04-28 12:59:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 12:59:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Devolucao/Retorno')
;

-- Apr 28, 2014 1:03:46 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000034,'LBR_NFE_IndFinal','LBR','d29d50f0-ea9b-4190-aebd-7e753c1dcc01','N','L',0,0,TO_DATE('2014-04-28 13:03:46','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-04-28 13:03:46','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Apr 28, 2014 1:04:40 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000137,1000034,'f44987d6-b448-4c41-9cc0-599ee4223e92','0',TO_DATE('2014-04-28 13:04:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:04:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'No')
;

-- Apr 28, 2014 1:04:51 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000138,1000034,'f3cfcf6e-0a43-4cae-bf7c-914a3171f624','1',TO_DATE('2014-04-28 13:04:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:04:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'End Consumer')
;

-- Apr 28, 2014 1:05:43 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000035,'LBR_NFE_IndPres','LBR','351b3dee-8f15-4881-8e1e-af15d3669937','N','L',0,0,TO_DATE('2014-04-28 13:05:43','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-04-28 13:05:43','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Apr 28, 2014 1:06:20 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000139,1000035,'8ecd742f-e554-4cc3-8f2f-125b013a0f78','0',TO_DATE('2014-04-28 13:06:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:06:20','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Nao se aplica')
;

-- Apr 28, 2014 1:06:32 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000140,1000035,'c24ac5c3-a88f-4bdb-b39e-6ab38b0b735c','1',TO_DATE('2014-04-28 13:06:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:06:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Operacao presencial')
;

-- Apr 28, 2014 1:06:48 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000141,1000035,'ba88fd6d-eb24-49bd-a7f8-e4de00bf50c7','2',TO_DATE('2014-04-28 13:06:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:06:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Internet')
;

-- Apr 28, 2014 1:07:02 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000142,1000035,'42bf80b1-d09c-42c6-9f56-ddf0fa15c2b7','3',TO_DATE('2014-04-28 13:07:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:07:02','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Teleatendimento')
;

-- Apr 28, 2014 1:07:33 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000143,1000035,'33c9ae97-7c38-4037-a20b-e473acf2c2b2','4',TO_DATE('2014-04-28 13:07:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:07:33','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NFC-e com entrega em domicilio')
;

-- Apr 28, 2014 1:07:53 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000144,1000035,'c55231a8-2347-4b90-9cd5-a148f8b2fb7c','9',TO_DATE('2014-04-28 13:07:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-04-28 13:07:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Operacao nao presencial')
;

-- May 5, 2014 12:22:33 PM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000033,'N','N','Y','LBR','L','4199f411-1ed8-4e67-9efc-1b1cd0af19c1','Y','Y','LBR_NotaFiscal','Nota Fiscal Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','Y',0,0,TO_DATE('2014-05-05 12:22:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 12:22:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 5, 2014 12:22:34 PM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000037,'Table LBR_NotaFiscal','LBR_NotaFiscal',1,'944aa4e9-60c4-4cb3-aae8-5dfd5649b58f',TO_DATE('2014-05-05 12:22:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 12:22:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 5, 2014 12:33:40 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscal_ID',1000169,'The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Nota Fiscal','9dcbc482-1130-41e7-ad99-152bb67e2db4',TO_DATE('2014-05-05 12:33:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 12:33:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 12:33:46 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscal_UU',1000170,'The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Nota Fiscal','8efef898-0afc-4fe6-aaa6-2717384d4816',TO_DATE('2014-05-05 12:33:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 12:33:46','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 12:34:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000597,'N','N','N',0,'N',22,'N','N','N','Y','4fa92c02-b2d3-4afe-8c68-9465745ab8c6','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-05-05 12:34:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:34:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000033,129,0,'LBR')
;

-- May 5, 2014 12:34:26 PM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 12:34:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000597
;

-- May 5, 2014 12:34:26 PM BRT
CREATE TABLE LBR_NotaFiscal (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- May 5, 2014 12:34:27 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT ADClient_LBRNotaFiscal FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 12:34:47 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000598,'N','N','N',0,'N',22,'N','N','N','Y','d642aae2-79ca-456e-bdae-d80abfbef2e5','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-05-05 12:34:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:34:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000033,104,0,'LBR')
;

-- May 5, 2014 12:34:51 PM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 12:34:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000598
;

-- May 5, 2014 12:34:51 PM BRT
ALTER TABLE LBR_NotaFiscal ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 12:34:51 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT ADOrg_LBRNotaFiscal FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 12:36:08 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000599,'Y','N','N',0,'N',22,'N','Y','N','Y','7ddf8b79-d8c4-4364-965f-3088073737eb','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','N',TO_DATE('2014-05-05 12:36:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:36:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000169,13,1000033,0,'LBR')
;

-- May 5, 2014 12:36:12 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NotaFiscal_ID NUMBER(10) NOT NULL
;

-- May 5, 2014 12:36:12 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBR_NotaFiscal_Key PRIMARY KEY (LBR_NotaFiscal_ID)
;

-- May 5, 2014 12:36:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000600,'N','N','N',0,'N',36,'N','N','N','Y','d9efca92-8ab9-48f4-96ee-3d6bc83b7fab','N','LBR_NotaFiscal_UU','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','N',TO_DATE('2014-05-05 12:36:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:36:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000170,10,1000033,0,'LBR')
;

-- May 5, 2014 12:36:47 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NotaFiscal_UU VARCHAR2(36) DEFAULT NULL 
;

-- May 5, 2014 12:36:47 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBR_NotaFiscal_UU_idx UNIQUE (LBR_NotaFiscal_UU)
;

-- May 5, 2014 12:37:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000601,'N','N','N',0,'N',7,'N','N','N','Y','655545e9-40f5-41f0-8947-831844c7696f','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-05-05 12:37:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:37:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000033,0,'LBR')
;

-- May 5, 2014 12:37:20 PM BRT
ALTER TABLE LBR_NotaFiscal ADD Created DATE DEFAULT NULL 
;

-- May 5, 2014 12:37:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000602,'N','N','N',0,'N',22,'N','N','N','Y','fe7b4add-d9c1-4636-8325-90cc46d35326','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-05-05 12:37:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:37:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000033,0,'LBR')
;

-- May 5, 2014 12:37:39 PM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 12:37:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000602
;

-- May 5, 2014 12:37:39 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 12:37:39 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CreatedBy_LBRNotaFiscal FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 12:37:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000603,'N','N','N',0,'N',7,'N','N','N','Y','fa798c57-079b-4fa1-ad06-3c110a627a32','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-05-05 12:37:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:37:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000033,0,'LBR')
;

-- May 5, 2014 12:37:59 PM BRT
ALTER TABLE LBR_NotaFiscal ADD Updated DATE DEFAULT NULL 
;

-- May 5, 2014 12:38:11 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000604,'N','N','N',0,'N',22,'N','N','N','Y','2e3c5906-11f9-4334-9975-fafc76eb6f55','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-05-05 12:38:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:38:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000033,0,'LBR')
;

-- May 5, 2014 12:38:15 PM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 12:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000604
;

-- May 5, 2014 12:38:15 PM BRT
ALTER TABLE LBR_NotaFiscal ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 12:38:15 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT UpdatedBy_LBRNotaFiscal FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 12:40:02 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000605,'Y','N','N',0,'N',1,'N','N','N','Y','420a797c-e8b0-485b-b5e8-4f1ef84df5a5','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-05-05 12:40:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:40:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000033,0,'LBR')
;

-- May 5, 2014 12:40:06 PM BRT
ALTER TABLE LBR_NotaFiscal ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 5, 2014 12:41:27 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000606,'Y','N','N',0,'N',22,'N','N','N','Y','f57a01cf-c74b-414d-9270-2d2e95030488','N','C_DocType_ID','Document type or rules','0','The Document Type determines document sequence and processing rules','Document Type','Y',TO_DATE('2014-05-05 12:41:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:41:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',196,19,1000033,0,'LBR')
;

-- May 5, 2014 12:41:31 PM BRT
UPDATE AD_Column SET FKConstraintName='CDocType_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 12:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000606
;

-- May 5, 2014 12:41:31 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_DocType_ID NUMBER(10) DEFAULT 0 NOT NULL
;

-- May 5, 2014 12:41:31 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CDocType_LBRNotaFiscal FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 12:42:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000607,'Y','N','N',0,'N',30,'Y','N','N','Y','44755fad-8d63-4fa7-aeb7-fa2392339a86','N','DocumentNo','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No','Y',TO_DATE('2014-05-05 12:42:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:42:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',290,10,1000033,0,'LBR')
;

-- May 5, 2014 12:42:40 PM BRT
ALTER TABLE LBR_NotaFiscal ADD DocumentNo VARCHAR2(30) NOT NULL
;

-- May 5, 2014 12:44:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000608,'Y','N','N',0,'N',2,'N','N','N','Y','eee4882d-51b9-429e-aa20-610bcc51e79f','Y','DocAction','The targeted status of the document','CO','You find the current status in the Document Status field. The options are listed in a popup','Document Action','Y',TO_DATE('2014-05-05 12:44:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:44:07','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',287,28,135,1000033,0,'LBR')
;

-- May 5, 2014 12:44:11 PM BRT
ALTER TABLE LBR_NotaFiscal ADD DocAction CHAR(2) DEFAULT 'CO' NOT NULL
;

-- May 5, 2014 12:44:58 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000609,'Y','N','N',0,'N',2,'N','N','N','Y','d0286fa6-6894-473a-970f-43a75499cef0','Y','DocStatus','The current status of the document','DR','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status','Y',TO_DATE('2014-05-05 12:44:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:44:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',289,17,131,1000033,0,'LBR')
;

-- May 5, 2014 12:45:02 PM BRT
ALTER TABLE LBR_NotaFiscal ADD DocStatus VARCHAR2(2) DEFAULT 'DR' NOT NULL
;

-- May 5, 2014 12:46:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000610,'Y','N','N',0,'N',1,'N','N','N','Y','a090bb11-5e3b-4d01-b9da-87ff0877deb6','Y','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed','Y',TO_DATE('2014-05-05 12:46:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 12:46:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000033,0,'LBR')
;

-- May 5, 2014 12:46:24 PM BRT
ALTER TABLE LBR_NotaFiscal ADD Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL
;

-- May 5, 2014 1:52:39 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000036,'LBR_NFE_PaymentRule','LBR','c41b7622-1b89-456f-a11c-48cc17589d2c','N','L',0,0,TO_DATE('2014-05-05 13:52:39','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-05-05 13:52:39','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 5, 2014 1:53:42 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000145,1000036,'881b02e8-d0c7-4087-a2ff-42c0e2ea2d9d','0',TO_DATE('2014-05-05 13:53:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 13:53:42','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Pagamento a vista')
;

-- May 5, 2014 1:54:00 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000146,1000036,'a35fbc29-d417-4929-814d-f3ffbcbee424','1',TO_DATE('2014-05-05 13:54:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 13:54:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Pagamento a prazo')
;

-- May 5, 2014 1:54:10 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000147,1000036,'72c956d0-871c-45c9-9f36-9eed377bd45a','2',TO_DATE('2014-05-05 13:54:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 13:54:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Outros')
;

-- May 5, 2014 1:59:31 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000037,'LBR_NFE_OperationType','LBR','da982b71-093c-4bb9-b5ca-30875984ee54','N','L',0,0,TO_DATE('2014-05-05 13:59:31','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-05-05 13:59:31','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 5, 2014 2:01:18 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000148,1000037,'6808f8ad-6230-4f79-8097-443950836094','0',TO_DATE('2014-05-05 14:01:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 14:01:18','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'In')
;

-- May 5, 2014 2:01:27 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000149,1000037,'2fc3f426-ed91-40a5-945e-ebb393ea506c','1',TO_DATE('2014-05-05 14:01:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 14:01:27','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Out')
;

-- May 5, 2014 2:09:18 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000038,'LBR_NFeTpEmis','LBR','0b1eb663-b63b-4be5-9093-01eb1e6b0ca1','N','L',0,0,TO_DATE('2014-05-05 14:09:17','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-05-05 14:09:17','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 5, 2014 2:09:56 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000150,1000038,'617744ca-1b80-49bd-b8ba-be8d51336ade','1',TO_DATE('2014-05-05 14:09:56','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 14:09:56','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Normal')
;

-- May 5, 2014 2:22:34 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeStatus',1000171,'NFe Status','NFe Status','fd3f61c6-8ed9-46ba-b2f1-6fa3cf465d4d',TO_DATE('2014-05-05 14:22:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:22:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:24:08 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeID',1000172,'NFe ID','NFe ID','dee210b9-2dd8-4b97-87dd-909263fd7a9c',TO_DATE('2014-05-05 14:24:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:24:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:27:18 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeModel',1000173,'NF Model','NF Model','0c00119b-ca69-4372-aa57-4a7bcd80a28f',TO_DATE('2014-05-05 14:27:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:27:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:27:43 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeSerie',1000174,'NF Serie','NF Serie','f03d55f0-69d2-490e-84b2-8eb94936d307',TO_DATE('2014-05-05 14:27:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:27:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:28:24 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFE_OperationType',1000175,'NFe Operation Type','NFe Operation Type','4e2e4fb1-e294-469b-908d-adb48246d16a',TO_DATE('2014-05-05 14:28:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:28:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:29:38 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeTpEmis',1000176,'NFe Issue Type','NFe Issue Type','acdf8d5c-fd08-4be2-92a4-6894cb88951b',TO_DATE('2014-05-05 14:29:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:29:37','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:31:04 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_FinNFe',1000177,'NFe Issue Goal','NFe Issue Goal','c192ea65-2d83-4241-968b-95a701558a90',TO_DATE('2014-05-05 14:31:04','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:31:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:32:30 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeNatOp',1000178,'NFe Nature of Operation','NFe Nature of Operation','fedf4a33-a6b3-4ec1-9745-bbabb2509b68',TO_DATE('2014-05-05 14:32:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:32:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 2:33:05 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFE_DestinationType',1000179,'NFe Destination Type','NFe Destination Type','e99d29bb-519a-4348-a15f-4fc7f208c143',TO_DATE('2014-05-05 14:33:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 14:33:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 3:28:00 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ContingencyDate',1000180,'Contingency Date','Contingency Date','1cb5384d-0431-4e20-bab8-b4cb974e31cc',TO_DATE('2014-05-05 15:28:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 15:28:00','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 3:28:31 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ContingencyReason',1000181,'Contingency Reason','Contingency Reason','91498426-0c3b-438a-8f28-5d7a4a8b41f7',TO_DATE('2014-05-05 15:28:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 15:28:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 3:36:46 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BP_ShipLocation_ID',1000182,'The Partner address indicates the location of a Business Partner','Identifies the (ship from) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Identifies the (ship to) address for this Business Partner','Partner Location','Partner Location (Ship)','Partner Location (Ship)','d69586a4-3eab-4dcc-a53a-a0dc07284d35',TO_DATE('2014-05-05 15:36:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 15:36:46','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 3:37:24 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_BP_PickupLocation_ID',1000183,'The Partner address indicates the location of a Business Partner','Identifies the (Pickup) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Identifies the (Pickup) address for this Business Partner','Partner Location','Partner Location (Pickup)','Partner Location (Pickup)','586ae8c2-3c5d-4629-b01b-fda76e19d8d3',TO_DATE('2014-05-05 15:37:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 15:37:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 3:46:10 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000039,'LBR_NFeStatus','LBR','a35d199b-75c4-48dc-bc74-bf442be1964b','N','L',0,0,TO_DATE('2014-05-05 15:46:10','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-05-05 15:46:10','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 5, 2014 3:48:00 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000151,1000039,'5c6898bb-df05-4ab8-a896-68f0c031e4d6','100',TO_DATE('2014-05-05 15:48:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 15:48:00','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'100-Autorizado o uso da NF-e')
;

-- May 5, 2014 3:48:13 PM BRT
UPDATE AD_Ref_List SET Name='100 - Autorizado o uso da NF-e',Updated=TO_DATE('2014-05-05 15:48:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000151
;

-- May 5, 2014 3:48:59 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000611,'N','N','N',0,'N',3,'N','N','N','Y','20db3212-60da-4aed-b3cb-d0074243c4a3','Y','LBR_NFeStatus','NFe Status','Y',TO_DATE('2014-05-05 15:48:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:48:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000171,17,1000039,1000033,0,'LBR')
;

-- May 5, 2014 3:49:04 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeStatus VARCHAR2(3) DEFAULT NULL 
;

-- May 5, 2014 3:50:55 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000612,'N','N','N',0,'N',255,'N','N','N','Y','f79d7e12-41d4-4a69-8f0a-2c3e7e194805','Y','LBR_NFeID','NFe ID','Y',TO_DATE('2014-05-05 15:50:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:50:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000172,14,1000033,0,'LBR')
;

-- May 5, 2014 3:50:59 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeID VARCHAR2(255) DEFAULT NULL 
;

-- May 5, 2014 3:52:36 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000613,'N','N','N',0,'N',20,'N','N','N','Y','095174c4-da98-4e0c-9e0b-4f55d081a32a','Y','VersionNo','Version Number','Version No','Y',TO_DATE('2014-05-05 15:52:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:52:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1949,10,1000033,0,'LBR')
;

-- May 5, 2014 3:52:40 PM BRT
ALTER TABLE LBR_NotaFiscal ADD VersionNo VARCHAR2(20) DEFAULT NULL 
;

-- May 5, 2014 3:55:20 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000040,'LBR_NFModel','LBR','84b4ec5f-53f1-4d1b-b084-06784a7069f7','N','L',0,0,TO_DATE('2014-05-05 15:55:20','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-05-05 15:55:20','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- May 5, 2014 3:55:59 PM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000152,1000040,'153b3fd1-bcd1-4706-a947-ea8a85fca671','55',TO_DATE('2014-05-05 15:55:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 15:55:59','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'NF-e')
;

-- May 5, 2014 3:57:03 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000614,'N','N','N',0,'N',5,'N','N','N','Y','79892672-aadf-4105-9c2a-0fe57eaf3980','Y','LBR_NFeModel','NF Model','Y',TO_DATE('2014-05-05 15:57:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:57:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000173,17,1000040,1000033,0,'LBR')
;

-- May 5, 2014 3:57:08 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeModel VARCHAR2(5) DEFAULT NULL 
;

-- May 5, 2014 3:58:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000615,'N','N','N',0,'N',3,'N','N','N','Y','5237bf19-0209-4dd7-a47f-5017a6a4c905','Y','LBR_NFeSerie','NF Serie','Y',TO_DATE('2014-05-05 15:58:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:58:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000174,10,1000033,0,'LBR')
;

-- May 5, 2014 3:58:31 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeSerie VARCHAR2(3) DEFAULT NULL 
;

-- May 5, 2014 3:59:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000616,'N','N','N',0,'N',1,'N','N','N','Y','e7fec554-24ac-4370-976e-d33eec39edb5','Y','LBR_NFE_OperationType','NFe Operation Type','Y',TO_DATE('2014-05-05 15:59:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 15:59:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000175,17,1000037,1000033,0,'LBR')
;

-- May 5, 2014 3:59:33 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFE_OperationType CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:06:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000617,'N','N','N',0,'N',7,'N','N','N','Y','31459fe1-433f-40af-9b11-07e7ff034393','Y','DateDoc','Date of the Document','@#Date@','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Document Date','Y',TO_DATE('2014-05-05 16:06:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:06:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',265,16,1000033,0,'LBR')
;

-- May 5, 2014 4:06:36 PM BRT
ALTER TABLE LBR_NotaFiscal ADD DateDoc DATE DEFAULT NULL 
;

-- May 5, 2014 4:07:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000618,'N','N','N',0,'N',7,'N','N','N','Y','13440c5c-0716-4f04-b051-591422c6619c','Y','DateDelivered','Date when the product was delivered','Date Delivered','Y',TO_DATE('2014-05-05 16:07:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:07:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',264,16,1000033,0,'LBR')
;

-- May 5, 2014 4:07:23 PM BRT
ALTER TABLE LBR_NotaFiscal ADD DateDelivered DATE DEFAULT NULL 
;

-- May 5, 2014 4:08:27 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000619,'N','N','N',0,'N',1,'N','N','N','Y','12aaac2a-ee14-4131-8d1f-cf969f2e74b8','Y','PaymentRule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.','Payment Rule','Y',TO_DATE('2014-05-05 16:08:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:08:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1143,17,1000036,1000033,0,'LBR')
;

-- May 5, 2014 4:08:33 PM BRT
ALTER TABLE LBR_NotaFiscal ADD PaymentRule CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:10:24 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000620,'N','N','N',0,'N',1,'N','N','N','Y','0abe64af-26ac-4064-931d-8eb345fcd04a','Y','LBR_NFeTpEmis','NFe Issue Type','Y',TO_DATE('2014-05-05 16:10:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:10:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000176,17,1000038,1000033,0,'LBR')
;

-- May 5, 2014 4:10:27 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeTpEmis CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:18:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000621,'N','N','N',0,'N',1,'N','N','N','Y','7fda7855-a9fa-4f53-b2a7-bdc1696afab7','Y','LBR_FinNFe','NFe Issue Goal','Y',TO_DATE('2014-05-05 16:18:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:18:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000177,17,1000033,1000033,0,'LBR')
;

-- May 5, 2014 4:18:39 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_FinNFe CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:19:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000622,'N','N','N',0,'N',255,'N','N','N','Y','d066d816-e193-46bb-a0ee-7c4e0baca969','Y','LBR_NFeNatOp','NFe Nature of Operation','Y',TO_DATE('2014-05-05 16:19:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:19:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000178,10,1000033,0,'LBR')
;

-- May 5, 2014 4:19:28 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeNatOp VARCHAR2(255) DEFAULT NULL 
;

-- May 5, 2014 4:21:26 PM BRT
UPDATE AD_Reference SET Name='LBR_NFE_DestinationType',Updated=TO_DATE('2014-05-05 16:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=1000032
;

-- May 5, 2014 4:22:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000623,'N','N','N',0,'N',1,'N','N','N','Y','232f312e-3f25-4b43-b085-d608545e767b','Y','LBR_NFE_DestinationType','NFe Destination Type','Y',TO_DATE('2014-05-05 16:22:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:22:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000179,17,1000032,1000033,0,'LBR')
;

-- May 5, 2014 4:22:09 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFE_DestinationType CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:28:16 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000624,'N','N','N',0,'N',10,'N','N','N','Y','d1199709-d7c4-4525-b7ab-d77e468bb50f','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-05-05 16:28:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:28:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000033,1000001,0,'LBR')
;

-- May 5, 2014 4:28:19 PM BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000624
;

-- May 5, 2014 4:28:19 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:28:19 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CRegion_LBRNotaFiscal FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:35:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000625,'N','N','N',0,'N',10,'N','N','N','Y','9d4f4a96-c69f-4819-a652-4c061d57294d','Y','C_City_ID','City','City in a country','City','Y',TO_DATE('2014-05-05 16:35:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:35:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1830,30,1000011,1000033,52045,0,'LBR')
;

-- May 5, 2014 4:35:55 PM BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000625
;

-- May 5, 2014 4:35:55 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_City_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:35:55 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CCity_LBRNotaFiscal FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:40:13 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000626,'N','N','N',0,'N',7,'N','N','N','Y','2b8dcf1b-671c-4d1e-9f15-d40b4614fa24','Y','LBR_ContingencyDate','Contingency Date','Y',TO_DATE('2014-05-05 16:40:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:40:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000180,16,1000033,0,'LBR')
;

-- May 5, 2014 4:40:16 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_ContingencyDate DATE DEFAULT NULL 
;

-- May 5, 2014 4:41:43 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000627,'N','N','N',0,'N',256,'N','N','N','Y','b6d3d296-13fd-4ea4-ab7b-16c35a546a09','Y','LBR_ContingencyReason','Contingency Reason','Y',TO_DATE('2014-05-05 16:41:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:41:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000181,10,1000033,0,'LBR')
;

-- May 5, 2014 4:41:47 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_ContingencyReason VARCHAR2(256) DEFAULT NULL 
;

-- May 5, 2014 4:42:15 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000628,'N','N','N',0,'N',22,'N','N','N','Y','bf507b4f-45a4-4393-a1ad-ada67ffa4114','Y','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ','Y',TO_DATE('2014-05-05 16:42:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:42:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',187,30,1000033,0,'LBR')
;

-- May 5, 2014 4:42:22 PM BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000628
;

-- May 5, 2014 4:42:22 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:42:22 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CBPartner_LBRNotaFiscal FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:42:56 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000629,'N','N','N',0,'N',10,'N','N','N','Y','2fff509e-2e24-4d5a-a4ca-1b2349bb40f4','Y','C_BPartner_Location_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Y',TO_DATE('2014-05-05 16:42:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:42:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',189,19,1000033,0,'LBR')
;

-- May 5, 2014 4:43:00 PM BRT
UPDATE AD_Column SET FKConstraintName='CBPartnerLocation_LBRNotaFisca', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:43:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000629
;

-- May 5, 2014 4:43:00 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_BPartner_Location_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:43:01 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CBPartnerLocation_LBRNotaFisca FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:46:07 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000630,'N','N','N',0,'N',22,'N','N','N','Y','0210d8d1-e54f-460b-9db6-035476dc38e7','Y','LBR_BP_PickupLocation_ID','Identifies the (Pickup) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Y',TO_DATE('2014-05-05 16:46:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:46:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000183,18,159,1000033,0,'LBR')
;

-- May 5, 2014 4:46:10 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRBPPickupLocation_LBRNotaFis', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:46:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000630
;

-- May 5, 2014 4:46:10 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_BP_PickupLocation_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:46:10 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRBPPickupLocation_LBRNotaFis FOREIGN KEY (LBR_BP_PickupLocation_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:46:53 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000631,'N','N','N',0,'N',22,'N','N','N','Y','b2eda7c3-f5f9-4471-a4bb-c4bf340aeb42','Y','LBR_BP_ShipLocation_ID','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner','Partner Location','Y',TO_DATE('2014-05-05 16:46:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:46:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000182,18,159,1000033,0,'LBR')
;

-- May 5, 2014 4:46:57 PM BRT
UPDATE AD_Column SET FKConstraintName='LBRBPShipLocation_LBRNotaFisca', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:46:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000631
;

-- May 5, 2014 4:46:57 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_BP_ShipLocation_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:46:57 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBRBPShipLocation_LBRNotaFisca FOREIGN KEY (LBR_BP_ShipLocation_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:47:29 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000632,'N','N','N',0,'N',22,'N','N','N','Y','ada2d299-ac74-409d-b426-fa11ec15e65a','Y','C_Order_ID','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Order','Y',TO_DATE('2014-05-05 16:47:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:47:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',558,30,1000033,0,'LBR')
;

-- May 5, 2014 4:47:34 PM BRT
UPDATE AD_Column SET FKConstraintName='COrder_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000632
;

-- May 5, 2014 4:47:34 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_Order_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:47:34 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT COrder_LBRNotaFiscal FOREIGN KEY (C_Order_ID) REFERENCES c_order(c_order_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:47:57 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000633,'N','N','N',0,'N',22,'N','N','N','Y','a5df2f09-4f80-42cf-938a-a53215614aa9','Y','C_Invoice_ID','Invoice Identifier','The Invoice Document.','Invoice','Y',TO_DATE('2014-05-05 16:47:57','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:47:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1008,30,1000033,0,'LBR')
;

-- May 5, 2014 4:48:01 PM BRT
UPDATE AD_Column SET FKConstraintName='CInvoice_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000633
;

-- May 5, 2014 4:48:01 PM BRT
ALTER TABLE LBR_NotaFiscal ADD C_Invoice_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:48:02 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT CInvoice_LBRNotaFiscal FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:48:20 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000634,'N','N','N',0,'N',10,'N','N','N','Y','69a29eba-0cba-46f4-bcb5-20bba051ebd1','Y','M_RMA_ID','Return Material Authorization','A Return Material Authorization may be required to accept returns and to create Credit Memos','RMA','Y',TO_DATE('2014-05-05 16:48:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:48:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',2412,19,1000033,0,'LBR')
;

-- May 5, 2014 4:48:24 PM BRT
UPDATE AD_Column SET FKConstraintName='MRMA_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2014-05-05 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000634
;

-- May 5, 2014 4:48:24 PM BRT
ALTER TABLE LBR_NotaFiscal ADD M_RMA_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 4:48:24 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT MRMA_LBRNotaFiscal FOREIGN KEY (M_RMA_ID) REFERENCES m_rma(m_rma_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 4:49:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000635,'N','N','N',0,'N',22,'N','N','N','Y','e112de77-c01c-4a29-b7fa-9545bc56af4f','Y','GrandTotal','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency','Grand Total','Y',TO_DATE('2014-05-05 16:49:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:49:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',316,12,1000033,0,'LBR')
;

-- May 5, 2014 4:49:41 PM BRT
ALTER TABLE LBR_NotaFiscal ADD GrandTotal NUMBER DEFAULT NULL 
;

-- May 5, 2014 4:52:48 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeIndFinal',1000184,'Is End User','Is End User','345cbd3d-7438-4296-9a8a-a245a2e83a32',TO_DATE('2014-05-05 16:52:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 16:52:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 4:53:38 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000636,'N','N','N',0,'N',1,'N','N','N','Y','705af136-cca9-4a71-b36e-bfa69aa3fc75','Y','LBR_NFeIndFinal','Is End User','Y',TO_DATE('2014-05-05 16:53:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:53:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000184,17,1000034,1000033,0,'LBR')
;

-- May 5, 2014 4:53:43 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeIndFinal CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 4:55:08 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NFeIndPres',1000185,'Face-to-Face Indicator','Face-to-Face Indicator','827c4121-661a-46cd-b99f-bbee1d717aeb',TO_DATE('2014-05-05 16:55:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-05 16:55:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 5, 2014 4:56:05 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000637,'N','N','N',0,'N',1,'N','N','N','Y','2f5e1804-98db-4824-84d0-25fee5f1d558','Y','LBR_NFeIndPres','Face-to-Face Indicator','Y',TO_DATE('2014-05-05 16:56:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-05 16:56:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000185,17,1000035,1000033,0,'LBR')
;

-- May 5, 2014 4:56:09 PM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFeIndPres CHAR(1) DEFAULT NULL 
;

-- May 5, 2014 5:00:48 PM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,10,'The Fiscal Invoice Tab defines the parameters of an Fiscal Invoice generated for a Business Partner.','N','N','N','N','N','Y','N',0,'e6553657-d315-48db-b056-492ee6a484ef','LBR','Fiscal Invoice','Brazilian Fiscal Invoice',1000068,0,TO_DATE('2014-05-05 17:00:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000033,'B')
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',10,'Y',1001186,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','2544506a-982e-4e25-a716-2ce9b58dfb7f','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000597)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',20,'Y',1001187,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','7006ccd5-416a-44e5-80db-408e7f580ad1','N','Y','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000598)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',30,'Y',1001188,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','f477ba29-5ce7-40c8-8b9c-bb2f9b5d64a0','N','N',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000599)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,36,'N','N',40,'Y',1001189,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','47270d8b-f1fe-4bf4-841e-4a7ae96cb67c','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000600)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',50,'Y',1001190,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','4d8aa360-5179-4254-b490-c86310b9d906','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000606)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,30,'N','N',60,'Y',1001191,'N','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Document sequence number of the document','Document No','f7005856-d022-400b-8b57-10a4d583aa23','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000607)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,2,'N','N',70,'Y',1001192,'N','You find the current status in the Document Status field. The options are listed in a popup','LBR','The targeted status of the document','Document Action','63771cae-dcdc-44d8-a21d-bfd8f89afe91','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000608)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,2,'N','N',80,'Y',1001193,'N','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','LBR','The current status of the document','Document Status','2ca662e3-46a7-4155-8fdf-26b87b505350','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000609)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',90,'Y',1001194,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','1b56987c-e439-4520-a24a-3e0e8aa7c543','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000610)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,3,'N','N',100,'Y',1001195,'N','LBR','NFe Status','0492e892-ce1d-44a5-804d-3e1bf9888741','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000611)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000068,255,'N','N',110,'Y',1001196,'N','LBR','NFe ID','75284be6-9df8-434d-817d-1541442c6c58','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000612)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,20,'N','N',120,'Y',1001197,'N','LBR','Version Number','Version No','aca5954d-83e5-46a8-b961-12234a5dd718','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000613)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,5,'N','N',130,'Y',1001198,'N','LBR','NF Model','96db8796-de08-4988-bec9-c26bd7302676','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000614)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,3,'N','N',140,'Y',1001199,'N','LBR','NF Serie','b13ff879-6ec6-4510-9af7-e952e39f166c','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000615)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',150,'Y',1001200,'N','LBR','NFe Operation Type','9df9bf2a-6c8c-4d10-b689-577f2fd58bf0','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000616)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,7,'N','N',160,'Y',1001201,'N','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','LBR','Date of the Document','Document Date','043fd13b-0419-4936-aef5-43375c944ff5','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000617)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,7,'N','N',170,'Y',1001202,'N','LBR','Date when the product was delivered','Date Delivered','57d9b88f-cd9b-46e8-bd06-1de9afe527fb','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000618)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',180,'Y',1001203,'N','The Payment Rule indicates the method of invoice payment.','LBR','How you pay the invoice','Payment Rule','db15a9f8-1429-47ec-8421-36a371e4e4d2','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000619)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',190,'Y',1001204,'N','LBR','NFe Issue Type','6d0ed535-4a60-4799-9bdb-f10157f2d21c','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000620)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',200,'Y',1001205,'N','LBR','NFe Issue Goal','65c6b537-8fa4-4784-a597-bacd6a386ce8','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000621)
;

-- May 5, 2014 5:00:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,255,'N','N',210,'Y',1001206,'N','LBR','NFe Nature of Operation','57f1adef-cb8f-4987-8c41-e658b2e0f378','N','Y',0,0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000622)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',220,'Y',1001207,'N','LBR','NFe Destination Type','c91bb1d6-703a-4448-8a34-523d7db5510c','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000623)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,10,'N','N',230,'Y',1001208,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','23dfd60c-e4a9-4815-b9c8-da5541fc0e4b','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000624)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,10,'N','N',240,'Y',1001209,'N','City in a country','LBR','City','City','cc974157-0da6-43bb-89e9-cacac091158e','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000625)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,7,'N','N',250,'Y',1001210,'N','LBR','Contingency Date','31107c19-31a0-4ab9-8360-dc40aab15b41','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000626)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,256,'N','N',260,'Y',1001211,'N','LBR','Contingency Reason','613ea934-d36a-468b-a9fd-d72fc649ed97','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,1000627)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',270,'Y',1001212,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','2a15a780-e243-4ca5-a908-9cb9d545158d','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000628)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,10,'N','N',280,'Y',1001213,'N','The Partner address indicates the location of a Business Partner','LBR','Identifies the (ship to) address for this Business Partner','Partner Location','5d017de8-9785-4c3e-9f8b-8d1e9a82576d','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000629)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',290,'Y',1001214,'N','The Partner address indicates the location of a Business Partner','LBR','Identifies the (Pickup) address for this Business Partner','Partner Location','7e11caea-036b-489c-acd1-0535e02fffcf','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000630)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',300,'Y',1001215,'N','The Partner address indicates the location of a Business Partner','LBR','Identifies the (ship to) address for this Business Partner','Partner Location','00d2874a-7df5-4c03-89b2-8ae3eba03082','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000631)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',310,'Y',1001216,'N','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','LBR','Order','Order','d718fea7-18c8-49c3-b9c6-17638f1f0b6d','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000632)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',320,'Y',1001217,'N','The Invoice Document.','LBR','Invoice Identifier','Invoice','2f8bbe81-c9b8-47b4-af49-12def21613d9','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000633)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,10,'N','N',330,'Y',1001218,'N','A Return Material Authorization may be required to accept returns and to create Credit Memos','LBR','Return Material Authorization','RMA','4db5c278-5a82-4425-824d-67cc344adcf3','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000634)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',340,'Y',1001219,'N','The Grand Total displays the total amount including Tax and Freight in document currency','LBR','Total amount of document','Grand Total','454e2a5a-53dd-44e0-8038-20bb66558feb','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000635)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',350,'Y',1001220,'N','LBR','Is End User','bef6ff80-b7fa-4318-b154-b7035c696952','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000636)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',360,'Y',1001221,'N','LBR','Face-to-Face Indicator','2a9d64a8-ca11-4714-83b4-189f011c742d','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000637)
;

-- May 5, 2014 5:00:58 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',370,'Y',1001222,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','7c40fd25-fe5f-472d-bfd6-38cf055443ec','N','Y',0,0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-05 17:00:58','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000605)
;

-- May 5, 2014 5:05:27 PM BRT
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_DATE('2014-05-05 17:05:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000612
;

-- May 5, 2014 5:06:21 PM BRT
UPDATE AD_Ref_List SET Name='55 - NF-e',Updated=TO_DATE('2014-05-05 17:06:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=1000152
;

-- May 5, 2014 5:07:13 PM BRT
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_DATE('2014-05-05 17:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000618
;

-- May 5, 2014 5:12:20 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=167,Updated=TO_DATE('2014-05-05 17:12:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000629
;

-- May 5, 2014 5:14:38 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=167,Updated=TO_DATE('2014-05-05 17:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000630
;

-- May 5, 2014 5:14:45 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=167,Updated=TO_DATE('2014-05-05 17:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000631
;

-- May 5, 2014 5:15:51 PM BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-05-05 17:15:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000634
;

-- May 5, 2014 5:15:56 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY M_RMA_ID NUMBER(10) DEFAULT NULL 
;

-- May 5, 2014 5:15:56 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT mrma_lbrnotafiscal
;

-- May 5, 2014 5:15:56 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT MRMA_LBRNotaFiscal FOREIGN KEY (M_RMA_ID) REFERENCES m_rma(m_rma_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001222
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001194
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001189
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001188
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001195
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001196
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001191
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001197
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001198
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001199
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001190
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001200
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001201
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001202
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001203
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001204
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001205
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001206
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001207
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001220
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001221
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001208
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001209
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001210
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001211
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001212
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001213
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 5, 2014 5:23:02 PM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 6, 2014 8:34:49 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-06 08:34:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001195
;

-- May 6, 2014 8:35:18 AM BRT
UPDATE AD_Field SET DisplayLength=24, IsSameLine='Y', IsReadOnly='Y', XPosition=4, ColumnSpan=2, NumLines=1,Updated=TO_DATE('2014-05-06 08:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001196
;

-- May 6, 2014 8:36:04 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-05-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001195
;

-- May 6, 2014 8:36:13 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-05-06 08:36:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001196
;

-- May 6, 2014 8:37:20 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','NF-e Info','f33064f1-df8c-47fd-8f13-7885dca50f75',1000009,TO_DATE('2014-05-06 08:37:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 08:37:20','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 6, 2014 8:37:37 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:37:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001191
;

-- May 6, 2014 8:38:05 AM BRT
UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001197
;

-- May 6, 2014 8:38:38 AM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:38:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001198
;

-- May 6, 2014 8:39:05 AM BRT
UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001199
;

-- May 6, 2014 8:39:27 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001190
;

-- May 6, 2014 8:39:45 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001200
;

-- May 6, 2014 8:40:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001201
;

-- May 6, 2014 8:40:17 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:40:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001202
;

-- May 6, 2014 8:40:37 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:40:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001203
;

-- May 6, 2014 8:40:55 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001204
;

-- May 6, 2014 8:41:11 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:41:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001205
;

-- May 6, 2014 8:41:51 AM BRT
UPDATE AD_Field SET ColumnSpan=2, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001206
;

-- May 6, 2014 8:42:06 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:42:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001207
;

-- May 6, 2014 8:42:29 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:42:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001220
;

-- May 6, 2014 8:42:43 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001221
;

-- May 6, 2014 8:42:57 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001208
;

-- May 6, 2014 8:43:13 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000009,Updated=TO_DATE('2014-05-06 08:43:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001209
;

-- May 6, 2014 8:43:37 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Contingency','52579c55-af4a-4093-aa3e-90739cfa2670',1000010,TO_DATE('2014-05-06 08:43:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 08:43:36','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 6, 2014 8:44:58 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000010,Updated=TO_DATE('2014-05-06 08:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001210
;

-- May 6, 2014 8:45:18 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=1000010,Updated=TO_DATE('2014-05-06 08:45:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001211
;

-- May 6, 2014 8:46:12 AM BRT
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Recipient / Sender','2fea97c6-0737-4cb3-b814-04a0c0622d10',1000011,TO_DATE('2014-05-06 08:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 08:46:12','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- May 6, 2014 8:46:19 AM BRT
UPDATE AD_FieldGroup SET Name='Recipient / Sender (LBR)',Updated=TO_DATE('2014-05-06 08:46:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=1000011
;

-- May 6, 2014 8:46:31 AM BRT
UPDATE AD_FieldGroup SET Name='Contingency (LBR)',Updated=TO_DATE('2014-05-06 08:46:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_FieldGroup_ID=1000010
;

-- May 6, 2014 8:46:51 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000011,Updated=TO_DATE('2014-05-06 08:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001212
;

-- May 6, 2014 8:47:07 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000011,Updated=TO_DATE('2014-05-06 08:47:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001213
;

-- May 6, 2014 8:47:19 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000011,Updated=TO_DATE('2014-05-06 08:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001214
;

-- May 6, 2014 8:47:33 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000011,Updated=TO_DATE('2014-05-06 08:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001215
;

-- May 6, 2014 8:48:03 AM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=104,Updated=TO_DATE('2014-05-06 08:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001216
;

-- May 6, 2014 8:48:17 AM BRT
UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', XPosition=4, AD_FieldGroup_ID=104,Updated=TO_DATE('2014-05-06 08:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001217
;

-- May 6, 2014 8:48:27 AM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=104,Updated=TO_DATE('2014-05-06 08:48:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001218
;

-- May 6, 2014 8:49:41 AM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=101,Updated=TO_DATE('2014-05-06 08:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001219
;

-- May 6, 2014 8:50:03 AM BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=101,Updated=TO_DATE('2014-05-06 08:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001193
;

-- May 6, 2014 8:50:32 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5, AD_FieldGroup_ID=101,Updated=TO_DATE('2014-05-06 08:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001192
;

-- May 6, 2014 8:53:02 AM BRT
UPDATE AD_Column SET IsToolbarButton='N',Updated=TO_DATE('2014-05-06 08:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000608
;

-- May 6, 2014 9:05:37 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000638,'N','N','N',0,'N',255,'Y','N','N','Y','2133dd4f-adfb-413e-8444-13a344c41856','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-05-06 09:05:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 09:05:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000033,0,'LBR')
;

-- May 6, 2014 9:05:43 AM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-05-06 09:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000638
;

-- May 6, 2014 9:05:48 AM BRT
ALTER TABLE LBR_NotaFiscal ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- May 6, 2014 9:06:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000068,255,'N','N',340,'Y',1001223,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','29bec937-78f5-4155-be65-93a8580cdf84','N','Y',0,0,TO_DATE('2014-05-06 09:06:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 09:06:00','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000638)
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001223
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001195
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001196
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001191
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001197
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001198
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001199
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001190
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001200
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001201
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001202
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001203
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001204
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001205
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001206
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001207
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001220
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001221
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001208
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001209
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001210
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001211
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001212
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001213
;

-- May 6, 2014 9:06:24 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 6, 2014 9:06:25 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001194
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001189
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001222
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001187
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001191
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001195
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001196
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001212
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001197
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001198
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001199
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001190
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001221
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001201
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001200
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001202
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001203
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001204
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001205
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001206
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001207
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001220
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001208
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001209
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001210
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001211
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001223
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001192
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001193
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001219
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001217
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001216
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001218
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001215
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001213
;

-- May 6, 2014 9:13:50 AM BRT
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001214
;

-- May 6, 2014 9:16:56 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000639,'Y','N','N',0,'N',22,'N','N','N','Y','d6b604f1-f29b-456d-9908-b17933114ca5','Y','TotalLines','Total of all document lines','The Total amount displays the total of all lines in document currency','Total Lines','Y',TO_DATE('2014-05-06 09:16:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 09:16:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',598,12,1000033,0,'LBR')
;

-- May 6, 2014 9:17:03 AM BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-05-06 09:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000639
;

-- May 6, 2014 9:17:10 AM BRT
ALTER TABLE LBR_NotaFiscal ADD TotalLines NUMBER DEFAULT NULL 
;

-- May 6, 2014 9:17:23 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,22,'N','N',350,'Y',1001224,'N','The Total amount displays the total of all lines in document currency','LBR','Total of all document lines','Total Lines','8eb83595-bb0b-4561-965c-d3b0ce04bb78','N','Y',0,0,TO_DATE('2014-05-06 09:17:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 09:17:23','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000639)
;

-- May 6, 2014 9:17:41 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- May 6, 2014 9:17:41 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 6, 2014 9:17:41 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 6, 2014 9:17:41 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 6, 2014 9:18:16 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-05-06 09:18:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001224
;

-- May 6, 2014 9:18:25 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-06 09:18:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001224
;

-- May 6, 2014 9:18:35 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-05-06 09:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001219
;

-- May 6, 2014 9:45:36 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-05-06 09:45:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001197
;

-- May 6, 2014 9:48:41 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-05-06 09:48:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001201
;

-- May 6, 2014 9:49:23 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-05-06 09:49:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001202
;

-- May 6, 2014 9:59:52 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-05-06 09:59:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001209
;

-- May 6, 2014 10:10:13 AM BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-05-06 10:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001191
;

-- May 6, 2014 10:53:39 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000034,'N','N','Y','LBR','L','8a2bd6d9-cdca-4d8e-a8d5-0cc10cb33288','Y','Y','LBR_NotaFiscalLine','Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Y',0,0,TO_DATE('2014-05-06 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 6, 2014 10:53:39 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000038,'Table LBR_NotaFiscalLine','LBR_NotaFiscalLine',1,'1adbb3c8-2101-4351-9cd9-184902d1f5d3',TO_DATE('2014-05-06 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 6, 2014 10:54:31 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000640,'N','N','N',0,'N',22,'N','N','N','Y','b1640906-b02c-4414-89c8-f31e051639fa','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-05-06 10:54:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:54:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000034,129,0,'LBR')
;

-- May 6, 2014 10:54:36 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 10:54:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000640
;

-- May 6, 2014 10:54:36 AM BRT
CREATE TABLE LBR_NotaFiscalLine (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- May 6, 2014 10:54:36 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT ADClient_LBRNotaFiscalLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 10:55:23 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000641,'Y','N','N',0,'N',22,'N','N','N','Y','50714608-d62c-4b44-93c1-f2b8cd3c22c9','Y','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-05-06 10:55:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:55:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000034,104,0,'LBR')
;

-- May 6, 2014 10:55:27 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 10:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000641
;

-- May 6, 2014 10:55:27 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- May 6, 2014 10:55:27 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT ADOrg_LBRNotaFiscalLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 10:56:15 AM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-05-06 10:56:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000640
;

-- May 6, 2014 10:56:19 AM BRT
ALTER TABLE LBR_NotaFiscalLine MODIFY AD_Client_ID NUMBER(10)
;

-- May 6, 2014 10:56:19 AM BRT
ALTER TABLE LBR_NotaFiscalLine MODIFY AD_Client_ID NOT NULL
;

-- May 6, 2014 10:56:19 AM BRT
ALTER TABLE LBR_NotaFiscalLine DROP CONSTRAINT adclient_lbrnotafiscalline
;

-- May 6, 2014 10:56:19 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT ADClient_LBRNotaFiscalLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 10:57:16 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalLine_ID',1000186,'The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Nota Fiscal Line','5b1d9a5e-59ab-4a3c-a668-30d7b5169464',TO_DATE('2014-05-06 10:57:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-06 10:57:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 6, 2014 10:57:26 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalLine_UU',1000187,'The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Nota Fiscal Line','45d88d3c-f6a8-4da3-8b48-01b74f11367d',TO_DATE('2014-05-06 10:57:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-06 10:57:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 6, 2014 10:58:08 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000642,'Y','N','N',0,'N',22,'N','Y','N','Y','0d525fcd-9e4b-40e0-8db5-1a6c37c43ff6','N','LBR_NotaFiscalLine_ID','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','N',TO_DATE('2014-05-06 10:58:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:58:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000186,13,1000034,0,'LBR')
;

-- May 6, 2014 10:58:12 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD LBR_NotaFiscalLine_ID NUMBER(10) NOT NULL
;

-- May 6, 2014 10:58:12 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT LBR_NotaFiscalLine_Key PRIMARY KEY (LBR_NotaFiscalLine_ID)
;

-- May 6, 2014 10:59:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000643,'N','N','N',0,'N',36,'N','N','N','Y','ccbb3115-d38a-4091-bf29-e2e1c04d9a35','N','LBR_NotaFiscalLine_UU','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','N',TO_DATE('2014-05-06 10:59:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:59:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000187,10,1000034,0,'LBR')
;

-- May 6, 2014 10:59:05 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD LBR_NotaFiscalLine_UU VARCHAR2(36) DEFAULT NULL 
;

-- May 6, 2014 10:59:05 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT LBR_NotaFiscalLine_UU_idx UNIQUE (LBR_NotaFiscalLine_UU)
;

-- May 6, 2014 10:59:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000644,'N','N','N',0,'N',7,'N','N','N','Y','06751850-e7a5-4651-bf5d-92b955777ffa','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-05-06 10:59:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:59:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000034,0,'LBR')
;

-- May 6, 2014 10:59:37 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Created DATE DEFAULT NULL 
;

-- May 6, 2014 10:59:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000645,'N','N','N',0,'N',22,'N','N','N','Y','a823c6ea-9984-4fd7-9203-7ed17b7d1ae6','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-05-06 10:59:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 10:59:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000034,0,'LBR')
;

-- May 6, 2014 10:59:52 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 10:59:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000645
;

-- May 6, 2014 10:59:52 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- May 6, 2014 10:59:52 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CreatedBy_LBRNotaFiscalLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:00:08 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000646,'N','N','N',0,'N',7,'N','N','N','Y','9764193d-2adb-4c56-b2f3-f19dc399d018','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-05-06 11:00:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:00:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000034,0,'LBR')
;

-- May 6, 2014 11:00:13 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Updated DATE DEFAULT NULL 
;

-- May 6, 2014 11:00:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000647,'N','N','N',0,'N',22,'N','N','N','Y','f8d68d52-a54e-4761-a0bf-ebd35a493251','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-05-06 11:00:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:00:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000034,0,'LBR')
;

-- May 6, 2014 11:00:29 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 11:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000647
;

-- May 6, 2014 11:00:29 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- May 6, 2014 11:00:29 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT UpdatedBy_LBRNotaFiscalLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:01:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000648,'Y','N','N',0,'N',1,'N','N','N','Y','692e3883-0d89-45ea-8976-b1b425e6a05e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-05-06 11:01:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:01:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000034,0,'LBR')
;

-- May 6, 2014 11:01:11 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 6, 2014 11:03:01 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000649,'Y','N','Y',0,'Y',22,'N','N','N','Y','329ae64e-684e-4db1-8cbd-7505ce52418b','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_DATE('2014-05-06 11:03:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:03:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',1000169,30,1000034,0,'LBR')
;

-- May 6, 2014 11:03:06 AM BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNotaFiscal_LBRNotaFiscalLin', FKConstraintType='C',Updated=TO_DATE('2014-05-06 11:03:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000649
;

-- May 6, 2014 11:03:06 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD LBR_NotaFiscal_ID NUMBER(10) NOT NULL
;

-- May 6, 2014 11:03:06 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalLin FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:04:10 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000650,'N','N','N',0,'N',255,'Y','N','N','Y','74075247-ca06-4db6-adbc-094a274946f8','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-05-06 11:04:10','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:04:10','YYYY-MM-DD HH24:MI:SS'),0,'N','Y',0,'N','N',275,14,1000034,0,'LBR')
;

-- May 6, 2014 11:04:15 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- May 6, 2014 11:08:16 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000651,'Y','N','Y',1,'N',22,'N','N','N','Y','1fe00546-d04e-41c3-9502-afaff31bba91','Y','Line','Unique line for this document','@SQL=SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID=@LBR_NotaFiscal_ID@','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No','Y',TO_DATE('2014-05-06 11:08:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:08:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',439,11,1000034,0,'LBR')
;

-- May 6, 2014 11:08:35 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Line NUMBER(10) NOT NULL
;

-- May 6, 2014 11:09:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000652,'N','N','N',0,'N',22,'N','N','@C_Charge_ID@!0','N','Y','c405855d-7c1c-42ef-a427-90a64ceb0f21','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_DATE('2014-05-06 11:09:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:09:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,30,1000034,231,0,'LBR')
;

-- May 6, 2014 11:09:59 AM BRT
UPDATE AD_Column SET FKConstraintName='MProduct_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 11:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000652
;

-- May 6, 2014 11:09:59 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD M_Product_ID NUMBER(10) DEFAULT NULL 
;

-- May 6, 2014 11:09:59 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT MProduct_LBRNotaFiscalLine FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:11:59 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000653,'N','N','N',0,'N',22,'N','N','@M_Product_ID@!0','N','Y','358b5bb6-f586-4893-a8f7-eafeb251710a','Y','C_Charge_ID','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Charge','Y',TO_DATE('2014-05-06 11:11:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:11:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',968,19,1000034,52030,0,'LBR')
;

-- May 6, 2014 11:12:04 AM BRT
UPDATE AD_Column SET FKConstraintName='CCharge_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 11:12:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000653
;

-- May 6, 2014 11:12:04 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD C_Charge_ID NUMBER(10) DEFAULT NULL 
;

-- May 6, 2014 11:12:04 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CCharge_LBRNotaFiscalLine FOREIGN KEY (C_Charge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:15:30 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000654,'Y','N','N',0,'N',22,'N','N','N','Y','4cbc1bb4-5b45-4ac0-b9bd-4d6e834b41af','Y','Qty','Quantity','1','The Quantity indicates the number of a specific product or item for this document.','Quantity','Y',TO_DATE('2014-05-06 11:15:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:15:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',526,29,1000034,0,'LBR')
;

-- May 6, 2014 11:15:35 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Qty NUMBER DEFAULT 1 NOT NULL
;

-- May 6, 2014 11:17:45 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000655,'Y','N','N',0,'N',22,'N','N','N','Y','6a7270e7-9533-4623-a233-415d5cf53fb8','Y','PriceActual','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.','Unit Price','Y',TO_DATE('2014-05-06 11:17:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:17:45','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',519,37,1000034,0,'LBR')
;

-- May 6, 2014 11:17:49 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD PriceActual NUMBER NOT NULL
;

-- May 6, 2014 11:19:12 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000656,'Y','N','N',0,'N',22,'N','N','N','Y','5cdb2529-77cc-414b-b119-7053f5533df3','Y','C_Tax_ID','Tax identifier','The Tax indicates the type of tax used in document line.','Tax','Y',TO_DATE('2014-05-06 11:19:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:19:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',213,19,1000034,0,'LBR')
;

-- May 6, 2014 11:19:14 AM BRT
UPDATE AD_Column SET FKConstraintName='CTax_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_DATE('2014-05-06 11:19:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000656
;

-- May 6, 2014 11:19:14 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD C_Tax_ID NUMBER(10) NOT NULL
;

-- May 6, 2014 11:19:14 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CTax_LBRNotaFiscalLine FOREIGN KEY (C_Tax_ID) REFERENCES c_tax(c_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 6, 2014 11:20:55 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000657,'Y','N','Y',2,'N',22,'N','N','N','Y','2ee05cd9-6dfe-4e42-aab6-34fdb22f4158','N','LineNetAmt','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Line Amount','Y',TO_DATE('2014-05-06 11:20:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-06 11:20:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',441,12,1000034,0,'LBR')
;

-- May 6, 2014 11:21:00 AM BRT
ALTER TABLE LBR_NotaFiscalLine ADD LineNetAmt NUMBER NOT NULL
;

-- May 6, 2014 11:23:26 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,20,'The Fiscal Invoice Line Tab defines the individual line items that comprise an Brazilian Fiscal Invoice.','N','N','N','N','N','Y','N',1,'45514aab-c915-4a91-ad67-97605e2ffdb3','LBR','Fiscal Invoice Line','Brazilian Fiscal Invoice Line',1000069,'@Processed@=Y',0,TO_DATE('2014-05-06 11:23:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000649,1000034,'B')
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',10,'Y',1001225,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','9348a85a-7c1e-4ede-b752-a374d76c0eec','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000640)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',20,'Y',1001226,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','13b8cae2-b027-45c8-938a-1a8e2fa890e0','N','Y','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000641)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000069,255,'N','N',30,'Y',1001227,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','428db8a8-585b-464e-9385-2a5b955f1d8e','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000650)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',40,'Y',1001228,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line','129457fe-f620-49ea-8942-6d439e9d3693','N','N',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000642)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,36,'N','N',50,'Y',1001229,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Line','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','Brazilian Fiscal Invoice (Nota Fiscal) Line','c927c01c-6875-4231-ad31-5ab082c47dfa','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000643)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',60,'Y',1001230,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','0d0cf2c8-ea1b-4acd-90c2-488d3c921df0','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000649)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',70,'Y',1001231,'N','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','LBR','Unique line for this document','Line No','8106cebc-b368-4932-8c06-a546c86a7d27','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000651)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',80,'Y',1001232,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','2068d634-7f6a-4cd3-8d5e-3b8b6cd64ab7','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000652)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',90,'Y',1001233,'N','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','LBR','Additional document charges','Charge','686ce2be-f1d5-4413-93bc-81c46ae51e7d','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000653)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',100,'Y',1001234,'N','The Quantity indicates the number of a specific product or item for this document.','LBR','Quantity','Quantity','e3aa2fcc-ca65-4d77-b6e4-dc3fbf8a72fc','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000654)
;

-- May 6, 2014 11:23:36 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',110,'Y',1001235,'N','The Actual or Unit Price indicates the Price for a product in source currency.','LBR','Actual Price ','Unit Price','b2fa2085-7052-41ea-8a5b-5145038f8483','N','Y',0,0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:36','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000655)
;

-- May 6, 2014 11:23:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',120,'Y',1001236,'N','The Tax indicates the type of tax used in document line.','LBR','Tax identifier','Tax','baa53ed2-8617-4360-b090-a9c615c91b5a','N','Y',0,0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000656)
;

-- May 6, 2014 11:23:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,22,'N','N',130,'Y',1001237,'N','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','LBR','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Line Amount','ae4c8062-b927-4482-8b64-a8898d572b18','N','Y',0,0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000657)
;

-- May 6, 2014 11:23:37 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000069,1,'N','N',140,'Y',1001238,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','9439488b-e833-4357-8111-c5db14d2a444','N','Y',0,0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-06 11:23:37','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000648)
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001238
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001230
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001229
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001228
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001231
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001232
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001233
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001234
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001235
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001236
;

-- May 6, 2014 11:24:13 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001237
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001229
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001230
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001238
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001226
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001232
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001233
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001234
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001235
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001237
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001236
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001231
;

-- May 6, 2014 11:24:59 AM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001227
;

-- May 6, 2014 11:25:19 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-06 11:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001225
;

-- May 6, 2014 11:25:35 AM BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-05-06 11:25:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001226
;

-- May 6, 2014 11:27:18 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-05-06 11:27:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001233
;

-- May 6, 2014 11:27:40 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-05-06 11:27:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001235
;

-- May 6, 2014 11:31:42 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2014-05-06 11:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001237
;

-- May 6, 2014 11:55:44 AM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-06 11:55:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001237
;

-- May 6, 2014 5:37:21 PM BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-06 17:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001226
;

-- May 6, 2014 5:39:45 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=130,Updated=TO_DATE('2014-05-06 17:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000641
;

-- May 6, 2014 5:41:08 PM BRT
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-05-06 17:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000641
;

-- May 8, 2014 9:12:37 AM BRT
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','1',0,1000014,1000035,'N','N','N','LBR','L','4a7959b6-7505-4673-b2bc-4e2d837ac382','Y','Y','LBR_NotaFiscalTax','Brazilian Fiscal Invoice (Nota Fiscal) Tax','Y',0,0,TO_DATE('2014-05-08 09:12:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:12:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- May 8, 2014 9:12:37 AM BRT
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000040,'Table LBR_NotaFiscalTax','LBR_NotaFiscalTax',1,'0a4bcf5a-572b-4d7a-a909-45fc5852c88a',TO_DATE('2014-05-08 09:12:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:12:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- May 8, 2014 9:18:18 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000658,'Y','N','N',0,'N',22,'N','N','N','Y','dccfa11a-e419-464f-8ade-6ceaf0a65041','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-05-08 09:18:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:18:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000035,129,0,'LBR')
;

-- May 8, 2014 9:18:23 AM BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000658
;

-- May 8, 2014 9:18:23 AM BRT
CREATE TABLE LBR_NotaFiscalTax (AD_Client_ID NUMBER(10) NOT NULL)
;

-- May 8, 2014 9:18:24 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT ADClient_LBRNotaFiscalTax FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:27:56 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000659,'Y','N','N',0,'N',22,'N','N','N','Y','3d989439-16a3-4ee7-ab35-d09f734a7c60','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-05-08 09:27:56','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:27:56','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000035,104,0,'LBR')
;

-- May 8, 2014 9:28:00 AM BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000659
;

-- May 8, 2014 9:28:00 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- May 8, 2014 9:28:00 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT ADOrg_LBRNotaFiscalTax FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:32:55 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTax_ID',1000188,'LBR_NotaFiscalTax_ID','LBR_NotaFiscalTax_ID','fee2f159-b8c4-4086-aaff-895dba93f3c6',TO_DATE('2014-05-08 09:32:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-08 09:32:55','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 8, 2014 9:33:07 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_NotaFiscalTax_UU',1000189,'LBR_NotaFiscalTax_UU','LBR_NotaFiscalTax_UU','f8eb2c55-a072-444a-8987-959858c30d08',TO_DATE('2014-05-08 09:33:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-05-08 09:33:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- May 8, 2014 9:33:42 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000660,'Y','N','N',0,'N',22,'N','Y','N','Y','9cad4c31-357d-48c4-b2db-4e6930f03925','N','LBR_NotaFiscalTax_ID','LBR_NotaFiscalTax_ID','N',TO_DATE('2014-05-08 09:33:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:33:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000188,13,1000035,0,'LBR')
;

-- May 8, 2014 9:33:47 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD LBR_NotaFiscalTax_ID NUMBER(10) NOT NULL
;

-- May 8, 2014 9:33:47 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT LBR_NotaFiscalTax_Key PRIMARY KEY (LBR_NotaFiscalTax_ID)
;

-- May 8, 2014 9:34:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000661,'N','N','N',0,'N',36,'N','N','N','Y','880a5fb3-17da-4064-9f05-aae966a64d83','N','LBR_NotaFiscalTax_UU','LBR_NotaFiscalTax_UU','N',TO_DATE('2014-05-08 09:34:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:34:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000189,10,1000035,0,'LBR')
;

-- May 8, 2014 9:34:07 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD LBR_NotaFiscalTax_UU VARCHAR2(36) DEFAULT NULL 
;

-- May 8, 2014 9:34:07 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT LBR_NotaFiscalTax_UU_idx UNIQUE (LBR_NotaFiscalTax_UU)
;

-- May 8, 2014 9:35:07 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000662,'Y','N','N',0,'N',22,'N','N','N','Y','9e378afb-d415-4e59-9f27-6c4f4d27c375','N','LBR_NotaFiscal_ID','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','Brazilian Fiscal Invoice (Nota Fiscal)','Y',TO_DATE('2014-05-08 09:35:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:35:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000169,30,1000035,0,'LBR')
;

-- May 8, 2014 9:35:11 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000662
;

-- May 8, 2014 9:35:11 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD LBR_NotaFiscal_ID NUMBER(10) NOT NULL
;

-- May 8, 2014 9:35:11 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT LBRNotaFiscal_LBRNotaFiscalTax FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:35:52 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000663,'Y','N','N',0,'N',22,'N','N','N','Y','dd2d46e8-9fcc-492f-8e60-b891c19bace4','N','C_Tax_ID','Tax identifier','The Tax indicates the type of tax used in document line.','Tax','Y',TO_DATE('2014-05-08 09:35:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:35:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',213,19,1000035,0,'LBR')
;

-- May 8, 2014 9:35:56 AM BRT
UPDATE AD_Column SET FKConstraintName='CTax_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:35:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000663
;

-- May 8, 2014 9:35:56 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD C_Tax_ID NUMBER(10) NOT NULL
;

-- May 8, 2014 9:35:56 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT CTax_LBRNotaFiscalTax FOREIGN KEY (C_Tax_ID) REFERENCES c_tax(c_tax_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:36:29 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000664,'N','N','N',0,'N',22,'N','N','N','Y','2d9818cc-1632-4ab5-b123-eab69fead2e3','N','C_TaxProvider_ID','Tax Provider','Y',TO_DATE('2014-05-08 09:36:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:36:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',202582,19,1000035,0,'LBR')
;

-- May 8, 2014 9:36:33 AM BRT
UPDATE AD_Column SET FKConstraintName='CTaxProvider_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000664
;

-- May 8, 2014 9:36:33 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD C_TaxProvider_ID NUMBER(10) DEFAULT NULL 
;

-- May 8, 2014 9:36:33 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT CTaxProvider_LBRNotaFiscalTax FOREIGN KEY (C_TaxProvider_ID) REFERENCES c_taxprovider(c_taxprovider_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:37:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000665,'Y','N','N',0,'N',1,'N','N','N','Y','bc6faa07-8930-41f4-becf-35f9e0afdc82','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-05-08 09:37:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:37:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000035,0,'LBR')
;

-- May 8, 2014 9:37:39 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- May 8, 2014 9:38:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000666,'Y','N','N',0,'N',1,'N','N','N','Y','922d57e0-2ff7-4dcd-8d75-e9503859cbf8','Y','IsTaxIncluded','Tax is included in the price ',NULL,'The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_DATE('2014-05-08 09:38:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:38:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000035,0,'LBR')
;

-- May 8, 2014 9:38:42 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD IsTaxIncluded CHAR(1) CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- May 8, 2014 9:39:25 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000667,'Y','N','N',0,'N',1,'N','N','N','Y','03defa00-1889-42bb-8524-20fc1a559ab3','Y','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed','Y',TO_DATE('2014-05-08 09:39:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:39:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000035,0,'LBR')
;

-- May 8, 2014 9:39:29 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL
;

-- May 8, 2014 9:40:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000668,'Y','N','N',0,'N',22,'N','N','N','Y','853180df-5b2a-4467-aedb-726d106facba','N','TaxAmt','Tax Amount for a document','The Tax Amount displays the total tax amount for a document.','Tax Amount','Y',TO_DATE('2014-05-08 09:40:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:40:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1133,12,1000035,0,'LBR')
;

-- May 8, 2014 9:40:09 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD TaxAmt NUMBER NOT NULL
;

-- May 8, 2014 9:40:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000669,'Y','N','N',0,'N',22,'N','N','N','Y','c0a9f79b-0da6-4107-9b57-970675d9209f','N','TaxBaseAmt','Base for calculating the tax amount','The Tax Base Amount indicates the base amount used for calculating the tax amount.','Tax base Amount','Y',TO_DATE('2014-05-08 09:40:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:40:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1134,12,1000035,0,'LBR')
;

-- May 8, 2014 9:40:31 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD TaxBaseAmt NUMBER NOT NULL
;

-- May 8, 2014 9:41:00 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000670,'N','N','N',0,'N',7,'N','N','N','Y','b2cb2c7e-061a-4e7a-ae20-9d0d8c906cd6','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-05-08 09:41:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:41:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000035,0,'LBR')
;

-- May 8, 2014 9:41:03 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD Created DATE DEFAULT NULL 
;

-- May 8, 2014 9:41:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000671,'N','N','N',0,'N',22,'N','N','N','Y','9c959b87-0670-40cd-82a4-31423e222b7d','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-05-08 09:41:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:41:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000035,0,'LBR')
;

-- May 8, 2014 9:41:18 AM BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000671
;

-- May 8, 2014 9:41:18 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- May 8, 2014 9:41:18 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT CreatedBy_LBRNotaFiscalTax FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:41:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000672,'N','N','N',0,'N',7,'N','N','N','Y','e9a17c62-8fd9-44ce-a032-34ca5584a067','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-05-08 09:41:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:41:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000035,0,'LBR')
;

-- May 8, 2014 9:41:35 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD Updated DATE DEFAULT NULL 
;

-- May 8, 2014 9:41:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000673,'N','N','N',0,'N',22,'N','N','N','Y','7e242b9c-ca43-4401-b4bc-a3fd7276dfcb','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-05-08 09:41:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 09:41:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000035,0,'LBR')
;

-- May 8, 2014 9:41:51 AM BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRNotaFiscalTax', FKConstraintType='N',Updated=TO_DATE('2014-05-08 09:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000673
;

-- May 8, 2014 9:41:51 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- May 8, 2014 9:41:51 AM BRT
ALTER TABLE LBR_NotaFiscalTax ADD CONSTRAINT UpdatedBy_LBRNotaFiscalTax FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 9:44:51 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','N',1000014,30,'The Brazilian Fiscal Invoice (Nota Fiscal) Tax Tab displays the tax amount for a Nota Fiscal based on the lines entered.','N','N','N','N','Y','N','N',1,'dfb203a7-6e57-40c8-b0b8-3338bf917503','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Tax','Brazilian Fiscal Invoice (Nota Fiscal) Tax',1000070,0,TO_DATE('2014-05-08 09:44:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:44:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000662,1000035,'B')
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',10,'Y',1001239,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','d7ff3118-262a-413e-b752-ef3266b9b553','N','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000658)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',20,'Y',1001240,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','55eab487-66dd-45bc-b5a3-01c7f731b2c3','N','Y','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000659)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',30,'Y',1001241,'N','LBR','LBR_NotaFiscalTax_ID','c0bb3a87-8eb9-43ed-9848-3f2cc57d38a9','N','N',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000660)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,36,'N','N',40,'Y',1001242,'N','LBR','LBR_NotaFiscalTax_UU','7efe52c8-6b49-4e78-b0f3-1a1d72235cb9','N','N',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000661)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',50,'Y',1001243,'N','The Brazilian Fiscal Invoice (Nota Fiscal) Document.','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Identifier','Brazilian Fiscal Invoice (Nota Fiscal)','628db75e-bd7f-4b95-8e86-47caee78f6f1','N','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000662)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',60,'Y',1001244,'N','The Tax indicates the type of tax used in document line.','LBR','Tax identifier','Tax','b43b32ed-e84d-426c-80b9-00f16ccff0ce','N','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000663)
;

-- May 8, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',70,'Y',1001245,'N','LBR','Tax Provider','b9b4f219-6de0-4e6c-8f6c-52ddccb5f839','N','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000664)
;

-- May 8, 2014 9:45:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,1,'N','N',80,'Y',1001246,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','9652fc53-b8a6-49a0-96e2-11ca480095ea','N','Y',0,0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000666)
;

-- May 8, 2014 9:45:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,1,'N','N',90,'Y',1001247,'N','The Processed checkbox indicates that a document has been processed.','LBR','The document has been processed','Processed','0f953359-deb7-4d96-a2d9-19dad8c453fa','N','Y',0,0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000667)
;

-- May 8, 2014 9:45:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',100,'Y',1001248,'N','The Tax Amount displays the total tax amount for a document.','LBR','Tax Amount for a document','Tax Amount','3ea7147c-194b-43b4-aa18-fc44b3575b43','N','Y',0,0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000668)
;

-- May 8, 2014 9:45:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,22,'N','N',110,'Y',1001249,'N','The Tax Base Amount indicates the base amount used for calculating the tax amount.','LBR','Base for calculating the tax amount','Tax base Amount','2ff7ea8d-ea06-4a95-be52-99b2fe300a17','N','Y',0,0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000669)
;

-- May 8, 2014 9:45:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000070,1,'N','N',120,'Y',1001250,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','421366c0-b34f-4e82-ac25-11f3f33b4e5f','N','Y',0,0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 09:45:03','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000665)
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001250
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001247
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001241
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001242
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1001243
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1001244
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1001245
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001248
;

-- May 8, 2014 9:45:53 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001249
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001247
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001250
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001240
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001243
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001244
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001245
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001248
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001249
;

-- May 8, 2014 9:46:32 AM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001246
;

-- May 8, 2014 9:47:37 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-05-08 09:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001245
;

-- May 8, 2014 9:47:48 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-05-08 09:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001249
;

-- May 8, 2014 10:12:48 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000674,'N','N','N',0,'N',22,'N','N','N','Y','888169aa-8a45-41bf-98fc-002ce512fe86','Y','LBR_NotaFiscalLine_ID','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line','Y',TO_DATE('2014-05-08 10:12:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 10:12:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000186,19,1000026,0,'LBR')
;

-- May 8, 2014 10:12:53 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLine_LBRDocLineDe', FKConstraintType='N',Updated=TO_DATE('2014-05-08 10:12:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000674
;

-- May 8, 2014 10:12:53 AM BRT
ALTER TABLE LBR_DocLine_Details ADD LBR_NotaFiscalLine_ID NUMBER(10) DEFAULT NULL 
;

-- May 8, 2014 10:12:53 AM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBRNotaFiscalLine_LBRDocLineDe FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 8, 2014 10:14:33 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,21,'The Brazilian Fiscal Invoice (Nota Fiscal) Line Details Tab defines details for the individual line item.','N','N','N','N','N','N','N',2,'34564b00-50a8-4c8e-b48f-b1d99dece89d','LBR','Brazilian Fiscal Invoice (Nota Fiscal) Line Details','Brazilian Fiscal Invoice (Nota Fiscal) Line Details',1000071,'@Processed@=Y',0,TO_DATE('2014-05-08 10:14:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000674,1000026,'B')
;

-- May 8, 2014 10:14:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,36,'N','N',0,'Y',1001251,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','42d13336-0e54-496e-9b07-e34bfdd78240','N','N',0,0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000424)
;

-- May 8, 2014 10:14:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',0,'Y',1001252,'N','The Invoice Line uniquely identifies a single line of an Invoice.','LBR','Invoice Detail Line','Invoice Line','26f86c5d-532c-45f2-ad0c-d67a6a6c53ae','N','N',0,0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000426)
;

-- May 8, 2014 10:14:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,10,'N','N',0,'Y',1001253,'N','Detail information about the returned goods','LBR','Return Material Authorization Line','RMA Line','06743f70-236b-48a6-b6ed-6d11ba1ce457','N','N',0,0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000427)
;

-- May 8, 2014 10:14:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,1,'N','N',0,'Y',1001254,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','901707bd-1d23-4291-b065-e1b6d3471715','N','N',0,0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000422)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,10,'N','N',0,'Y',1001255,'N','The Sales Order Line is a unique identifier for a line in an order.','LBR','Sales Order Line','Sales Order Line','3f9d4192-4d1c-4f91-b87f-56e688f294eb','N','N',0,0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000425)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',0,'Y',1001256,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','0dcc7629-3833-4471-b485-16d23cbc5cda','N','N',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000423)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',10,'Y',1001257,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','52bf8fdf-d95e-45c0-940b-4227ff7952f0','N','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000416)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'Y','N',20,'Y',1001258,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','5a636400-af51-4b65-ad3e-6f1348447617','N','Y','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000417)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,40,'N','N',30,'Y',1001259,'N','LBR','Key of the Product','Product Key','45c7ab90-80d7-4778-8ecc-760c074c89d6','N','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000428)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,255,'N','N',40,'Y',1001260,'N','LBR','Name of the Product','Product Name','30661741-d129-4a7e-bc0b-0b4722b449ca','N','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,1,'N',0,5,1,'N','N',1000429)
;

-- May 8, 2014 10:14:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',50,'Y',1001261,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','c2578d84-ea48-4648-a4a2-1f06d020c2b0','N','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000430)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,6,'Y','N',60,'Y',1001262,'N','Identifies an exception to a NCM rule.','LBR','NCM Exception','EX TIPI','a90d6750-9a92-43e4-b752-fd5da3e00d7c','N','Y',0,0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,4,'N',0,2,1,'N','N',1000431)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',70,'Y',1001263,'N','LBR','Indentifies the CFOP','CFOP','57399754-8a98-4aa6-9f2b-db2a5acad580','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000432)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,30,'Y','N',80,'Y',1001264,'N','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','LBR','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Taxable UPC/EAN','5abb26d5-2862-426b-90f5-461906d73093','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,4,'N',0,2,1,'N','N',1000439)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'N','N',90,'Y',1001265,'N','The Taxable Quantity indicates the number of a specific product or item for this document.','LBR','Taxable Quantity','Taxable Quantity','74c8230a-f18e-49f7-a986-5362deb59145','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000434)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000071,22,'Y','N',100,'Y',1001266,'N','The Taxable UOM defines a unique non monetary Unit of Measure','LBR','Taxable Unit of Measure','Taxable UOM','d40c8458-cbed-4f35-bcc3-e6e0a2e8c1f8','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,4,'N',0,2,1,'N','N',1000433)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,10,'N','N',110,'Y',1001267,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','b2a07820-3a54-42d5-a1df-913fe9e96afd','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000447,1000002)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,2,'Y','N',120,'Y',1001268,'N','Indicates the taxation type used to calculate taxes','LBR','Taxation type used to calculate taxes','Taxation Type','26021c7d-aced-477f-9d1d-ac4678b9f3e8','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',4,'N',0,2,1,'N','N',1000450,1000002)
;

-- May 8, 2014 10:15:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'N','N',130,'Y',1001269,'N','The Taxable Price indicates the Price for a product or service.','LBR','Taxable Price','Taxable Price','b9270502-6d89-4df5-84d5-3be74727a88c','N','Y',0,0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1000435,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,14,'N','N',140,'Y',1001270,'N','LBR','Insured Amount','0a1b87fd-0018-4a66-9adc-895573ab51ff','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000436,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'Y','N',150,'Y',1001271,'N','The Discount Amount indicates the discount amount for a document or line.','LBR','Calculated amount of discount','Discount Amount','8a01ac74-f208-4f78-9496-28e8c347bcd1','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000437,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'N','N',160,'Y',1001272,'N','The Freight Amount indicates the amount charged for Freight in the document currency.','LBR','Freight Amount ','Freight Amount','eb9338a5-6ef9-4f81-a277-f62bf0ee532d','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000438,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,14,'Y','N',170,'Y',1001273,'N','LBR','Surcharges','04ebf04f-a32d-4557-8cd0-cd13d00124cf','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,4,'N',0,2,1,'N','N',1000440,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'N','N',180,'Y',1001274,'N','Indicates the gross amount for a product/service/tax/etc.','LBR','Gross Amount','Gross Amount','a4a885ca-2b4f-4f39-971d-7d05f1f3a3e4','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000441,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,1,'Y','N',190,'Y',1001275,'N','The checkbox indicates if this gross amount of this line composes the grand total of products and/or services.','LBR','This Gross Amount is in Grand Total','Gross Amount is in Grand Total','5168ee9c-bc2b-4790-b369-30e4523405d4','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,5,'N',0,2,1,'N','N',1000442,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'N','N',200,'N',1001276,'N','LBR','Tax Line Total Amount','Tax Line Total','1109c4b2-7dd1-436c-8d54-25d03882d3a0','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',1,'N',0,2,1,'N','N',1000449,103)
;

-- May 8, 2014 10:15:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,20,'N','N',210,'Y',1001277,'N','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','LBR','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','Order Reference','83636e9f-a7ca-4f70-8721-7828a4224d5d','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000443,104)
;

-- May 8, 2014 10:15:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,22,'Y','N',220,'Y',1001278,'N','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.','LBR','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','Order Line Reference','34ddc162-1fcd-4874-b008-026ad6e5ff25','N','Y',0,0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000444,104)
;

-- May 8, 2014 10:15:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,3,'N','N',230,'Y',1001279,'N','LBR','Specific Product in a NF-e','NF-e Specific Product','1c6e7e87-b107-4731-a806-9d8972b62bd2','N','Y',0,0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000445,104)
;

-- May 8, 2014 10:15:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000071,36,'Y','N',240,'Y',1001280,'N','Identifies the FCI Control Number','LBR','Import Content Sheet (FCI) Control Number','FCI Control Number','cc40becc-f130-47a5-97e2-b8ce7b40930f','N','Y',0,0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000446,104)
;

-- May 8, 2014 10:15:02 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',1000071,0,'N','N',250,'N',1001281,'N','LBR','Memo','Memo','05f3e689-7cdc-4685-a0c7-a277fc3a1b39','N','Y',0,0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:15:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,5,4,'N','N',1000448,104)
;

-- May 8, 2014 10:44:09 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,22,'The ICMS Tab defines amounts for ICMS Tax','N','N','N','N','N','N','N',3,'3a741215-468f-40e5-8372-590bb139d1bc','LBR','ICMS','ICMS',1000072,'@Processed@=Y',0,TO_DATE('2014-05-08 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000460,1000027,'B')
;

-- May 8, 2014 10:44:25 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,22,'N','N',0,'Y',1001282,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','12e015a2-47ca-47f0-8e99-1417b95073e1','N','N',0,0,TO_DATE('2014-05-08 10:44:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000460)
;

-- May 8, 2014 10:44:26 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,22,'N','N',0,'Y',1001283,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','3407ef75-bced-442d-a2ed-58751a17ee00','N','N',0,0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000458)
;

-- May 8, 2014 10:44:26 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,36,'N','N',0,'Y',1001284,'N','The Doc Line ICMS is a unique identifier for a doc line details.','LBR','Doc Line ICMS','Doc Line ICMS','77814655-b7b2-44c1-8cac-1964406f4ef6','N','N',0,0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000459)
;

-- May 8, 2014 10:44:26 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,1,'N','N',0,'Y',1001285,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','62847e1e-0273-4f00-935a-2d117be163ac','N','N',0,0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000453)
;

-- May 8, 2014 10:44:27 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,22,'N','N',10,'Y',1001286,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','dba68d05-154d-4761-a680-eb63d57f80a0','N','Y',0,0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:26','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000451)
;

-- May 8, 2014 10:44:27 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,22,'N','N',20,'Y',1001287,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','dea0d9bb-dc23-40f5-956b-c9ac708d851b','N','Y','Y',0,0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000452)
;

-- May 8, 2014 10:44:27 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,2,'N','N',30,'Y',1001288,'N','LBR','Identifies a ICMS Regime for taxes','ICMS Regime','b3f224ce-4827-4e3b-807b-bf908fe13ca7','N','Y',0,0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000461)
;

-- May 8, 2014 10:44:27 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,5,'N','N',40,'Y',1001289,'N','@LBR_ICMSRegime@=TN','LBR','Identifies a ICMS Tax Status in a standard taxation','ICMS Tax Status (Standard Taxation)','da255d3e-5472-40dd-a750-2861608293b2','N','Y',0,0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,5,1,'N','N',1000462)
;

-- May 8, 2014 10:44:27 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,5,'N','N',50,'Y',1001290,'N','@LBR_ICMSRegime@=SN','LBR','Identifies a ICMS Tax Status in a simple taxation','ICMS Tax Status (Simple)','cac503cb-d501-455c-8c9f-90c7d2626abc','N','Y',0,0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,5,1,'N','N',1000463)
;

-- May 8, 2014 10:44:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,1,'N','N',60,'Y',1001291,'N','LBR','Identifies a Product Source','Product Source','c6cf0dc1-1066-47b8-8818-a04e7442f6c1','N','Y',0,0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,5,1,'N','N',1000464)
;

-- May 8, 2014 10:44:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,10,'N','N',70,'Y',1001292,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Rate Credit in percentage','Tax Rate Credit (%)','bcaf5b58-05b6-4134-b5c5-be1eca7a2aff','N','Y',0,0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,2,1,'N','N',1000471)
;

-- May 8, 2014 10:44:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000072,10,'N','N',80,'Y',1001293,'N','@LBR_ICMS_TaxStatusSN@=101 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the Tax Amount Credit','Tax Amount Credit','121b9fd7-77a6-4872-bbab-aed1b9ac4aab','N','Y',0,0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,4,'N',0,2,1,'N','N',1000472)
;

-- May 8, 2014 10:44:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,1,'N','N',90,'Y',1001294,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Identifies a ICMS Tax Base Type','ICMS Tax Base Type','ca3aa0b0-859a-4d92-98f3-3f7b462872ef','N','Y',0,0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1000465,1000003)
;

-- May 8, 2014 10:44:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',100,'Y',1001295,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900 ','LBR','Indicates the Tax Base','Tax Base','26e5ccd6-b246-4393-b2de-31ea6f736ed5','N','Y',0,0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,1,'N',0,2,1,'N','N',1000466,1000003)
;

-- May 8, 2014 10:44:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',110,'Y',1001296,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Base Amount','Tax Base Amount','df2a9036-2baf-40ee-9f0d-92808f5933c8','N','Y',0,0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',240,1,'N',0,2,1,'N','N',1000467,1000003)
;

-- May 8, 2014 10:44:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',120,'Y',1001297,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the Tax Rate','Tax Rate','2f728ea1-6cbd-460c-967e-0d76bd4a49c8','N','Y',0,0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',280,4,'N',0,2,1,'N','N',1000468,1000003)
;

-- May 8, 2014 10:44:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',130,'Y',1001298,'N','@LBR_ICMS_TaxStatusTN@=00 | @LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=51 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the Tax Amount','Tax Amount','b816283c-6d8a-4173-96f7-93c0df36295a','N','Y',0,0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000469,1000003)
;

-- May 8, 2014 10:44:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',140,'Y',1001299,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the Tax Base Own Operation in percentage','Tax Base Own Operation (%)','32ef79ec-8285-48e6-8498-77886295b3ab','N','Y',0,0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1000470,1000003)
;

-- May 8, 2014 10:44:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,2,'N','N',150,'Y',1001300,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the ICMS Tax Relief Type','ICMS Tax Relief Type','422ce9b9-088b-4e02-81a0-0e504d3deafd','N','Y',0,0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,1,'N',0,2,1,'N','N',1000473,1000003)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',160,'Y',1001301,'N','@LBR_ICMS_TaxStatusTN@=20 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=40 | @LBR_ICMS_TaxStatusTN@=41_1 | @LBR_ICMS_TaxStatusTN@=50 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2','LBR','Identifies the Tax Relief Amount','Tax Relief Amount','3f8b0aef-ecfe-4af0-8f77-e14b2bfaaa9f','N','Y',0,0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',300,4,'N',0,2,1,'N','N',1000474,1000003)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',170,'Y',1001302,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the ICMS Tax Operation Amount','ICMS Tax Operation Amount','fb412e6f-a7a9-46e2-ae41-28e114400513','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,1,'N',0,2,1,'N','N',1000476,1000003)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',180,'Y',1001303,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Rate (%)','Tax Deferral Rate (%)','b7e58c77-1eca-4ba3-b4c0-4357f7c96ba7','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1000475,1000003)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',190,'Y',1001304,'N','@LBR_ICMS_TaxStatusTN@=51','LBR','Identifies the Tax Deferral Amount','Tax Deferral Amount','1c033dc4-3f0b-4a6e-bde2-30c1f2764f5f','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1000477,1000003)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,1,'N','N',200,'Y',1001305,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies a ICMS-ST Tax Base Type','ICMS-ST Tax Base Type','bfa4d01b-ac01-4039-bef2-474284f42ce8','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N',0,2,1,'N','N',1000479,1000004)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',210,'Y',1001306,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Base','ICMS-ST Tax Base','7d65cb32-75bd-405e-a1eb-2d5b5248c674','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000480,1000004)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',220,'Y',1001307,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Identifies the ICMS-ST Added Amount Margin in percentage','ICMS-ST Added Amount Margin (%)','26471074-2467-497d-bcb9-487b8708df86','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000481,1000004)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',230,'Y',1001308,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Base Amount','ICMS-ST Tax Base Amount','756c4bf9-9ae6-4761-9255-07ae02927a9d','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000482,1000004)
;

-- May 8, 2014 10:44:30 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',240,'Y',1001309,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Indicates the ICMS-ST Tax Rate','ICMS-ST Tax Rate','cc0571c9-6daf-4750-b4f0-070a85de42f3','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,4,'N',0,2,1,'N','N',1000483,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',250,'Y',1001310,'N','@LBR_ICMS_TaxStatusTN@=10_1 | @LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=30 | @LBR_ICMS_TaxStatusTN@=70 | @LBR_ICMS_TaxStatusTN@=90_1 | @LBR_ICMS_TaxStatusTN@=90_2 | @LBR_ICMS_TaxStatusSN@=201 | @LBR_ICMS_TaxStatusSN@=202 | @LBR_ICMS_TaxStatusSN@=203 | @LBR_ICMS_TaxStatusSN@=900','LBR','Defines the ICMS-ST Tax Amount','ICMS-ST Tax Amount','d350a017-f1f8-429e-bfd5-56659c9487da','N','Y',0,0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000484,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,22,'N','N',260,'Y',1001311,'N','@LBR_ICMS_TaxStatusTN@=10_2 | @LBR_ICMS_TaxStatusTN@=90_1','LBR','Identifies the ICMS-ST UF Due','ICMS-ST UF Due','3b9d52ad-012c-4378-a3a7-0e369ef38e9a','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',160,1,'N',0,2,1,'N','N',1000485,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',270,'Y',1001312,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount withheld in Sender UF','ICMS-ST Base Amount withheld in Sender UF','8f4e6644-589b-4a8e-a169-5c02561ee0ef','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000486,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',280,'Y',1001313,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount withheld in Sender UF','ICMS-ST Amount withheld in Sender UF','16976c66-99ec-4dc0-b2e3-58605215f92a','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000487,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',290,'Y',1001314,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Base Amount in Receiver UF','ICMS-ST Base Amount in Receiver UF','d797c47e-b133-4700-a543-b8286e56deec','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000488,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',300,'Y',1001315,'N','@LBR_ICMS_TaxStatusTN@=41_2','LBR','Identifies the ICMS-ST Amount in Receiver UF','ICMS-ST Amount in Receiver UF','effd2bce-86fb-4779-aab7-7ed8825b69b4','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,4,'N',0,2,1,'N','N',1000489,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'N','N',310,'Y',1001316,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Base Amount','ICMS-ST Withheld Base Amount','9439d9f0-10c3-4902-a800-7fa8ae05780c','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000490,1000004)
;

-- May 8, 2014 10:44:31 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000072,10,'Y','N',320,'Y',1001317,'N','@LBR_ICMS_TaxStatusTN@=60 | @LBR_ICMS_TaxStatusSN@=500','LBR','Identifies the ICMS-ST Withheld Amount','ICMS-ST Withheld Amount','b49c599d-2801-4e17-bb16-b5db6a77c411','N','Y',0,0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:44:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,4,'N',0,2,1,'N','N',1000491,1000004)
;

-- May 8, 2014 10:46:02 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,23,'The IPI Tab defines amounts for IPI Tax','N','N','N','N','N','N','N',3,'45a77643-ef2f-448d-8152-63c9f35a75b0','LBR','IPI','IPI',1000073,'@Processed@=Y',0,TO_DATE('2014-05-08 10:46:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000501,1000028,'B')
;

-- May 8, 2014 10:46:12 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'N','N',0,'Y',1001318,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','e234b0fb-0b0f-4b7c-a5e9-e85625454463','N','N',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000501)
;

-- May 8, 2014 10:46:12 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,1,'N','N',0,'Y',1001319,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','8ac0cfe9-6bd9-47c8-9833-c6663666de7b','N','N',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000498)
;

-- May 8, 2014 10:46:12 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'N','N',0,'Y',1001320,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','dcfe5a7c-0303-4236-95e0-0a58c008801b','N','N',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000499)
;

-- May 8, 2014 10:46:12 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,36,'N','N',0,'Y',1001321,'N','The Doc Line IPI is a unique identifier for a doc line details.','LBR','Doc Line IPI','Doc Line IPI','39015e57-aec5-49c0-834d-00d7aa07df24','N','N',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000500)
;

-- May 8, 2014 10:46:12 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'N','N',10,'Y',1001322,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','e933eab4-24db-49e9-8cf5-601ac3d5111a','N','Y',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000492)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'Y','N',20,'Y',1001323,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','75e1c425-f53b-4094-994e-fc3ed8e87eac','N','Y','Y',0,0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:12','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,4,'N',0,2,1,'N','N',1000493)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,2,'N','N',30,'Y',1001324,'N','LBR','Identifies a IPI Tax Status','IPI Tax Status','c5d38a3e-dcfd-40ec-99b8-f31778daba02','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000502)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,5,'N','N',40,'Y',1001325,'N','LBR','Identifies the IPI Tax Regarding Class','IPI Tax Regarding Class','8543b0c0-12c7-4ab5-ad79-9486f65d564e','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000503)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,3,'Y','N',50,'Y',1001326,'N','LBR','Identifies the IPI Tax Regarding Code','IPI Tax Regarding Code','64dd68f8-5728-4ba3-ade5-5889d5172883','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000504)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,14,'N','N',60,'Y',1001327,'N','Used to identify Legal Entities in Brazil','LBR','Used to identify Legal Entities in Brazil','CNPJ','a03d8087-862a-42a8-8bde-485d6bbc6b26','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000505)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,60,'N','N',70,'Y',1001328,'N','LBR','Identifies the IPI Tax Seal Code','IPI Tax Seal Code','3f85faf3-fc15-4047-9621-6cd392443634','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000506)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,12,'Y','N',80,'Y',1001329,'N','LBR','Identifies the IPI Tax Seal Qty','IPI Tax Seal Qty','6718e888-a076-4122-9dff-6db82837fcad','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,4,'N',0,2,1,'N','N',1000507)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,3,'N','N',90,'Y',1001330,'N','@LBR_IPI_TaxStatus@=00 | @LBR_IPI_TaxStatus@=49 | @LBR_IPI_TaxStatus@=50 | @LBR_IPI_TaxStatus@=99','LBR','Calculation','09f09626-a2a4-4c1d-90e4-ead86afe4397','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000508)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,10,'N','N',100,'Y',1001331,'N','@CalculationType@=PER','LBR','Defines the Tax Base Amount','Tax Base Amount','9b33b6b3-e91f-466e-910f-80fac174cdb7','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,2,1,'N','N',1000509)
;

-- May 8, 2014 10:46:13 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,10,'Y','N',110,'Y',1001332,'N','@CalculationType@=PER','LBR','Indicates the Tax Rate','Tax Rate','a0c35530-1e17-416f-8471-05b81893e45a','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,4,'N',0,2,1,'N','N',1000510)
;

-- May 8, 2014 10:46:14 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'N','N',120,'Y',1001333,'N','@CalculationType@=AMT','LBR','Total Quantity','Total Quantity','9891fcee-c418-440f-8ef2-3dc8c6853ab8','N','Y',0,0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000511)
;

-- May 8, 2014 10:46:14 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,22,'Y','N',130,'Y',1001334,'N','The Actual or Unit Price indicates the Price for a product in source currency.','@CalculationType@=AMT','LBR','Actual Price ','Unit Price','cb88fb68-93f1-4682-b263-6f53a41d6411','N','Y',0,0,TO_DATE('2014-05-08 10:46:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,4,'N',0,2,1,'N','N',1000512)
;

-- May 8, 2014 10:46:14 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000073,10,'N','N',140,'Y',1001335,'N','@CalculationType@=PER | @CalculationType@=AMT','LBR','Defines the Tax Amount','Tax Amount','0e8cb413-272d-4ca6-acb0-aaf832d91cf2','N','Y',0,0,TO_DATE('2014-05-08 10:46:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:46:14','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000513)
;

-- May 8, 2014 10:47:54 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,24,'The PIS Tab defines amounts for PIS Tax','N','N','N','N','N','N','N',3,'8fe2bb9b-b863-43c2-ba26-b8b587bb6da1','LBR','PIS','PIS',1000074,'@Processed@=Y',0,TO_DATE('2014-05-08 10:47:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:47:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000521,1000029,'B')
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,22,'N','N',0,'Y',1001336,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','780461ff-1879-4c19-9337-bc915bfec2fe','N','N',0,0,TO_DATE('2014-05-08 10:48:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:06','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000522)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,22,'N','N',0,'Y',1001337,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','057df72d-9a96-43fc-97ee-63524e279415','N','N',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000521)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,1,'N','N',0,'Y',1001338,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','2b232d67-933b-4556-b0e4-f20a86613d80','N','N',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000520)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,36,'N','N',0,'Y',1001339,'N','The Doc Line PIS is a unique identifier for a doc line details.','LBR','Doc Line PIS','Doc Line PIS','df4a0c41-3af9-4328-8c06-fdd847938d74','N','N',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000523)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,22,'N','N',10,'Y',1001340,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','dfa1d8ab-b091-46a5-8254-900b7df4e254','N','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000514)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000074,22,'Y','N',20,'Y',1001341,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','2f4ee7c5-b3f9-4a34-9240-9785fbcb3f74','N','Y','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000515)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,2,'N','N',30,'Y',1001342,'N','LBR','Identifies a PIS Tax Status','PIS Tax Status','63b97143-fbdd-4400-bfb1-8c2390abf665','N','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000524,1000005)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,3,'N','N',40,'Y',1001343,'N','@LBR_PIS_TaxStatus@!'''' & @LBR_PIS_TaxStatus@!01 & @LBR_PIS_TaxStatus@!02 & @LBR_PIS_TaxStatus@!03 & @LBR_PIS_TaxStatus@!04 & @LBR_PIS_TaxStatus@!05 & @LBR_PIS_TaxStatus@!06 & @LBR_PIS_TaxStatus@!07 & @LBR_PIS_TaxStatus@!08 & @LBR_PIS_TaxStatus@!09','LBR','Calculation','d8b660fa-0989-41e9-a116-85e6d8a05ae4','N','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000525,1000005)
;

-- May 8, 2014 10:48:07 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',50,'Y',1001344,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','0d4ffa54-0587-4932-bedd-d1153cff0649','N','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000526,1000005)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',60,'Y',1001345,'N','@CalculationType@=PER | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','0d47d0a1-d6fe-4e9f-aff9-baf306912a4c','N','Y',0,0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000527,1000005)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',70,'Y',1001346,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','b6389e04-3692-4fcc-805c-9a43335e821e','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000528,1000005)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',80,'Y',1001347,'N','@CalculationType@=AMT | @LBR_PIS_TaxStatus@=03','LBR','Total Quantity','Total Quantity','48884778-1639-4fd8-811c-6dd6f9080495','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000529,1000005)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',90,'Y',1001348,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_PIS_TaxStatus@=01 | @LBR_PIS_TaxStatus@=02 | @LBR_PIS_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','66d4428a-6a1e-4d6c-9145-f22a01f5156f','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000530,1000005)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,3,'N','N',100,'Y',1001349,'N','@LBR_PIS_TaxStatus@!''''','LBR','Calculation','906ee7c7-5a69-49d9-abe7-c21ba9bdd7d6','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000531,1000006)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',110,'Y',1001350,'N','@LBR_PISST_CalcType@=PER','LBR','Defines the PIS-ST Tax Base Amount','PIS-ST Tax Base Amount','2f71aa80-5cdc-443c-8444-0c1fa5f1a2c8','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000532,1000006)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',120,'Y',1001351,'N','@LBR_PISST_CalcType@=PER','LBR','Indicates the PIS-ST Tax Rate','PIS-ST Tax Rate','2aa6adcd-9d6b-4f48-8207-93b84a928f75','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000533,1000006)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',130,'Y',1001352,'N','@LBR_PISST_CalcType@=AMT','LBR','Indicates the PIS-ST Tax Rate in Amount','PIS-ST Tax Rate in Amount','8e2ad7f9-a8ca-4922-bca1-ec86a2c926a7','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000534,1000006)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',140,'Y',1001353,'N','@LBR_PISST_CalcType@=AMT','LBR','PIS-ST Total Quantity','PIS-ST Total Quantity','e5e60683-3a55-442e-acec-b45f30c82139','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000535,1000006)
;

-- May 8, 2014 10:48:08 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000074,10,'N','N',150,'Y',1001354,'N','@LBR_PISST_CalcType@=PER | @LBR_PISST_CalcType@=AMT','LBR','Defines the PIS-ST Tax Amount','PIS-ST Tax Amount','f904efe3-c284-49f8-a475-59edb9397dee','N','Y',0,0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000536,1000006)
;

-- May 8, 2014 10:49:28 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,25,'The COFINS Tab defines amounts for COFINS Tax','N','N','N','N','N','N','N',3,'9f93229f-f22d-4067-91b0-c078ec6f71c8','LBR','COFINS','COFINS',1000075,'@Processed@=Y',0,TO_DATE('2014-05-08 10:49:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000543,1000030,'B')
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,22,'N','N',0,'Y',1001355,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','f2580127-366e-4646-b6a1-16c5a29dd80d','N','N',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000544)
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,1,'N','N',0,'Y',1001356,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','5933cdf1-a808-4805-8f2a-9480e38f94e2','N','N',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000542)
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,36,'N','N',0,'Y',1001357,'N','The Doc Line COFINS is a unique identifier for a doc line details.','LBR','Doc Line COFINS','Doc Line COFINS','9f3433a4-2f96-4c74-ab35-e33c6aa1f0d0','N','N',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000545)
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,22,'N','N',0,'Y',1001358,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','adcdc77d-b1a2-430e-aa83-75b8a8aeabeb','N','N',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000543)
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,22,'N','N',10,'Y',1001359,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','8edb3831-d6e6-4ba2-a4e0-f4655e0a3bd9','N','Y',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000537)
;

-- May 8, 2014 10:49:38 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000075,22,'Y','N',20,'Y',1001360,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','dfb77182-7287-4d70-83de-b3935e37dfea','N','Y','Y',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,4,'N',0,2,1,'N','N',1000538)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,2,'N','N',30,'Y',1001361,'N','LBR','Identifies a COFINS Tax Status','COFINS Tax Status','c0db7639-9546-413a-8c61-10330b0f7981','N','Y',0,0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,1,'N',0,5,1,'N','N',1000552,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,3,'N','N',40,'Y',1001362,'N','@LBR_COF_TaxStatus@!'''' & @LBR_COF_TaxStatus@!01 & @LBR_COF_TaxStatus@!02 & @LBR_COF_TaxStatus@!03 & @LBR_COF_TaxStatus@!04 & @LBR_COF_TaxStatus@!05 & @LBR_COF_TaxStatus@!06 & @LBR_COF_TaxStatus@!07 & @LBR_COF_TaxStatus@!08 & @LBR_COF_TaxStatus@!09','LBR','Calculation','9a64ae81-b980-4968-9e4f-d5e19829a0f0','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,1,'N',0,2,1,'N','N',1000539,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',50,'Y',1001363,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Defines the Tax Base Amount','Tax Base Amount','d184adf9-2375-44b7-82f5-c6f2d69e14f5','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000554,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',60,'Y',1001364,'N','@CalculationType@=PER | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02','LBR','Indicates the Tax Rate','Tax Rate','ef3d76b6-819e-4ed9-9d55-250eb2aa4be0','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',110,1,'N',0,2,1,'N','N',1000555,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',70,'Y',1001365,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Indicates the Tax Rate in Amount','Tax Rate in Amount','c77d3e7e-fc93-4b6b-aaa1-d407b5482865','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',0,2,1,'N','N',1000556,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',80,'Y',1001366,'N','@CalculationType@=AMT | @LBR_COF_TaxStatus@=03','LBR','Total Quantity','Total Quantity','72f9f044-3180-45ea-8e22-301d7f6598fb','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N',0,2,1,'N','N',1000557,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',90,'Y',1001367,'N','@CalculationType@=PER | @CalculationType@=AMT | @LBR_COF_TaxStatus@=01 | @LBR_COF_TaxStatus@=02 | @LBR_COF_TaxStatus@=03','LBR','Defines the Tax Amount','Tax Amount','b45ac99b-5c6c-453e-b7e4-9de1d69f1ffd','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000553,1000007)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,3,'N','N',100,'Y',1001368,'N','@LBR_COF_TaxStatus@!''''','LBR','Calculation','b13bcbcc-4e6f-430a-9c0f-7b12ed6014d9','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000546,1000008)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',110,'Y',1001369,'N','@LBR_COFST_CalcType@=PER','LBR','Defines the COFINS-ST Tax Base Amount','COFINS-ST Tax Base Amount','ddf79fc2-3b3c-4760-b6f9-b55e0b86efc8','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000548,1000008)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',120,'Y',1001370,'N','@LBR_COFST_CalcType@=PER','LBR','Indicates the COFINS-ST Tax Rate','COFINS-ST Tax Rate','bb156197-e59f-459f-bf01-6fbee46bdd62','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,1,'N',0,2,1,'N','N',1000549,1000008)
;

-- May 8, 2014 10:49:39 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',130,'Y',1001371,'N','@LBR_COFST_CalcType@=AMT','LBR','Indicates the COFINS-ST Tax Rate in Amount','COFINS-ST Tax Rate in Amount','89bb7102-9e8e-4aeb-85f0-6fa1f38e1bb9','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N',1000550,1000008)
;

-- May 8, 2014 10:49:40 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',140,'Y',1001372,'N','@LBR_COFST_CalcType@=AMT','LBR','COFINS-ST Total Quantity','COFINS-ST Total Quantity','ae2f88d4-0f72-4005-b9a7-d9aa7eac728d','N','Y',0,0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,1,'N',0,2,1,'N','N',1000551,1000008)
;

-- May 8, 2014 10:49:40 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES ('N',1000075,10,'N','N',150,'Y',1001373,'N','@LBR_COFST_CalcType@=PER | @LBR_COFST_CalcType@=AMT','LBR','Defines the COFINS-ST Tax Amount','COFINS-ST Tax Amount','5674f773-537f-4f46-bc07-49921ffac457','N','Y',0,0,TO_DATE('2014-05-08 10:49:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:49:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000547,1000008)
;

-- May 8, 2014 10:52:51 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,26,'The Import Tax Tab defines amounts for Import Tax','N','N','N','N','N','N','N',3,'f187eb6a-ddad-4b28-9427-54affe5a82fd','LBR','Import Tax','Import Tax',1000076,'@Processed@=Y',0,TO_DATE('2014-05-08 10:52:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:52:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000569,1000031,'B')
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,22,'N','N',0,'Y',1001374,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','fd2405e5-b3e9-4f21-b314-dae60ad5b042','N','N',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000569)
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,1,'N','N',0,'Y',1001375,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','0ddaece6-81dd-42a4-ab93-bb85c9959ed4','N','N',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000566)
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,22,'N','N',0,'Y',1001376,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','ffb32981-4796-47fd-b2a9-0c6178e5aecc','N','N',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000567)
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,36,'N','N',0,'Y',1001377,'N','The Doc Line Import Tax is a unique identifier for a doc line details.','LBR','Doc Line Import Tax','Doc Line Import Tax','53f1d762-ef3e-4765-9026-69ab8974ee9a','N','N',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000568)
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,22,'N','N',10,'Y',1001378,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','77957365-94d6-4780-adf9-f22420da2d9a','N','Y',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000560)
;

-- May 8, 2014 10:53:00 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,22,'N','N',20,'Y',1001379,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','3251b29e-ef51-46c8-b9ae-d69de5447e04','N','Y','Y',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,4,'N',0,2,1,'N','N',1000561)
;

-- May 8, 2014 10:53:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,10,'N','N',30,'Y',1001380,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','f7b55069-12ba-4965-83dd-09e080d17fbf','N','Y',0,0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000570)
;

-- May 8, 2014 10:53:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,10,'N','N',40,'Y',1001381,'N','LBR','Customs Value','12afff18-0d23-4408-884b-262ba9789c61','N','Y',0,0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,1,'N',0,2,1,'N','N',1000571)
;

-- May 8, 2014 10:53:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,10,'N','N',50,'Y',1001382,'N','LBR','Defines the IOF Amount','IOF Amount','90086a83-ac57-4df6-bca2-c3118c04328e','N','Y',0,0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000572)
;

-- May 8, 2014 10:53:01 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000076,10,'N','N',60,'Y',1001383,'N','LBR','Defines the Tax Amount','Tax Amount','43218929-12e5-4316-a826-d64e286612d0','N','Y',0,0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:53:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000573)
;

-- May 8, 2014 10:54:18 AM BRT
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,Help,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000014,27,'The ISSQN Tab defines amounts for ISSQN Tax','N','N','N','N','N','N','N',3,'abb6e68f-adde-45ce-8e17-0de019c6d4dc','LBR','ISSQN','ISSQN',1000077,'@Processed@=Y',0,TO_DATE('2014-05-08 10:54:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000581,1000032,'B')
;

-- May 8, 2014 10:54:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,36,'N','N',0,'Y',1001384,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','4285d771-09e2-476d-af2c-6900322fbe46','N','N',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000583)
;

-- May 8, 2014 10:54:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,1,'N','N',0,'Y',1001385,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','4b6f72ca-2287-495b-986a-58698420911b','N','N',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'N',0,2,1,'N','N',1000580)
;

-- May 8, 2014 10:54:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,22,'N','N',0,'Y',1001386,'N','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.','LBR','Doc Line Details','Doc Line Details','50aa2c8b-0a5d-411b-a556-a905527d11a2','N','N',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,1,'N',0,2,1,'N','N',1000581)
;

-- May 8, 2014 10:54:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,22,'N','N',0,'Y',1001387,'N','The Doc Line ISSQN is a unique identifier for a doc line details.','LBR','Doc Line ISSQN','Doc Line ISSQN','13641f22-c979-43ae-8a0b-73b0c6d7650c','N','N',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000582)
;

-- May 8, 2014 10:54:28 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,22,'N','N',10,'Y',1001388,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','50b8fd9f-4593-4a88-9f26-259b225d8ec4','N','Y',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','N',1,'N',0,2,1,'N','N',1000574)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,22,'Y','N',20,'Y',1001389,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','f1583db4-fb1d-4623-a820-cf238b923123','N','Y','Y',0,0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',70,4,'N',0,2,1,'N','N',1000575)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,10,'N','N',30,'Y',1001390,'N','LBR','Defines the Tax Base Amount','Tax Base Amount','d76c4abf-998a-4772-81b6-4770aa73e1d9','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',20,1,'N',0,2,1,'N','N',1000584)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,10,'Y','N',40,'Y',1001391,'N','LBR','Indicates the Tax Rate','Tax Rate','1d6e59bb-82db-4612-87ed-150093c3c47c','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',30,4,'N',0,2,1,'N','N',1000585)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,5,'N','N',50,'Y',1001392,'N','LBR','Service Type','922abed1-c81b-4b8e-8b3c-5b30a264e094','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',40,1,'N',0,2,1,'N','N',1000586)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,10,'N','N',60,'Y',1001393,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','8efad03e-9f62-4925-8e96-b726485b0709','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',50,1,'N',0,2,1,'N','N',1000587)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,10,'Y','N',70,'Y',1001394,'N','City in a country','LBR','City','City','d5e9e6af-6e48-4787-9038-bb84b238e44a','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',60,4,'N',0,2,1,'N','N',1000589)
;

-- May 8, 2014 10:54:29 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES ('N',1000077,10,'N','N',80,'Y',1001395,'N','LBR','Defines the Tax Amount','Tax Amount','5d979052-4692-46b9-b61b-7c7874f78e1e','N','Y',0,0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-08 10:54:29','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,1,'N',0,2,1,'N','N',1000588)
;

-- May 8, 2014 1:31:19 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000675,'Y','N','N',0,'N',1,'N','N','N','Y','dbcf00a1-eff0-4ddb-92b3-717f4763621b','Y','IsTaxIncluded','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Price includes Tax','Y',TO_DATE('2014-05-08 13:31:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 13:31:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1065,20,1000033,0,'LBR')
;

-- May 8, 2014 1:31:23 PM BRT
ALTER TABLE LBR_NotaFiscal ADD IsTaxIncluded CHAR(1) CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- May 8, 2014 1:32:46 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000676,'Y','N','N',0,'N',1,'N','N','N','Y','0a766278-ce76-416e-969f-d2541befc0d7','Y','Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed','Y',TO_DATE('2014-05-08 13:32:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-08 13:32:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1047,20,1000034,0,'LBR')
;

-- May 8, 2014 1:32:50 PM BRT
ALTER TABLE LBR_NotaFiscalLine ADD Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL
;

-- May 9, 2014 8:54:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000677,'N','N','N',0,'N',3,'N','N','N','Y','52d6503a-cfc3-4efc-8e26-71967f2c22bb','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-05-09 08:54:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-05-09 08:54:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,1000033,0,'LBR')
;

-- May 9, 2014 8:54:53 AM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_TransactionType VARCHAR2(3) DEFAULT NULL 
;

-- May 9, 2014 8:56:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,1,'N','N',360,'Y',1001396,'N','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','LBR','Tax is included in the price ','Price includes Tax','e016eab9-5bdf-4d6a-9809-9f5b162b979c','N','Y',0,0,TO_DATE('2014-05-09 08:56:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-09 08:56:02','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000675)
;

-- May 9, 2014 8:56:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000068,3,'N','N',370,'Y',1001397,'N','LBR','Identifies a Transaction Type','Transaction Type','01edbecc-3b4a-4fd6-9bff-45e3a0a6d69e','N','Y',0,0,TO_DATE('2014-05-09 08:56:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-05-09 08:56:03','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000677)
;

-- May 9, 2014 8:56:25 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001396
;

-- May 9, 2014 8:56:25 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001397
;

-- May 9, 2014 8:56:25 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- May 9, 2014 8:56:26 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- May 9, 2014 8:56:48 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001396
;

-- May 9, 2014 8:56:48 AM BRT
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001397
;

-- May 9, 2014 8:56:48 AM BRT
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=1001224
;

-- May 9, 2014 8:57:15 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000011,Updated=TO_DATE('2014-05-09 08:57:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001397
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- May 9, 2014 8:59:42 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- May 12, 2014 1:51:36 PM BRT
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_DATE('2014-05-12 13:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000675
;

-- May 12, 2014 2:03:20 PM BRT
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='Y',Updated=TO_DATE('2014-05-12 14:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000598
;

-- May 12, 2014 2:03:27 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY AD_Org_ID NUMBER(10)
;

-- May 12, 2014 2:03:28 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY AD_Org_ID NOT NULL
;

-- May 12, 2014 2:03:28 PM BRT
ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT adorg_lbrnotafiscal
;

-- May 12, 2014 2:03:29 PM BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT ADOrg_LBRNotaFiscal FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 12, 2014 2:59:50 PM BRT
UPDATE AD_Window SET WindowType='T',Updated=TO_DATE('2014-05-12 14:59:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=1000014
;

-- May 12, 2014 3:04:17 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=130,Updated=TO_DATE('2014-05-12 15:04:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000598
;

-- May 12, 2014 3:08:16 PM BRT
UPDATE AD_Column SET IsMandatory='Y', DefaultValue='1',Updated=TO_DATE('2014-05-12 15:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000616
;

-- May 12, 2014 3:08:21 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_NFE_OperationType CHAR(1) DEFAULT '1'
;

-- May 12, 2014 3:08:22 PM BRT
UPDATE LBR_NotaFiscal SET LBR_NFE_OperationType='1' WHERE LBR_NFE_OperationType IS NULL
;

-- May 12, 2014 3:08:22 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_NFE_OperationType NOT NULL
;

-- May 12, 2014 3:10:55 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-05-12 15:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000617
;

-- May 12, 2014 3:10:59 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY DateDoc DATE
;

-- May 12, 2014 3:10:59 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY DateDoc NOT NULL
;

-- May 12, 2014 3:11:51 PM BRT
UPDATE AD_Column SET IsMandatory='Y', DefaultValue='0',Updated=TO_DATE('2014-05-12 15:11:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000619
;

-- May 12, 2014 3:11:56 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY PaymentRule CHAR(1) DEFAULT '0'
;

-- May 12, 2014 3:11:56 PM BRT
UPDATE LBR_NotaFiscal SET PaymentRule='0' WHERE PaymentRule IS NULL
;

-- May 12, 2014 3:11:56 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY PaymentRule NOT NULL
;

-- May 12, 2014 3:12:41 PM BRT
UPDATE AD_Column SET IsMandatory='Y', DefaultValue='1',Updated=TO_DATE('2014-05-12 15:12:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000620
;

-- May 12, 2014 3:12:44 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_NFeTpEmis CHAR(1) DEFAULT '1'
;

-- May 12, 2014 3:12:44 PM BRT
UPDATE LBR_NotaFiscal SET LBR_NFeTpEmis='1' WHERE LBR_NFeTpEmis IS NULL
;

-- May 12, 2014 3:12:44 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_NFeTpEmis NOT NULL
;

-- May 12, 2014 3:13:14 PM BRT
UPDATE AD_Column SET IsMandatory='Y', DefaultValue='1',Updated=TO_DATE('2014-05-12 15:13:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000621
;

-- May 12, 2014 3:13:17 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_FinNFe CHAR(1) DEFAULT '1'
;

-- May 12, 2014 3:13:17 PM BRT
UPDATE LBR_NotaFiscal SET LBR_FinNFe='1' WHERE LBR_FinNFe IS NULL
;

-- May 12, 2014 3:13:17 PM BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_FinNFe NOT NULL
;

SELECT lbr_register_migration_script('201404281124.sql') FROM dual
;

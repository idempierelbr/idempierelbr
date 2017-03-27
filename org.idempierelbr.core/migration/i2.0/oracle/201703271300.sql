SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/03/2017 13h27min7s BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2017-03-27 13:27:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001068
;

-- 27/03/2017 13h27min48s BRT
UPDATE AD_Field SET IsReadOnly='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-27 13:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001822
;

-- 27/03/2017 13h32min40s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800046,0,0,'Y',TO_DATE('2017-03-27 13:32:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:32:40','YYYY-MM-DD HH24:MI:SS'),0,'Generate Boletos Instructions','Generate bank instructions for existing Boletos','This process allows to generate instructions for existing boletos.','N','LBR_Boleto_GenerateInstruction','N','org.idempierelbr.openitems.process.BoletoInstructions','1','LBR',0,0,'N','N','Y','N','e1907c76-7f55-4d6e-8c18-d8aec8bacee5')
;

-- 27/03/2017 13h33min39s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800131,0,0,'Y',TO_DATE('2017-03-27 13:33:38','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:33:38','YYYY-MM-DD HH24:MI:SS'),0,'Invoice','Invoice Identifier','The Invoice Document.',800046,10,30,'N',0,'N','C_Invoice_ID','Y','LBR',1008,'fe15088d-0dcc-42a6-89ff-7765a421dacc','N')
;

-- 27/03/2017 13h33min45s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2017-03-27 13:33:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800131
;

-- 27/03/2017 13h34min14s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800132,0,0,'Y',TO_DATE('2017-03-27 13:34:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:34:14','YYYY-MM-DD HH24:MI:SS'),0,'Brazilian Bank Collection (Boleto)','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.',800046,20,30,'N',0,'N','-1','LBR_Boleto_ID','Y','LBR',1000309,'f9bac3ce-f7d4-4ea8-9d1c-9b4e51289a68','N')
;

-- 27/03/2017 13h34min51s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800133,0,0,'Y',TO_DATE('2017-03-27 13:34:50','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:34:50','YYYY-MM-DD HH24:MI:SS'),0,'Collection Movement',800046,30,19,'N',0,'Y','-1','LBR_Cob_Movimento_ID','Y','U',1000361,'428b41f3-7973-4a34-a0ba-ad2f36f73d69','N')
;

-- 27/03/2017 13h34min56s BRT
UPDATE AD_Process_Para SET EntityType='LBR',Updated=TO_DATE('2017-03-27 13:34:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800133
;

-- 27/03/2017 13h46min28s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800049,'Generate Boletos Instructions','Generate bank instructions for existing Boletos','P',0,0,'Y',TO_DATE('2017-03-27 13:46:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:46:28','YYYY-MM-DD HH24:MI:SS'),0,'N',800046,'Y','N','LBR','Y','623e3c05-b796-43d4-bd7d-e0c01483d315')
;

-- 27/03/2017 13h46min28s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800049, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800049)
;

-- 27/03/2017 13h46min34s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800049
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 27/03/2017 13h46min35s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800049
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 27/03/2017 13h46min42s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800049
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 27/03/2017 13h46min47s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800010
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800049
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 27/03/2017 13h46min50s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800010
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800049
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800004
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800002
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800003
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 27/03/2017 13h46min52s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800010
;

-- 27/03/2017 13h50min58s BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (800013,'LBR_Boleto Only Bank Instructions','S','LBR_CNAB240MovementType IN (''1'') AND Value IN (''02'',''03'',''09'',''10'',''11'',''13'',''15'',''20'',''41'',''45'')',0,0,'Y',TO_DATE('2017-03-27 13:50:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 13:50:58','YYYY-MM-DD HH24:MI:SS'),0,'LBR','27faf7cd-c0ba-4a8c-ade1-e639bf3a3cb5')
;

-- 27/03/2017 13h51min13s BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=800013,Updated=TO_DATE('2017-03-27 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800133
;

-- 27/03/2017 14h34min27s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (800441,0,0,'Y',TO_DATE('2017-03-27 14:34:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 14:34:26','YYYY-MM-DD HH24:MI:SS'),0,'LBR_BoletoGenerateInstruction','Generate Boleto Instruction','Generate Boleto Instruction','This button generate instruction for boleto(s)','Generate Boleto Instruction','LBR','19c42211-96f4-4ac9-ae3a-48855f423bc0')
;

-- 27/03/2017 14h35min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801634,0,'Generate Boleto Instruction','Generate Boleto Instruction','This button generate instruction for boleto(s)',318,'LBR_BoletoGenerateInstruction',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2017-03-27 14:35:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 14:35:20','YYYY-MM-DD HH24:MI:SS'),0,800441,'Y',800046,'N','LBR','N','Y','N','Y','eeb55a91-6584-40da-a10f-c30ba4a6e863','Y',0,'Y','N')
;

-- 27/03/2017 14h35min22s BRT
ALTER TABLE C_Invoice ADD LBR_BoletoGenerateInstruction CHAR(1) DEFAULT NULL 
;

-- 27/03/2017 14h36min1s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801384,'Generate Boleto Instruction','Generate Boleto Instruction','This button generate instruction for boleto(s)',263,801634,'Y',1,550,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-27 14:36:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 14:36:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e56d3fb1-b1e6-4294-a61a-a8f5e7c6ac10','Y',540,2,2)
;

-- 27/03/2017 14h36min37s BRT
UPDATE AD_Field SET DisplayLogic='@PaymentRule@=''P'' & @LBR_PayInstrument@=''BC''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-27 14:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801384
;

-- 27/03/2017 14h49min26s BRT
UPDATE AD_Process_Para SET DefaultValue='@C_Invoice_ID@', DisplayLogic='@C_Invoice_ID@=0',Updated=TO_DATE('2017-03-27 14:49:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800131
;

-- 27/03/2017 14h49min49s BRT
UPDATE AD_Process_Para SET DefaultValue='@LBR_Boleto_ID@', DisplayLogic='@LBR_Boleto_ID@=0',Updated=TO_DATE('2017-03-27 14:49:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800132
;

-- 27/03/2017 14h50min41s BRT
UPDATE AD_Process_Para SET DisplayLogic='@C_Invoice_ID@=0 & @LBR_Boleto_ID@=0',Updated=TO_DATE('2017-03-27 14:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800132
;

-- 27/03/2017 14h50min48s BRT
UPDATE AD_Process_Para SET DisplayLogic='@C_Invoice_ID@=0 & @LBR_Boleto_ID@=0',Updated=TO_DATE('2017-03-27 14:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800131
;

-- 27/03/2017 14h52min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801635,0,'Generate Boleto Instruction','Generate Boleto Instruction','This button generate instruction for boleto(s)',1000053,'LBR_BoletoGenerateInstruction',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2017-03-27 14:52:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 14:52:29','YYYY-MM-DD HH24:MI:SS'),0,800441,'Y',800046,'N','U','N','Y','N','Y','053bd51a-ce2f-41eb-aaa8-fb7a07c033c9','Y',0,'Y','N','N')
;

-- 27/03/2017 14h52min37s BRT
ALTER TABLE LBR_Boleto ADD LBR_BoletoGenerateInstruction CHAR(1) DEFAULT NULL 
;

-- 27/03/2017 14h52min43s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_DATE('2017-03-27 14:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801635
;

-- 27/03/2017 14h53min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801385,'Generate Boleto Instruction','Generate Boleto Instruction','This button generate instruction for boleto(s)',1000096,801635,'Y',1,460,'N','N','N','N',0,0,'Y',TO_DATE('2017-03-27 14:53:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-03-27 14:53:19','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c4e3f8da-838e-45b0-9be4-0cdd11e0e3b6','Y',500,2,2)
;

-- 27/03/2017 14h54min34s BRT
UPDATE AD_Field SET DisplayLogic='@DocStatus@=''CO''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-03-27 14:54:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801385
;

SELECT lbr_register_migration_script('201703271300.sql') FROM dual
;

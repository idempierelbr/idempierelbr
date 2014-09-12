SET SQLBLANKLINES ON
SET DEFINE OFF

-- Aug 25, 2014 3:36:45 PM BRT
-- Process: Generate Boletos
-- Process: Generate CNAB
INSERT INTO AD_Process (CopyFromProcess,Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N','This process allows to generate boletos to completed and not-paid invoices.',1000011,'N','N','1030394d-f8a4-42cc-80a0-ce476a83149d','1','N','N',0,0,'Y','LBR','Generate and print Boletos from open Invoices','Generate Boletos',0,0,'Y',0,'org.idempierelbr.openitems.process.BoletoGenerate','LBR_Boleto_Generate',0,TO_DATE('2014-08-25 15:36:45','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-25 15:36:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 3:40:46 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000031,'N','Y','N',1000011,'LBR','Y','Generate Boletos','Generate and print Boletos from open Invoices','57dd7518-3629-4316-8b62-6a380dff43de','P','Y',0,TO_DATE('2014-08-25 15:40:45','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-25 15:40:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 3:40:46 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000031, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000031)
;

-- Aug 25, 2014 3:40:54 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 25, 2014 3:40:55 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 25, 2014 3:41:00 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 25, 2014 3:41:09 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 25, 2014 4:50:48 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',267,1000008,'b66354cd-7b1d-4d26-b726-afdb90c5078e','The Date Invoice indicates the date printed on the invoice.',1000011,15,'N','Date Invoiced','DateInvoiced','Date printed on Invoice',0,'Y',10,'@#Date@','Y',0,TO_DATE('2014-08-25 16:50:48','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-25 16:50:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 4:52:19 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,1000009,'ebe9b2e2-7aa7-45a8-979a-68498ff087b8','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1000011,18,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',20,'@#AD_Org_ID@','Y',0,TO_DATE('2014-08-25 16:52:19','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,130,'LBR',TO_DATE('2014-08-25 16:52:19','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 4:52:25 PM BRT
UPDATE AD_Process_Para SET FieldLength=1,Updated=TO_DATE('2014-08-25 16:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000008
;

-- Aug 25, 2014 4:53:34 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',187,1000010,'22489adf-1fb0-4430-bd3e-0b876d3c4a9c','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1000011,19,135,'N','Business Partner ','C_BPartner_ID','Identifies a Business Partner',1,'Y',30,'Y',0,TO_DATE('2014-08-25 16:53:34','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-25 16:53:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 5:07:34 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Description,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('DocStatus=''CO''  AND Paid<>''Y'' AND IsSOTrx=''Y'' AND PaymentRule=''P'' AND LBR_PayInstrument=''BC'' AND LBR_CollectionIssueDistrib IN (''BAN'',''ORG'') AND LBR_BankAccount_ID>0',1000016,'LBR','C_Invoice SO to generate Boleto',NULL,'S','3f9d39c7-a962-4829-b978-68260e0358b2',0,0,TO_DATE('2014-08-25 17:07:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-25 17:07:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 25, 2014 5:08:15 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1008,1000011,'cc830871-7133-4935-8273-5e622046cb05','The Invoice Document.',1000011,19,1000016,'N','Invoice','C_Invoice_ID','Invoice Identifier',1,'Y',40,'Y',0,TO_DATE('2014-08-25 17:08:14','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-25 17:08:14','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 5:09:58 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000351,1000012,'768558ec-aee2-42f2-95ca-10e81651830f',1000011,17,'N','Issue / Distribution','LBR_CollectionIssueDistrib',3,'Y',50,'Y',0,TO_DATE('2014-08-25 17:09:58','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,1000081,'LBR',TO_DATE('2014-08-25 17:09:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 5:11:36 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',287,1000013,'6ecaee49-7619-4550-9350-8f55b4476bc0','You find the current status in the Document Status field. The options are listed in a popup',1000011,17,219,'Y','Document Action','DocAction','The targeted status of the document',0,'Y',60,'CO','Y',0,TO_DATE('2014-08-25 17:11:36','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,135,'LBR',TO_DATE('2014-08-25 17:11:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 25, 2014 5:19:45 PM BRT
UPDATE AD_Process_Para SET AD_Reference_ID=30, AD_Val_Rule_ID=NULL,Updated=TO_DATE('2014-08-25 17:19:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000010
;

-- Aug 25, 2014 5:20:37 PM BRT
UPDATE AD_Val_Rule SET Name='C_Invoice - Generate Boleto',Updated=TO_DATE('2014-08-25 17:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000016
;

-- Aug 25, 2014 5:22:33 PM BRT
UPDATE AD_Val_Rule SET Code='DocStatus=''CO''  AND IsPaid<>''Y'' AND IsSOTrx=''Y'' AND PaymentRule=''P'' AND LBR_PayInstrument=''BC'' AND LBR_CollectionIssueDistrib IN (''BAN'',''ORG'') AND LBR_BankAccount_ID>0',Updated=TO_DATE('2014-08-25 17:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000016
;

-- Aug 26, 2014 10:46:06 AM BRT
INSERT INTO AD_Form (AccessLevel,Classname,AD_Form_ID,Help,IsBetaFunctionality,AD_Form_UU,Description,Name,AD_Org_ID,UpdatedBy,CreatedBy,Updated,IsActive,AD_Client_ID,EntityType,Created) VALUES ('1','org.idempierelbr.openitems.apps.form.WCNABGen',1000000,'Generate CNAB from Boletos Movements.','N','31ee0732-43d7-4aef-8204-ac262e8d4d8d','Select boletos movements and generate CNAB','Generate CNAB (manual)',0,0,0,TO_DATE('2014-08-26 10:46:06','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR',TO_DATE('2014-08-26 10:46:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 26, 2014 10:47:08 AM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_Form_ID,Created) VALUES (1000032,'N','Y','N','LBR','Y','Generate CNAB (manual)','Select boletos movements and generate CNAB','07411072-8291-439e-ae71-2af5b351e19a','X','Y',0,TO_DATE('2014-08-26 10:47:08','YYYY-MM-DD HH24:MI:SS'),0,0,0,1000000,TO_DATE('2014-08-26 10:47:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 26, 2014 10:47:08 AM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000032, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000032)
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 10:47:14 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 10:47:18 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 10:47:26 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 10:47:26 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 10:47:26 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 26, 2014 10:47:27 AM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 26, 2014 5:15:08 PM BRT
INSERT INTO AD_Process (AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES (1000012,'N','N','f185dcf6-ebf6-42c3-b6f1-36767264fe45','1','N','N',0,0,'Y','LBR','Generate and download CNAB manually','Generate CNAB (manual) ',0,0,'Y',0,'org.idempierelbr.openitems.process.CNABGenerate','LBR_CNAB_Generate (manual)',0,TO_DATE('2014-08-26 17:15:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-26 17:15:08','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 26, 2014 5:35:45 PM BRT
INSERT INTO AD_Process (Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('This process allows to generate CNAB from unsent Boletos Movements.',1000013,'N','N','2dfb3f5e-aba1-404f-bd04-f2d07fbfc72c','1','N','N',1,1,'Y','LBR','Generate and download CNAB from unsent Boletos Movements','Generate CNAB',0,0,'Y',0,'org.idempierelbr.openitems.process.CNABGenerate','LBR_CNAB_Generate',0,TO_DATE('2014-08-26 17:35:45','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-26 17:35:45','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 26, 2014 5:37:33 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000033,'N','Y','N',1000013,'LBR','Y','Generate CNAB','Generate and download CNAB from unsent Boletos Movements','7954c554-a988-43c4-b506-954f511aed3d','P','Y',0,TO_DATE('2014-08-26 17:37:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-08-26 17:37:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 26, 2014 5:37:33 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000033, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000033)
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 5:37:37 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 5:37:41 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Aug 26, 2014 5:37:49 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Aug 26, 2014 5:37:52 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Aug 27, 2014 8:39:11 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',245,1000014,'a4668c71-1334-42bd-a457-c78d7533a474','The Movement Date indicates the date when the movement was created on system.',1000013,15,'N','Movement Date','Created','Date when movement was created',1,'N',10,'Y',0,TO_DATE('2014-08-27 08:39:11','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-27 08:39:11','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 8:41:29 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000015,'be450cb7-a364-4d2c-b312-087397c3db51','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1000013,18,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'N',20,'@#AD_Org_ID@','Y',0,TO_DATE('2014-08-27 08:41:29','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,130,'LBR',TO_DATE('2014-08-27 08:41:29','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 8:58:18 AM BRT
UPDATE AD_Val_Rule SET Code='C_BankAccount.C_Bank_ID=@C_Bank_ID@ AND C_BankAccount.IsActive=''Y'' AND C_BankAccount.LBR_AllowBankCollection=''Y'' AND C_BankAccount.AD_Org_ID IN (0, @AD_Org_ID@)', Name='LBR_C_BankAccount of Bank & Org (w/ Issue Collection)',Updated=TO_DATE('2014-08-27 08:58:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000012
;

-- Aug 27, 2014 9:00:37 AM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_BankAccount.IsActive=''Y'' AND C_BankAccount.LBR_AllowBankCollection=''Y'' AND C_BankAccount.AD_Org_ID IN (0, @AD_Org_ID@)',1000017,'LBR','LBR_C_BankAccount of Org (w/ Issue Collection)','S','d96f8286-d19c-47f6-9264-d64fb0179d1e',0,0,TO_DATE('2014-08-27 09:00:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-27 09:00:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 27, 2014 9:01:21 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',836,1000016,'a5a83d29-c1ad-4db2-b619-91b01b03566c','The Bank Account identifies an account at this Bank.',1000013,19,1000017,'Y','Bank Account','C_BankAccount_ID','Account at the Bank',1,'Y',30,'Y',0,TO_DATE('2014-08-27 09:01:20','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-27 09:01:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 9:06:36 AM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_BankAccount_Convenio.C_BankAccount_ID=@C_BankAccount_ID@ AND LBR_BankAccount_Convenio.IsActive=''Y''',1000018,'LBR','LBR_BankAccount_Convenio of BankAccount','S','04bd9a9a-094e-4097-8ef4-dd7981dc46ee',0,0,TO_DATE('2014-08-27 09:06:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-27 09:06:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Aug 27, 2014 9:07:06 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1000284,1000017,'f9ce2bd4-8a9c-4e01-94c0-60cab61c53cf','Defines the Convênio number for a specific bank account',1000013,19,1000018,'Y','Bank Account Convênio','LBR_BankAccount_Convenio_ID',1,'Y',40,'Y',0,TO_DATE('2014-08-27 09:07:06','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-08-27 09:07:06','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 9:15:13 AM BRT
UPDATE AD_Process_Para SET AD_Element_ID=113,Updated=TO_DATE('2014-08-27 09:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000015
;

-- Aug 27, 2014 9:29:56 AM BRT
UPDATE AD_Process_Para SET IsCentrallyMaintained='Y',Updated=TO_DATE('2014-08-27 09:29:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000015
;

-- Aug 27, 2014 9:33:36 AM BRT
UPDATE AD_Process_Para SET DefaultValue=NULL,Updated=TO_DATE('2014-08-27 09:33:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000015
;

-- Aug 27, 2014 1:33:54 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BankAgencyNo',1000381,'Indicates the bank agency number.','Bank Agency No.','Bank Agency No.','9e4b707e-3e89-4f62-b2c5-77d04cb7f0ca',0,0,0,'Y',0,'LBR',TO_DATE('2014-08-27 13:33:54','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-08-27 13:33:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 1:35:35 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001233,'N','N','N',0,'N',20,'N','N','N','Y','f4b1147e-edac-447c-93b4-ff7594b8dbb3','Y','LBR_BankAgencyNo','Indicates the bank agency number.','Bank Agency No.','Y',TO_DATE('2014-08-27 13:35:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-27 13:35:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000381,10,297,0,'LBR')
;

-- Aug 27, 2014 1:35:39 PM BRT
ALTER TABLE C_BankAccount ADD LBR_BankAgencyNo VARCHAR2(20) DEFAULT NULL 
;

-- Aug 27, 2014 1:36:27 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',228,20,'N','N',230,'Y',1002025,'N','Indicates the bank agency number.','LBR','Bank Agency No.','9dc8217d-61c9-44dc-ab65-a13baf13dd14','N','Y',0,0,0,TO_DATE('2014-08-27 13:36:26','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,0,2,1001233,TO_DATE('2014-08-27 13:36:26','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1002025
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=11201
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=11017
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=11016
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=2222
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3220
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2219
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=4114
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001943
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2220
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=60881
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2221
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001951
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001953
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001952
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001950
;

-- Aug 27, 2014 1:37:04 PM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001954
;

-- Aug 27, 2014 1:37:31 PM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-08-27 13:37:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002025
;

-- Aug 28, 2014 8:14:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001234,'N','N','N',0,'N',1,'N','N','N','Y','92bf1b1a-d111-4307-987b-1157e926794b','Y','LBR_InterestCode','Late payment interest code according to Febraban','Late Payment Interest Code','Y',TO_DATE('2014-08-28 08:14:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:14:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000298,17,1000067,1000059,0,'LBR')
;

-- Aug 28, 2014 8:14:08 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_InterestCode CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2014 8:14:28 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001235,'N','N','N',0,'N',7,'N','N','N','Y','b1ffd125-22c0-4254-9624-a0ce8c0a14de','Y','LBR_InterestDate','Interest date.','Interest Date','Y',TO_DATE('2014-08-28 08:14:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:14:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000326,15,1000059,0,'LBR')
;

-- Aug 28, 2014 8:14:29 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_InterestDate DATE DEFAULT NULL 
;

-- Aug 28, 2014 8:14:43 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001236,'N','N','N',0,'N',22,'N','N','N','Y','115b7375-9cc9-40d1-8dce-b81cf267ecd3','Y','LBR_InterestAP','Late payment interest amount or pencentage','Interest Amount/Percentage','Y',TO_DATE('2014-08-28 08:14:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:14:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000299,12,1000059,0,'LBR')
;

-- Aug 28, 2014 8:14:45 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_InterestAP NUMBER DEFAULT NULL 
;

-- Aug 28, 2014 8:15:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',410,'Y',1002026,'N','Late payment interest code according to Febraban','LBR','Late Payment Interest Code','d569df21-03a5-4131-b846-b0f1e58bcf21','N','Y',0,0,0,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,0,2,1001234,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:15:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',420,'Y',1002027,'N','Interest date.','LBR','Interest Date','51851ce9-cd88-450e-be94-077b590c50f1','N','Y',0,0,0,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',420,0,2,1001235,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:15:15 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',430,'Y',1002028,'N','Late payment interest amount or pencentage','LBR','Interest Amount/Percentage','7a0fdad4-be1d-46ba-a4cb-23131d54edd1','N','Y',0,0,0,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,0,2,1001236,TO_DATE('2014-08-28 08:15:15','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:15:56 AM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-08-28 08:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002027
;

-- Aug 28, 2014 8:16:14 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002026
;

-- Aug 28, 2014 8:16:23 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:16:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002027
;

-- Aug 28, 2014 8:16:27 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002028
;

-- Aug 28, 2014 8:16:48 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InterestCode@!''''',Updated=TO_DATE('2014-08-28 08:16:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002026
;

-- Aug 28, 2014 8:16:56 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InterestDate@!''''',Updated=TO_DATE('2014-08-28 08:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002027
;

-- Aug 28, 2014 8:17:06 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InterestAP@!''''',Updated=TO_DATE('2014-08-28 08:17:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002028
;

-- Aug 28, 2014 8:23:31 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001237,'N','N','N',0,'N',22,'N','N','N','Y','2df52cda-0281-4cbe-b8aa-f4906c1ad40b','Y','LBR_CNABDiscount1AP','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','Y',TO_DATE('2014-08-28 08:23:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:23:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000333,12,1000059,0,'LBR')
;

-- Aug 28, 2014 8:23:33 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount1AP NUMBER DEFAULT NULL 
;

-- Aug 28, 2014 8:23:54 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001238,'N','N','N',0,'N',22,'N','N','N','Y','0ccd7211-cecd-4d0f-b8d3-c5838ee1c5e6','Y','LBR_CNABDiscount2AP','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','Y',TO_DATE('2014-08-28 08:23:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:23:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000334,12,1000059,0,'LBR')
;

-- Aug 28, 2014 8:23:55 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount2AP NUMBER DEFAULT NULL 
;

-- Aug 28, 2014 8:24:09 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001239,'N','N','N',0,'N',22,'N','N','N','Y','d4597897-b55f-4007-b18d-b77eca144dc1','Y','LBR_CNABDiscount3AP','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','Y',TO_DATE('2014-08-28 08:24:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:24:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000335,12,1000059,0,'LBR')
;

-- Aug 28, 2014 8:24:13 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount3AP NUMBER DEFAULT NULL 
;

-- Aug 28, 2014 8:28:34 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001240,'N','N','N',0,'N',1,'N','N','N','Y','cd557a2f-52b5-4f5f-82ff-e8239656e74c','Y','LBR_CNABDiscount1Code','Discount 1 Code used for CNAB 240','Discount 1 Code','Y',TO_DATE('2014-08-28 08:28:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:28:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000327,17,1000078,1000059,0,'LBR')
;

-- Aug 28, 2014 8:28:36 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount1Code CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2014 8:28:49 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001241,'N','N','N',0,'N',1,'N','N','N','Y','0a272b02-c970-4950-b70e-b69d3f6d0389','Y','LBR_CNABDiscount2Code','Discount 2 Code used for CNAB 240','Discount 2 Code','Y',TO_DATE('2014-08-28 08:28:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:28:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000328,17,1000078,1000059,0,'LBR')
;

-- Aug 28, 2014 8:28:51 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount2Code CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2014 8:29:03 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001242,'N','N','N',0,'N',1,'N','N','N','Y','1b5f3ed7-61b2-410c-b0d7-a94d1b068717','Y','LBR_CNABDiscount3Code','Discount 3 Code used for CNAB 240','Discount 3 Code','Y',TO_DATE('2014-08-28 08:29:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:29:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000329,17,1000078,1000059,0,'LBR')
;

-- Aug 28, 2014 8:29:10 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount3Code CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2014 8:29:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001243,'N','N','N',0,'N',7,'N','N','N','Y','d737b6ba-67d1-4b54-8fac-12a420741c00','Y','LBR_CNABDiscount1Date','Discount 1 Date used for CNAB 240','Discount 1 Date','Y',TO_DATE('2014-08-28 08:29:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:29:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000330,15,1000059,0,'LBR')
;

-- Aug 28, 2014 8:29:33 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount1Date DATE DEFAULT NULL 
;

-- Aug 28, 2014 8:29:47 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001244,'N','N','N',0,'N',7,'N','N','N','Y','86966823-46a6-43cd-af3f-e9aab8496900','Y','LBR_CNABDiscount2Date','Discount 2 Date used for CNAB 240','Discount 2 Date','Y',TO_DATE('2014-08-28 08:29:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:29:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000331,15,1000059,0,'LBR')
;

-- Aug 28, 2014 8:29:48 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount2Date DATE DEFAULT NULL 
;

-- Aug 28, 2014 8:30:02 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001245,'N','N','N',0,'N',7,'N','N','N','Y','d4c904c0-df3d-40d6-8829-c984c86741bb','Y','LBR_CNABDiscount3Date','Discount 3 Date used for CNAB 240','Discount 3 Date','Y',TO_DATE('2014-08-28 08:30:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:30:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000332,15,1000059,0,'LBR')
;

-- Aug 28, 2014 8:30:03 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_CNABDiscount3Date DATE DEFAULT NULL 
;

-- Aug 28, 2014 8:30:58 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001246,'N','N','N',0,'N',22,'N','N','N','Y','f9948bde-8df4-4b21-a1f0-f44b6798b418','Y','LBR_LatePaymentPenaltyAP','Late payment penaulty amount or pencentage','Late Payment Penaulty Amount/Percentage','Y',TO_DATE('2014-08-28 08:30:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:30:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000297,12,1000059,0,'LBR')
;

-- Aug 28, 2014 8:30:59 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_LatePaymentPenaltyAP NUMBER DEFAULT NULL 
;

-- Aug 28, 2014 8:31:19 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001247,'N','N','N',0,'N',1,'N','N','N','Y','12386606-eb99-4f36-aac3-1ccf125c475d','Y','LBR_LatePaymentPenaltyCode','Late payment penaulty code according to Febraban','Late Payment Penaulty Code','Y',TO_DATE('2014-08-28 08:31:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:31:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000295,17,1000066,1000059,0,'LBR')
;

-- Aug 28, 2014 8:31:21 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_LatePaymentPenaltyCode CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2014 8:31:36 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001248,'N','N','N',0,'N',7,'N','N','N','Y','d8f23be7-bc6f-4a0f-b896-f787c442306f','Y','LBR_LatePaymentPenaltyDate','Late payment penaulty date.','Late Payment Penaulty Date','Y',TO_DATE('2014-08-28 08:31:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-08-28 08:31:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000325,15,1000059,0,'LBR')
;

-- Aug 28, 2014 8:31:38 AM BRT
ALTER TABLE LBR_BoletoMovement ADD LBR_LatePaymentPenaltyDate DATE DEFAULT NULL 
;

-- Aug 28, 2014 8:33:56 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',440,'Y',1002029,'N','LBR','Discount 1 Amount / Percentage used for CNAB 240','Discount 1 Amount/%','661e8a6d-093f-4609-92fa-91e25d155221','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',440,0,2,1001237,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:56 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',450,'Y',1002030,'N','LBR','Discount 2 Amount / Percentage used for CNAB 240','Discount 2 Amount/%','89dda8fb-5991-4be2-b1d3-6c5c198550b6','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',450,0,2,1001238,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:57 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',460,'Y',1002031,'N','LBR','Discount 3 Amount / Percentage used for CNAB 240','Discount 3 Amount/%','95a97240-1491-445c-98e3-8796fc6ce60e','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'),'Y','Y',460,0,2,1001239,TO_DATE('2014-08-28 08:33:56','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:57 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',470,'Y',1002032,'N','LBR','Discount 1 Code used for CNAB 240','Discount 1 Code','12742c94-c376-4d10-81ee-1f3b19d3a42e','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',470,0,2,1001240,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:57 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',480,'Y',1002033,'N','LBR','Discount 2 Code used for CNAB 240','Discount 2 Code','5c295162-bbcf-4c6b-9bec-07d5528e0487','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',480,0,2,1001241,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:57 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',490,'Y',1002034,'N','LBR','Discount 3 Code used for CNAB 240','Discount 3 Code','3dbd674a-543b-46f1-aea1-121812df8936','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'),'Y','Y',490,0,2,1001242,TO_DATE('2014-08-28 08:33:57','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',500,'Y',1002035,'N','LBR','Discount 1 Date used for CNAB 240','Discount 1 Date','24ef7e46-4029-44ef-a896-2259d96df46e','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',500,0,2,1001243,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:58 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',510,'Y',1002036,'N','LBR','Discount 2 Date used for CNAB 240','Discount 2 Date','9b8ed722-ef9d-44c5-9ae0-8f3de314d98a','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',510,0,2,1001244,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',520,'Y',1002037,'N','LBR','Discount 3 Date used for CNAB 240','Discount 3 Date','daee7749-4874-42c8-9330-91e6348edbad','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'),'Y','Y',520,0,2,1001245,TO_DATE('2014-08-28 08:33:58','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,22,'N','N',530,'Y',1002038,'N','Late payment penaulty amount or pencentage','LBR','Late Payment Penaulty Amount/Percentage','4cd3520d-4e8e-4872-9d9d-cd937e0f2e65','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',530,0,2,1001246,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,1,'N','N',540,'Y',1002039,'N','Late payment penaulty code according to Febraban','LBR','Late Payment Penaulty Code','99ea8c8a-5e9e-4a2a-b312-4eac9b8e14cd','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',540,0,2,1001247,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:33:59 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000102,7,'N','N',550,'Y',1002040,'N','Late payment penaulty date.','LBR','Late Payment Penaulty Date','dc3521f2-d396-4b04-9dbf-d3ef596e0bce','N','Y',0,0,0,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'),'Y','Y',550,0,2,1001248,TO_DATE('2014-08-28 08:33:59','YYYY-MM-DD HH24:MI:SS'))
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1002032
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1002035
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1002029
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1002033
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1002036
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1002030
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1002034
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1002037
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1002031
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1002039
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1002040
;

-- Aug 28, 2014 8:35:05 AM BRT
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1002038
;

-- Aug 28, 2014 8:35:51 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002032
;

-- Aug 28, 2014 8:35:57 AM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:35:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002035
;

-- Aug 28, 2014 8:36:01 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002029
;

-- Aug 28, 2014 8:36:04 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002033
;

-- Aug 28, 2014 8:36:11 AM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002036
;

-- Aug 28, 2014 8:36:16 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002030
;

-- Aug 28, 2014 8:36:19 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002034
;

-- Aug 28, 2014 8:36:26 AM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002037
;

-- Aug 28, 2014 8:36:29 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002031
;

-- Aug 28, 2014 8:36:32 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002039
;

-- Aug 28, 2014 8:36:37 AM BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002040
;

-- Aug 28, 2014 8:36:41 AM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-08-28 08:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002038
;

-- Aug 28, 2014 8:37:22 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount1Code@!''''',Updated=TO_DATE('2014-08-28 08:37:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002032
;

-- Aug 28, 2014 8:37:40 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount1Date@!''''',Updated=TO_DATE('2014-08-28 08:37:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002035
;

-- Aug 28, 2014 8:37:50 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount1AP@!''''',Updated=TO_DATE('2014-08-28 08:37:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002029
;

-- Aug 28, 2014 8:37:56 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount2Code@!''''',Updated=TO_DATE('2014-08-28 08:37:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002033
;

-- Aug 28, 2014 8:38:04 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount2Date@!''''',Updated=TO_DATE('2014-08-28 08:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002036
;

-- Aug 28, 2014 8:38:12 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount2AP@!''''',Updated=TO_DATE('2014-08-28 08:38:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002030
;

-- Aug 28, 2014 8:38:18 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount3Code@!''''',Updated=TO_DATE('2014-08-28 08:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002034
;

-- Aug 28, 2014 8:38:25 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount3Date@!''''',Updated=TO_DATE('2014-08-28 08:38:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002037
;

-- Aug 28, 2014 8:38:32 AM BRT
UPDATE AD_Field SET DisplayLogic='@CNABDiscount3AP@!''''',Updated=TO_DATE('2014-08-28 08:38:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002031
;

-- Aug 28, 2014 8:38:46 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LatePaymentPenaltyCode@!''''',Updated=TO_DATE('2014-08-28 08:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002039
;

-- Aug 28, 2014 8:38:52 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LatePaymentPenaltyDate@!''''',Updated=TO_DATE('2014-08-28 08:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002040
;

-- Aug 28, 2014 8:38:59 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LatePaymentPenaltyAP@!''''',Updated=TO_DATE('2014-08-28 08:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002038
;

-- Sep 1, 2014 4:56:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001249,'Y','N','N',0,'N',1,'N','N','N','Y','aa69494e-6fe8-47c2-90ac-f1b83ad7f4ae','Y','IsDefault','Default value','N','The Default Checkbox indicates if this record will be used as a default value.','Default','Y',TO_DATE('2014-09-01 16:56:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-01 16:56:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1103,20,1000050,0,'LBR')
;

-- Sep 1, 2014 4:56:03 PM BRT
ALTER TABLE LBR_BankAccount_Convenio ADD IsDefault CHAR(1) DEFAULT 'N' CHECK (IsDefault IN ('Y','N')) NOT NULL
;

-- Sep 1, 2014 4:56:51 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001250,'Y','N','N',0,'N',1,'N','N','N','Y','d16832be-849d-48e5-9c85-9d0916cc3bb5','Y','IsDefault','Default value','N','The Default Checkbox indicates if this record will be used as a default value.','Default','Y',TO_DATE('2014-09-01 16:56:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-01 16:56:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1103,20,1000051,0,'LBR')
;

-- Sep 1, 2014 4:56:52 PM BRT
ALTER TABLE LBR_BankAccount_Carteira ADD IsDefault CHAR(1) DEFAULT 'N' CHECK (IsDefault IN ('Y','N')) NOT NULL
;

-- Sep 1, 2014 4:57:34 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000093,1,'N','N',70,'Y',1002041,'N','The Default Checkbox indicates if this record will be used as a default value.','LBR','Default value','Default','12b2010f-37f9-4aca-a439-7986a52bc2dc','N','Y',0,0,0,TO_DATE('2014-09-01 16:57:34','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,2,0,2,1001249,TO_DATE('2014-09-01 16:57:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 1, 2014 4:57:54 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1002041
;

-- Sep 1, 2014 4:57:54 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001743
;

-- Sep 1, 2014 4:58:23 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-09-01 16:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002041
;

-- Sep 1, 2014 4:58:41 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000094,1,'N','N',80,'Y',1002042,'N','The Default Checkbox indicates if this record will be used as a default value.','LBR','Default value','Default','d6fc8e06-442e-4263-9634-2fb7f3598d7a','N','Y',0,0,0,TO_DATE('2014-09-01 16:58:41','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,2,0,2,1001250,TO_DATE('2014-09-01 16:58:41','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 1, 2014 4:58:54 PM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1002042
;

-- Sep 1, 2014 4:58:54 PM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001753
;

-- Sep 1, 2014 4:58:54 PM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001754
;

-- Sep 1, 2014 4:59:12 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-09-01 16:59:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002042
;

-- Sep 1, 2014 5:01:01 PM BRT
UPDATE AD_Field SET XPosition=5,Updated=TO_DATE('2014-09-01 17:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002042
;

-- Sep 1, 2014 5:01:21 PM BRT
UPDATE AD_Field SET XPosition=5,Updated=TO_DATE('2014-09-01 17:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002041
;

-- Sep 1, 2014 5:11:32 PM BRT
INSERT INTO AD_Process (Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('This process allows to process a CNAB sent by a bank.',1000014,'N','N','4cd5c0fd-e5be-4413-83ef-a8aef4f45fef','1','N','N',1,1,'Y','LBR','Process CNAB file returned by a bank','Return CNAB',0,0,'Y',0,'org.idempierelbr.openitems.process.CNABReturn','LBR_CNAB_Return',0,TO_DATE('2014-09-01 17:11:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-01 17:11:32','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 1, 2014 5:14:00 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1000018,'2b89fad1-ffe5-4a16-8a0a-f802439963d7',1000014,39,'Y','CNAB File','CNABFile','Location of the CNAB file to be processed.',0,'N',10,'Y',0,TO_DATE('2014-09-01 17:14:00','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-09-01 17:14:00','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 1, 2014 5:14:47 PM BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (1000034,'N','Y','N',1000014,'LBR','Y','Return CNAB',NULL,'e1ba4f50-d925-49fd-a4fa-3d6e361e62db','P','Y',0,TO_DATE('2014-09-01 17:14:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-09-01 17:14:47','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 1, 2014 5:14:47 PM BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000034, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000034)
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Sep 1, 2014 5:14:51 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- Sep 1, 2014 5:14:58 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000029
;

-- Sep 1, 2014 5:15:01 PM BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000027, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 02/09/2014 15h58min27s BRT
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2014-09-02 15:58:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000018
;

-- 02/09/2014 16h0min16s BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,1000019,'8ecd5ba2-10cb-4362-97bb-50d2efcbb1f3','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1000014,18,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'Y',0,TO_DATE('2014-09-02 16:00:16','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,130,'LBR',TO_DATE('2014-09-02 16:00:16','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/09/2014 16h1min13s BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,AD_Val_Rule_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',836,1000020,'e80ec235-219e-4c72-925c-65d1d53a7fa9','The Bank Account identifies an account at this Bank.',1000014,19,1000017,'Y','Bank Account','C_BankAccount_ID','Account at the Bank',0,'Y',20,'Y',0,TO_DATE('2014-09-02 16:01:13','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-09-02 16:01:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/09/2014 16h2min10s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-09-02 16:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000978
;

-- 02/09/2014 16h2min15s BRT
ALTER TABLE LBR_BankAccount_Convenio MODIFY LBR_ConvenioNo VARCHAR2(20) DEFAULT NULL 
;

-- 02/09/2014 16h2min15s BRT
ALTER TABLE LBR_BankAccount_Convenio MODIFY LBR_ConvenioNo NULL
;

-- 02/09/2014 16h44min46s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001251,'N','N','N',0,'N',22,'N','N','N','Y','799d694f-3ab8-46d8-bd33-133c4159fdeb','Y','C_Bank_ID','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Bank','Y',TO_DATE('2014-09-02 16:44:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-02 16:44:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','C',835,19,1000058,0,'LBR')
;

-- 02/09/2014 16h44min48s BRT
UPDATE AD_Column SET FKConstraintName='CBank_LBRCobMovimento', FKConstraintType='C',Updated=TO_DATE('2014-09-02 16:44:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001251
;

-- 02/09/2014 16h44min48s BRT
ALTER TABLE LBR_Cob_Movimento ADD C_Bank_ID NUMBER(10) DEFAULT NULL 
;

-- 02/09/2014 16h44min49s BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT CBank_LBRCobMovimento FOREIGN KEY (C_Bank_ID) REFERENCES c_bank(c_bank_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 02/09/2014 16h46min42s BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ParentCob_Movimento_ID',1000382,'Parent Collection Movement','Parent Collection Movement','5f641b48-73e5-4dfa-9802-396d92826d4f',0,0,0,'Y',0,'LBR',TO_DATE('2014-09-02 16:46:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-02 16:46:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/09/2014 16h57min27s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000085,'LBR_Cob_Movimento','LBR','1de643e1-1ca2-46ee-ab5d-1a187f66fc47','N','T',0,0,TO_DATE('2014-09-02 16:57:27','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-09-02 16:57:27','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 02/09/2014 16h58min7s BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','a0988b2f-60be-443f-810d-ab7fdff9ceab',0,TO_DATE('2014-09-02 16:58:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-02 16:58:07','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1001182,1001179,1000085,1000058,'LBR')
;

-- 02/09/2014 16h58min31s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001252,'N','N','N',0,'N',22,'N','N','N','Y','12ebbd5a-0c83-402f-a0fc-5b3296c89db0','Y','LBR_ParentCob_Movimento_ID','Parent Collection Movement','Y',TO_DATE('2014-09-02 16:58:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-02 16:58:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000382,18,1000085,1000058,0,'LBR')
;

-- 02/09/2014 16h58min33s BRT
UPDATE AD_Column SET FKConstraintName='LBRParentCobMovimento_LBRCobMo', FKConstraintType='N',Updated=TO_DATE('2014-09-02 16:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001252
;

-- 02/09/2014 16h58min33s BRT
ALTER TABLE LBR_Cob_Movimento ADD LBR_ParentCob_Movimento_ID NUMBER(10) DEFAULT NULL 
;

-- 02/09/2014 16h58min33s BRT
ALTER TABLE LBR_Cob_Movimento ADD CONSTRAINT LBRParentCobMovimento_LBRCobMo FOREIGN KEY (LBR_ParentCob_Movimento_ID) REFERENCES lbr_cob_movimento(lbr_cob_movimento_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/09/2014 16h59min0s BRT
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2014-09-02 16:59:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001252
;

-- 02/09/2014 16h59min15s BRT
ALTER TABLE LBR_Cob_Movimento MODIFY LBR_ParentCob_Movimento_ID NUMBER(10) DEFAULT NULL 
;

-- 02/09/2014 16h59min59s BRT
UPDATE AD_Tab SET EntityType='LBR',Updated=TO_DATE('2014-09-02 16:59:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000101
;

-- 02/09/2014 17h0min15s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N',90,'Y',1002043,'N','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','LBR','Bank','Bank','7dc257c2-361f-4f91-a59a-03c477aa5e89','N','Y',0,0,0,TO_DATE('2014-09-02 17:00:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',90,0,2,1001251,TO_DATE('2014-09-02 17:00:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/09/2014 17h0min15s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000101,22,'N','N',100,'Y',1002044,'N','LBR','Parent Collection Movement','126f490b-b1fb-48ce-ac19-64f2971af770','N','Y',0,0,0,TO_DATE('2014-09-02 17:00:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',100,0,2,1001252,TO_DATE('2014-09-02 17:00:15','YYYY-MM-DD HH24:MI:SS'))
;

-- 02/09/2014 17h0min52s BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-09-02 17:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002044
;

-- 02/09/2014 17h2min21s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1000085,Updated=TO_DATE('2014-09-02 17:02:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001252
;

-- Sep 3, 2014 1:16:27 PM BRT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2014-09-03 13:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001810
;

-- Sep 3, 2014 1:16:31 PM BRT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2014-09-03 13:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001809
;

-- Sep 3, 2014 1:18:35 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000018,Updated=TO_DATE('2014-09-03 13:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001055
;

-- Sep 3, 2014 1:20:31 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('LBR_BankAccount_Carteira.LBR_BankAccount_Convenio_ID=@LBR_BankAccount_Convenio_ID@ AND LBR_BankAccount_Carteira.IsActive=''Y''',1000019,'LBR','LBR_BankAccount_Carteira of Convenio','S','a64c1163-5df0-4c3b-964b-bab19e5fa997',0,0,TO_DATE('2014-09-03 13:20:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-03 13:20:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Sep 3, 2014 1:20:49 PM BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000019,Updated=TO_DATE('2014-09-03 13:20:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001056
;

-- Sep 3, 2014 1:26:34 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-09-03 13:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001056
;

-- Sep 3, 2014 1:26:38 PM BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-09-03 13:26:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001055
;

-- Sep 3, 2014 1:31:55 PM BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-09-03 13:31:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000009
;

-- Sep 3, 2014 2:40:09 PM BRT
UPDATE AD_Process_Para SET AD_Reference_ID=30, AD_Val_Rule_ID=NULL,Updated=TO_DATE('2014-09-03 14:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000011
;

-- Sep 3, 2014 5:28:49 PM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1995,1000021,'9a2a5c20-1b90-4ba5-941a-ae1630836b4c','The Invoice Payment Schedule determines when partial payments are due.',1000011,19,'N','Invoice Payment Schedule','C_InvoicePaySchedule_ID','Invoice Payment Schedule',1,'Y',45,'Y',0,TO_DATE('2014-09-03 17:28:49','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-09-03 17:28:49','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 3, 2014 5:32:44 PM BRT
INSERT INTO AD_Val_Rule (Code,AD_Val_Rule_ID,EntityType,Name,Type,AD_Val_Rule_UU,CreatedBy,UpdatedBy,Updated,Created,AD_Org_ID,IsActive,AD_Client_ID) VALUES ('C_InvoicePaySchedule_ID.C_Invoice_ID=@C_Invoice_ID@',1000020,'LBR','LBR_C_InvoicePaySchedule_ID of Invoice','S','d304bc84-a9dc-463d-b42c-10c273c88978',0,0,TO_DATE('2014-09-03 17:32:44','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-03 17:32:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',0)
;

-- Sep 3, 2014 5:33:00 PM BRT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1000020, DefaultValue='-1',Updated=TO_DATE('2014-09-03 17:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000021
;

-- Sep 3, 2014 5:33:43 PM BRT
UPDATE AD_Val_Rule SET Code='C_InvoicePaySchedule.C_Invoice_ID=@C_Invoice_ID@',Updated=TO_DATE('2014-09-03 17:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=1000020
;

-- Sep 3, 2014 5:35:34 PM BRT
UPDATE AD_Process_Para SET DefaultValue=NULL,Updated=TO_DATE('2014-09-03 17:35:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000008
;

-- Sep 3, 2014 5:37:13 PM BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2014-09-03 17:37:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000008
;

-- Sep 4, 2014 9:37:56 AM BRT
UPDATE AD_Field SET ColumnSpan=2,Updated=TO_DATE('2014-09-04 09:37:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001709
;

-- Sep 4, 2014 9:40:12 AM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_C_DocTypeBoleto_ID',1000383,'The Document Type for Boleto indicates the document type that will be used when an Boleto is generated from this document. This field will display only for some base document type.','Document Type for Boleto','Document type used for Boleto generated from this document','Doc Type Boleto','81916c0d-b286-4a2c-97ca-3e2942d9a274',0,0,0,'Y',0,'LBR',TO_DATE('2014-09-04 09:40:12','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-09-04 09:40:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 4, 2014 9:44:32 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1001253,'N','N','N',0,'N',22,'N','N','N','Y','d2e5a4a0-503b-4679-a8e1-6473be2a54da','Y','LBR_C_DocTypeBoleto_ID','Document type used for Boleto generated from this document','The Document Type for Boleto indicates the document type that will be used when an Boleto is generated from this document. This field will display only for some base document type.','Document Type for Boleto','Y',TO_DATE('2014-09-04 09:44:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-09-04 09:44:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000383,18,170,217,1000013,0,'LBR')
;

-- Sep 4, 2014 9:44:35 AM BRT
UPDATE AD_Column SET FKConstraintName='LBRCDocTypeBoleto_CDocType', FKConstraintType='N',Updated=TO_DATE('2014-09-04 09:44:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001253
;

-- Sep 4, 2014 9:44:35 AM BRT
ALTER TABLE C_DocType ADD LBR_C_DocTypeBoleto_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 4, 2014 9:44:37 AM BRT
ALTER TABLE C_DocType ADD CONSTRAINT LBRCDocTypeBoleto_CDocType FOREIGN KEY (LBR_C_DocTypeBoleto_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Sep 4, 2014 9:45:02 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',167,22,'N','N',460,'Y',1002045,'N','The Document Type for Boleto indicates the document type that will be used when an Boleto is generated from this document. This field will display only for some base document type.','LBR','Document type used for Boleto generated from this document','Document Type for Boleto','081c146f-a197-4834-9b2d-dd8b657ee585','N','Y',0,0,0,TO_DATE('2014-09-04 09:45:02','YYYY-MM-DD HH24:MI:SS'),'Y','Y',410,0,2,1001253,TO_DATE('2014-09-04 09:45:02','YYYY-MM-DD HH24:MI:SS'))
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001709
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1002045
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=807
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=808
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=54233
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=54230
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=54232
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=10345
;

-- Sep 4, 2014 9:45:39 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=10346
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=10481
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=10480
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=58859
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=10371
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=10528
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=10340
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=200004
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=6567
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3125
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001511
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001512
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001513
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001514
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001515
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001710
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001711
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001935
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1001936
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1001937
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1001938
;

-- Sep 4, 2014 9:45:40 AM BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1001939
;

-- Sep 4, 2014 9:46:09 AM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-09-04 09:46:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002045
;

-- Sep 4, 2014 9:48:07 AM BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC'' | @DocBaseType@=''ARI'' ',Updated=TO_DATE('2014-09-04 09:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1002045
;

-- 04/09/2014 17h26min28s BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES ('I','CNAB File Generated',1000023,'LBR','0b43f08d-b837-428d-a90a-13786dd91ba8','LBR_CNABGenerated','Y',TO_DATE('2014-09-04 17:26:28','YYYY-MM-DD HH24:MI:SS'),0,0,0,0,TO_DATE('2014-09-04 17:26:28','YYYY-MM-DD HH24:MI:SS'))
;

-- 04/09/2014 17h43min7s BRT
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType,Created) VALUES (1000006,'O','Y','Gera Aviso para o usuário que gerou ou retornou um arquivo CNAB, com o respectivo arquivo anexado','6272ec12-4d3d-4e58-a271-e43d1d3e1bd0',TO_DATE('2014-09-04 17:43:07','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_CNAB_CREATE_NOTICE',0,'LBR',TO_DATE('2014-09-04 17:43:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 05/09/2014 15h29min51s BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-09-05 15:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001138
;

-- 05/09/2014 15h29min57s BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-09-05 15:29:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001137
;

-- 05/09/2014 15h30min4s BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-09-05 15:30:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001136
;

SELECT lbr_register_migration_script('201408251500.sql') FROM dual
;

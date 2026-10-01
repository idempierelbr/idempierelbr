-- Layout da janela MDF-e: ordem, grupos e emparelhamento dos campos
SELECT register_migration_script('202609081460_LBRMDFeJanelaLayout.sql') FROM dual;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800025,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Identificacao (ide)','LBR','C','N','01a0834f-a871-70cb-9f18-90fa88dc22d7'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800025)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800026,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Situacao e protocolo','LBR','C','N','01a0834f-a871-751e-ac10-1b8ce088361c'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800026)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800027,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Veiculo de tracao (rodo)','LBR','C','N','01a0834f-a871-73ab-9c54-7e1f7279e8a1'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800027)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800028,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Produto predominante','LBR','C','N','01a0834f-a871-7b90-8c81-7b65ddbc5cf5'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800028)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800029,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Totalizadores (tot)','LBR','C','N','01a0834f-a871-7b73-8539-38887da2aa12'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800029)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800030,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Informacoes adicionais','LBR','C','N','01a0834f-a871-7049-a3fb-d60ccf00c719'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800030)
;

-- 8 de set. de 2026 17:00:00 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU)
SELECT 800031,0,0,'Y',TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Responsavel tecnico','LBR','C','N','01a0834f-a871-71b6-857a-24dd8ad92afc'
 WHERE NOT EXISTS (SELECT 1 FROM AD_FieldGroup WHERE AD_FieldGroup_ID=800031)
;

UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802447
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802448
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802440
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802441
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802446
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802442
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802443
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802444
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802445
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802449
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802450
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802451
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802452
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802460
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802461
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802453
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802454
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802459
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802455
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802456
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802457
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802458
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802462
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802463
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802464
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802465
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802466
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802467
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802468
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802469
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802470
;
UPDATE AD_Field SET SeqNo=120, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=120, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802471
;
UPDATE AD_Field SET SeqNo=130, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=130, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802472
;
UPDATE AD_Field SET SeqNo=140, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=140, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802473
;
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=150, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802474
;
UPDATE AD_Field SET SeqNo=160, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=160, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802475
;
UPDATE AD_Field SET SeqNo=170, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=170, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802476
;
UPDATE AD_Field SET SeqNo=180, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=180, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802477
;
UPDATE AD_Field SET SeqNo=190, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=190, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802478
;
UPDATE AD_Field SET SeqNo=200, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=200, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802479
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802487
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802488
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802480
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802481
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802486
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802482
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802483
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802484
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802485
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802489
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802490
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802491
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802492
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802493
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802501
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802502
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802494
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802495
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802500
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802496
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802497
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802498
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802499
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802503
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802504
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802505
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802513
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802514
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802506
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802507
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802512
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802508
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802509
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802510
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802511
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802515
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802516
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802517
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802518
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802519
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802527
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802528
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802520
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802521
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802526
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802522
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802523
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802524
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802525
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802529
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802530
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802531
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802532
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802540
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802541
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802533
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802534
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802539
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802535
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802536
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802537
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802538
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802542
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802543
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802544
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802545
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802546
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802554
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802555
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802547
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802548
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802553
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802549
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802550
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802551
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802552
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802556
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802557
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802558
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802559
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802560
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802561
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802562
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802563
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802571
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802572
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802564
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802565
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802570
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802566
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802567
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802568
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802569
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802573
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802574
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802575
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802576
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802577
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802578
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802579
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802580
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802581
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802589
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802590
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802582
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802583
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802588
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802584
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802585
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802586
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802587
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802591
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802592
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802593
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802594
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802595
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802596
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802597
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802598
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802599
;
UPDATE AD_Field SET SeqNo=120, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=120, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802600
;
UPDATE AD_Field SET SeqNo=130, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=130, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802601
;
UPDATE AD_Field SET SeqNo=140, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=140, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802602
;
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=150, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802603
;
UPDATE AD_Field SET SeqNo=160, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=160, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802604
;
UPDATE AD_Field SET SeqNo=170, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=170, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802605
;
UPDATE AD_Field SET SeqNo=180, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=180, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802606
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802614
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802615
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802607
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802608
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802613
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802609
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802610
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802611
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802612
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802616
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802617
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802618
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802619
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802620
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802621
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802622
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802623
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802631
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802632
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802624
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802625
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802630
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802626
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802627
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802628
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802629
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802633
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802634
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802635
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802636
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802644
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802645
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802637
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802638
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802643
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802639
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802640
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802641
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802642
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802646
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802647
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802648
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802649
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802650
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802651
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802652
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802653
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802654
;
UPDATE AD_Field SET SeqNo=120, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=120, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802655
;
UPDATE AD_Field SET SeqNo=130, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=130, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802656
;
UPDATE AD_Field SET SeqNo=140, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=140, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802657
;
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=150, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802658
;
UPDATE AD_Field SET SeqNo=160, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=160, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802659
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802660
;
UPDATE AD_Field SET SeqNo=170, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=170, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802661
;
UPDATE AD_Field SET SeqNo=180, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=180, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802662
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802670
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802671
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802663
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802664
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802669
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802665
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802666
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802667
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802668
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802672
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802673
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802674
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802675
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802676
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802684
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802685
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802677
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802678
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802683
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802679
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802680
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802681
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802682
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802686
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802687
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802688
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802689
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802690
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802691
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802692
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802693
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802694
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802702
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802703
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802695
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802696
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802701
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802697
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802698
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802699
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802700
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802704
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802705
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802706
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802707
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802708
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802709
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802710
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802711
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802719
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802720
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802712
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802713
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802718
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802714
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802715
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802716
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802717
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802721
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802722
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802723
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802731
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802732
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802724
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802725
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802730
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802726
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802727
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802728
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802729
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802733
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802734
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802735
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802736
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802737
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802745
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802746
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802738
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802739
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802744
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802740
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802741
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802742
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802743
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802747
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802748
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802749
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802750
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802751
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802362
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802363
;
UPDATE AD_Field SET SeqNo=10, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=10, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802355
;
UPDATE AD_Field SET SeqNo=20, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=20, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802356
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802361
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802357
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802358
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802359
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802360
;
UPDATE AD_Field SET SeqNo=30, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=30, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802365
;
UPDATE AD_Field SET SeqNo=40, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=40, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802368
;
UPDATE AD_Field SET SeqNo=50, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=50, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802367
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802370
;
UPDATE AD_Field SET SeqNo=60, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=60, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802364
;
UPDATE AD_Field SET SeqNo=70, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=70, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802373
;
UPDATE AD_Field SET SeqNo=440, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=440, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802409
;
UPDATE AD_Field SET SeqNo=80, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=80, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802419
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802371
;
UPDATE AD_Field SET SeqNo=0, IsDisplayed='N', IsSameLine='N', IsDisplayedGrid='N', SeqNoGrid=0, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-08 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802369
;
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=90, AD_FieldGroup_ID=NULL, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802427
;
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=100, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802366
;
UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=110, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802372
;
UPDATE AD_Field SET SeqNo=120, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=120, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802374
;
UPDATE AD_Field SET SeqNo=130, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=130, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802375
;
UPDATE AD_Field SET SeqNo=140, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=140, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802376
;
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=150, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802377
;
UPDATE AD_Field SET SeqNo=160, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=160, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802378
;
UPDATE AD_Field SET SeqNo=170, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=170, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802379
;
UPDATE AD_Field SET SeqNo=180, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=180, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802380
;
UPDATE AD_Field SET SeqNo=190, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=190, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802381
;
UPDATE AD_Field SET SeqNo=200, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=200, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802382
;
UPDATE AD_Field SET SeqNo=210, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=210, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802383
;
UPDATE AD_Field SET SeqNo=220, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=220, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802384
;
UPDATE AD_Field SET SeqNo=230, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=230, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802385
;
UPDATE AD_Field SET SeqNo=240, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=240, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802386
;
UPDATE AD_Field SET SeqNo=250, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=250, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802387
;
UPDATE AD_Field SET SeqNo=260, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=260, AD_FieldGroup_ID=800025, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802388
;
UPDATE AD_Field SET SeqNo=270, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=270, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802420
;
UPDATE AD_Field SET SeqNo=280, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=280, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802421
;
UPDATE AD_Field SET SeqNo=290, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=290, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802422
;
UPDATE AD_Field SET SeqNo=300, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=300, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802423
;
UPDATE AD_Field SET SeqNo=320, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=320, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802424
;
UPDATE AD_Field SET SeqNo=310, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=310, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802425
;
UPDATE AD_Field SET SeqNo=330, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=330, AD_FieldGroup_ID=800026, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802426
;
UPDATE AD_Field SET SeqNo=340, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=340, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802399
;
UPDATE AD_Field SET SeqNo=350, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=350, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802400
;
UPDATE AD_Field SET SeqNo=360, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=360, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802401
;
UPDATE AD_Field SET SeqNo=370, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=370, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802402
;
UPDATE AD_Field SET SeqNo=380, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=380, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802403
;
UPDATE AD_Field SET SeqNo=390, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=390, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802404
;
UPDATE AD_Field SET SeqNo=400, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=400, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802405
;
UPDATE AD_Field SET SeqNo=410, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=410, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802406
;
UPDATE AD_Field SET SeqNo=420, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=420, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802407
;
UPDATE AD_Field SET SeqNo=430, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=430, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802408
;
UPDATE AD_Field SET SeqNo=450, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=450, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802410
;
UPDATE AD_Field SET SeqNo=460, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=460, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802411
;
UPDATE AD_Field SET SeqNo=500, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=500, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802412
;
UPDATE AD_Field SET SeqNo=470, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=470, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802413
;
UPDATE AD_Field SET SeqNo=480, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=480, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802414
;
UPDATE AD_Field SET SeqNo=490, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=490, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802415
;
UPDATE AD_Field SET SeqNo=510, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=510, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802416
;
UPDATE AD_Field SET SeqNo=530, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=530, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802438
;
UPDATE AD_Field SET SeqNo=520, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=520, AD_FieldGroup_ID=800027, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802439
;
UPDATE AD_Field SET SeqNo=540, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=540, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802389
;
UPDATE AD_Field SET SeqNo=550, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=550, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802390
;
UPDATE AD_Field SET SeqNo=560, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=560, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802391
;
UPDATE AD_Field SET SeqNo=570, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=570, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802392
;
UPDATE AD_Field SET SeqNo=580, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=580, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802428
;
UPDATE AD_Field SET SeqNo=590, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=590, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802429
;
UPDATE AD_Field SET SeqNo=600, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=600, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802430
;
UPDATE AD_Field SET SeqNo=610, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=610, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802431
;
UPDATE AD_Field SET SeqNo=620, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=620, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802432
;
UPDATE AD_Field SET SeqNo=630, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=630, AD_FieldGroup_ID=800028, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802433
;
UPDATE AD_Field SET SeqNo=650, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=650, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802393
;
UPDATE AD_Field SET SeqNo=640, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=640, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802394
;
UPDATE AD_Field SET SeqNo=660, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=660, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802395
;
UPDATE AD_Field SET SeqNo=670, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=670, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802396
;
UPDATE AD_Field SET SeqNo=690, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=690, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802397
;
UPDATE AD_Field SET SeqNo=680, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=680, AD_FieldGroup_ID=800029, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802398
;
UPDATE AD_Field SET SeqNo=700, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=700, AD_FieldGroup_ID=800030, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802417
;
UPDATE AD_Field SET SeqNo=710, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=710, AD_FieldGroup_ID=800030, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802418
;
UPDATE AD_Field SET SeqNo=720, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=720, AD_FieldGroup_ID=800031, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802434
;
UPDATE AD_Field SET SeqNo=730, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=730, AD_FieldGroup_ID=800031, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802435
;
UPDATE AD_Field SET SeqNo=740, IsDisplayed='Y', IsSameLine='N', IsDisplayedGrid='Y', SeqNoGrid=740, AD_FieldGroup_ID=800031, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802436
;
UPDATE AD_Field SET SeqNo=750, IsDisplayed='Y', IsSameLine='Y', IsDisplayedGrid='Y', SeqNoGrid=750, AD_FieldGroup_ID=800031, Updated=TO_TIMESTAMP('2026-09-09 12:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=802437
;

UPDATE AD_Tab SET SeqNo=10, TabLevel=0, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFe')
;

UPDATE AD_Tab SET SeqNo=20, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeCondutor')
;

UPDATE AD_Tab SET SeqNo=30, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeReboque')
;

UPDATE AD_Tab SET SeqNo=40, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeMunCarrega')
;

UPDATE AD_Tab SET SeqNo=50, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFePercurso')
;

UPDATE AD_Tab SET SeqNo=60, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeMunDescarga')
;

UPDATE AD_Tab SET SeqNo=70, TabLevel=2, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeDoc')
;

UPDATE AD_Tab SET SeqNo=80, TabLevel=3, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFePerigoso')
;

UPDATE AD_Tab SET SeqNo=90, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeLacre')
;

UPDATE AD_Tab SET SeqNo=100, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeCIOT')
;

UPDATE AD_Tab SET SeqNo=110, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeValePed')
;

UPDATE AD_Tab SET SeqNo=120, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeContratante')
;

UPDATE AD_Tab SET SeqNo=130, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeInfPag')
;

UPDATE AD_Tab SET SeqNo=140, TabLevel=2, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeComp')
;

UPDATE AD_Tab SET SeqNo=150, TabLevel=2, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFePrazo')
;

UPDATE AD_Tab SET SeqNo=160, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeSeg')
;

UPDATE AD_Tab SET SeqNo=170, TabLevel=2, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeAverb')
;

UPDATE AD_Tab SET SeqNo=180, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeAutXML')
;

UPDATE AD_Tab SET SeqNo=190, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeEvento')
;

UPDATE AD_Tab SET SeqNo=200, TabLevel=1, Updated=TO_TIMESTAMP('2026-09-08 17:30:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Window_ID=800038 AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_MDFeXML')
;

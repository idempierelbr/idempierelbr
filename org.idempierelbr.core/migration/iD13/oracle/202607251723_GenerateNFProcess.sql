-- 
SELECT register_migration_script('202607251723_GenerateNFProcess.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 25 de jul. de 2026 17:23:06 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800105,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:23:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:23:05','YYYY-MM-DD HH24:MI:SS'),10,'Generate Debit/Credit NF-e','Generate Debit/Credit NF-e','N','LBR_GenerateNFDebitCredit','N','org.idempierelbr.nfe.process.GenerateNFDebitCredit','3','LBR',0,0,'N','Y','N','019f9af2-1c95-7e7e-ae4a-742895f7655f','P')
;

-- 25 de jul. de 2026 17:26:14 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU,ShowInactive) VALUES (800074,'LBR_NFDCType','L',0,0,'Y',TO_TIMESTAMP('2026-07-25 17:26:13','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:26:13','YYYY-MM-DD HH24:MI:SS'),10,'LBR','N','019f9af4-faf5-79dd-94ea-0e4aff10a6cb','N')
;

-- 25 de jul. de 2026 17:26:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800296,'Nota de Débito',800074,'D',0,0,'Y',TO_TIMESTAMP('2026-07-25 17:26:28','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:26:28','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9af5-34eb-73c3-80dd-8f2934ff713a')
;

-- 25 de jul. de 2026 17:26:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800297,'Nota de Crédito',800074,'C',0,0,'Y',TO_TIMESTAMP('2026-07-25 17:26:40','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:26:40','YYYY-MM-DD HH24:MI:SS'),10,'LBR','019f9af5-621f-7b49-a93c-c63fba2df754')
;

-- 25 de jul. de 2026 17:32:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800629,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:32:16','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:32:16','YYYY-MM-DD HH24:MI:SS'),10,'LBR_NFDCType','Tipo de Nota','Tipo de Nota','LBR','019f9afa-8589-7277-9372-27964eafcea0')
;

-- 25 de jul. de 2026 17:33:10 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800147,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:33:09','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:33:09','YYYY-MM-DD HH24:MI:SS'),10,'Tipo de Nota',800105,10,17,800074,'N',1,'Y','-1','LBR_NFDCType','Y','LBR',800629,'019f9afb-54e8-720d-b412-3333a7869835','N','N','D','N')
;

-- 25 de jul. de 2026 17:35:00 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800148,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:35:00','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:35:00','YYYY-MM-DD HH24:MI:SS'),10,'NFe Debit Type',800105,20,17,800072,'N',2,'N','-1','LBR_tpNFDebito','Y','LBR',800627,'@LBR_NFDCType@=''D''','019f9afd-0431-7fe4-a3a5-5b4972321ca1','N','@LBR_NFDCType@=''D''','N','D','N')
;

-- 25 de jul. de 2026 17:35:52 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800149,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:35:50','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:35:50','YYYY-MM-DD HH24:MI:SS'),10,'NFe Credit Type',800105,30,17,800073,'N',2,'N','LBR_tpNFCredito','Y','LBR',800628,'@LBR_NFDCType@=''C''','019f9afd-cccf-7d5f-9dbf-9d7ad416b52a','N','@LBR_NFDCType@=''C''','N','D','N')
;

-- 25 de jul. de 2026 17:36:18 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800150,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:36:17','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:36:17','YYYY-MM-DD HH24:MI:SS'),10,'Amount',800105,40,12,'N',22,'Y','Amount','N','LBR','019f9afe-335a-7b20-8eb4-478e2e5e6dc8','N','N','D','N')
;

-- 25 de jul. de 2026 17:37:37 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800151,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:37:37','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:37:37','YYYY-MM-DD HH24:MI:SS'),10,'DocAction',800105,50,17,135,'N',219,0,'N','CO','DocAction','N','LBR','019f9aff-69d3-7266-8a8c-deded668c998','N','N','D','N')
;

-- 25 de jul. de 2026 17:39:53 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo,EntityType) VALUES (0,0,TO_TIMESTAMP('2026-07-25 17:39:53','YYYY-MM-DD HH24:MI:SS'),10,'LBR_GenerateNFDebitCredit','Y',800000,'LBR_GenerateNFDebitCredit',TO_TIMESTAMP('2026-07-25 17:39:53','YYYY-MM-DD HH24:MI:SS'),10,'N','019f9b01-7bc9-7385-b0fe-071af37a4cc1','W',(SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Tab_UU = 'e6553657-d315-48db-b056-492ee6a484ef'),800105,'DocStatus=''CO''',10,'LBR')
;

-- 25 de jul. de 2026 17:40:03 BRT
UPDATE AD_ToolBarButton SET DisplayLogic='@DocStatus@=''CO''',Updated=TO_TIMESTAMP('2026-07-25 17:40:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_ToolBarButton_ID=800000
;

-- 25 de jul. de 2026 17:53:05 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted,IsAutocomplete,DateRangeOption,IsShowNegateButton) VALUES (800152,0,0,'Y',TO_TIMESTAMP('2026-07-25 17:53:05','YYYY-MM-DD HH24:MI:SS'),10,TO_TIMESTAMP('2026-07-25 17:53:05','YYYY-MM-DD HH24:MI:SS'),10,'C_DocType_ID',800105,60,19,170,'N',(SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE AD_Val_Rule_UU = 'c3326579-9cca-4199-b1e5-6af7edb98865'),0,'Y','-1','C_DocType_ID','N','LBR','019f9b0d-91f7-751b-bf0e-c3ded0460a46','N','N','D','N')
;

-- 25 de jul. de 2026 17:53:15 BRT
UPDATE AD_Process_Para SET SeqNo=45,Updated=TO_TIMESTAMP('2026-07-25 17:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=10 WHERE AD_Process_Para_ID=800152
;


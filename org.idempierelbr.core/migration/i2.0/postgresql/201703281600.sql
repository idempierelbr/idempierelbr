-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- Mar 28, 2017 4:11:14 PM BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted) VALUES (800134,0,0,'Y',TO_TIMESTAMP('2017-03-28 16:11:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-03-28 16:11:13','YYYY-MM-DD HH24:MI:SS'),0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',800046,40,19,'N',0,'N','C_DocType_ID','Y','LBR',196,'1 = 0','d6b8151f-66c7-4e67-a10a-5f2f5236d3ec','N')
;

-- Mar 28, 2017 4:12:02 PM BRT
UPDATE AD_Process_Para SET DisplayLogic='@C_DocType_ID@=0',Updated=TO_TIMESTAMP('2017-03-28 16:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800132
;

-- Mar 28, 2017 4:12:08 PM BRT
UPDATE AD_Process_Para SET DisplayLogic='@C_DocType_ID@=0',Updated=TO_TIMESTAMP('2017-03-28 16:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800131
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- Mar 28, 2017 4:18:24 PM BRT
UPDATE AD_Process_Para SET DefaultValue='@C_DocType_ID@',Updated=TO_TIMESTAMP('2017-03-28 16:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800134
;


SELECT lbr_register_migration_script('201703281600.sql') FROM dual
;

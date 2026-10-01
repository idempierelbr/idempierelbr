-- Processos do MDF-e
SELECT register_migration_script('202609081400_LBRMDFeProcessos.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF


-- 8 de set. de 2026 14:00:07 BRT

INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,Description,AccessLevel,EntityType,Classname,IsReport,IsDirectPrint,IsBetaFunctionality,AllowMultipleExecution,ShowHelp,IsServerProcess,AD_Process_UU) VALUES (800108,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_Transmitir','Transmitir MDF-e','Assina, valida contra o schema e envia o MDF-e a SEFAZ pelo MDFeRecepcaoSinc.','3','LBR','org.idempierelbr.mdfe.process.TransmitirMDFe','N','N','N','N','Y','N','01a082c6-f54c-7e4a-80ca-eeee86d1fe49')
;

-- 8 de set. de 2026 14:00:14 BRT

INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,Description,AccessLevel,EntityType,Classname,IsReport,IsDirectPrint,IsBetaFunctionality,AllowMultipleExecution,ShowHelp,IsServerProcess,AD_Process_UU) VALUES (800109,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_Cancelar','Cancelar MDF-e','Evento 110111. So para MDF-e autorizado e nao encerrado; exige justificativa de 15 a 255 caracteres.','3','LBR','org.idempierelbr.mdfe.process.CancelarMDFe','N','N','N','N','Y','N','01a082c6-f54c-7e77-bf6e-c6555fdabeca')
;

-- 8 de set. de 2026 14:00:21 BRT

INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,Description,AccessLevel,EntityType,Classname,IsReport,IsDirectPrint,IsBetaFunctionality,AllowMultipleExecution,ShowHelp,IsServerProcess,AD_Process_UU) VALUES (800110,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_Encerrar','Encerrar MDF-e','Evento 110112. Informa municipio e data de encerramento da viagem.','3','LBR','org.idempierelbr.mdfe.process.EncerrarMDFe','N','N','N','N','Y','N','01a082c6-f54c-755f-9ecc-148c4badafd3')
;

-- 8 de set. de 2026 14:00:28 BRT

INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,Description,AccessLevel,EntityType,Classname,IsReport,IsDirectPrint,IsBetaFunctionality,AllowMultipleExecution,ShowHelp,IsServerProcess,AD_Process_UU) VALUES (800111,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_IncluirCondutor','Incluir condutor no MDF-e','Evento 110114. Acrescenta condutor a um MDF-e ja autorizado.','3','LBR','org.idempierelbr.mdfe.process.IncluirCondutorMDFe','N','N','N','N','Y','N','01a082c6-f54c-7655-9396-9619d1ae1c0b')
;

-- 8 de set. de 2026 14:00:35 BRT

INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,Description,AccessLevel,EntityType,Classname,IsReport,IsDirectPrint,IsBetaFunctionality,AllowMultipleExecution,ShowHelp,IsServerProcess,AD_Process_UU) VALUES (800112,0,0,'Y',TO_TIMESTAMP('2026-09-08 14:00:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2026-09-08 14:00:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_ImportarNFe','Importar NF-e para o MDF-e','Le as NF-e autorizadas e monta os municipios de descarregamento com suas chaves.','3','LBR','org.idempierelbr.mdfe.process.ImportarNFeMDFe','N','N','N','N','Y','N','01a082c6-f54c-74d8-b180-79383b96855a')
;

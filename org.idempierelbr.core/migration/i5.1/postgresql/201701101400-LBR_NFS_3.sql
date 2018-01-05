-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10/01/2017 10h51min33s BRST
UPDATE AD_Process SET Classname='org.idempierelbr.nfs.process.ProcQueryNFSLot',Updated=TO_TIMESTAMP('2017-01-10 10:51:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800020
;

-- 10/01/2017 10h51min43s BRST
UPDATE AD_Process SET Classname='org.idempierelbr.nfs.process.ProcSendNFSLot',Updated=TO_TIMESTAMP('2017-01-10 10:51:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800019
;

-- 10/01/2017 10h52min48s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800042,0,0,'Y',TO_TIMESTAMP('2017-01-10 10:52:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 10:52:48','YYYY-MM-DD HH24:MI:SS'),0,'Transmitir NFS-e','Processo que efetua a transmissão da NFS-e/RPS para o WebService do município.','N','RDT_ProcSendNFS','N','org.idempierelbr.nfs.process.ProcSendNFS','3','U',0,0,'N','N','Y','N','766c9d33-c60c-4b1a-9a8b-f8d9d1f4d712')
;

-- 10/01/2017 10h53min39s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800043,0,0,'Y',TO_TIMESTAMP('2017-01-10 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 10:53:39','YYYY-MM-DD HH24:MI:SS'),0,'Cancelar NFS-e','Processo que efetua o cancelamento da NFS-e diretamente no WebService da Prefeitura.','N','RDT_ProcCancelNFS','N','org.idempierelbr.nfs.process.ProcCancelNFS','3','U',0,0,'N','N','Y','N','24667e63-8670-4958-ab31-13285405e7f4')
;

-- 10/01/2017 11h22min6s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800411,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:22:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:22:05','YYYY-MM-DD HH24:MI:SS'),0,'RDT_MotivoCancelamentoNFS','Motivo de Cancelamento','Motivo de Cancelamento','U','21bda008-ecaa-47e4-970e-03d133a100cb')
;

-- 10/01/2017 11h22min40s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800045,'RDT_MotivoCancelamentoNFS','L',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:22:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:22:39','YYYY-MM-DD HH24:MI:SS'),0,'U','N','61a3c916-5954-4067-9a0b-8412cabbfea4')
;

-- 10/01/2017 11h22min59s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800197,'Erro na Emissao',800045,'1',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:22:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:22:59','YYYY-MM-DD HH24:MI:SS'),0,'U','e3729fa0-2ece-4d54-99bb-0d4af6020f7f')
;

-- 10/01/2017 11h23min18s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800198,'Servico nao prestado',800045,'2',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:23:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:23:18','YYYY-MM-DD HH24:MI:SS'),0,'U','6a04b0ea-7ac6-4025-b396-8647cbf22979')
;

-- 10/01/2017 11h23min33s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800199,'Erro de Assinatura',800045,'3',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:23:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:23:33','YYYY-MM-DD HH24:MI:SS'),0,'U','4e92b9b1-1361-43f6-818f-881a3119d052')
;

-- 10/01/2017 11h23min45s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800200,'Duplicidade da Nota',800045,'4',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:23:45','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:23:45','YYYY-MM-DD HH24:MI:SS'),0,'U','3b74425b-a171-4ae1-8956-d862efcd4dd6')
;

-- 10/01/2017 11h23min56s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800201,'Erro de processamento',800045,'5',0,0,'Y',TO_TIMESTAMP('2017-01-10 11:23:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:23:56','YYYY-MM-DD HH24:MI:SS'),0,'U','4971df9c-d622-4d81-bd1e-9ea4b0a096ea')
;

-- 10/01/2017 11h24min11s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800130,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:24:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:24:11','YYYY-MM-DD HH24:MI:SS'),0,'Motivo de Cancelamento',800043,10,17,800045,'N',0,'N','RDT_MotivoCancelamentoNFS','Y','U',800411,'d26d806a-7bef-4e82-9f8a-e8ccb32b40e1','N')
;

-- 10/01/2017 11h24min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801587,0,'Motivo de Cancelamento',800035,'RDT_MotivoCancelamentoNFS',2,'N','N','N','N','N',0,'N',17,800045,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:24:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:24:41','YYYY-MM-DD HH24:MI:SS'),0,800411,'Y','N','U','N','N','N','Y','73311707-b0bf-4961-b7a7-66722e459b74','Y',0,'N','N')
;

-- 10/01/2017 11h24min45s BRST
ALTER TABLE LBR_NFS ADD COLUMN RDT_MotivoCancelamentoNFS VARCHAR(2) DEFAULT NULL 
;

-- 10/01/2017 11h26min38s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (800412,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:26:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:26:38','YYYY-MM-DD HH24:MI:SS'),0,'RDT_MensagensRetorno','Mensagens de Retorno','Mensagens de Retorno (erros)','Mensagens de Retorno (erros)','U','536fe143-07ff-4a9e-92ea-770449091d66')
;

-- 10/01/2017 11h27min37s BRST
UPDATE AD_Reference SET Name='LBR_MotivoCancelamentoNFS',Updated=TO_TIMESTAMP('2017-01-10 11:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=800045
;

-- 10/01/2017 11h27min42s BRST
UPDATE AD_Process SET Value='LBR_ProcCancelNFS',Updated=TO_TIMESTAMP('2017-01-10 11:27:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800043
;

-- 10/01/2017 11h27min51s BRST
UPDATE AD_Element SET ColumnName='LBR_MotivoCancelamentoNFS',Updated=TO_TIMESTAMP('2017-01-10 11:27:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800411
;

-- 10/01/2017 11h27min51s BRST
UPDATE AD_Column SET ColumnName='LBR_MotivoCancelamentoNFS', Name='Motivo de Cancelamento', Description=NULL, Help=NULL WHERE AD_Element_ID=800411
;

-- 10/01/2017 11h27min51s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_MotivoCancelamentoNFS', Name='Motivo de Cancelamento', Description=NULL, Help=NULL, AD_Element_ID=800411 WHERE UPPER(ColumnName)='LBR_MOTIVOCANCELAMENTONFS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/01/2017 11h27min51s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_MotivoCancelamentoNFS', Name='Motivo de Cancelamento', Description=NULL, Help=NULL WHERE AD_Element_ID=800411 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 11h27min51s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_MotivoCancelamentoNFS', Name='Motivo de Cancelamento', Description=NULL, Help=NULL WHERE AD_Element_ID=800411 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 11h28min50s BRST
UPDATE AD_Process SET Value='LBR_ProcSendNFS',Updated=TO_TIMESTAMP('2017-01-10 11:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800042
;

-- 10/01/2017 11h37min31s BRST
UPDATE AD_Element SET ColumnName='LBR_MensagensRetorno',Updated=TO_TIMESTAMP('2017-01-10 11:37:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800412
;

-- 10/01/2017 11h37min31s BRST
UPDATE AD_Column SET ColumnName='LBR_MensagensRetorno', Name='Mensagens de Retorno', Description='Mensagens de Retorno (erros)', Help=NULL WHERE AD_Element_ID=800412
;

-- 10/01/2017 11h37min31s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_MensagensRetorno', Name='Mensagens de Retorno', Description='Mensagens de Retorno (erros)', Help=NULL, AD_Element_ID=800412 WHERE UPPER(ColumnName)='LBR_MENSAGENSRETORNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/01/2017 11h37min31s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_MensagensRetorno', Name='Mensagens de Retorno', Description='Mensagens de Retorno (erros)', Help=NULL WHERE AD_Element_ID=800412 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 11h37min31s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_MensagensRetorno', Name='Mensagens de Retorno', Description='Mensagens de Retorno (erros)', Help=NULL WHERE AD_Element_ID=800412 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 11h37min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801588,0,'Mensagens de Retorno','Mensagens de Retorno (erros)',800035,'LBR_MensagensRetorno',2048,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:37:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:37:48','YYYY-MM-DD HH24:MI:SS'),0,800412,'Y','N','U','N','N','N','Y','40128a68-8a28-4dbf-9bba-d50936c4dc97','Y',0,'N','N')
;

-- 10/01/2017 11h37min49s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_MensagensRetorno VARCHAR(2048) DEFAULT NULL 
;

-- 10/01/2017 11h38min15s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800413,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:38:15','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:38:15','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcCancelNFS','Cancelar NFS-e','Cancelar NFS-e','U','9633355f-fc6d-4591-b76b-dd82ee08d848')
;

-- 10/01/2017 11h39min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801589,0,'Cancelar NFS-e',800035,'LBR_ProcCancelNFS',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:39:06','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:39:06','YYYY-MM-DD HH24:MI:SS'),0,800413,'Y',800043,'N','U','N','N','N','Y','e87204ec-9257-4a47-bbd0-902814930617','Y',0,'B','N')
;

-- 10/01/2017 11h39min25s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800414,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:39:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:39:25','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcSendNFS','Transmitir NFS-e','Transmitir NFS-e','U','eb043370-4796-4ec5-ab84-b3ee0eef1a1a')
;

-- 10/01/2017 11h39min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801590,0,'Transmitir NFS-e',800035,'LBR_ProcSendNFS',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:39:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:39:41','YYYY-MM-DD HH24:MI:SS'),0,800414,'Y',800042,'N','U','N','N','N','Y','f27973fd-813e-4250-98d6-f228b138b200','Y',0,'B','N','N')
;

-- 10/01/2017 11h39min43s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_ProcSendNFS CHAR(1) DEFAULT NULL 
;

-- 10/01/2017 11h39min48s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_ProcCancelNFS CHAR(1) DEFAULT NULL 
;
-- 10/01/2017 11h59min15s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800044,0,0,'Y',TO_TIMESTAMP('2017-01-10 11:59:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 11:59:14','YYYY-MM-DD HH24:MI:SS'),0,'Imprimir DANFE','N','LBR_ProcPrintDANFE','N','org.idempierelbr.nfs.process.ProcPrintDANFE','3','U',0,0,'N','N','Y','N','6a39e03b-f29b-4cc8-baa1-2dda5c2679ed')
;

-- 10/01/2017 12h0min3s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800415,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:00:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:00:02','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcPrintDANFE','Imprimir DANFE','Imprimir DANFE','U','7e620bb6-da6b-430e-8d1a-fa4ec1df0d64')
;

-- 10/01/2017 12h0min35s BRST
UPDATE AD_Process SET Value='LBR_ProcPrintNFS',Updated=TO_TIMESTAMP('2017-01-10 12:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=800044
;

-- 10/01/2017 12h0min49s BRST
UPDATE AD_Element SET ColumnName='LBR_ProcPrintNFS',Updated=TO_TIMESTAMP('2017-01-10 12:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800415
;

-- 10/01/2017 12h0min49s BRST
UPDATE AD_Column SET ColumnName='LBR_ProcPrintNFS', Name='Imprimir DANFE', Description=NULL, Help=NULL WHERE AD_Element_ID=800415
;

-- 10/01/2017 12h0min49s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_ProcPrintNFS', Name='Imprimir DANFE', Description=NULL, Help=NULL, AD_Element_ID=800415 WHERE UPPER(ColumnName)='LBR_PROCPRINTNFS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/01/2017 12h0min49s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_ProcPrintNFS', Name='Imprimir DANFE', Description=NULL, Help=NULL WHERE AD_Element_ID=800415 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 12h0min49s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_ProcPrintNFS', Name='Imprimir DANFE', Description=NULL, Help=NULL WHERE AD_Element_ID=800415 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 12h1min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801592,0,'Imprimir DANFE',800035,'LBR_ProcPrintNFS',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:01:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:01:38','YYYY-MM-DD HH24:MI:SS'),0,800415,'Y',800044,'N','U','N','N','N','Y','46107670-87a7-415e-aef8-37fbffa1613f','Y',0,'B','N')
;

-- 10/01/2017 12h1min40s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_ProcPrintNFS CHAR(1) DEFAULT NULL 
;

-- 10/01/2017 12h3min40s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (800045,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:03:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:03:40','YYYY-MM-DD HH24:MI:SS'),0,'Enviar por e-Mail','N','LBR_ProcSendEMail','N','org.idempierelbr.nfs.process.ProcSendEMail','3','U',0,0,'N','N','Y','N','7c280c6a-470b-4077-aa63-692ccdb1d032')
;

-- 10/01/2017 12h4min47s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800416,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:04:47','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:04:47','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ProcSendEMail','Enviar por e-Mail','Enviar por e-Mail','U','6acabfb2-e285-4ad8-9788-f4c982216f95')
;

-- 10/01/2017 12h5min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801593,0,'Enviar por e-Mail',800035,'LBR_ProcSendEMail',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:05:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:05:12','YYYY-MM-DD HH24:MI:SS'),0,800416,'Y',800045,'N','U','N','N','N','Y','19a238ee-b5e3-4185-838b-9d5c1ecfee99','Y',0,'B','N')
;

-- 10/01/2017 12h5min14s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_ProcSendEMail CHAR(1) DEFAULT NULL 
;

-- 10/01/2017 12h7min8s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800046,'LBR_NFSConfig','T',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:07:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:07:07','YYYY-MM-DD HH24:MI:SS'),0,'U','N','33f6efb7-3e21-42ba-b696-1d18d5863cc4')
;

-- 10/01/2017 12h8min17s BRST
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Window_ID,AD_Ref_Table_UU) VALUES (800046,800041,801233,801239,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:08:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:08:17','YYYY-MM-DD HH24:MI:SS'),0,'N','U',800016,'6c1420a9-09d5-44a8-9d88-69e67b2d9d92')
;

-- 10/01/2017 12h9min16s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=800046, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:09:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801257
;

-- 10/01/2017 12h10min54s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801342,'Motivo de Cancelamento',800043,801587,'Y',2,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','753e9074-3a23-4bb0-81a4-547e754cdff4','Y',520,2)
;

-- 10/01/2017 12h10min54s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (801343,'Mensagens de Retorno','Mensagens de Retorno (erros)',800043,801588,'Y',2048,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','fc5016a6-f72e-4de6-97e8-bfdb68cf7f65','Y',530,5,3)
;

-- 10/01/2017 12h10min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801344,'Cancelar NFS-e',800043,801589,'Y',1,440,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','5ab1bd41-1382-41e0-8ccc-11e214e43443','Y',540,2,2)
;

-- 10/01/2017 12h10min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801345,'Transmitir NFS-e',800043,801590,'Y',1,450,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','07f5b46a-08bc-4f40-ac3f-8a17b1dd6731','Y',550,2,2)
;

-- 10/01/2017 12h10min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801346,'Imprimir DANFE',800043,801592,'Y',1,460,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','cf1ff310-0dda-44fb-9ab0-6f65c96c7b9c','Y',560,2,2)
;

-- 10/01/2017 12h10min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801347,'Enviar por e-Mail',800043,801593,'Y',1,470,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:10:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','0080f46d-3891-43dd-9241-caefaa075f8f','Y',570,2,2)
;

-- 10/01/2017 12h11min31s BRST
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800016,0,0,'Y',TO_TIMESTAMP('2017-01-10 12:11:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 12:11:31','YYYY-MM-DD HH24:MI:SS'),0,'Ações da NFS-e','U','C','N','4325dad0-d6ba-4ed4-8f4f-6529d8932cc0')
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801342
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, NumLines=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801343
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801022
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801028
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801029
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801030
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801031
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801032
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801033
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_FieldGroup_ID=800016, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801345
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, AD_FieldGroup_ID=800016, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801344
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801347
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801346
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801002
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801003
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801138
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801128
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801129
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801026
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801027
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801120
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801121
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801014
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801020
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801018
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801019
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801005
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801017
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801006
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801016
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801007
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801008
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801009
;

-- 10/01/2017 12h18min48s BRST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 12:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 10/01/2017 14h51min39s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_MotivoCancelamentoNFS VARCHAR(2) DEFAULT NULL 
;

-- 10/01/2017 15h0min13s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800417,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:00:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:00:13','YYYY-MM-DD HH24:MI:SS'),0,'LBR_ServiceCodeOfCity','Código de Tributação do Município','Código de Tributação do Município','U','09011cf2-c463-447c-a831-2af666f9b7ce')
;

-- 10/01/2017 15h0min49s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801594,0,'Código de Tributação do Município',1000032,'LBR_ServiceCodeOfCity',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:00:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:00:49','YYYY-MM-DD HH24:MI:SS'),0,800417,'Y','N','U','N','N','N','Y','ff5abd02-750f-462a-a433-ea01a7cca62b','Y',0,'N','N')
;

-- 10/01/2017 15h0min51s BRST
ALTER TABLE LBR_DocLine_ISSQN ADD COLUMN LBR_ServiceCodeOfCity VARCHAR(60) DEFAULT NULL 
;

-- 10/01/2017 15h1min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801595,0,'Código de Tributação do Município',208,'LBR_ServiceCodeOfCity',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:01:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:01:04','YYYY-MM-DD HH24:MI:SS'),0,800417,'Y','N','U','N','N','N','Y','59a07e2e-b009-4bfc-a001-5dccdae4a168','Y',0,'N','N','N')
;

-- 10/01/2017 15h1min5s BRST
ALTER TABLE M_Product ADD COLUMN LBR_ServiceCodeOfCity VARCHAR(60) DEFAULT NULL 
;

-- 10/01/2017 15h1min33s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801348,'Código de Tributação do Município',800045,801594,'Y',60,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:01:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:01:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','9995ce8c-9fce-4a7a-813b-83b24aa38946','Y',270,5)
;

-- 10/01/2017 15h2min2s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801071
;

-- 10/01/2017 15h2min2s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801072
;

-- 10/01/2017 15h2min2s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801091
;

-- 10/01/2017 15h2min2s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801348
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801074
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801090
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801096
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801095
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801078
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801079
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801086
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801085
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801082
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801084
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801122
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801073
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801089
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801087
;

-- 10/01/2017 15h2min3s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801088
;

-- 10/01/2017 15h2min34s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801349,'Código de Tributação do Município',1000032,801594,'Y',60,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:02:34','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:02:34','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','4ca79c7e-7189-4c7a-9098-e9d5250cc686','Y',240,5)
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000449
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000450
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001557
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801349
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801102
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001556
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001562
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001561
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000454
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000455
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001551
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001552
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001550
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000458
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800511
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001555
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001553
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001554
;

-- 10/01/2017 15h3min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801101
;

-- 10/01/2017 15h3min44s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801350,'Código de Tributação do Município',1000039,801594,'Y',60,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:03:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:03:43','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','3748dcc9-50ef-487d-826b-a240765a9bab','Y',240,5)
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000598
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000599
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001583
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801350
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801105
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001582
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001588
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001587
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000600
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000601
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001577
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001578
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000605
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001576
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801103
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001581
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001579
;

-- 10/01/2017 15h3min59s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001580
;

-- 10/01/2017 15h4min0s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801104
;

-- 10/01/2017 15h14min21s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop) VALUES (800061,'Outros Impostos','LBR_DocLine_OTHER',0,'3',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:14:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:14:21','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','N','N','U','N','N','L','N','Y','b0b29fec-f735-4694-ab31-92c6437926e5','N','N')
;

-- 10/01/2017 15h14min21s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DocLine_OTHER',1000000,'N','N','Table LBR_DocLine_OTHER','Y','Y',0,0,TO_TIMESTAMP('2017-01-10 15:14:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:14:21','YYYY-MM-DD HH24:MI:SS'),0,800290,'Y',1000000,1,200000,'340126b9-5cc6-4dec-87ff-de7c210e6269')
;

-- 10/01/2017 15h16min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801596,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800061,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:07','YYYY-MM-DD HH24:MI:SS'),0,102,'N','N','U','N','N','N','Y','95e5047e-9f1a-4cc0-81b5-243f93a089f7','N',0,'N','N','N')
;

-- 10/01/2017 15h16min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801597,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800061,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,113,'N','N','U','N','N','N','Y','64168524-9f04-4f6e-8b2d-857a6613851d','N',0,'N','N','N')
;

-- 10/01/2017 15h16min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801598,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',800061,'Created',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,245,'N','N','U','N','N','N','Y','0f222b4c-d15b-4421-9b98-56105b5c5494','N',0,'N','N','N')
;

-- 10/01/2017 15h16min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801599,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',800061,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,246,'N','N','U','N','N','N','Y','6f2fedf1-a655-4780-b435-71db7c442b28','N',0,'N','N','N')
;

-- 10/01/2017 15h16min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801600,0,'Description','Optional short description of the record','A description is limited to 255 characters.',800061,'Description',255,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,275,'Y','Y','U','N','N','N','Y','12477e19-ba9a-4df5-a5a2-23e6f3ee952d','Y',0,'N','N','N')
;

-- 10/01/2017 15h16min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801601,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800061,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:08','YYYY-MM-DD HH24:MI:SS'),0,348,'Y','N','U','N','N','N','Y','41c48451-b4a6-49a5-85e8-59b5c61056a4','N',0,'N','N','N')
;

-- 10/01/2017 15h16min10s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800418,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DocLine_OTHER_ID','Outros Impostos','Outros Impostos','U','aa4b503d-6225-4863-91d4-e2466b9e35e9')
;

-- 10/01/2017 15h16min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801602,0,'Outros Impostos',800061,'LBR_DocLine_OTHER_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,800418,'N','N','U','N','N','N','Y','c378c329-1a77-4298-934b-5b6958889f11','N',0,'N','N','N')
;

-- 10/01/2017 15h16min10s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800419,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,'LBR_DocLine_OTHER_UU','LBR_DocLine_OTHER_UU','LBR_DocLine_OTHER_UU','U','93a4a086-904f-4f3f-b863-d9f931d5c96c')
;

-- 10/01/2017 15h16min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801603,0,'LBR_DocLine_OTHER_UU',800061,'LBR_DocLine_OTHER_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,800419,'N','N','U','N','N','N','Y','881d392f-7cae-45e8-9ce4-2e9445d9a229','N',0,'N','N','N')
;

-- 10/01/2017 15h16min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801604,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',800061,'Updated',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:10','YYYY-MM-DD HH24:MI:SS'),0,607,'N','N','U','N','N','N','Y','d17ed91d-4c58-4388-97f1-9be702109a3e','N',0,'N','N','N')
;

-- 10/01/2017 15h16min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801605,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',800061,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:11','YYYY-MM-DD HH24:MI:SS'),0,608,'N','N','U','N','N','N','Y','346902a3-c9c3-40dc-800b-8303756649aa','N',0,'N','N','N')
;

-- 10/01/2017 15h16min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801606,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',800061,'Value',5,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:16:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:16:11','YYYY-MM-DD HH24:MI:SS'),0,620,'Y','Y','U','N','N','N','Y','6583ece5-adaa-4180-92cd-d600b3ed4cb3','Y',0,'N','N','N')
;

-- 10/01/2017 15h16min24s BRST
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801606
;

-- 10/01/2017 15h16min24s BRST
DELETE FROM AD_Column WHERE AD_Column_ID=801606
;

-- 10/01/2017 15h16min30s BRST
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=801600
;

-- 10/01/2017 15h16min30s BRST
DELETE FROM AD_Column WHERE AD_Column_ID=801600
;

-- 10/01/2017 15h17min20s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800420,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:17:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:17:20','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CSLL_TaxBaseAmt','Base de Cálculo CSLL','Base de Cálculo CSLL','U','2d2cf316-43c0-4475-b2d6-3e8cdec1ecc1')
;

-- 10/01/2017 15h17min50s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800421,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:17:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:17:50','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CSLL_TaxRate','Alíquota CSLL','Alíquota CSLL','U','61054da9-7efe-462e-9308-8c25157bc3a5')
;

-- 10/01/2017 15h18min14s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800422,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:18:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:18:14','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CSLL_TaxAmt','Valor da CSLL','Valor da CSLL','U','71f8d2c6-ad09-4931-bd96-6751ecad813a')
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_Element SET Name='Alíquota da CSLL', PrintName='Alíquota da CSLL',Updated=TO_TIMESTAMP('2017-01-10 15:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800421
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_Column SET ColumnName='LBR_CSLL_TaxRate', Name='Alíquota da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800421
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CSLL_TaxRate', Name='Alíquota da CSLL', Description=NULL, Help=NULL, AD_Element_ID=800421 WHERE UPPER(ColumnName)='LBR_CSLL_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CSLL_TaxRate', Name='Alíquota da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800421 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_CSLL_TaxRate', Name='Alíquota da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800421 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_Field SET Name='Alíquota da CSLL', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800421) AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min20s BRST
UPDATE AD_PrintFormatItem SET PrintName='Alíquota da CSLL', Name='Alíquota da CSLL' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800421)
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_Element SET Name='Base de Cálculo da CSLL', PrintName='Base de Cálculo da CSLL',Updated=TO_TIMESTAMP('2017-01-10 15:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Element_ID=800420
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_Column SET ColumnName='LBR_CSLL_TaxBaseAmt', Name='Base de Cálculo da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800420
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CSLL_TaxBaseAmt', Name='Base de Cálculo da CSLL', Description=NULL, Help=NULL, AD_Element_ID=800420 WHERE UPPER(ColumnName)='LBR_CSLL_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CSLL_TaxBaseAmt', Name='Base de Cálculo da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800420 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_InfoColumn SET ColumnName='LBR_CSLL_TaxBaseAmt', Name='Base de Cálculo da CSLL', Description=NULL, Help=NULL WHERE AD_Element_ID=800420 AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min24s BRST
UPDATE AD_Field SET Name='Base de Cálculo da CSLL', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=800420) AND IsCentrallyMaintained='Y'
;

-- 10/01/2017 15h18min25s BRST
UPDATE AD_PrintFormatItem SET PrintName='Base de Cálculo da CSLL', Name='Base de Cálculo da CSLL' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=800420)
;

-- 10/01/2017 15h18min52s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801607,0,'Base de Cálculo da CSLL',800061,'LBR_CSLL_TaxBaseAmt',NULL,11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:18:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:18:52','YYYY-MM-DD HH24:MI:SS'),0,800420,'Y','N','U','N','N','N','Y','7301328a-98ed-451d-b598-d4fe64e6fc90','Y',0,'N','N')
;

-- 10/01/2017 15h18min53s BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRDocLineOTHER', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-01-10 15:18:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801596
;

-- 10/01/2017 15h18min53s BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRDocLineOTHER', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-01-10 15:18:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801597
;

-- 10/01/2017 15h18min53s BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRDocLineOTHER', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-01-10 15:18:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801599
;

-- 10/01/2017 15h18min53s BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRDocLineOTHER', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-01-10 15:18:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801605
;

-- 10/01/2017 15h18min53s BRST
CREATE TABLE LBR_DocLine_OTHER (AD_Client_ID NUMERIC(10) DEFAULT NULL , AD_Org_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT NULL , CreatedBy NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_CSLL_TaxBaseAmt NUMERIC DEFAULT NULL , LBR_DocLine_OTHER_ID NUMERIC(10) NOT NULL, LBR_DocLine_OTHER_UU VARCHAR(36) DEFAULT NULL , Updated TIMESTAMP DEFAULT NULL , UpdatedBy NUMERIC(10) DEFAULT NULL , CONSTRAINT LBR_DocLine_OTHER_Key PRIMARY KEY (LBR_DocLine_OTHER_ID), CONSTRAINT LBR_DocLine_OTHER_UU_idx UNIQUE (LBR_DocLine_OTHER_UU))
;

-- 10/01/2017 15h18min53s BRST
ALTER TABLE LBR_DocLine_OTHER ADD CONSTRAINT ADClient_LBRDocLineOTHER FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/01/2017 15h18min53s BRST
ALTER TABLE LBR_DocLine_OTHER ADD CONSTRAINT ADOrg_LBRDocLineOTHER FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/01/2017 15h18min53s BRST
ALTER TABLE LBR_DocLine_OTHER ADD CONSTRAINT CreatedBy_LBRDocLineOTHER FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/01/2017 15h18min53s BRST
ALTER TABLE LBR_DocLine_OTHER ADD CONSTRAINT UpdatedBy_LBRDocLineOTHER FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/01/2017 15h19min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801608,0,'Alíquota da CSLL',800061,'LBR_CSLL_TaxRate',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:19:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:19:14','YYYY-MM-DD HH24:MI:SS'),0,800421,'Y','N','U','N','N','N','Y','cf2308e3-66f9-450a-955e-70c7409d603b','Y',0,'N','N')
;

-- 10/01/2017 15h19min15s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_CSLL_TaxRate NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h19min26s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801609,0,'Valor da CSLL',800061,'LBR_CSLL_TaxAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:19:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:19:25','YYYY-MM-DD HH24:MI:SS'),0,800422,'Y','N','U','N','N','N','Y','6f856075-69f7-4e6d-a9f4-57c31c5b760b','Y',0,'N','N')
;

-- 10/01/2017 15h19min27s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_CSLL_TaxAmt NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h19min59s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800423,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:19:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:19:59','YYYY-MM-DD HH24:MI:SS'),0,'LBR_INSS_TaxBaseAmt','Base de Cálculo do INSS','Base de Cálculo do INSS','U','2fcdb752-da59-4fd5-81df-af7887a78ea5')
;

-- 10/01/2017 15h20min9s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800424,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:20:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:20:09','YYYY-MM-DD HH24:MI:SS'),0,'LBR_INSS_TaxRate','Alíquota do INSS','Alíquota do INSS','U','a2d204f3-0465-452c-9d9e-b0697b493fb1')
;

-- 10/01/2017 15h20min19s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800425,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:20:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:20:18','YYYY-MM-DD HH24:MI:SS'),0,'LBR_INSS_TaxAmt','Valor do INSS','Valor do INSS','U','775c3ee6-e017-4804-a09a-0ff5d30bff8b')
;

-- 10/01/2017 15h20min36s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800426,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:20:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:20:36','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IR_TaxBaseAmt','Base de Cálculo do IR','Base de Cálculo do IR','U','8bbc96f5-49c6-4263-b3fd-39240779fe00')
;

-- 10/01/2017 15h20min46s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800427,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:20:46','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:20:46','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IR_TaxRate','Alíquota do IR','Alíquota do IR','U','9258adc2-c392-4652-a448-d2de1b8c774e')
;

-- 10/01/2017 15h20min55s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800428,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:20:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:20:54','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IR_TaxAmt','Valor do IR','Valor do IR','U','dced8398-9427-4585-9bd7-b101906634e0')
;

-- 10/01/2017 15h21min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801610,0,'Valor do IR',800061,'LBR_IR_TaxAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:21:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:21:11','YYYY-MM-DD HH24:MI:SS'),0,800428,'Y','N','U','N','N','N','Y','e0ee2c62-12ba-4482-99d9-8d1e4a436025','Y',0,'N','N','N')
;

-- 10/01/2017 15h21min13s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_IR_TaxAmt NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h21min23s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801611,0,'Valor do INSS',800061,'LBR_INSS_TaxAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:21:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:21:23','YYYY-MM-DD HH24:MI:SS'),0,800425,'Y','N','U','N','N','N','Y','32146f7d-6889-41d9-9125-4227d1f6d52b','Y',0,'N','N','N')
;

-- 10/01/2017 15h21min24s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_INSS_TaxAmt NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h21min34s BRST
UPDATE AD_Column SET Name='Alíquota do INSS', Description=NULL, Help=NULL, ColumnName='LBR_INSS_TaxRate', AD_Element_ID=800424,Updated=TO_TIMESTAMP('2017-01-10 15:21:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801611
;

-- 10/01/2017 15h21min35s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_INSS_TaxRate NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h21min43s BRST
UPDATE AD_Column SET Name='Alíquota do IR', Description=NULL, Help=NULL, ColumnName='LBR_IR_TaxRate', AD_Element_ID=800427,Updated=TO_TIMESTAMP('2017-01-10 15:21:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801611
;

-- 10/01/2017 15h21min44s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_IR_TaxRate NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h21min54s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801612,0,'Base de Cálculo do IR',800061,'LBR_IR_TaxBaseAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:21:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:21:53','YYYY-MM-DD HH24:MI:SS'),0,800426,'Y','N','U','N','N','N','Y','a3236c25-3519-42cd-b52a-da84a0ed04f2','Y',0,'N','N','N')
;

-- 10/01/2017 15h21min54s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_IR_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h22min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801613,0,'Base de Cálculo do INSS',800061,'LBR_INSS_TaxBaseAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:22:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:22:05','YYYY-MM-DD HH24:MI:SS'),0,800423,'Y','N','U','N','N','N','Y','dc25cc0f-8216-44f8-92e0-3690008e3ac2','Y',0,'N','N','N')
;

-- 10/01/2017 15h22min7s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_INSS_TaxBaseAmt NUMERIC DEFAULT NULL 
;

-- 10/01/2017 15h23min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801614,0,'Alíquota do INSS',800061,'LBR_INSS_TaxRate',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:23:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:23:02','YYYY-MM-DD HH24:MI:SS'),0,800424,'Y','N','U','N','N','N','Y','53b43041-10bc-4c16-b26e-a09f3a81df72','Y',0,'N','N','N')
;

-- 10/01/2017 15h23min4s BRST
INSERT INTO t_alter_column values('lbr_docline_other','LBR_INSS_TaxRate','NUMERIC',null,'NULL')
;

-- 10/01/2017 15h23min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801615,0,'Valor do INSS',800061,'LBR_INSS_TaxAmt',11,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:23:11','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:23:11','YYYY-MM-DD HH24:MI:SS'),0,800425,'Y','N','U','N','N','N','Y','6a87d79c-aa03-482e-a815-9dbc9f6b4d19','Y',0,'N','N','N')
;

-- 10/01/2017 15h23min12s BRST
INSERT INTO t_alter_column values('lbr_docline_other','LBR_INSS_TaxAmt','NUMERIC',null,'NULL')
;

-- 10/01/2017 15h24min0s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (800057,'Outros Impostos',800014,50,'Y',800061,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:23:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:23:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','N','N',2,'N','U','Y','N','cb6a2d07-241a-42a5-be93-60bca9fce020','B')
;

-- 10/01/2017 15h24min28s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801616,0,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800061,'LBR_DocLine_Details_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:24:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:24:28','YYYY-MM-DD HH24:MI:SS'),0,1000094,'Y','N','U','N','N','N','Y','b45c4862-7659-4936-bcb2-4f6e9e44b421','Y',0,'N','N','N')
;

-- 10/01/2017 15h24min32s BRST
UPDATE AD_Column SET FKConstraintName='LBRDocLineDetails_LBRDocLineOT', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-01-10 15:24:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801616
;

-- 10/01/2017 15h24min32s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_DocLine_Details_ID NUMERIC(10) DEFAULT NULL 
;

-- 10/01/2017 15h24min32s BRST
ALTER TABLE LBR_DocLine_OTHER ADD CONSTRAINT LBRDocLineDetails_LBRDocLineOT FOREIGN KEY (LBR_DocLine_Details_ID) REFERENCES lbr_docline_details(lbr_docline_details_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10/01/2017 15h24min56s BRST
UPDATE AD_Tab SET SeqNo=60, AD_Column_ID=801616,Updated=TO_TIMESTAMP('2017-01-10 15:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800057
;

-- 10/01/2017 15h25min18s BRST
UPDATE AD_Tab SET SeqNo=50,Updated=TO_TIMESTAMP('2017-01-10 15:25:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800046
;

-- 10/01/2017 15h25min22s BRST
UPDATE AD_Tab SET SeqNo=40,Updated=TO_TIMESTAMP('2017-01-10 15:25:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=800057
;

-- 10/01/2017 15h25min59s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801351,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',800057,801596,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:25:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:25:59','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','54f0544c-47a0-416f-80ae-8e7e1031511a','N',2)
;

-- 10/01/2017 15h26min0s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801352,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800057,801597,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:25:59','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:25:59','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','fd828bb2-6a36-443c-a79e-c0c78ee13470','Y','Y',10,4,2)
;

-- 10/01/2017 15h26min0s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801353,'Outros Impostos',800057,801602,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','8beb893b-0a4b-493a-be7f-e0c6516f5adc','N',2)
;

-- 10/01/2017 15h26min0s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801354,'LBR_DocLine_OTHER_UU',800057,801603,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','c6a52cb5-57e1-4a99-9e19-29bc64007012','N',2)
;

-- 10/01/2017 15h26min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801355,'Base de Cálculo da CSLL',800057,801607,'Y',11,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:00','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','5dbab98e-9670-40dd-8a58-a4729052bf33','Y',20,2)
;

-- 10/01/2017 15h26min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801356,'Alíquota da CSLL',800057,801608,'Y',11,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','6568a387-1f95-4f9c-a096-a727171d3edb','Y',30,2)
;

-- 10/01/2017 15h26min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801357,'Valor da CSLL',800057,801609,'Y',11,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','12906a76-9d3f-432c-92fe-d69f486e6f2f','Y',40,2)
;

-- 10/01/2017 15h26min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801358,'Valor do IR',800057,801610,'Y',11,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','0a7a7868-9043-430b-b4d6-3d31209ee222','Y',50,2)
;

-- 10/01/2017 15h26min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801359,'Alíquota do IR',800057,801611,'Y',11,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','fc376884-f350-40ac-a761-1fa03b745c7a','Y',60,2)
;

-- 10/01/2017 15h26min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801360,'Base de Cálculo do IR',800057,801612,'Y',11,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:01','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','e95fd31c-ecf8-494b-8c7b-e8cb00e89db0','Y',70,2)
;

-- 10/01/2017 15h26min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801361,'Base de Cálculo do INSS',800057,801613,'Y',11,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','109484d6-fea9-4f7c-9c08-0b257240507b','Y',80,2)
;

-- 10/01/2017 15h26min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801362,'Alíquota do INSS',800057,801614,'Y',11,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','3b271f3c-46de-4b16-b03e-2796d96193fa','Y',90,2)
;

-- 10/01/2017 15h26min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801363,'Valor do INSS',800057,801615,'Y',11,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','b7b2bf1e-5d89-429b-9424-30a878e4607d','Y',100,2)
;

-- 10/01/2017 15h26min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801364,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800057,801616,'Y',22,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','90f2402d-69a9-43be-8faa-133606fb5fff','Y',110,2)
;

-- 10/01/2017 15h26min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801365,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800057,801601,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','10959e67-1ac6-4ad9-b0d9-c52905987c0d','Y',120,2,2)
;

-- 10/01/2017 15h26min36s BRST
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800017,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:36','YYYY-MM-DD HH24:MI:SS'),0,'INSS','U','C','N','4042830f-ef5c-4792-8295-892630022aa3')
;

-- 10/01/2017 15h26min42s BRST
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800018,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:42','YYYY-MM-DD HH24:MI:SS'),0,'IR','U','C','N','0e36bb14-56ac-4b64-b799-76ee632ac985')
;

-- 10/01/2017 15h26min49s BRST
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (800019,0,0,'Y',TO_TIMESTAMP('2017-01-10 15:26:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:26:48','YYYY-MM-DD HH24:MI:SS'),0,'CSLL','U','C','N','25b08c4b-4565-46ee-bffa-7ee1511e2784')
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET SeqNo=30, AD_FieldGroup_ID=800019, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801355
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801356
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801357
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_FieldGroup_ID=800018, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801360
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801359
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801358
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET SeqNo=90, AD_FieldGroup_ID=800017, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801361
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801362
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801363
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801365
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801364
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801354
;

-- 10/01/2017 15h27min37s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801353
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=801364
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=801351
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=801352
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=801355
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=801356
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=801357
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=801360
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=801359
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=801358
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=801361
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=801362
;

-- 10/01/2017 15h28min11s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=801363
;

-- 10/01/2017 15h28min17s BRST
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=801364
;

-- 10/01/2017 15h28min17s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=801364
;

-- 10/01/2017 15h28min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801366,'Código de Tributação do Município',180,801595,'Y',60,550,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 15:28:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 15:28:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','52b40292-b186-4f9a-99bc-987c421a2b49','Y',730,5)
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801123
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801366
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720605
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720604
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720975
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720976
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1041
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000069
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000067
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000025
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6841
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=10411
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=201343
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7646
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6343
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6344
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1319
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1320
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1321
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1322
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1032
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1031
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3743
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3746
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3744
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3745
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3747
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5910
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5911
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6130
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8307
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=58973
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8608
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720655
;

-- 10/01/2017 15h30min15s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 15:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=720656
;

-- 10/01/2017 16h51min53s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800432,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:51:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:51:53','YYYY-MM-DD HH24:MI:SS'),0,'LBR_IR_IsTaxIncluded','IR Incluso no Preço','IR Incluso no Preço','U','dde6414d-15e3-4be8-a7cb-8c9b71041ac4')
;

-- 10/01/2017 16h52min7s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800433,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:52:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:52:07','YYYY-MM-DD HH24:MI:SS'),0,'LBR_CSLL_IsTaxIncluded','CSLL Incluso no Preço','CSLL Incluso no Preço','U','3a0babc0-758f-40f8-9f0f-832316cf2e95')
;

-- 10/01/2017 16h52min33s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800434,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:52:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:52:33','YYYY-MM-DD HH24:MI:SS'),0,'LBR_INSS_IsTaxIncluded','INSS Incluso no Preço','INSS Incluso no Preço','U','158c67f4-c527-48ed-8872-3700b6adb7e5')
;

-- 10/01/2017 16h52min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801620,0,'INSS Incluso no Preço',800061,'LBR_INSS_IsTaxIncluded',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:52:44','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:52:44','YYYY-MM-DD HH24:MI:SS'),0,800434,'Y','N','U','N','N','N','Y','2d78c71f-f739-4178-8017-1455b37f5086','Y',0,'N','N')
;

-- 10/01/2017 16h52min47s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_INSS_IsTaxIncluded CHAR(1) DEFAULT NULL CHECK (LBR_INSS_IsTaxIncluded IN ('Y','N'))
;

-- 10/01/2017 16h52min54s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801621,0,'IR Incluso no Preço',800061,'LBR_IR_IsTaxIncluded',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:52:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:52:54','YYYY-MM-DD HH24:MI:SS'),0,800432,'Y','N','U','N','N','N','Y','4f09d09d-ad5e-4f1a-9fcd-8301dfaae1c8','Y',0,'N','N','N')
;

-- 10/01/2017 16h52min55s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_IR_IsTaxIncluded CHAR(1) DEFAULT NULL CHECK (LBR_IR_IsTaxIncluded IN ('Y','N'))
;

-- 10/01/2017 16h53min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801622,0,'CSLL Incluso no Preço',800061,'LBR_CSLL_IsTaxIncluded',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-01-10 16:53:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:53:02','YYYY-MM-DD HH24:MI:SS'),0,800433,'Y','N','U','N','N','N','Y','a168e0e5-3281-4c61-a485-766522a6fa1d','Y',0,'N','N','N')
;

-- 10/01/2017 16h53min3s BRST
ALTER TABLE LBR_DocLine_OTHER ADD COLUMN LBR_CSLL_IsTaxIncluded CHAR(1) DEFAULT NULL CHECK (LBR_CSLL_IsTaxIncluded IN ('Y','N'))
;

-- 10/01/2017 16h53min25s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801367,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800057,801616,'Y',22,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 16:53:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:53:25','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','5b2c3fd9-4e40-443a-ac3e-76e8c80cd850','Y',130,2)
;

-- 10/01/2017 16h53min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801368,'INSS Incluso no Preço',800057,801620,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 16:53:25','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:53:25','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','71c4af88-cbf5-4fbc-8e8e-fdd78782ed65','Y',140,2,2)
;

-- 10/01/2017 16h53min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801369,'IR Incluso no Preço',800057,801621,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 16:53:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:53:26','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','ff898dd1-fc07-4cf9-9f58-f9e92071f650','Y',150,2,2)
;

-- 10/01/2017 16h53min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801370,'CSLL Incluso no Preço',800057,801622,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 16:53:26','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 16:53:26','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','6c110e16-52bb-4ff3-a318-5a04dc7b20ed','Y',160,2,2)
;

-- 10/01/2017 16h53min48s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801351
;

-- 10/01/2017 16h53min48s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801352
;

-- 10/01/2017 16h53min48s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801355
;

-- 10/01/2017 16h53min48s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801356
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801370
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801369
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801358
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801361
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801362
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801368
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801363
;

-- 10/01/2017 16h53min49s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801367
;

-- 10/01/2017 16h53min55s BRST
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=801367
;

-- 10/01/2017 16h53min55s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=801367
;

-- 10/01/2017 16h55min53s BRST
UPDATE AD_Field SET DisplayLogic='@ProductType@=S', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 16:55:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801366
;

-- 10/01/2017 19h37min43s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800203,'Cancelado',800030,'2',0,0,'Y',TO_TIMESTAMP('2017-01-10 19:37:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 19:37:43','YYYY-MM-DD HH24:MI:SS'),0,'U','e7b88a8b-fedf-47c3-8373-f3840c254010')
;

-- 10/01/2017 20h7min8s BRST
UPDATE AD_Column SET FieldLength=60, AD_Reference_ID=10, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:07:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801129
;

-- 10/01/2017 20h8min11s BRST
INSERT INTO t_alter_column values('lbr_nfs','LBR_NFSeCodVerificacao','VARCHAR(60)',null,'NULL')
;

-- 10/01/2017 20h17min17s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Help,PrintName,EntityType,AD_Element_UU) VALUES (800437,0,0,'Y',TO_TIMESTAMP('2017-01-10 20:17:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 20:17:16','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSeID','NFS-e ID','Hash de identificação da NFS-e retornada após o processamento da mesma.','NFS-e ID','U','b365a3e0-e776-4144-af43-0dc7517222ad')
;

-- 10/01/2017 20h17min33s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801625,0,'NFS-e ID','Hash de identificação da NFS-e retornada após o processamento da mesma.',800035,'LBR_NFSeID',NULL,120,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-10 20:17:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 20:17:32','YYYY-MM-DD HH24:MI:SS'),0,800437,'Y','N','U','N','N','N','Y','87b5f14a-ec02-49aa-b8e5-92b603e54563','Y',0,'N','N')
;

-- 10/01/2017 20h17min34s BRST
ALTER TABLE LBR_NFS ADD COLUMN LBR_NFSeID VARCHAR(120) DEFAULT NULL 
;

-- 10/01/2017 20h17min53s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801373,'NFS-e ID','Hash de identificação da NFS-e retornada após o processamento da mesma.',800043,801625,'Y',120,500,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-10 20:17:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-10 20:17:52','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','4acecd2a-2423-40b1-bbc3-89fd99bdadfa','Y',600,5)
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801373
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801023
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801001
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801125
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801035
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801342
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801024
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801343
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801022
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801028
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801029
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801030
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801031
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801032
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801033
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801345
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801344
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801347
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801346
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801002
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801003
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801138
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801128
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801129
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801026
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801027
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801120
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801121
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801014
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801020
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801018
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801019
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800997
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801005
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801017
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801006
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801016
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801007
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801008
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801009
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801010
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801371
;

-- 10/01/2017 20h21min4s BRST
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801372
;

-- 10/01/2017 20h21min29s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_NFSeID@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801373
;

-- 10/01/2017 20h21min33s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_NFSeID@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801023
;

-- 10/01/2017 20h22min1s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_NFSeStatus@=2', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801342
;

-- 10/01/2017 20h23min23s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_NFSeSubstituida@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801024
;

-- 10/01/2017 20h27min25s BRST
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO & @LBR_NFSeID@='''' & @LBR_NFSeStatus@=1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:27:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801345
;

-- 10/01/2017 20h27min36s BRST
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO & @LBR_NFSeID@!'''' & @LBR_NFSeStatus@=1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801344
;

-- 10/01/2017 20h27min47s BRST
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO & @LBR_NFSeID@!'''' & @LBR_NFSeStatus@=1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:27:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801347
;

-- 10/01/2017 20h27min50s BRST
UPDATE AD_Field SET DisplayLogic='@DocStatus@=CO & @LBR_NFSeID@!'''' & @LBR_NFSeStatus@=1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-10 20:27:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801346
;

-- 10/01/2017 22h28min9s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2017-01-10 22:28:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801589
;

-- 10/01/2017 22h28min11s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2017-01-10 22:28:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801592
;

-- 10/01/2017 22h28min13s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2017-01-10 22:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801593
;

-- 10/01/2017 22h28min16s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2017-01-10 22:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801590
;

-- 11/01/2017 0h12min23s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800440,0,0,'Y',TO_TIMESTAMP('2017-01-11 00:12:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-11 00:12:22','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NFSPrintURL','URL de Impressão do DANFE','URL de Impressão do DANFE','U','4ec4b425-9a03-45a1-808b-03af42477906')
;

-- 11/01/2017 0h13min55s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801628,0,'URL de Impressão do DANFE',800042,'LBR_NFSPrintURL',512,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2017-01-11 00:13:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-11 00:13:54','YYYY-MM-DD HH24:MI:SS'),0,800440,'Y','N','U','N','N','N','Y','f8c8aa4e-ca5d-4e0e-ba2a-e2c4f205e971','Y',0,'N','N')
;

-- 11/01/2017 0h13min57s BRST
ALTER TABLE LBR_NFSeWS ADD COLUMN LBR_NFSPrintURL VARCHAR(512) DEFAULT NULL 
;

-- 11/01/2017 0h14min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801376,'URL de Impressão do DANFE',800050,801628,'Y',512,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-01-11 00:14:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-01-11 00:14:07','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','U','912d6f33-a400-413b-ab0e-084420b1e1a4','Y',70,5)
;

-- 11/01/2017 0h16min39s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-01-11 00:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801376
;

SELECT lbr_register_migration_script('201701101400-LBR_NFS_3.sql') FROM dual;
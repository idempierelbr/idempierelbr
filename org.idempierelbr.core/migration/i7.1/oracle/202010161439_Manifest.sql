SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de out de 2020 10:08:28 PDT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-15 10:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801520
;

-- 15 de out de 2020 10:10:00 PDT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (800101,0,0,'Y',TO_DATE('2020-10-15 10:10:00','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:10:00','YYYY-MM-DD HH24:MI:SS'),0,'Manifest NF-e XML','N','LBR_ManifestNFeXML','N','org.idempierelbr.nfe.process.ManifestNFeXML','3','LBR',0,0,'N','N','Y','N','530104f2-9b2d-4c67-86e7-0636e3af0b9c','P')
;

-- 15 de out de 2020 10:11:49 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800140,0,0,'Y',TO_DATE('2020-10-15 10:11:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:11:49','YYYY-MM-DD HH24:MI:SS'),0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800101,10,18,130,'N',0,'Y','-1','AD_Org_ID','Y','LBR',113,'25a658ae-fa9c-44b3-a292-8368ca50c5ab','N')
;

-- 15 de out de 2020 10:12:45 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800141,0,0,'Y',TO_DATE('2020-10-15 10:12:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:12:45','YYYY-MM-DD HH24:MI:SS'),0,'Schema Name',800101,20,10,'N',250,'N','LBR_SchemaName','Y','LBR',800457,'24df85ec-e8eb-4e97-a58b-88fea4d53aa2','N')
;

-- 15 de out de 2020 10:18:24 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800142,0,0,'Y',TO_DATE('2020-10-15 10:18:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:18:23','YYYY-MM-DD HH24:MI:SS'),0,'NSU',800101,30,10,'Y',15,'N','LBR_NSU','Y','LBR',800453,'b52d912c-2691-4097-baf1-4a82daf6feb8','N')
;

-- 15 de out de 2020 10:21:30 PDT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (800055,'LBR_UltimaManifestacaoToProc','L',0,0,'Y',TO_DATE('2020-10-15 10:21:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:21:30','YYYY-MM-DD HH24:MI:SS'),0,'LBR','N','a67ecb4b-250d-4951-8b13-ce084d2695aa')
;

-- 15 de out de 2020 10:22:04 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800215,'None',800055,'0',0,0,'Y',TO_DATE('2020-10-15 10:22:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:22:04','YYYY-MM-DD HH24:MI:SS'),0,'LBR','d024c4b9-d9db-4373-a293-1340936f2e7e')
;

-- 15 de out de 2020 10:22:40 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800216,'210210 - Ciencia da Operacao',800055,'210210 - Ciencia da Operacao',0,0,'Y',TO_DATE('2020-10-15 10:22:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:22:39','YYYY-MM-DD HH24:MI:SS'),0,'LBR','ea3f192a-4384-49e5-a1a2-e833e6cc9ef8')
;

-- 15 de out de 2020 10:23:01 PDT
UPDATE AD_Ref_List SET Value='210210',Updated=TO_DATE('2020-10-15 10:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=800216
;

-- 15 de out de 2020 10:23:40 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800143,0,0,'Y',TO_DATE('2020-10-15 10:23:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:23:39','YYYY-MM-DD HH24:MI:SS'),0,'Ultima Manifestacao',800101,40,17,800055,'N',6,'Y','-1','LBR_UltimaManifestacao','Y','LBR',800458,'e35e845a-a156-425a-9e70-2b40ac499774','N')
;

-- 15 de out de 2020 10:24:18 PDT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (800459,0,0,'Y',TO_DATE('2020-10-15 10:24:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:24:17','YYYY-MM-DD HH24:MI:SS'),0,'LBR_NovaManifestacao','Nova Manifestacao','Nova Manifestacao','LBR','fe32a6bf-a6c0-47a2-8a34-b78bc7209541')
;

-- 15 de out de 2020 10:25:28 PDT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (800144,0,0,'Y',TO_DATE('2020-10-15 10:25:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:25:28','YYYY-MM-DD HH24:MI:SS'),0,'Nova Manifestacao',800101,50,17,800054,'N',6,'Y','-1','LBR_NovaManifestacao','Y','LBR',800459,'d395ac65-9787-4edf-ad8b-424eead9e9d4','N')
;

-- 15 de out de 2020 10:27:05 PDT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (800053,'Manifest NF-e XML','Manifest NF-e XML','P',0,0,'Y',TO_DATE('2020-10-15 10:27:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-15 10:27:05','YYYY-MM-DD HH24:MI:SS'),0,'N',800101,'N','N','LBR','Y','274e5ae9-ad0e-4c9a-b95f-9025312bcb6a')
;

-- 15 de out de 2020 10:27:06 PDT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800053, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800053)
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800023
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800006
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800007
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800009
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800028
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800029
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800030
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800051
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800053
;

-- 15 de out de 2020 10:27:29 PDT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800052
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de out de 2020 03:28:13 PDT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001689
;

-- 16 de out de 2020 03:28:13 PDT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001697
;

-- 16 de out de 2020 03:28:13 PDT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001701
;

-- 16 de out de 2020 03:28:13 PDT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001693
;

-- 16 de out de 2020 03:28:13 PDT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001690
;

-- 16 de out de 2020 03:29:03 PDT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (800217,'Manifest',1000061,'MAN',0,0,'Y',TO_DATE('2020-10-16 03:29:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2020-10-16 03:29:03','YYYY-MM-DD HH24:MI:SS'),0,'LBR','42daeeff-5e97-4c11-a31a-0775d63f2198')
;

-- 16 de out de 2020 03:34:09 PDT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2020-10-16 03:34:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000948
;

-- 16 de out de 2020 03:34:19 PDT
ALTER TABLE LBR_NotaFiscalEventLine MODIFY LBR_NotaFiscal_ID NUMBER(10) DEFAULT NULL 
;

-- 16 de out de 2020 03:34:19 PDT
ALTER TABLE LBR_NotaFiscalEventLine MODIFY LBR_NotaFiscal_ID NULL
;

-- 16 de out de 2020 03:36:19 PDT
UPDATE AD_Column SET MandatoryLogic='@LBR_NFeEventType@=''CAN'' | @LBR_NFeEventType@=''CCE''',Updated=TO_DATE('2020-10-16 03:36:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000948
;

-- 16 de out de 2020 03:36:33 PDT
UPDATE AD_Field SET DisplayLogic='@LBR_NFeEventType@=''CAN'' | @LBR_NFeEventType@=''CCE''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-10-16 03:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001693
;

SELECT lbr_register_migration_script('202010161439_Manifest.sql') FROM dual;



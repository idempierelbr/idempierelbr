SET SQLBLANKLINES ON
SET DEFINE OFF

-- 01/12/2014 10h7min26s BRST
-- Issue #24 Processo para exportar XMLs de NF-e
INSERT INTO AD_Process (CopyFromProcess,Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N','This process exports the xml files related to NF-e (including the registered events).',800002,'N','N','62995fa6-fac2-43c0-9909-b1b2b67dd544','3','N','N',3,3,'Y','LBR','Export NF-e and Event XMLs to ZIP','Export NF-e and Event XMLs',0,0,'Y',0,'org.idempierelbr.nfe.process.ExportNFeXML','LBR_ProcExportNFeXML',0,TO_DATE('2014-12-01 10:07:25','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-12-01 10:07:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 01/12/2014 10h26min22s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',113,800010,'da1ae60c-a8f7-4e7a-9bd1-246a12a2a0bb','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',800002,18,'Y','Organization','AD_Org_ID','Organizational entity within client',0,'Y',10,'-1','Y',0,TO_DATE('2014-12-01 10:26:21','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,130,'LBR',TO_DATE('2014-12-01 10:26:21','YYYY-MM-DD HH24:MI:SS'))
;

-- 01/12/2014 10h30min47s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('Y',265,800011,'4b8af51c-09cb-41fb-9b10-0a0ace0ebfe8','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',800002,15,'Y','Document Date','DateDoc','Date of the Document',0,'Y',20,'Y',0,TO_DATE('2014-12-01 10:30:46','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-12-01 10:30:46','YYYY-MM-DD HH24:MI:SS'))
;

-- 01/12/2014 10h32min10s BRST
UPDATE AD_Process_Para SET Help=NULL, Name='Issue Date', Description='Issue Date', IsCentrallyMaintained='N',Updated=TO_DATE('2014-12-01 10:32:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800011
;

-- 01/12/2014 10h40min51s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created) VALUES ('N',1000232,800012,'17d2333a-870e-4883-8707-97bc8e079c51',800002,17,'N','Is Document Issued by Client/Org?','LBR_IsDocIssuedByOrg',0,'Y',30,'Y',0,TO_DATE('2014-12-01 10:40:50','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,319,'LBR',TO_DATE('2014-12-01 10:40:50','YYYY-MM-DD HH24:MI:SS'))
;

-- 01/12/2014 10h42min53s BRST
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,AD_Process_ID,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,Created) VALUES (800001,'N','Y','N',800002,'LBR','Y','Export NF-e and Event XMLs','Export NF-e and Event XMLs to ZIP','0f0472ac-e5f6-4a3b-9d87-7da50b7ef614','P','Y',0,TO_DATE('2014-12-01 10:42:52','YYYY-MM-DD HH24:MI:SS'),0,0,0,TO_DATE('2014-12-01 10:42:52','YYYY-MM-DD HH24:MI:SS'))
;

-- 01/12/2014 10h42min53s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 800001, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=800001)
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800001
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 01/12/2014 10h43min5s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=800000
;

SELECT lbr_register_migration_script('201412011508.sql') FROM dual
;

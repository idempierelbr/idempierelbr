SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14/09/2014 11h14min6s BRT
-- Form: Create Brazilian Fiscal Invoice (Nota Fiscal) From NF-e XML
INSERT INTO AD_Form (AccessLevel,Classname,AD_Form_ID,Help,IsBetaFunctionality,AD_Form_UU,Description,Name,AD_Org_ID,UpdatedBy,CreatedBy,Updated,IsActive,AD_Client_ID,EntityType,Created) VALUES ('1','org.idempierelbr.nfe.apps.form.WNFFromXMLGen',1000001,'Generate Brazilian Fiscal Invoice from NF-e XML.','N','bfe627a3-79f9-4274-9609-32b800a8623c','Select NF-e XML and generate Brazilian Fiscal Invoice','Generate NF From XML (manual)',0,0,0,TO_DATE('2014-09-14 11:14:06','YYYY-MM-DD HH24:MI:SS'),'Y',0,'LBR',TO_DATE('2014-09-14 11:14:06','YYYY-MM-DD HH24:MI:SS'))
;

-- 14/09/2014 11h17min50s BRT
INSERT INTO AD_Menu (AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_Form_ID,Created) VALUES (1000035,'N','N','N','LBR','Y','Generate NF From XML (manual)','Select NF-e XML and generate Brazilian Fiscal Invoice','db843d11-38af-4372-b022-4b22b6525153','X','Y',0,TO_DATE('2014-09-14 11:17:50','YYYY-MM-DD HH24:MI:SS'),0,0,0,1000001,TO_DATE('2014-09-14 11:17:50','YYYY-MM-DD HH24:MI:SS'))
;

-- 14/09/2014 11h17min50s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000035, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000035)
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000021
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 14/09/2014 11h17min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000016, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

SELECT lbr_register_migration_script('201409301204.sql') FROM dual
;

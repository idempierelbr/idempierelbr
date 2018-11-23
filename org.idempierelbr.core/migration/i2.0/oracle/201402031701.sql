SET SQLBLANKLINES ON
SET DEFINE OFF

-- Feb 3, 2014 12:59:07 PM BRST
-- Table/Window/Menu: LBR_TaxConfiguration and LBR_CFOP
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','Tax Configuration','Defines Tax Configuration',1000011,'c1b7f14e-5ecf-4109-acf5-044d1fa7e456',TO_DATE('2014-02-03 12:59:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 12:59:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Feb 3, 2014 1:00:21 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000011,1000014,'N','Y','N','LBR','Y','Tax Configuration','Defines Tax Configuration','6cb0987d-0e29-4f83-a78c-9a2737660544','W','Y',0,TO_DATE('2014-02-03 13:00:21','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:00:21','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Feb 3, 2014 1:00:21 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000014, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000014)
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Feb 3, 2014 1:00:32 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000005
;

-- Feb 3, 2014 1:00:41 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000004, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- Feb 3, 2014 1:02:58 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000017,'N','N','N','LBR','L','87a17ac6-2a17-490b-89d7-9745d70f74ca','Y','Y','LBR_TaxDefinition','Maintain Tax Definition','Tax Definition','Y',0,0,TO_DATE('2014-02-03 13:02:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:02:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 3, 2014 1:02:58 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000021,'Table LBR_TaxDefinition','LBR_TaxDefinition',1,'500e2424-d583-46a2-98e6-48e8492a2f57',TO_DATE('2014-02-03 13:02:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:02:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 3, 2014 1:08:22 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,10,'N','N','N','N','N','Y','N',0,'5763b42e-e592-488b-91f1-da6ecd65bd39','LBR','Tax Definition','Maintain Tax Definition',1000015,0,TO_DATE('2014-02-03 13:08:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:08:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000017,'B')
;

-- Feb 3, 2014 1:09:40 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000018,'N','N','N','LBR','L','0c6b8b65-4b4f-4de5-b3bc-3fb4918d8c47','Y','Y','LBR_TaxConfiguration','Tax Configuration','Y',0,0,TO_DATE('2014-02-03 13:09:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:09:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 3, 2014 1:09:40 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000022,'Table LBR_TaxConfiguration','LBR_TaxConfiguration',1,'0b074907-5418-4830-92d0-bcd016cafae0',TO_DATE('2014-02-03 13:09:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:09:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 3, 2014 1:10:04 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000257,'N','N','N',0,'N',22,'N','N','N','Y','35a78144-1881-4a3b-9bed-4bb9ef591d9a','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-03 13:10:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:10:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000018,129,0,'LBR')
;

-- Feb 3, 2014 1:10:09 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfiguration', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000257
;

-- Feb 3, 2014 1:10:09 PM BRST
CREATE TABLE LBR_TaxConfiguration (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 3, 2014 1:10:09 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT ADClient_LBRTaxConfiguration FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:10:28 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000258,'N','N','N',0,'N',22,'N','N','N','Y','b7a2ac3e-55f9-40cc-8a14-abc1b4621dfb','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-03 13:10:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:10:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000018,104,0,'LBR')
;

-- Feb 3, 2014 1:10:33 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfiguration', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:10:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000258
;

-- Feb 3, 2014 1:10:33 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 3, 2014 1:10:33 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT ADOrg_LBRTaxConfiguration FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:10:51 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000259,'N','N','N',0,'N',7,'N','N','N','Y','9e15e8c0-31ec-42b9-b0b0-5995700dc670','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-03 13:10:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:10:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000018,0,'LBR')
;

-- Feb 3, 2014 1:10:55 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD Created DATE DEFAULT NULL 
;

-- Feb 3, 2014 1:11:06 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000260,'N','N','N',0,'N',22,'N','N','N','Y','6b7d4030-4b3f-4bd3-b692-3c45e4436273','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-03 13:11:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:11:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000018,0,'LBR')
;

-- Feb 3, 2014 1:11:10 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfiguration', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:11:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000260
;

-- Feb 3, 2014 1:11:10 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 3, 2014 1:11:10 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT CreatedBy_LBRTaxConfiguration FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:11:31 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000261,'Y','N','N',0,'N',1,'N','N','N','Y','d2601e31-60f8-44a1-8d81-323e02be0ee2','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-03 13:11:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:11:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000018,0,'LBR')
;

-- Feb 3, 2014 1:11:35 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 3, 2014 1:12:15 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000262,'Y','N','N',0,'N',1,'N','N','N','Y','ebc57f64-c899-4f36-9f84-561c09b3d548','Y','IsSOTrx','This is a Sales Transaction','Y','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Sales Transaction','Y',TO_DATE('2014-02-03 13:12:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:12:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1106,20,1000018,0,'LBR')
;

-- Feb 3, 2014 1:12:18 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD IsSOTrx CHAR(1) DEFAULT 'Y' CHECK (IsSOTrx IN ('Y','N')) NOT NULL
;

-- Feb 3, 2014 1:13:30 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ExceptionType',1000071,'Tax Exception Type','Defines the Tax Exception Type','Tax Exception Type','c39e841b-4ae1-4213-9095-0dec2cc1efd9',TO_DATE('2014-02-03 13:13:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:13:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 3, 2014 1:14:34 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000012,'LBR_ExceptionType','LBR','c74b45cc-2883-4225-827a-b9fba1b45f8b','N','Tax Exception Type','L',0,0,TO_DATE('2014-02-03 13:14:34','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-03 13:14:34','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 3, 2014 1:14:57 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000021,1000012,'9150ec2c-56b1-4a78-b507-a2859b927da7','G',TO_DATE('2014-02-03 13:14:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:14:57','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Fiscal Group')
;

-- Feb 3, 2014 1:15:13 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000022,1000012,'5711fd6a-8c00-4a84-9cca-07f180542b1a','P',TO_DATE('2014-02-03 13:15:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:15:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Product')
;

-- Feb 3, 2014 1:16:06 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000263,'N','N','N',0,'N',1,'N','N','N','Y','658a9824-395f-4728-b1d7-4e9fcf74934a','Y','LBR_ExceptionType','Defines the Tax Exception Type','''P''','Tax Exception Type','Y',TO_DATE('2014-02-03 13:16:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:16:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000071,17,1000012,1000018,0,'LBR')
;

-- Feb 3, 2014 1:16:10 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD LBR_ExceptionType CHAR(1) DEFAULT 'P'
;

-- Feb 3, 2014 1:17:41 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000013,'LBR_FiscalGroup_Product','LBR','d9a8ddba-5360-412e-bbcb-28b76b4b21f5','N','T',0,0,TO_DATE('2014-02-03 13:17:41','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-03 13:17:41','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 3, 2014 1:18:51 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','e33113db-d44a-4d16-be36-db47d73e931e',0,TO_DATE('2014-02-03 13:18:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:18:51','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000059,1000057,1000013,1000003,'LBR')
;

-- Feb 3, 2014 1:19:16 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000264,'Y','N','N',0,'N',22,'N','N','N','Y','f1d9d467-c2cf-46b2-9ffb-aff1ce936c56','Y','LBR_FiscalGroup_Product_ID','Identifies a Product Fiscal Group','Product Fiscal Group','Y',TO_DATE('2014-02-03 13:19:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:19:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000018,30,1000013,1000018,0,'LBR')
;

-- Feb 3, 2014 1:19:20 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFiscalGroupProduct_LBRTaxCo', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000264
;

-- Feb 3, 2014 1:19:20 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL
;

-- Feb 3, 2014 1:19:20 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT LBRFiscalGroupProduct_LBRTaxCo FOREIGN KEY (LBR_FiscalGroup_Product_ID) REFERENCES lbr_fiscalgroup_product(lbr_fiscalgroup_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:22:07 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IsPOTrx',1000072,'The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','Purchase Transaction','This is a Purchase Transaction','Purchase Transaction','2e81993d-bd4e-4ef2-8afb-96f820863dd6',TO_DATE('2014-02-03 13:22:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:22:07','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 3, 2014 1:22:52 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000265,'Y','N','N',0,'N',1,'N','N','N','Y','aa278aa6-66a0-49ef-9d95-76e252bb6b9e','Y','LBR_IsPOTrx','This is a Purchase Transaction','Y','The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','Purchase Transaction','Y',TO_DATE('2014-02-03 13:22:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:22:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000072,20,1000018,0,'LBR')
;

-- Feb 3, 2014 1:22:58 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD LBR_IsPOTrx CHAR(1) DEFAULT 'Y' CHECK (LBR_IsPOTrx IN ('Y','N')) NOT NULL
;

-- Feb 3, 2014 1:24:16 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfiguration_ID',1000073,'Tax Configuration','Tax Configuration Used','Tax Configuration','576d95d2-6bcc-49b9-b140-99e5dd7208b9',TO_DATE('2014-02-03 13:24:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:24:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 3, 2014 1:24:46 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000266,'Y','N','N',0,'N',22,'N','Y','N','Y','178f2bd4-3ce0-4fb8-a3c7-8b6f517fe794','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','N',TO_DATE('2014-02-03 13:24:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:24:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,13,1000018,0,'LBR')
;

-- Feb 3, 2014 1:24:50 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 3, 2014 1:24:50 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT LBR_TaxConfiguration_Key PRIMARY KEY (LBR_TaxConfiguration_ID)
;

-- Feb 3, 2014 1:25:05 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfiguration_UU',1000074,'LBR_TaxConfiguration_UU',NULL,'LBR_TaxConfiguration_UU','92ee4390-e20f-498d-9d5b-87253ceb282a',TO_DATE('2014-02-03 13:25:05','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-03 13:25:05','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 3, 2014 1:25:22 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000267,'N','N','N',0,'N',36,'N','N','N','Y','216178fe-e8f9-4b2e-ac0a-9dccb379e039','N','LBR_TaxConfiguration_UU','LBR_TaxConfiguration_UU','N',TO_DATE('2014-02-03 13:25:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:25:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000074,10,1000018,0,'LBR')
;

-- Feb 3, 2014 1:25:26 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD LBR_TaxConfiguration_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 3, 2014 1:25:26 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT LBR_TaxConfiguration_UU_idx UNIQUE (LBR_TaxConfiguration_UU)
;

-- Feb 3, 2014 1:26:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000268,'Y','N','N',0,'N',22,'N','N','N','Y','8794d1e6-50e8-4a7d-9f7c-0d7a50cebead','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_DATE('2014-02-03 13:26:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:26:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,30,162,1000018,231,0,'LBR')
;

-- Feb 3, 2014 1:26:47 PM BRST
UPDATE AD_Column SET FKConstraintName='MProduct_LBRTaxConfiguration', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:26:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000268
;

-- Feb 3, 2014 1:26:47 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD M_Product_ID NUMBER(10) DEFAULT NULL
;

-- Feb 3, 2014 1:26:47 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT MProduct_LBRTaxConfiguration FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:27:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000269,'N','N','N',0,'N',7,'N','N','N','Y','a95cdd5f-63c2-472d-bab7-601000dcb173','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-03 13:27:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:27:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000018,0,'LBR')
;

-- Feb 3, 2014 1:27:17 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD Updated DATE DEFAULT NULL 
;

-- Feb 3, 2014 1:27:31 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000270,'N','N','N',0,'N',22,'N','N','N','Y','5e71e136-607d-47c7-95a9-7502c89bcca4','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-03 13:27:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-03 13:27:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000018,0,'LBR')
;

-- Feb 3, 2014 1:27:35 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfiguration', FKConstraintType='N',Updated=TO_DATE('2014-02-03 13:27:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000270
;

-- Feb 3, 2014 1:27:35 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 3, 2014 1:27:35 PM BRST
ALTER TABLE LBR_TaxConfiguration ADD CONSTRAINT UpdatedBy_LBRTaxConfiguration FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 3, 2014 1:27:58 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000011,Updated=TO_DATE('2014-02-03 13:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000018
;

-- Feb 3, 2014 1:29:37 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,20,'N','N','N','N','N','Y','N',0,'9ecf96b3-476a-4e25-97cc-97397b6d866c','LBR','Tax Configuration','Maintain Tax Configuration',1000016,0,TO_DATE('2014-02-03 13:29:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000018,'B')
;

-- Feb 3, 2014 1:29:42 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,22,'N','N',10,'Y',1000165,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ecbf81a5-415e-4038-b3c5-b30e9296560c','N','Y',0,0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000257)
;

-- Feb 3, 2014 1:29:42 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,22,'N','N',20,'Y',1000166,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','87dcb742-dacb-4b0a-a1f3-5ff9abbef12f','N','Y','Y',0,0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000258)
;

-- Feb 3, 2014 1:29:42 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,1,'N','N',30,'Y',1000167,'N','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','LBR','This is a Sales Transaction','Sales Transaction','536ec548-2054-413f-b490-760fe41813c7','N','Y',0,0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000262)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,1,'N','N',40,'Y',1000168,'N','LBR','Defines the Tax Exception Type','Tax Exception Type','97ad901d-7065-4825-8093-f8e505ad7b35','N','Y',0,0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:42','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000263)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,22,'N','N',50,'Y',1000169,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','604f3261-3426-4d83-b6e6-e89325655bf9','N','Y',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000264)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,1,'N','N',60,'Y',1000170,'N','The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','LBR','This is a Purchase Transaction','Purchase Transaction','c6cfd68b-7166-4cf7-9fb5-767ac51e682f','N','Y',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000265)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,22,'N','N',70,'Y',1000171,'N','LBR','Tax Configuration Used','Tax Configuration','f87e5a4c-7b50-4a14-b58a-215381cfa65e','N','N',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000266)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,36,'N','N',80,'Y',1000172,'N','LBR','LBR_TaxConfiguration_UU','9e6b0e7a-6d7f-49cb-8949-17f77b7f7d46','N','N',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000267)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,22,'N','N',90,'Y',1000173,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','23476e7d-cdc3-439f-aad1-275a5f0824e0','N','Y',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000268)
;

-- Feb 3, 2014 1:29:43 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000016,1,'N','N',100,'Y',1000174,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','f0884165-5e1e-4de0-b1fe-69701797d083','N','Y',0,0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-03 13:29:43','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000261)
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000172
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000171
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000168
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000174
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000167
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000173
;

-- Feb 3, 2014 1:30:40 PM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000169
;

-- Feb 3, 2014 1:31:48 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-03 13:31:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000166
;

-- Feb 3, 2014 1:32:21 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-02-03 13:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000174
;

-- Feb 3, 2014 1:32:42 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-02-03 13:32:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000170
;

-- Feb 3, 2014 1:34:22 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-03 13:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000173
;

-- Feb 3, 2014 1:34:34 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-03 13:34:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000169
;

-- Feb 3, 2014 1:36:14 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_ExceptionType@=''P''',Updated=TO_DATE('2014-02-03 13:36:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000173
;

-- Feb 3, 2014 1:36:37 PM BRST
UPDATE AD_Field SET DisplayLogic='@LBR_ExceptionType@=''G''',Updated=TO_DATE('2014-02-03 13:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000169
;

-- Feb 4, 2014 10:50:28 AM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000019,'N','N','N','LBR','L','e63e7c1c-20ba-45f1-af47-fbf8ffc502df','Y','Y','LBR_TaxConfig_BPartner','Business Partner Exception','Y',0,0,TO_DATE('2014-02-04 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 4, 2014 10:50:28 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000023,'Table LBR_TaxConfig_BPartner','LBR_TaxConfig_BPartner',1,'05963b99-68e8-41c5-b778-de72859d3afc',TO_DATE('2014-02-04 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 10:50:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 4, 2014 10:50:53 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000271,'N','N','N',0,'N',22,'N','N','N','Y','71968ae9-5f57-402c-bee0-44ef613415da','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-04 10:50:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 10:50:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000019,129,0,'LBR')
;

-- Feb 4, 2014 10:50:58 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfigBPartner', FKConstraintType='N',Updated=TO_DATE('2014-02-04 10:50:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000271
;

-- Feb 4, 2014 10:50:58 AM BRST
CREATE TABLE LBR_TaxConfig_BPartner (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 4, 2014 10:50:58 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT ADClient_LBRTaxConfigBPartner FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 10:51:15 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000272,'N','N','N',0,'N',22,'N','N','N','Y','b35f440e-b465-4bbb-aa83-5a48c1eb15ce','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-04 10:51:15','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 10:51:15','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000019,104,0,'LBR')
;

-- Feb 4, 2014 10:51:19 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfigBPartner', FKConstraintType='N',Updated=TO_DATE('2014-02-04 10:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000272
;

-- Feb 4, 2014 10:51:19 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 10:51:19 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT ADOrg_LBRTaxConfigBPartner FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 10:52:17 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000273,'Y','N','N',0,'N',22,'N','N','N','Y','636989b7-f33a-4481-b575-6b4c875ecf77','Y','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ','Y',TO_DATE('2014-02-04 10:52:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 10:52:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',187,30,138,1000019,0,'LBR')
;

-- Feb 4, 2014 10:52:23 AM BRST
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRTaxConfigBPartner', FKConstraintType='N',Updated=TO_DATE('2014-02-04 10:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000273
;

-- Feb 4, 2014 10:52:23 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD C_BPartner_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 10:52:23 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT CBPartner_LBRTaxConfigBPartner FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 11:02:46 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000274,'N','N','N',0,'N',7,'N','N','N','Y','28129be8-ffa7-4dae-b659-7b17086fca42','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-04 11:02:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:02:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000019,0,'LBR')
;

-- Feb 4, 2014 11:02:49 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD Created DATE DEFAULT NULL 
;

-- Feb 4, 2014 11:03:00 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000275,'N','N','N',0,'N',22,'N','N','N','Y','9dee6a75-ef13-4bd4-b4a9-853bf837361d','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-04 11:03:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:03:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000019,0,'LBR')
;

-- Feb 4, 2014 11:03:05 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfigBPartner', FKConstraintType='N',Updated=TO_DATE('2014-02-04 11:03:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000275
;

-- Feb 4, 2014 11:03:05 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 11:03:05 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT CreatedBy_LBRTaxConfigBPartner FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 11:03:19 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000276,'N','N','N',0,'N',1,'N','N','N','Y','69f8d33c-e64c-4c84-bc75-49f38e51397e','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-04 11:03:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:03:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000019,0,'LBR')
;

-- Feb 4, 2014 11:03:25 AM BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-02-04 11:03:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000276
;

-- Feb 4, 2014 11:03:29 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 4, 2014 11:05:14 AM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000014,'LBR_LegalMessage','LBR','00b75f33-5ceb-48a8-a4ae-031e9b703d61','N','T',0,0,TO_DATE('2014-02-04 11:05:14','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-04 11:05:14','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 4, 2014 11:06:00 AM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','74bd72ba-f138-43b6-9dfa-dc9752ce3682',0,TO_DATE('2014-02-04 11:06:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 11:06:00','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000039,1000035,1000014,1000001,'LBR')
;

-- Feb 4, 2014 11:06:14 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000277,'N','N','N',0,'N',22,'N','N','N','Y','394a02d6-9bbc-4217-a029-165a7edbd0ee','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-04 11:06:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:06:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000019,0,'LBR')
;

-- Feb 4, 2014 11:06:19 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxConfigBP', FKConstraintType='N',Updated=TO_DATE('2014-02-04 11:06:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000277
;

-- Feb 4, 2014 11:06:19 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 11:06:19 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT LBRLegalMessage_LBRTaxConfigBP FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 11:11:02 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000278,'Y','N','N',0,'N',10,'N','N','N','Y','9ec8388a-178d-449f-9e3c-132a6a631734','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-04 11:11:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:11:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000019,0,'LBR')
;

-- Feb 4, 2014 11:11:06 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 11:11:51 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_BPartner_ID',1000075,'Business Partner Exception','Identifies a Business Partner Exception','Business Partner Exception','32c3ac90-16c6-4f89-9d53-3766c5d1a999',TO_DATE('2014-02-04 11:11:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 11:11:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 11:12:14 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000279,'Y','N','N',0,'N',22,'N','Y','N','Y','1b3c9e0f-6327-4252-a644-39eb3b723a1f','N','LBR_TaxConfig_BPartner_ID','Identifies a Business Partner Exception','Business Partner Exception','N',TO_DATE('2014-02-04 11:12:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:12:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000075,13,1000019,0,'LBR')
;

-- Feb 4, 2014 11:12:17 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_TaxConfig_BPartner_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 11:12:17 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT LBR_TaxConfig_BPartner_Key PRIMARY KEY (LBR_TaxConfig_BPartner_ID)
;

-- Feb 4, 2014 11:12:36 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_BPartner_UU',1000076,'LBR_TaxConfig_BPartner_UU',NULL,'LBR_TaxConfig_BPartner_UU','b8c1cd28-6570-4e00-a561-2a7e2038f19b',TO_DATE('2014-02-04 11:12:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 11:12:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 11:12:55 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000280,'N','N','N',0,'N',36,'N','N','N','Y','f8fc2c7e-571e-485e-815a-a5d0db1ae957','N','LBR_TaxConfig_BPartner_UU','LBR_TaxConfig_BPartner_UU','N',TO_DATE('2014-02-04 11:12:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:12:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000076,10,1000019,0,'LBR')
;

-- Feb 4, 2014 11:12:59 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_TaxConfig_BPartner_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 4, 2014 11:12:59 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT LBR_TaxConfig_BPartner_UU_idx UNIQUE (LBR_TaxConfig_BPartner_UU)
;

-- Feb 4, 2014 11:13:44 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000281,'Y','N','N',0,'N',22,'N','N','N','Y','0fcaea57-b47d-4d31-9e99-1c1c9c7671a0','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','Y',TO_DATE('2014-02-04 11:13:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 11:13:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,19,1000019,0,'LBR')
;

-- Feb 4, 2014 11:13:49 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguration_LBRTaxConf', FKConstraintType='N',Updated=TO_DATE('2014-02-04 11:13:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000281
;

-- Feb 4, 2014 11:13:49 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 11:13:49 AM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT LBRTaxConfiguration_LBRTaxConf FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:10:59 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxStatus',1000077,'Tax Status','Defines the Tax Status','Tax Status','dcb19b2c-9d92-45e5-a48a-b978d818deea',TO_DATE('2014-02-04 12:10:59','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 12:10:59','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 12:12:07 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000015,'LBR_TaxStatus','LBR','492697de-270c-44a7-920b-8fd235d4dc4e','N','L',0,0,TO_DATE('2014-02-04 12:12:07','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-04 12:12:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 4, 2014 12:14:39 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000023,1000015,'f16338db-5551-4993-b65f-4e4ba70df41c','00',TO_DATE('2014-02-04 12:14:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:14:39','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'00 - Tributada integralmente')
;

-- Feb 4, 2014 12:15:01 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000024,1000015,'a520672e-0546-4e9e-af48-fe45dd1ce1b0','10',TO_DATE('2014-02-04 12:15:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:15:01','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'10 - Tributada e com cobranca do ICMS por Sub. Tributaria')
;

-- Feb 4, 2014 12:15:15 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000025,1000015,'25c89555-2f89-486f-9b26-a1a71370e4bd','20',TO_DATE('2014-02-04 12:15:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:15:15','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'20 - Com reducao de base de calculo')
;

-- Feb 4, 2014 12:15:36 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000026,1000015,'3f5e623d-f368-4935-8593-66b171ae2318','30',TO_DATE('2014-02-04 12:15:36','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:15:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut')
;

-- Feb 4, 2014 12:15:58 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000027,1000015,'c86d9f36-aa4b-4690-9d2b-c315aaca9a9a','40',TO_DATE('2014-02-04 12:15:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:15:58','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'40 - Isenta')
;

-- Feb 4, 2014 12:16:32 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000028,1000015,'787e3de2-d757-4338-8580-d32e2a35a012','41',TO_DATE('2014-02-04 12:16:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:16:32','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'41 - Nao-tributada')
;

-- Feb 4, 2014 12:16:45 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000029,1000015,'e89ee392-2cd5-4c28-a0f6-ce51837033a1','50',TO_DATE('2014-02-04 12:16:45','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:16:45','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'50 - Suspensao')
;

-- Feb 4, 2014 12:16:58 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000030,1000015,'9f44869b-5596-4c7a-952b-b74e92f7d675','51',TO_DATE('2014-02-04 12:16:58','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:16:58','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'51 - Diferimento ')
;

-- Feb 4, 2014 12:17:11 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000031,1000015,'003e00b3-3bce-4b6b-91c1-614ddee4ebc1','60',TO_DATE('2014-02-04 12:17:11','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:17:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'60 - ICMS cobrado anteriormente por substituicao tributaria')
;

-- Feb 4, 2014 12:17:24 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000032,1000015,'1d223bb9-a317-46fc-a0ad-307383377f14','70',TO_DATE('2014-02-04 12:17:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:17:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib')
;

-- Feb 4, 2014 12:17:35 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000033,1000015,'5b2715a3-0f26-4c98-a2fa-800e7a495a8f','90',TO_DATE('2014-02-04 12:17:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:17:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'90 - Outras')
;

-- Feb 4, 2014 12:18:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000282,'N','N','N',0,'N',2,'N','N','N','Y','37e12a30-8b11-4621-9857-9efbeb19998b','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-04 12:18:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:18:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000019,0,'LBR')
;

-- Feb 4, 2014 12:18:30 PM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 4, 2014 12:18:53 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000283,'N','N','N',0,'N',7,'N','N','N','Y','efa8b18c-e4a9-4e93-8196-e1480a8b9267','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-04 12:18:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:18:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000019,0,'LBR')
;

-- Feb 4, 2014 12:18:56 PM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD Updated DATE DEFAULT NULL 
;

-- Feb 4, 2014 12:19:07 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000284,'N','N','N',0,'N',22,'N','N','N','Y','ac06ea93-16f8-4d04-a3ed-0bfbb3dc5d33','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-04 12:19:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:19:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000019,0,'LBR')
;

-- Feb 4, 2014 12:19:11 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfigBPartner', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000284
;

-- Feb 4, 2014 12:19:11 PM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 12:19:11 PM BRST
ALTER TABLE LBR_TaxConfig_BPartner ADD CONSTRAINT UpdatedBy_LBRTaxConfigBPartner FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:21:53 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,30,'N','N','N','N','N','Y','N',0,'d34916b8-c416-467b-82be-2485d3c1b4e6','LBR','Business Partner',1000017,0,TO_DATE('2014-02-04 12:21:53','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000281,1000019,'B')
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',10,'Y',1000175,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','c46e90ce-b4c7-4ec7-8344-e67c4442bfa9','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000271)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',20,'Y',1000176,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','a7c637c3-5d81-4f1c-964b-041187121015','N','Y','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000272)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',30,'Y',1000177,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','ed6d6d29-8e18-4255-b1c7-a424ba0f23d2','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000273)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',40,'Y',1000178,'N','LBR','Identifies a Legal Message','Legal Message','37686bf3-c289-42fc-a1fe-18ac414f4cb7','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000277)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,10,'N','N',50,'Y',1000179,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','ca567ea1-31a8-4026-864d-22b3e691a376','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000278)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',60,'Y',1000180,'N','LBR','Identifies a Business Partner Exception','Business Partner Exception','82704c2a-5810-4731-9604-97c95fc97b4c','N','N',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000279)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,36,'N','N',70,'Y',1000181,'N','LBR','LBR_TaxConfig_BPartner_UU','51d42989-6f13-4ff2-8385-6a36f20a972d','N','N',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000280)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,22,'N','N',80,'Y',1000182,'N','LBR','Tax Configuration Used','Tax Configuration','42a62975-f76b-4e1d-9071-ae9664234dd4','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000281)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,2,'N','N',90,'Y',1000183,'N','LBR','Defines the Tax Status','Tax Status','fab3dd53-c75b-49b3-b0c3-e39ebb391c10','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000282)
;

-- Feb 4, 2014 12:21:59 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,1,'N','N',100,'Y',1000184,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','2ac750dc-4109-435b-aaa9-6af86cfed72b','N','Y',0,0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:21:59','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000276)
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000182
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000184
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000180
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000181
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000179
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000183
;

-- Feb 4, 2014 12:23:00 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000178
;

-- Feb 4, 2014 12:26:09 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-04 12:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000176
;

-- Feb 4, 2014 12:27:01 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-02-04 12:27:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000183
;

-- Feb 4, 2014 12:29:18 PM BRST
UPDATE AD_Field SET IsSameLine='N', XPosition=1, ColumnSpan=5,Updated=TO_DATE('2014-02-04 12:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000183
;

-- Feb 4, 2014 12:29:30 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 12:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000177
;

-- Feb 4, 2014 12:29:34 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 12:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000179
;

-- Feb 4, 2014 12:29:37 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 12:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000183
;

-- Feb 4, 2014 12:29:40 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 12:29:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000178
;

-- Feb 4, 2014 12:29:54 PM BRST
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2014-02-04 12:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000017
;



-- Feb 4, 2014 12:49:39 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000020,'N','N','N','LBR','L','1957bda7-abcd-458a-9886-9d8cef7234d8','Y','Y','LBR_TaxConfig_BPGroup','Business Partner Group Exception','Y',0,0,TO_DATE('2014-02-04 12:49:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:49:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 4, 2014 12:49:40 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000024,'Table LBR_TaxConfig_BPGroup','LBR_TaxConfig_BPGroup',1,'dcda7038-2918-48fe-b1f2-76837936716f',TO_DATE('2014-02-04 12:49:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 12:49:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 4, 2014 12:50:00 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000285,'N','N','N',0,'N',22,'N','N','N','Y','57098cf8-2c8f-4ba5-9172-84d394727245','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-04 12:49:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:49:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000020,129,0,'LBR')
;

-- Feb 4, 2014 12:50:03 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfigBPGroup', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000285
;

-- Feb 4, 2014 12:50:03 PM BRST
CREATE TABLE LBR_TaxConfig_BPGroup (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 4, 2014 12:50:04 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT ADClient_LBRTaxConfigBPGroup FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:50:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000286,'N','N','N',0,'N',22,'N','N','N','Y','fe33d83e-2c30-432b-b704-ead1e1290c9b','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-04 12:50:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:50:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000020,104,0,'LBR')
;

-- Feb 4, 2014 12:50:26 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfigBPGroup', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000286
;

-- Feb 4, 2014 12:50:26 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 12:50:27 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT ADOrg_LBRTaxConfigBPGroup FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:50:49 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000287,'N','N','N',0,'N',7,'N','N','N','Y','43f6fb5c-ff93-4c33-864f-28ff266c89a3','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-04 12:50:49','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:50:49','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000020,0,'LBR')
;

-- Feb 4, 2014 12:50:53 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD Created DATE DEFAULT NULL 
;

-- Feb 4, 2014 12:51:06 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000288,'N','N','N',0,'N',22,'N','N','N','Y','954d1261-31cc-4551-8d2d-0a8fa3a2f6a9','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-04 12:51:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:51:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000020,0,'LBR')
;

-- Feb 4, 2014 12:51:10 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfigBPGroup', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:51:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000288
;

-- Feb 4, 2014 12:51:10 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 12:51:10 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT CreatedBy_LBRTaxConfigBPGroup FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:51:30 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000289,'Y','N','N',0,'N',1,'N','N','N','Y','8f5e7314-ae03-45cc-adcd-954621421729','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-04 12:51:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:51:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000020,0,'LBR')
;

-- Feb 4, 2014 12:51:35 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 4, 2014 12:53:26 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000290,'Y','N','N',0,'N',22,'N','N','N','Y','d57e2828-c71c-456b-b9e9-538782c57c8b','Y','LBR_FiscalGroup_BPartner_ID','Identifies a Business Partner Fiscal Group','BP Fiscal Group','Y',TO_DATE('2014-02-04 12:53:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:53:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000020,19,1000020,0,'LBR')
;

-- Feb 4, 2014 12:53:29 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRFiscalGroupBPartner_LBRTaxC', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:53:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000290
;

-- Feb 4, 2014 12:53:29 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_FiscalGroup_BPartner_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 12:53:29 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBRFiscalGroupBPartner_LBRTaxC FOREIGN KEY (LBR_FiscalGroup_BPartner_ID) REFERENCES lbr_fiscalgroup_bpartner(lbr_fiscalgroup_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 12:54:35 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000291,'N','N','N',0,'N',22,'N','N','N','Y','0d01435f-eb02-4ecb-92e0-9afe4209e930','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-04 12:54:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:54:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000020,0,'LBR')
;

-- Feb 4, 2014 12:54:39 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxConfigBP', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:54:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000291
;

-- Feb 4, 2014 12:54:39 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 12:54:39 PM BRST
--ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBRLegalMessage_LBRTaxConfigBP FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 12:55:27 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000292,'Y','N','N',0,'N',10,'N','N','N','Y','0bbb5909-7f73-4048-8ac8-20f78ab9f9d7','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-04 12:55:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:55:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000020,0,'LBR')
;

-- Feb 4, 2014 12:55:55 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 12:56:40 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_BPGroup_ID',1000078,'Business Partner Group Exception','Identifies a Business Partner Group Exception','Business Partner Group Exception','a03922e9-c67e-4e48-b280-e59d6248db1d',TO_DATE('2014-02-04 12:56:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 12:56:40','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 12:57:04 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000293,'Y','N','N',0,'N',22,'N','Y','N','Y','32666470-b6a0-4bf8-bde7-0c457080e690','N','LBR_TaxConfig_BPGroup_ID','Identifies a Business Partner Group Exception','Business Partner Group Exception','N',TO_DATE('2014-02-04 12:57:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:57:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000078,13,1000020,0,'LBR')
;

-- Feb 4, 2014 12:57:08 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_TaxConfig_BPGroup_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 12:57:08 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBR_TaxConfig_BPGroup_Key PRIMARY KEY (LBR_TaxConfig_BPGroup_ID)
;

-- Feb 4, 2014 12:57:26 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_BPGroup_UU',1000079,'LBR_TaxConfig_BPGroup_UU',NULL,'LBR_TaxConfig_BPGroup_UU','e89e6823-e92e-495d-a672-74d6022fad00',TO_DATE('2014-02-04 12:57:26','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 12:57:26','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 12:57:38 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000294,'N','N','N',0,'N',36,'N','N','N','Y','04f2274b-2e36-4eba-9567-778c6847c128','N','LBR_TaxConfig_BPGroup_UU','LBR_TaxConfig_BPGroup_UU','N',TO_DATE('2014-02-04 12:57:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:57:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000079,10,1000020,0,'LBR')
;

-- Feb 4, 2014 12:57:43 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_TaxConfig_BPGroup_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 4, 2014 12:57:43 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBR_TaxConfig_BPGroup_UU_idx UNIQUE (LBR_TaxConfig_BPGroup_UU)
;

-- Feb 4, 2014 12:58:13 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000295,'Y','N','N',0,'N',22,'N','N','N','Y','d5465fda-7a92-485a-a4a7-540f8b84b48f','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','Y',TO_DATE('2014-02-04 12:58:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:58:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,19,1000020,0,'LBR')
;

-- Feb 4, 2014 12:58:17 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguration_LBRTaxConf', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:58:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000295
;

-- Feb 4, 2014 12:58:17 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 12:58:17 PM BRST
--ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT LBRTaxConfiguration_LBRTaxConf FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 12:58:52 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000296,'N','N','N',0,'N',2,'N','N','N','Y','6a882d1f-06fb-48dc-bc8b-ff864a525411','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-04 12:58:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:58:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000020,0,'LBR')
;

-- Feb 4, 2014 12:58:57 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 4, 2014 12:59:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000297,'N','N','N',0,'N',7,'N','N','N','Y','d6155b03-31a5-4e94-9c02-1ef8ccc2b8cd','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-04 12:59:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:59:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000020,0,'LBR')
;

-- Feb 4, 2014 12:59:27 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD Updated DATE DEFAULT NULL 
;

-- Feb 4, 2014 12:59:38 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000298,'N','N','N',0,'N',22,'N','N','N','Y','035e8191-7919-45d4-96b8-02da61ac8c47','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-04 12:59:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 12:59:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000020,0,'LBR')
;

-- Feb 4, 2014 12:59:43 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfigBPGroup', FKConstraintType='N',Updated=TO_DATE('2014-02-04 12:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000298
;

-- Feb 4, 2014 12:59:43 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 12:59:43 PM BRST
ALTER TABLE LBR_TaxConfig_BPGroup ADD CONSTRAINT UpdatedBy_LBRTaxConfigBPGroup FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:01:09 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,40,'N','N','N','N','N','Y','N',1,'f2254720-40e7-4bb1-b6bb-09d322b5bb2b','LBR','Business Partner Group',1000018,0,TO_DATE('2014-02-04 13:01:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000295,1000020,'B')
;

-- Feb 4, 2014 1:01:18 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',10,'Y',1000185,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','6b7954b0-98ed-4d40-9020-e711c832c3ef','N','Y',0,0,TO_DATE('2014-02-04 13:01:18','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:18','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000285)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',20,'Y',1000186,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','c37ee707-1457-4c94-997b-408a85f32280','N','Y','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000286)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',30,'Y',1000187,'N','LBR','Identifies a Business Partner Fiscal Group','BP Fiscal Group','b296f4f7-0715-44ce-90c2-35823a7bca00','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000290)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',40,'Y',1000188,'N','LBR','Identifies a Legal Message','Legal Message','0ca808cb-dab0-4854-be29-acfd44c8a935','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000291)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,10,'N','N',50,'Y',1000189,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','24e9ffb8-ecf4-4775-8508-c23a959ad89f','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000292)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',60,'Y',1000190,'N','LBR','Identifies a Business Partner Group Exception','Business Partner Group Exception','fcbc4661-ca7e-45dd-9d2c-4810457c12bc','N','N',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000293)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,36,'N','N',70,'Y',1000191,'N','LBR','LBR_TaxConfig_BPGroup_UU','5337cff9-f803-4d04-a267-d6e0b0b964f6','N','N',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000294)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,22,'N','N',80,'Y',1000192,'N','LBR','Tax Configuration Used','Tax Configuration','1d903cf7-4d15-4e11-9e25-1ee6cff8ca56','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000295)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,2,'N','N',90,'Y',1000193,'N','LBR','Defines the Tax Status','Tax Status','17b12b28-3bc1-43b5-aacf-aacadec9d546','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000296)
;

-- Feb 4, 2014 1:01:19 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,1,'N','N',100,'Y',1000194,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','13139c9a-16a7-416b-a1da-6373a3b8b109','N','Y',0,0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:01:19','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000289)
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000194
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000192
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000190
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000191
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000189
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000193
;

-- Feb 4, 2014 1:02:10 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000188
;

-- Feb 4, 2014 1:02:33 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 13:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000187
;

-- Feb 4, 2014 1:02:42 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 13:02:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000189
;

-- Feb 4, 2014 1:02:54 PM BRST
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 13:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000193
;

-- Feb 4, 2014 1:03:00 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-04 13:03:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000188
;

-- Feb 4, 2014 1:41:47 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000021,'N','N','N','LBR','L','362abb79-de7b-4ec4-b7ed-72882dfece8d','Y','Y','LBR_TaxConfig_Region','Region Exception','Y',0,0,TO_DATE('2014-02-04 13:41:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:41:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 4, 2014 1:41:47 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000025,'Table LBR_TaxConfig_Region','LBR_TaxConfig_Region',1,'fdd6ef93-7b72-4435-a221-796f67c69eb9',TO_DATE('2014-02-04 13:41:47','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:41:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 4, 2014 1:42:20 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000299,'N','N','N',0,'N',22,'N','N','N','Y','474e4fe3-4c66-46cd-8366-8b12f170c957','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-04 13:42:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:42:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000021,129,0,'LBR')
;

-- Feb 4, 2014 1:42:26 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:42:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000299
;

-- Feb 4, 2014 1:42:26 PM BRST
CREATE TABLE LBR_TaxConfig_Region (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 4, 2014 1:42:27 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT ADClient_LBRTaxConfigRegion FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:42:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000300,'N','N','N',0,'N',22,'N','N','N','Y','70b07e0e-e6a5-48d5-9ac4-b08cb021e52b','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-04 13:42:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:42:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000021,104,0,'LBR')
;

-- Feb 4, 2014 1:42:47 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000300
;

-- Feb 4, 2014 1:42:47 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 1:42:47 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT ADOrg_LBRTaxConfigRegion FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:43:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000301,'Y','N','N',0,'N',10,'N','N','N','Y','589cb575-c82f-4814-aeab-7a3f9abe819d','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-02-04 13:43:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:43:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',209,18,157,1000021,1000001,0,'LBR')
;

-- Feb 4, 2014 1:43:59 PM BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:43:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000301
;

-- Feb 4, 2014 1:43:59 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD C_Region_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 1:43:59 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT CRegion_LBRTaxConfigRegion FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:45:13 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000302,'N','N','N',0,'N',7,'N','N','N','Y','bce53719-48a0-4332-b24b-c24155ae04b0','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-04 13:45:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:45:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000021,0,'LBR')
;

-- Feb 4, 2014 1:45:17 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD Created DATE DEFAULT NULL 
;

-- Feb 4, 2014 1:45:27 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000303,'N','N','N',0,'N',22,'N','N','N','Y','dec24d4f-2cb8-4327-af3a-9aecca3aed76','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-04 13:45:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:45:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000021,0,'LBR')
;

-- Feb 4, 2014 1:45:31 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000303
;

-- Feb 4, 2014 1:45:31 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 1:45:31 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT CreatedBy_LBRTaxConfigRegion FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:45:53 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000304,'Y','N','N',0,'N',1,'N','N','N','Y','fec88f1f-a810-4f79-b51d-b4c33f2fea63','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-04 13:45:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:45:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000021,0,'LBR')
;

-- Feb 4, 2014 1:45:57 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 4, 2014 1:47:21 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000305,'N','N','N',0,'N',22,'N','N','N','Y','00eb28dd-6256-439e-ac55-961b11259e4a','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-04 13:47:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:47:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000021,0,'LBR')
;

-- Feb 4, 2014 1:47:26 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxConfigRe', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000305
;

-- Feb 4, 2014 1:47:26 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 1:47:26 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBRLegalMessage_LBRTaxConfigRe FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:48:08 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000306,'Y','N','N',0,'N',10,'N','N','N','Y','d9f3b717-6526-4ab3-9861-7162bf4d80fe','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-04 13:48:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:48:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000021,0,'LBR')
;

-- Feb 4, 2014 1:48:12 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 1:49:01 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_Region_ID',1000080,'Region Exception','Identifies a Region Exception','Region Exception','29b3f613-d5db-4b7a-a44c-6985f22f7eef',TO_DATE('2014-02-04 13:49:01','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 13:49:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 1:49:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000307,'Y','N','N',0,'N',22,'N','Y','N','Y','66e04007-bd42-46e6-a8df-516c1a74acaa','N','LBR_TaxConfig_Region_ID','Identifies a Region Exception','Region Exception','N',TO_DATE('2014-02-04 13:49:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:49:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000080,13,1000021,0,'LBR')
;

-- Feb 4, 2014 1:49:21 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_TaxConfig_Region_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 1:49:21 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBR_TaxConfig_Region_Key PRIMARY KEY (LBR_TaxConfig_Region_ID)
;

-- Feb 4, 2014 1:49:36 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_Region_UU',1000081,'LBR_TaxConfig_Region_UU',NULL,'LBR_TaxConfig_Region_UU','65268b5f-aec3-4758-ae46-68ce46e6aa9c',TO_DATE('2014-02-04 13:49:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 13:49:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 1:49:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000308,'N','N','N',0,'N',36,'N','N','N','Y','743f230f-7c40-4d8e-bef3-5bc3b0531819','N','LBR_TaxConfig_Region_UU','LBR_TaxConfig_Region_UU','N',TO_DATE('2014-02-04 13:49:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:49:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000081,10,1000021,0,'LBR')
;

-- Feb 4, 2014 1:49:59 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_TaxConfig_Region_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 4, 2014 1:49:59 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBR_TaxConfig_Region_UU_idx UNIQUE (LBR_TaxConfig_Region_UU)
;

-- Feb 4, 2014 1:50:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000309,'Y','N','N',0,'N',22,'N','N','N','Y','a2bc73ed-a0f1-4700-8bf0-d5eb66ec4663','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','Y',TO_DATE('2014-02-04 13:50:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:50:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,19,1000021,0,'LBR')
;

-- Feb 4, 2014 1:50:29 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguration_LBRTaxConf', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000309
;

-- Feb 4, 2014 1:50:29 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 1:50:29 PM BRST
--ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT LBRTaxConfiguration_LBRTaxConf FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 1:51:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000310,'N','N','N',0,'N',2,'N','N','N','Y','a4bb1093-429d-4c23-a651-213b285bc61e','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-04 13:51:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:51:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000021,0,'LBR')
;

-- Feb 4, 2014 1:51:10 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 4, 2014 1:52:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000311,'Y','N','N',0,'N',22,'N','N','N','Y','31d1eee9-bc1b-4785-a32d-d6daa99deeca','Y','To_Region_ID','Receiving Region','The To Region indicates the receiving region on a document','To','Y',TO_DATE('2014-02-04 13:52:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:52:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',595,18,157,1000021,1000001,0,'LBR')
;

-- Feb 4, 2014 1:52:06 PM BRST
UPDATE AD_Column SET FKConstraintName='ToRegion_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000311
;

-- Feb 4, 2014 1:52:06 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD To_Region_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 1:52:06 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT ToRegion_LBRTaxConfigRegion FOREIGN KEY (To_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:52:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000312,'N','N','N',0,'N',7,'N','N','N','Y','47b69533-0fad-457a-ab2f-c6c6d8ceda31','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-04 13:52:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:52:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000021,0,'LBR')
;

-- Feb 4, 2014 1:52:29 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD Updated DATE DEFAULT NULL 
;

-- Feb 4, 2014 1:52:39 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000313,'N','N','N',0,'N',22,'N','N','N','Y','4b6be534-0ef2-496f-bc33-b84b4b2d2ffc','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-04 13:52:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 13:52:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000021,0,'LBR')
;

-- Feb 4, 2014 1:52:43 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfigRegion', FKConstraintType='N',Updated=TO_DATE('2014-02-04 13:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000313
;

-- Feb 4, 2014 1:52:43 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 1:52:43 PM BRST
ALTER TABLE LBR_TaxConfig_Region ADD CONSTRAINT UpdatedBy_LBRTaxConfigRegion FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 1:54:19 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,DisplayLogic,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,50,'N','N','N','N','N','Y','N','@LBR_ExceptionType@!''''',1,'25ef0def-2633-41b3-83a7-0736a92ad0f3','LBR','Region',1000019,0,TO_DATE('2014-02-04 13:54:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000309,1000021,'B')
;

-- Feb 4, 2014 1:54:32 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',10,'Y',1000195,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','4390c66c-d431-4e97-8231-43103c9c158b','N','Y',0,0,TO_DATE('2014-02-04 13:54:32','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000299)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',20,'Y',1000196,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','4c9af80e-6f68-4f71-8cdd-1f682d9505c6','N','Y','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000300)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,10,'N','N',30,'Y',1000197,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','8ad28dcf-1a13-4056-b7fe-31d0a4b6799d','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000301)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',40,'Y',1000198,'N','LBR','Identifies a Legal Message','Legal Message','6545d387-c357-458d-91d0-52a4b214e5b2','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000305)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,10,'N','N',50,'Y',1000199,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','4d5b61a7-846f-4d52-956e-4fc0327fc1e2','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000306)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',60,'Y',1000200,'N','LBR','Identifies a Region Exception','Region Exception','0b07f7ba-83a4-4edf-9125-cc3500260b78','N','N',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000307)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,36,'N','N',70,'Y',1000201,'N','LBR','LBR_TaxConfig_Region_UU','086ef908-4a99-4fa0-8299-37d7ad4de05f','N','N',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000308)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',80,'Y',1000202,'N','LBR','Tax Configuration Used','Tax Configuration','b2030a07-998f-4f0b-9d61-8d541e80e111','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000309)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,2,'N','N',90,'Y',1000203,'N','LBR','Defines the Tax Status','Tax Status','6ce714b7-5c39-4050-9492-a1d0dd6f8529','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000310)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,22,'N','N',100,'Y',1000204,'N','The To Region indicates the receiving region on a document','LBR','Receiving Region','To','98a7c8e8-2b2c-4f6f-9582-89c61191db0e','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000311)
;

-- Feb 4, 2014 1:54:33 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,1,'N','N',110,'Y',1000205,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','17c06f5d-9bfd-4c90-b87c-01dc13071c1b','N','Y',0,0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 13:54:33','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000304)
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000205
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000202
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000201
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000200
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000204
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000203
;

-- Feb 4, 2014 1:55:13 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000198
;

-- Feb 4, 2014 1:56:05 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-04 13:56:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000196
;

-- Feb 4, 2014 1:56:30 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-02-04 13:56:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000197
;

-- Feb 4, 2014 1:56:43 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=104,Updated=TO_DATE('2014-02-04 13:56:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000204
;

-- Feb 4, 2014 1:56:59 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-02-04 13:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000199
;

-- Feb 4, 2014 1:57:16 PM BRST
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=104,Updated=TO_DATE('2014-02-04 13:57:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000203
;

-- Feb 4, 2014 1:57:23 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2014-02-04 13:57:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000198
;

-- Feb 4, 2014 2:00:09 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000022,'N','N','N','LBR','L','59639de5-7ceb-4f7f-a4ee-c91a1c0a532a','Y','Y','LBR_TaxConfig_Product','Product Exception','Y',0,0,TO_DATE('2014-02-04 14:00:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:00:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 4, 2014 2:00:10 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000026,'Table LBR_TaxConfig_Product','LBR_TaxConfig_Product',1,'417b969d-6e87-48a7-a85f-b67b7f4d10af',TO_DATE('2014-02-04 14:00:09','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:00:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 4, 2014 2:07:37 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000314,'N','N','N',0,'N',22,'N','N','N','Y','81be6ef0-dcef-48e2-8ff2-455e8e12a018','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-04 14:07:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:07:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000022,129,0,'LBR')
;

-- Feb 4, 2014 2:09:16 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfigProduct', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:09:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000314
;

-- Feb 4, 2014 2:09:16 PM BRST
CREATE TABLE LBR_TaxConfig_Product (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 4, 2014 2:09:16 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT ADClient_LBRTaxConfigProduct FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:17:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000315,'N','N','N',0,'N',22,'N','N','N','Y','75ff142e-d261-437b-8068-f8a2cb965141','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-04 14:17:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:17:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000022,104,0,'LBR')
;

-- Feb 4, 2014 2:17:46 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfigProduct', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:17:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000315
;

-- Feb 4, 2014 2:17:46 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:17:46 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT ADOrg_LBRTaxConfigProduct FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:19:32 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000316,'N','N','N',0,'N',7,'N','N','N','Y','5be0fec0-96fc-4efa-875f-b333b2e94f62','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-04 14:19:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:19:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000022,0,'LBR')
;

-- Feb 4, 2014 2:19:35 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD Created DATE DEFAULT NULL 
;

-- Feb 4, 2014 2:20:00 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000317,'N','N','N',0,'N',22,'N','N','N','Y','945cc4d2-4ea9-4a84-ae92-7665b8a524a4','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-04 14:20:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:20:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000022,0,'LBR')
;

-- Feb 4, 2014 2:20:04 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfigProduct', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000317
;

-- Feb 4, 2014 2:20:04 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:20:04 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT CreatedBy_LBRTaxConfigProduct FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:20:27 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000318,'Y','N','N',0,'N',1,'N','N','N','Y','7a1b4ffe-ae87-4ae7-9c99-bc31aa5fa697','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-04 14:20:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:20:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000022,0,'LBR')
;

-- Feb 4, 2014 2:20:32 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 4, 2014 2:21:08 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000319,'N','N','N',0,'N',22,'N','N','N','Y','ddfcc182-2715-43c5-9a8b-6a0ef006a28a','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-04 14:21:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:21:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000022,0,'LBR')
;

-- Feb 4, 2014 2:21:13 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxConfigPr', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000319
;

-- Feb 4, 2014 2:21:13 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:21:13 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT LBRLegalMessage_LBRTaxConfigPr FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:21:51 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000320,'Y','N','N',0,'N',10,'N','N','N','Y','df76f9d3-f79d-4113-8828-8646c34b5bb8','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-04 14:21:51','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:21:51','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000022,0,'LBR')
;

-- Feb 4, 2014 2:21:54 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 2:23:48 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_Product_ID',1000082,'Product Exception','Indicates a Product Exception','Product Exception','b97b2a77-590b-4715-8382-01962344be96',TO_DATE('2014-02-04 14:23:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 14:23:48','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 2:26:07 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000321,'Y','N','N',0,'N',22,'N','Y','N','Y','8885eeda-2927-4038-a88b-03762033a928','N','LBR_TaxConfig_Product_ID','Indicates a Product Exception','Product Exception','N',TO_DATE('2014-02-04 14:26:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:26:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000082,13,1000022,0,'LBR')
;

-- Feb 4, 2014 2:26:12 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_TaxConfig_Product_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 2:26:12 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT LBR_TaxConfig_Product_Key PRIMARY KEY (LBR_TaxConfig_Product_ID)
;

-- Feb 4, 2014 2:27:33 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_Product_UU',1000083,'LBR_TaxConfig_Product_UU',NULL,'LBR_TaxConfig_Product_UU','46936a44-e42c-48d9-bdde-e2ab24bc4c08',TO_DATE('2014-02-04 14:27:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 14:27:33','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 2:27:48 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000322,'N','N','N',0,'N',36,'N','N','N','Y','a1a196f5-9334-4178-9f80-508d493ea47b','N','LBR_TaxConfig_Product_UU','LBR_TaxConfig_Product_UU','N',TO_DATE('2014-02-04 14:27:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:27:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000083,10,1000022,0,'LBR')
;

-- Feb 4, 2014 2:27:52 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_TaxConfig_Product_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 4, 2014 2:27:52 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT LBR_TaxConfig_Product_UU_idx UNIQUE (LBR_TaxConfig_Product_UU)
;

-- Feb 4, 2014 2:28:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000323,'Y','N','N',0,'N',22,'N','N','N','Y','e9004fd6-6402-470c-bdd6-daf97b176fed','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','Y',TO_DATE('2014-02-04 14:28:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:28:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,19,1000022,0,'LBR')
;

-- Feb 4, 2014 2:28:38 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguration_LBRTaxConf', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:28:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000323
;

-- Feb 4, 2014 2:28:38 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 2:28:38 PM BRST
--ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT LBRTaxConfiguration_LBRTaxConf FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 2:30:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000324,'N','N','N',0,'N',2,'N','N','N','Y','cca7357d-7163-4730-86a8-179b4d6f0abc','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-04 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:30:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000022,0,'LBR')
;

-- Feb 4, 2014 2:30:16 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 4, 2014 2:32:42 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,ColumnSQL,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000325,'N','N','N',0,'N',22,'N','N','N','Y','3a0a1630-b567-495e-8bb4-0a48bd0e8550','N','M_Product_ID','Product, Service, Item','(SELECT M_Product_ID FROM LBR_TaxConfiguration tax WHERE tax.LBR_TaxConfiguration_ID = LBR_TaxConfig_Product.LBR_TaxConfiguration_ID)','@M_Product_ID@','Identifies an item which is either purchased or sold in this organization.','Product','N',TO_DATE('2014-02-04 14:32:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:32:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,19,1000022,0,'LBR')
;

-- Feb 4, 2014 2:33:11 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000326,'N','N','N',0,'N',7,'N','N','N','Y','65293841-614f-468e-9a0e-17d8102718a7','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-04 14:33:11','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:33:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000022,0,'LBR')
;

-- Feb 4, 2014 2:33:16 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD Updated DATE DEFAULT NULL 
;

-- Feb 4, 2014 2:33:29 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000327,'N','N','N',0,'N',22,'N','N','N','Y','ffea416e-5a33-4105-a1f1-c2b4376ce965','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-04 14:33:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:33:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000022,0,'LBR')
;

-- Feb 4, 2014 2:33:38 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfigProduct', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000327
;

-- Feb 4, 2014 2:33:38 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:33:38 PM BRST
ALTER TABLE LBR_TaxConfig_Product ADD CONSTRAINT UpdatedBy_LBRTaxConfigProduct FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:35:48 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,DisplayLogic,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,60,'N','N','N','N','N','Y','N','@LBR_ExceptionType@=''P''',1,'774cc17f-9661-46fc-8414-98ece1d17930','LBR','Product',1000020,0,TO_DATE('2014-02-04 14:35:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000323,1000022,'B')
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',10,'Y',1000206,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','ce41d9e9-63a1-4540-b03a-a09565eaa2de','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000314)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',20,'Y',1000207,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','1861fd13-2fbb-4b32-8bcc-7417ed2b0c4a','N','Y','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000315)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',30,'Y',1000208,'N','LBR','Identifies a Legal Message','Legal Message','6e8d9ffe-6be2-4145-b8a5-bacd3e103cc8','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000319)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,10,'N','N',40,'Y',1000209,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','20e70030-bde9-4b20-b6c0-4464c3978327','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000320)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',50,'Y',1000210,'N','LBR','Indicates a Product Exception','Product Exception','44517cb9-ead5-473e-8580-7c8195767bf2','N','N',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000321)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,36,'N','N',60,'Y',1000211,'N','LBR','LBR_TaxConfig_Product_UU','747f4735-2bb9-4459-9392-c511398d7ec6','N','N',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000322)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',70,'Y',1000212,'N','LBR','Tax Configuration Used','Tax Configuration','5c1ccf8c-0ec3-48fd-af06-9085b7b6da8f','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000323)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,2,'N','N',80,'Y',1000213,'N','LBR','Defines the Tax Status','Tax Status','1e929797-bd63-4f20-bcd7-07930aeec91b','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000324)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,22,'N','N',90,'Y',1000214,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','ab91cb23-1f48-45de-ac71-a9b64b158a6f','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000325)
;

-- Feb 4, 2014 2:35:54 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,1,'N','N',100,'Y',1000215,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','754e3a28-b40b-402b-9279-dac586b896ea','N','Y',0,0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:35:54','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000318)
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000215
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000212
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000211
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000210
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000214
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000213
;

-- Feb 4, 2014 2:38:17 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000208
;

-- Feb 4, 2014 2:38:33 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-04 14:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000207
;

-- Feb 4, 2014 2:39:13 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 14:39:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000214
;

-- Feb 4, 2014 2:39:43 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 14:39:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000209
;

-- Feb 4, 2014 2:39:57 PM BRST
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 14:39:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000213
;

-- Feb 4, 2014 2:40:09 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 14:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000208
;

-- Feb 4, 2014 2:44:13 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000011,1000023,'N','N','N','LBR','L','2e6873e7-db06-4cfa-9aa9-818b893c4245','Y','Y','LBR_TaxConfig_ProductGroup','Maintain Product Group Exception','Product Group Exception','Y',0,0,TO_DATE('2014-02-04 14:44:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:44:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 4, 2014 2:44:13 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000027,'Table LBR_TaxConfig_ProductGroup','LBR_TaxConfig_ProductGroup',1,'ca295925-0162-42c1-b6a1-4961b25400bf',TO_DATE('2014-02-04 14:44:13','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 14:44:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 4, 2014 2:44:44 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000328,'N','N','N',0,'N',22,'N','N','N','Y','15182b04-7167-471e-bb05-063b4d596156','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-04 14:44:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:44:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000023,129,0,'LBR')
;

-- Feb 4, 2014 2:44:48 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxConfigProductGr', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:44:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000328
;

-- Feb 4, 2014 2:44:48 PM BRST
CREATE TABLE LBR_TaxConfig_ProductGroup (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 4, 2014 2:44:48 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT ADClient_LBRTaxConfigProductGr FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:45:07 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000329,'N','N','N',0,'N',22,'N','N','N','Y','30205c11-2089-451f-8291-07c6b1ee16e9','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-04 14:45:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:45:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000023,104,0,'LBR')
;

-- Feb 4, 2014 2:45:10 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxConfigProductGroup', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:45:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000329
;

-- Feb 4, 2014 2:45:10 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:45:10 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT ADOrg_LBRTaxConfigProductGroup FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:45:36 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000330,'N','N','N',0,'N',7,'N','N','N','Y','ec4b0167-135d-4cfc-ac90-139fd298e63a','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-04 14:45:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:45:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000023,0,'LBR')
;

-- Feb 4, 2014 2:45:40 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD Created DATE DEFAULT NULL 
;

-- Feb 4, 2014 2:45:52 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000331,'N','N','N',0,'N',22,'N','N','N','Y','356fd57e-0eb7-4738-8850-0e73cf8585ab','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-04 14:45:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:45:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000023,0,'LBR')
;

-- Feb 4, 2014 2:45:56 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxConfigProductG', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:45:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000331
;

-- Feb 4, 2014 2:45:56 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:45:56 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT CreatedBy_LBRTaxConfigProductG FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 2:46:18 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000332,'Y','N','N',0,'N',1,'N','N','N','Y','67161782-cd00-41a0-9671-51bda5dbaf59','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-04 14:46:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:46:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000023,0,'LBR')
;

-- Feb 4, 2014 2:46:23 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 4, 2014 2:48:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,ColumnSQL,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000333,'N','N','N',0,'N',22,'N','N','N','Y','b13d6386-387e-4a37-a66d-875cf536e305','N','LBR_FiscalGroup_Product_ID','Identifies a Product Fiscal Group','(SELECT LBR_FiscalGroup_Product_ID FROM LBR_TaxConfiguration tax WHERE tax.LBR_TaxConfiguration_ID = LBR_TaxConfig_ProductGroup.LBR_TaxConfiguration_ID)','@LBR_FiscalGroup_Product_ID@','Product Fiscal Group','N',TO_DATE('2014-02-04 14:48:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:48:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000018,18,1000013,1000023,0,'LBR')
;

-- Feb 4, 2014 2:48:40 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000334,'N','N','N',0,'N',22,'N','N','N','Y','b2a87300-ddcd-4d99-b6dd-8439fe53b33c','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-04 14:48:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:48:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000023,0,'LBR')
;

-- Feb 4, 2014 2:48:44 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxConfigPr', FKConstraintType='N',Updated=TO_DATE('2014-02-04 14:48:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000334
;

-- Feb 4, 2014 2:48:44 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 2:48:44 PM BRST
--ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBRLegalMessage_LBRTaxConfigPr FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 2:50:36 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000335,'Y','N','N',0,'N',10,'N','N','N','Y','f634f9c4-a097-49c9-a0bf-5ab0c04028cc','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-04 14:50:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:50:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000023,0,'LBR')
;

-- Feb 4, 2014 2:50:38 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_Tax_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 2:53:19 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_ProductGroup_ID',1000084,'Product Group Exception','Indicates a Product Group Exception','Product Group Exception','9710db2c-eec1-4517-9606-0814da8a6014',TO_DATE('2014-02-04 14:53:18','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 14:53:18','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 2:54:02 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000336,'Y','N','N',0,'N',22,'N','Y','N','Y','7d1cf055-8180-4e98-92ac-20a69022d396','N','LBR_TaxConfig_ProductGroup_ID','Indicates a Product Group Exception','Product Group Exception','N',TO_DATE('2014-02-04 14:54:02','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 14:54:02','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000084,13,1000023,0,'LBR')
;

-- Feb 4, 2014 2:54:07 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_TaxConfig_ProductGroup_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 2:54:07 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBR_TaxConfig_ProductGroup_Key PRIMARY KEY (LBR_TaxConfig_ProductGroup_ID)
;

-- Feb 4, 2014 3:07:16 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxConfig_ProductGroup_UU',1000085,'LBR_TaxConfig_ProductGroup_UU',NULL,'LBR_TaxConfig_ProductGroup_UU','7b812117-7864-48e1-a54a-4982f093655b',TO_DATE('2014-02-04 15:07:16','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-04 15:07:16','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 4, 2014 3:07:32 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000337,'N','N','N',0,'N',36,'N','N','N','Y','90e89895-fac9-41cc-9195-df77e2fdc920','N','LBR_TaxConfig_ProductGroup_UU','LBR_TaxConfig_ProductGroup_UU','N',TO_DATE('2014-02-04 15:07:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 15:07:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000085,10,1000023,0,'LBR')
;

-- Feb 4, 2014 3:07:36 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_TaxConfig_ProductGroup_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 4, 2014 3:07:36 PM BRST
-- ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBR_TaxConfig_ProductGroup__uu_idx UNIQUE (LBR_TaxConfig_ProductGroup_UU)
-- ;

-- Feb 4, 2014 3:17:32 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000338,'Y','N','N',0,'N',22,'N','N','N','Y','2b14318e-9a64-4a6d-946b-75a86283630d','N','LBR_TaxConfiguration_ID','Tax Configuration Used','Tax Configuration','Y',TO_DATE('2014-02-04 15:17:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 15:17:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000073,19,1000023,0,'LBR')
;

-- Feb 4, 2014 3:17:36 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxConfiguration_LBRTaxConf', FKConstraintType='N',Updated=TO_DATE('2014-02-04 15:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000338
;

-- Feb 4, 2014 3:17:36 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_TaxConfiguration_ID NUMBER(10) NOT NULL
;

-- Feb 4, 2014 3:17:36 PM BRST
--ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT LBRTaxConfiguration_LBRTaxConf FOREIGN KEY (LBR_TaxConfiguration_ID) REFERENCES lbr_taxconfiguration(lbr_taxconfiguration_id) DEFERRABLE INITIALLY DEFERRED
--;

-- Feb 4, 2014 3:18:31 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000339,'N','N','N',0,'N',2,'N','N','N','Y','d17e6d27-9f7b-47e6-96b5-553dded1f349','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-04 15:18:31','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 15:18:31','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000023,0,'LBR')
;

-- Feb 4, 2014 3:19:07 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 4, 2014 3:21:35 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000340,'N','N','N',0,'N',7,'N','N','N','Y','8caa2169-34d6-430e-890f-db26e3ba0a3f','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-04 15:21:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 15:21:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000023,0,'LBR')
;

-- Feb 4, 2014 3:21:39 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD Updated DATE DEFAULT NULL 
;

-- Feb 4, 2014 3:21:55 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000341,'N','N','N',0,'N',22,'N','N','N','Y','37f804a6-86b3-4b71-b9a6-d39a69babed0','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-04 15:21:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-04 15:21:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000023,0,'LBR')
;

-- Feb 4, 2014 3:21:59 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxConfigProductG', FKConstraintType='N',Updated=TO_DATE('2014-02-04 15:21:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000341
;

-- Feb 4, 2014 3:21:59 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 4, 2014 3:21:59 PM BRST
ALTER TABLE LBR_TaxConfig_ProductGroup ADD CONSTRAINT UpdatedBy_LBRTaxConfigProductG FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 4, 2014 3:24:19 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,ReadOnlyLogic,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000011,70,'N','N','N','N','N','Y','N',1,'cf901430-55f8-4027-bdf0-3782d9ee152f','LBR','Product Group',1000021,'@LBR_ExceptionType@=''G''',0,TO_DATE('2014-02-04 15:24:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000338,1000023,'B')
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',10,'Y',1000216,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','abdb0ffa-a075-472e-b908-176f6069b14a','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000328)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',20,'Y',1000217,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','29418ebf-f995-42a2-b833-1a92bc8eb447','N','Y','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000329)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',30,'Y',1000218,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','8ebdbab5-a836-49d1-a0c2-d59a58e19886','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000333)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',40,'Y',1000219,'N','LBR','Identifies a Legal Message','Legal Message','5de3d5bb-b631-4a9f-831a-4f518821fd17','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000334)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,10,'N','N',50,'Y',1000220,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','7ce0c37b-6853-40eb-b04d-d4b02f84e973','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000335)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',60,'Y',1000221,'N','LBR','Indicates a Product Group Exception','Product Group Exception','594e4835-5282-4fcc-b8d3-311a3f537738','N','N',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000336)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,36,'N','N',70,'Y',1000222,'N','LBR','LBR_TaxConfig_ProductGroup_UU','ebfe4ff0-51a8-4aae-8406-234aa401a0db','N','N',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000337)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,22,'N','N',80,'Y',1000223,'N','LBR','Tax Configuration Used','Tax Configuration','a83ababb-933e-44c3-83cc-5606869e755f','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000338)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,2,'N','N',90,'Y',1000224,'N','LBR','Defines the Tax Status','Tax Status','097e7d6e-bcce-4d22-a31b-d3b8049125b4','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000339)
;

-- Feb 4, 2014 3:24:24 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,1,'N','N',100,'Y',1000225,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','ea86527a-ed83-4385-a2c8-e0989d2acd06','N','Y',0,0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-04 15:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000332)
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000225
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000223
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000222
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000221
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000220
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000224
;

-- Feb 4, 2014 3:24:56 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000219
;

-- Feb 4, 2014 3:25:16 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-04 15:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000217
;

-- Feb 4, 2014 3:25:38 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 15:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000218
;

-- Feb 4, 2014 3:25:52 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 15:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000220
;

-- Feb 4, 2014 3:26:03 PM BRST
UPDATE AD_Field SET ColumnSpan=5, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 15:26:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000224
;

-- Feb 4, 2014 3:26:28 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-04 15:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000219
;

-- Feb 4, 2014 8:32:19 PM BRST
UPDATE AD_Tab SET DisplayLogic='@LBR_ExceptionType@=''G''', ReadOnlyLogic=NULL,Updated=TO_DATE('2014-02-04 20:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000021
;

-- Feb 5, 2014 10:11:30 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000342,'N','N','N',0,'N',22,'N','N','N','Y','c9dcb245-2f4a-4a1a-93cd-72ccca75688d','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-05 10:11:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:11:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000017,129,0,'LBR')
;

-- Feb 5, 2014 10:11:36 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000342
;

-- Feb 5, 2014 10:11:36 AM BRST
CREATE TABLE LBR_TaxDefinition (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 5, 2014 10:11:36 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT ADClient_LBRTaxDefinition FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:11:55 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000343,'N','N','N',0,'N',22,'N','N','N','Y','e3ee22fd-9d7c-4ea8-82dd-3e1c95f43949','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-05 10:11:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:11:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000017,104,0,'LBR')
;

-- Feb 5, 2014 10:11:58 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000343
;

-- Feb 5, 2014 10:11:58 AM BRST
ALTER TABLE LBR_TaxDefinition ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:11:58 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT ADOrg_LBRTaxDefinition FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:12:28 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000344,'N','N','N',0,'N',22,'Y','N','N','Y','d83c314b-de5d-4750-bd84-b2728c74a3d0','N','C_BPartner_ID','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner ','Y',TO_DATE('2014-02-05 10:12:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:12:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',187,30,1000017,0,'LBR')
;

-- Feb 5, 2014 10:12:33 AM BRST
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000344
;

-- Feb 5, 2014 10:12:33 AM BRST
ALTER TABLE LBR_TaxDefinition ADD C_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:12:33 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT CBPartner_LBRTaxDefinition FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:12:58 AM BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-02-05 10:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000344
;

-- Feb 5, 2014 10:13:21 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000345,'N','N','N',0,'N',22,'N','N','N','Y','a0360415-3c0e-4d22-baa7-02be2057b19d','Y','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type','Y',TO_DATE('2014-02-05 10:13:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:13:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',196,19,1000017,0,'LBR')
;

-- Feb 5, 2014 10:13:25 AM BRST
UPDATE AD_Column SET FKConstraintName='CDocType_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000345
;

-- Feb 5, 2014 10:13:25 AM BRST
ALTER TABLE LBR_TaxDefinition ADD C_DocType_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:13:25 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT CDocType_LBRTaxDefinition FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:14:14 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000346,'N','N','N',0,'N',10,'N','N','N','Y','00ebc5ef-dcb0-47db-98a0-98e1c73c613b','Y','C_Region_ID','Identifies a geographical Region','The Region identifies a unique Region for this Country.','Region','Y',TO_DATE('2014-02-05 10:14:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:14:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',209,18,157,1000017,1000001,0,'LBR')
;

-- Feb 5, 2014 10:14:17 AM BRST
UPDATE AD_Column SET FKConstraintName='CRegion_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000346
;

-- Feb 5, 2014 10:14:17 AM BRST
ALTER TABLE LBR_TaxDefinition ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:14:17 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT CRegion_LBRTaxDefinition FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:14:38 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000347,'N','N','N',0,'N',7,'N','N','N','Y','244db07e-9c7c-4ee2-b04a-42d9caa48ae8','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-05 10:14:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:14:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000017,0,'LBR')
;

-- Feb 5, 2014 10:14:42 AM BRST
ALTER TABLE LBR_TaxDefinition ADD Created DATE DEFAULT NULL 
;

-- Feb 5, 2014 10:14:53 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000348,'N','N','N',0,'N',22,'N','N','N','Y','faa6f8a4-f8d6-4f79-9331-fe707ab2b97e','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-05 10:14:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:14:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000017,0,'LBR')
;

-- Feb 5, 2014 10:14:57 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:14:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000348
;

-- Feb 5, 2014 10:14:57 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:14:57 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT CreatedBy_LBRTaxDefinition FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:16:06 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000349,'N','N','N',0,'N',255,'Y','N','N','Y','6b60fc7e-62ef-43bc-8cf8-905c09b081dd','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-02-05 10:16:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:16:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000017,0,'LBR')
;

-- Feb 5, 2014 10:16:11 AM BRST
ALTER TABLE LBR_TaxDefinition ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Feb 5, 2014 10:16:30 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000350,'Y','N','N',0,'N',1,'N','N','N','Y','042a7ade-1a00-422f-80c0-a1fc8ffb453b','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-05 10:16:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:16:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000017,0,'LBR')
;

-- Feb 5, 2014 10:16:34 AM BRST
ALTER TABLE LBR_TaxDefinition ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- Feb 5, 2014 10:18:34 AM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000016,'LBR_Yes_No_Both','LBR','bbf31f3e-a1cb-48d0-9ec6-2e9579880a99','N','L',0,0,TO_DATE('2014-02-05 10:18:34','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 10:18:34','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 10:18:54 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000034,1000016,'73eb704e-2c39-4bb5-ad4e-b8eb0b296aa0','B',TO_DATE('2014-02-05 10:18:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 10:18:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Both')
;

-- Feb 5, 2014 10:19:10 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000035,1000016,'8a695237-f22a-4257-8337-5e4674d50b05','N',TO_DATE('2014-02-05 10:19:10','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 10:19:10','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'No')
;

-- Feb 5, 2014 10:19:28 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000036,1000016,'f9223057-8a2f-45c9-9bb5-eeeb82590e08','Y',TO_DATE('2014-02-05 10:19:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 10:19:28','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Yes')
;

-- Feb 5, 2014 10:20:21 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000351,'Y','N','N',0,'N',1,'N','N','N','Y','84efed72-7d8f-40a2-b03e-d6aeaf58aeb8','Y','IsSOTrx','This is a Sales Transaction','B','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Sales Transaction','Y',TO_DATE('2014-02-05 10:20:21','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:20:21','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1106,17,1000016,1000017,0,'LBR')
;

-- Feb 5, 2014 10:20:31 AM BRST
ALTER TABLE LBR_TaxDefinition ADD IsSOTrx CHAR(1) DEFAULT 'B' NOT NULL
;

-- Feb 5, 2014 10:21:35 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000352,'N','N','N',0,'N',22,'N','N','N','Y','0a3ea8b7-47d4-4465-a1c9-bd57f13ea73d','Y','LBR_BPartnerCategory_ID','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','Y',TO_DATE('2014-02-05 10:21:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:21:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000024,18,1000004,1000017,0,'LBR')
;

-- Feb 5, 2014 10:21:39 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRBPartnerCategory_LBRTaxDefi', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000352
;

-- Feb 5, 2014 10:21:39 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_BPartnerCategory_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:21:39 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRBPartnerCategory_LBRTaxDefi FOREIGN KEY (LBR_BPartnerCategory_ID) REFERENCES lbr_bpartnercategory(lbr_bpartnercategory_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:28:47 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000353,'N','N','N',0,'N',22,'N','N','N','Y','5cc52d14-d5b0-4aae-aa41-168176632812','Y','LBR_FiscalGroup_BPartner_ID','Identifies a Business Partner Fiscal Group','BP Fiscal Group','Y',TO_DATE('2014-02-05 10:28:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:28:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000020,18,1000005,1000017,0,'LBR')
;

-- Feb 5, 2014 10:28:52 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRFiscalGroupBPartner_LBRTaxD', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:28:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000353
;

-- Feb 5, 2014 10:28:52 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_FiscalGroup_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:28:52 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRFiscalGroupBPartner_LBRTaxD FOREIGN KEY (LBR_FiscalGroup_BPartner_ID) REFERENCES lbr_fiscalgroup_bpartner(lbr_fiscalgroup_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:29:46 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000354,'N','N','N',0,'N',22,'N','N','N','Y','046ec411-ffa9-4243-91d1-ad1002a0a5a2','Y','LBR_FiscalGroup_Product_ID','Identifies a Product Fiscal Group','Product Fiscal Group','Y',TO_DATE('2014-02-05 10:29:46','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:29:46','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000018,18,1000013,1000017,0,'LBR')
;

-- Feb 5, 2014 10:29:51 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRFiscalGroupProduct_LBRTaxDe', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000354
;

-- Feb 5, 2014 10:29:51 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:29:51 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRFiscalGroupProduct_LBRTaxDe FOREIGN KEY (LBR_FiscalGroup_Product_ID) REFERENCES lbr_fiscalgroup_product(lbr_fiscalgroup_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:32:01 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_IsSubTributaria',1000086,'Is Substituicao Tributaria','Defines the Is Substituicao Tributaria Status','Is Substituicao Tributaria','3ee1f0ee-415e-452a-8254-52886d1103e1',TO_DATE('2014-02-05 10:32:01','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 10:32:01','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 10:34:17 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000355,'Y','N','N',0,'N',1,'N','N','N','Y','5d68b811-0711-4ff7-be85-a4cfb433f420','Y','LBR_IsSubTributaria','Defines the Is Substituicao Tributaria Status','B','Is Substituicao Tributaria','Y',TO_DATE('2014-02-05 10:34:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:34:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000086,17,1000016,1000017,0,'LBR')
;

-- Feb 5, 2014 10:34:22 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_IsSubTributaria CHAR(1) DEFAULT 'B' NOT NULL
;

-- Feb 5, 2014 10:35:28 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000356,'N','N','N',0,'N',22,'N','N','N','Y','974ea93c-bde3-4a79-9ca4-d76c85b631fd','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-05 10:35:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:35:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,19,1000017,0,'LBR')
;

-- Feb 5, 2014 10:35:52 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRTaxDefiniti', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:35:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000356
;

-- Feb 5, 2014 10:35:52 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:35:53 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRLegalMessage_LBRTaxDefiniti FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:37:37 AM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000017,'LBR_NCM','LBR','3d20574f-c33e-4369-bb7c-a2806bd53f6f','N','T',0,0,TO_DATE('2014-02-05 10:37:37','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 10:37:37','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 10:38:06 AM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','6cffe7a4-ef1d-4653-afb9-75f3b51d9f63',0,TO_DATE('2014-02-05 10:38:06','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 10:38:06','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000028,1000024,1000017,1000000,'LBR')
;

-- Feb 5, 2014 10:38:42 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000357,'N','N','N',0,'N',22,'N','N','N','Y','5a9a683d-c525-4050-aff1-30d8bf10ee55','Y','LBR_NCM_ID','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','Y',TO_DATE('2014-02-05 10:38:42','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:38:42','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000012,30,1000017,1000017,0,'LBR')
;

-- Feb 5, 2014 10:38:46 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRNCM_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000357
;

-- Feb 5, 2014 10:38:46 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_NCM_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:38:46 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRNCM_LBRTaxDefinition FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:39:23 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000358,'N','N','N',0,'N',22,'N','N','N','Y','f01b99c5-ef46-4454-a8c1-55a87d033fb3','Y','LBR_ProductCategory_ID','Identifies a CFOP Product Category','CFOP Product Category','Y',TO_DATE('2014-02-05 10:39:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:39:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000022,19,1000017,0,'LBR')
;

-- Feb 5, 2014 10:39:28 AM BRST
UPDATE AD_Column SET FKConstraintName='LBRProductCategory_LBRTaxDefin', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000358
;

-- Feb 5, 2014 10:39:28 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:39:28 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRProductCategory_LBRTaxDefin FOREIGN KEY (LBR_ProductCategory_ID) REFERENCES lbr_productcategory(lbr_productcategory_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:40:03 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000359,'N','N','N',0,'N',10,'N','N','N','Y','b98f9475-c009-480c-a482-5fc1b295b777','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-05 10:40:03','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:40:03','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000017,0,'LBR')
;

-- Feb 5, 2014 10:40:08 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:40:51 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxDefinition_ID',1000087,'Tax Definition','Defines the Tax Definition','Tax Definition','e3e3edf1-231d-4150-8bf7-0ae9a8ba5941',TO_DATE('2014-02-05 10:40:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 10:40:51','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 10:41:06 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000360,'Y','N','N',0,'N',22,'N','Y','N','Y','7aa3a279-3adb-4d24-b3e3-86794f5dc21f','N','LBR_TaxDefinition_ID','Defines the Tax Definition','Tax Definition','N',TO_DATE('2014-02-05 10:41:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:41:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000087,13,1000017,0,'LBR')
;

-- Feb 5, 2014 10:41:10 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_TaxDefinition_ID NUMBER(10) NOT NULL
;

-- Feb 5, 2014 10:41:10 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBR_TaxDefinition_Key PRIMARY KEY (LBR_TaxDefinition_ID)
;

-- Feb 5, 2014 10:41:25 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_TaxDefinition_UU',1000088,'LBR_TaxDefinition_UU',NULL,'LBR_TaxDefinition_UU','a2cf11b9-0d34-4f6a-8e88-f54d97b16af1',TO_DATE('2014-02-05 10:41:24','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 10:41:24','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 10:41:43 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000361,'N','N','N',0,'N',36,'N','N','N','Y','5bd89a2e-a587-45a3-a3d4-d5583ddb61f9','N','LBR_TaxDefinition_UU','LBR_TaxDefinition_UU','N',TO_DATE('2014-02-05 10:41:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:41:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000088,10,1000017,0,'LBR')
;

-- Feb 5, 2014 10:41:47 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_TaxDefinition_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 5, 2014 10:41:47 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBR_TaxDefinition_UU_idx UNIQUE (LBR_TaxDefinition_UU)
;

-- Feb 5, 2014 10:42:21 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000362,'N','N','N',0,'N',2,'N','N','N','Y','ff1159ef-9b52-4707-8ad8-5efe2cb6d124','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-05 10:42:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:42:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000017,0,'LBR')
;

-- Feb 5, 2014 10:42:25 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 5, 2014 10:44:40 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000363,'N','N','N',0,'N',3,'N','N','N','Y','0e63a79c-3025-4470-9a62-fd4e8cb74d2e','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-02-05 10:44:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:44:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,1000017,0,'LBR')
;

-- Feb 5, 2014 10:44:44 AM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_TransactionType NVARCHAR2(3) DEFAULT NULL 
;

-- Feb 5, 2014 10:46:08 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000364,'N','N','N',0,'N',22,'N','N','N','Y','7425774a-9bb7-47c6-ab91-92dd944e0f9d','Y','M_Product_ID','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product','Y',TO_DATE('2014-02-05 10:46:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:46:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',454,30,1000017,0,'LBR')
;

-- Feb 5, 2014 10:46:13 AM BRST
UPDATE AD_Column SET FKConstraintName='MProduct_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000364
;

-- Feb 5, 2014 10:46:13 AM BRST
ALTER TABLE LBR_TaxDefinition ADD M_Product_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:46:13 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT MProduct_LBRTaxDefinition FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:47:28 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000365,'N','N','N',0,'N',10,'N','N','N','Y','3fe55b7b-4c06-445e-8992-bb899cc7382d','Y','PriorityNo','Where inventory should be picked from first','The Relative Priority indicates the location to pick from first if an product is stored in more than one location.  (100 = highest priority, 0 = lowest).  For outgoing shipments, the location is picked with the highest priority where the entire quantity can be shipped from.  If there is no location, the location with the highest priority is used.
The Priority is ignored for products with Guarantee Date (always the oldest first) or if a specific instance is selected.
Incoming receipts are stored at the location with the highest priority, if not explicitly selected.','Relative Priority','Y',TO_DATE('2014-02-05 10:47:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:47:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',1145,11,1000017,0,'LBR')
;

-- Feb 5, 2014 10:47:33 AM BRST
ALTER TABLE LBR_TaxDefinition ADD PriorityNo NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:48:26 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000366,'N','N','N',0,'N',22,'N','N','N','Y','b54ee4b2-b71b-4107-bc6d-410e0bb6fbdd','Y','To_Region_ID','Receiving Region','The To Region indicates the receiving region on a document','To','Y',TO_DATE('2014-02-05 10:48:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:48:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',595,18,157,1000017,1000001,0,'LBR')
;

-- Feb 5, 2014 10:48:30 AM BRST
UPDATE AD_Column SET FKConstraintName='ToRegion_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:48:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000366
;

-- Feb 5, 2014 10:48:30 AM BRST
ALTER TABLE LBR_TaxDefinition ADD To_Region_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:48:30 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT ToRegion_LBRTaxDefinition FOREIGN KEY (To_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:48:53 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000367,'N','N','N',0,'N',7,'N','N','N','Y','a7bcfc6c-32da-4b8d-af88-289145be2e58','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-05 10:48:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:48:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000017,0,'LBR')
;

-- Feb 5, 2014 10:48:57 AM BRST
ALTER TABLE LBR_TaxDefinition ADD Updated DATE DEFAULT NULL 
;

-- Feb 5, 2014 10:49:13 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000368,'N','N','N',0,'N',22,'N','N','N','Y','98c0312b-88c1-4619-a46b-bdcf97e21a6b','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-05 10:49:13','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:49:13','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000017,0,'LBR')
;

-- Feb 5, 2014 10:49:18 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 10:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000368
;

-- Feb 5, 2014 10:49:18 AM BRST
ALTER TABLE LBR_TaxDefinition ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 10:49:18 AM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT UpdatedBy_LBRTaxDefinition FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 10:49:53 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000369,'Y','N','N',0,'N',7,'N','N','N','Y','6d58961b-3e85-41aa-887b-2d70d14c44ab','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-02-05 10:49:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 10:49:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000017,0,'LBR')
;

-- Feb 5, 2014 10:49:56 AM BRST
ALTER TABLE LBR_TaxDefinition ADD ValidFrom DATE NOT NULL
;

-- Feb 5, 2014 11:16:39 AM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Description,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','6',0,1000024,'N','N','N','LBR','L','1aa601bf-12b2-4a80-bc4a-a09f24b63078','Y','Y','LBR_CFOP','Maintain CFOP','CFOP','Y',0,0,TO_DATE('2014-02-05 11:16:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 11:16:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 5, 2014 11:16:39 AM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000028,'Table LBR_CFOP','LBR_CFOP',1,'25b0d9b9-132c-4318-9e20-d9dc9ebe2b7d',TO_DATE('2014-02-05 11:16:39','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 11:16:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 5, 2014 11:17:07 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000370,'N','N','N',0,'N',22,'N','N','N','Y','1a4ecd00-0ad7-4c32-8bc2-dace135cd66c','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-05 11:17:07','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:17:07','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000024,129,0,'LBR')
;

-- Feb 5, 2014 11:17:13 AM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCFOP', FKConstraintType='N',Updated=TO_DATE('2014-02-05 11:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000370
;

-- Feb 5, 2014 11:17:13 AM BRST
CREATE TABLE LBR_CFOP (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 5, 2014 11:17:13 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT ADClient_LBRCFOP FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 11:17:27 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000371,'N','N','N',0,'N',22,'N','N','N','Y','43ce1800-5e8b-43b1-9c43-5b921a8492b7','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-05 11:17:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:17:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000024,104,0,'LBR')
;

-- Feb 5, 2014 11:17:31 AM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCFOP', FKConstraintType='N',Updated=TO_DATE('2014-02-05 11:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000371
;

-- Feb 5, 2014 11:17:31 AM BRST
ALTER TABLE LBR_CFOP ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 11:17:31 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT ADOrg_LBRCFOP FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 11:17:52 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000372,'N','N','N',0,'N',7,'N','N','N','Y','b02f2927-09a7-49a3-9317-f9658a136b79','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-05 11:17:52','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:17:52','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000024,0,'LBR')
;

-- Feb 5, 2014 11:17:55 AM BRST
ALTER TABLE LBR_CFOP ADD Created DATE DEFAULT NULL 
;

-- Feb 5, 2014 11:18:06 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000373,'N','N','N',0,'N',22,'N','N','N','Y','c0367d6c-022f-40c3-bd12-42c2ea936b9a','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-05 11:18:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:18:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000024,0,'LBR')
;

-- Feb 5, 2014 11:18:10 AM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCFOP', FKConstraintType='N',Updated=TO_DATE('2014-02-05 11:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000373
;

-- Feb 5, 2014 11:18:10 AM BRST
ALTER TABLE LBR_CFOP ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 11:18:10 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT CreatedBy_LBRCFOP FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 11:18:39 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000374,'N','N','N',0,'N',255,'Y','N','N','Y','653f2489-c3d2-42f3-91b2-c9f221c077c2','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-02-05 11:18:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:18:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,34,1000024,0,'LBR')
;

-- Feb 5, 2014 11:18:42 AM BRST
ALTER TABLE LBR_CFOP ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- Feb 5, 2014 11:19:01 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000375,'N','N','N',0,'N',1,'N','N','N','Y','f3106825-3922-4ab2-9858-f99a2854888f','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-05 11:19:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:19:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000024,0,'LBR')
;

-- Feb 5, 2014 11:19:05 AM BRST
ALTER TABLE LBR_CFOP ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Feb 5, 2014 11:19:47 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CFOP_ID',1000089,'CFOP','Indentifies the CFOP','CFOP','35e1b0ed-1745-48aa-8e89-121a43c365e0',TO_DATE('2014-02-05 11:19:47','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 11:19:47','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 11:20:09 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000376,'Y','N','N',0,'N',22,'N','Y','N','Y','c5741e39-e035-4fa2-88dc-d55c189eab50','N','LBR_CFOP_ID','Indentifies the CFOP','CFOP','N',TO_DATE('2014-02-05 11:20:09','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:20:09','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000089,13,1000024,0,'LBR')
;

-- Feb 5, 2014 11:20:16 AM BRST
ALTER TABLE LBR_CFOP ADD LBR_CFOP_ID NUMBER(10) NOT NULL
;

-- Feb 5, 2014 11:20:16 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT LBR_CFOP_Key PRIMARY KEY (LBR_CFOP_ID)
;

-- Feb 5, 2014 11:20:36 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CFOP_UU',1000090,'LBR_CFOP_UU',NULL,'LBR_CFOP_UU','e1e73f01-317d-48cb-8a71-56914bdad788',TO_DATE('2014-02-05 11:20:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 11:20:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 11:20:48 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000377,'N','N','N',0,'N',36,'N','N','N','Y','d9685e01-3ce7-4018-a275-98cd629e2a83','N','LBR_CFOP_UU','LBR_CFOP_UU','N',TO_DATE('2014-02-05 11:20:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:20:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000090,10,1000024,0,'LBR')
;

-- Feb 5, 2014 11:20:52 AM BRST
ALTER TABLE LBR_CFOP ADD LBR_CFOP_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 5, 2014 11:20:52 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT LBR_CFOP_UU_idx UNIQUE (LBR_CFOP_UU)
;

-- Feb 5, 2014 11:21:25 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000378,'N','N','N',0,'N',7,'N','N','N','Y','ef74741c-309e-4060-ac32-a590298ebbba','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-05 11:21:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:21:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000024,0,'LBR')
;

-- Feb 5, 2014 11:21:30 AM BRST
ALTER TABLE LBR_CFOP ADD Updated DATE DEFAULT NULL 
;

-- Feb 5, 2014 11:21:40 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000379,'N','N','N',0,'N',22,'N','N','N','Y','2d27e0d4-e535-4d84-b86c-245e96e64dde','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-05 11:21:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:21:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000024,0,'LBR')
;

-- Feb 5, 2014 11:21:43 AM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCFOP', FKConstraintType='N',Updated=TO_DATE('2014-02-05 11:21:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000379
;

-- Feb 5, 2014 11:21:43 AM BRST
ALTER TABLE LBR_CFOP ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 11:21:43 AM BRST
ALTER TABLE LBR_CFOP ADD CONSTRAINT UpdatedBy_LBRCFOP FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 11:22:39 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000380,'Y','N','N',0,'N',5,'Y','N','N','Y','09002c53-6f99-447f-9ca9-1b7c86d5b1c5','Y','Value','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key','Y',TO_DATE('2014-02-05 11:22:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 11:22:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',620,10,1000024,0,'LBR')
;

-- Feb 5, 2014 11:22:56 AM BRST
ALTER TABLE LBR_CFOP ADD Value NVARCHAR2(5) NOT NULL
;

-- Feb 5, 2014 12:04:46 PM BRST
INSERT INTO AD_Window (Processing,WindowType,IsSOTrx,IsDefault,IsBetaFunctionality,WinHeight,WinWidth,EntityType,Name,Description,AD_Window_ID,AD_Window_UU,Created,Updated,AD_Org_ID,IsActive,UpdatedBy,CreatedBy,AD_Client_ID) VALUES ('N','M','Y','N','N',0,0,'LBR','CFOP','Maintain CFOP',1000012,'70c0b0f9-02e6-4361-8078-ee1afc3c52cb',TO_DATE('2014-02-05 12:04:45','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 12:04:45','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,0)
;

-- Feb 5, 2014 12:05:17 PM BRST
UPDATE AD_Table SET AD_Window_ID=1000012,Updated=TO_DATE('2014-02-05 12:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000024
;

-- Feb 5, 2014 12:06:23 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,Description,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','N',1000012,10,'N','N','N','N','N','Y','N',0,'02ca856c-143b-4fc9-9ea4-72f7a058dd42','LBR','CFOP','Maintain CFOP',1000022,0,TO_DATE('2014-02-05 12:06:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000024,'B')
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,22,'N','N',10,'Y',1000226,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','841d38ff-3af3-4b07-a25f-0b49cf3aa4da','N','Y',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000370)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,22,'N','N',20,'Y',1000227,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','9c74a2ab-3454-4811-b8e8-6ca1b3d0d4f0','N','Y','Y',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',4,0,2,1000371)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,5,'N','N',30,'Y',1000228,'N','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','LBR','Search key for the record in the format required - must be unique','Search Key','7501944c-4c91-4cfd-bcb6-f4a524354434','N','Y',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000380)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000022,255,'N','N',40,'Y',1000229,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','9d31709f-7d06-4e05-8e30-e20cf1201661','N','Y',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,8,1000374)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,22,'N','N',50,'Y',1000230,'N','LBR','Indentifies the CFOP','CFOP','5c30da26-4787-46dc-8441-238542898f20','N','N',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000376)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,36,'N','N',60,'Y',1000231,'N','LBR','LBR_CFOP_UU','a434ec96-8251-4f25-bec0-b49b8cd942c2','N','N',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000377)
;

-- Feb 5, 2014 12:06:30 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000022,1,'N','N',70,'Y',1000232,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','9b1ecc36-0062-470b-992f-b3a59db9db88','N','Y',0,0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:06:30','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000375)
;

-- Feb 5, 2014 12:07:43 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-05 12:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000227
;

-- Feb 5, 2014 12:08:19 PM BRST
UPDATE AD_Field SET NumLines=3,Updated=TO_DATE('2014-02-05 12:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000229
;

-- Feb 5, 2014 12:09:22 PM BRST
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,Name,Description,AD_Menu_UU,Action,IsActive,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID) VALUES (1000012,1000015,'N','Y','N','LBR','Y','CFOP','Maintain CFOP','1933d2ba-5979-4e23-af59-0f84b84ae4b1','W','Y',0,TO_DATE('2014-02-05 12:09:22','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 12:09:22','YYYY-MM-DD HH24:MI:SS'),0,0,0)
;

-- Feb 5, 2014 12:09:22 PM BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000015, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000015)
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Feb 5, 2014 12:09:27 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200008
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53288
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53289
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=352
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53290
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=434
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=435
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200045
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200046
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200019
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- Feb 5, 2014 12:09:36 PM BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000007, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- Feb 5, 2014 12:12:04 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000381,'N','N','N',0,'N',22,'N','N','N','Y','42b096d7-d912-45f7-b269-a65173bbcedd','Y','LBR_CFOP_ID','Indentifies the CFOP','CFOP','Y',TO_DATE('2014-02-05 12:12:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 12:12:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000089,30,1000017,0,'LBR')
;

-- Feb 5, 2014 12:12:08 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRCFOP_LBRTaxDefinition', FKConstraintType='N',Updated=TO_DATE('2014-02-05 12:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000381
;

-- Feb 5, 2014 12:12:08 PM BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_CFOP_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 12:12:08 PM BRST
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRCFOP_LBRTaxDefinition FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',10,'Y',1000233,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','d11978bb-7d8a-4485-accc-a2322152e291','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000342)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',20,'Y',1000234,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','5671b7de-35f4-429e-a465-07214c1164c4','N','Y','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000343)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000015,255,'N','N',30,'Y',1000235,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','de609ec1-3e4a-4fe5-a1c3-d29b21d4d6d5','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000349)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',40,'Y',1000236,'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBR','Identifies a Business Partner','Business Partner ','523a1915-d125-4802-b7c1-e222344a40b1','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000344)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',50,'Y',1000237,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','ac26ce79-76b2-4256-b515-ab9965438b55','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000345)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,10,'N','N',60,'Y',1000238,'N','The Region identifies a unique Region for this Country.','LBR','Identifies a geographical Region','Region','7cc1b251-a0e6-4ff1-9114-8529f067be7e','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000346)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,1,'N','N',70,'Y',1000239,'N','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','LBR','This is a Sales Transaction','Sales Transaction','1d10ba7b-e636-423b-a01f-30c908d63957','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000351)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',80,'Y',1000240,'N','LBR','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','6ab18a9b-b878-4918-b80b-f2db43f075e4','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000352)
;

-- Feb 5, 2014 12:14:04 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',90,'Y',1000241,'N','LBR','Identifies a Business Partner Fiscal Group','BP Fiscal Group','2840f5d6-3b7d-47e1-ba5a-ab2c07db8a4d','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000353)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',100,'Y',1000242,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','130046d8-069c-462e-82d9-be2a4080b49a','N','Y',0,0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:04','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000354)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,1,'N','N',110,'Y',1000243,'N','LBR','Defines the Is Substituicao Tributaria Status','Is Substituicao Tributaria','f55e522a-911f-4996-b972-dab31774209a','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000355)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',120,'Y',1000244,'N','LBR','Identifies a Legal Message','Legal Message','ec80784c-00a9-4871-8b55-8fc783c69ba6','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000356)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',130,'Y',1000245,'N','LBR','NCM stands for Nomenclatura Comum do MERCOSUL','NCM','5a2cb103-83ff-477e-a24c-bfc5c2c3a9c7','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000357)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',140,'Y',1000246,'N','LBR','Identifies a CFOP Product Category','CFOP Product Category','34cbe6aa-7d59-46bb-9db6-9d5a1af96895','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000358)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,10,'N','N',150,'Y',1000247,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','0fbd7afa-1ca7-41e0-a053-134915f77ffe','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000359)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',160,'Y',1000248,'N','LBR','Defines the Tax Definition','Tax Definition','be0345b8-6ed3-4629-9854-0d982b7af697','N','N',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000360)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,36,'N','N',170,'Y',1000249,'N','LBR','LBR_TaxDefinition_UU','3a17aa06-788f-4752-af70-3c4de882d1b6','N','N',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000361)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,2,'N','N',180,'Y',1000250,'N','LBR','Defines the Tax Status','Tax Status','b3ab4c94-cac3-47a5-9cbf-517b2a0a7c9c','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000362)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,3,'N','N',190,'Y',1000251,'N','LBR','Identifies a Transaction Type','Transaction Type','1cf9e65b-e7b3-4501-a9e4-f31477a731e8','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000363)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',200,'Y',1000252,'N','Identifies an item which is either purchased or sold in this organization.','LBR','Product, Service, Item','Product','3b7b8e88-bbc9-453f-bb67-4302616ea9b4','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000364)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,10,'N','N',210,'Y',1000253,'N','The Relative Priority indicates the location to pick from first if an product is stored in more than one location.  (100 = highest priority, 0 = lowest).  For outgoing shipments, the location is picked with the highest priority where the entire quantity can be shipped from.  If there is no location, the location with the highest priority is used.
The Priority is ignored for products with Guarantee Date (always the oldest first) or if a specific instance is selected.
Incoming receipts are stored at the location with the highest priority, if not explicitly selected.','LBR','Where inventory should be picked from first','Relative Priority','a61e6b9a-bc69-41de-9cae-ce09408aa0eb','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000365)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',220,'Y',1000254,'N','The To Region indicates the receiving region on a document','LBR','Receiving Region','To','f3379ebb-ce34-4338-977b-7c7aba8e2922','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000366)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,7,'N','N',230,'Y',1000255,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','6e634c0d-ad92-4a9f-9d96-360d16beda4f','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000369)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,22,'N','N',240,'Y',1000256,'N','LBR','Indentifies the CFOP','CFOP','a3812611-bd4c-47cd-9ced-7dc2de7add91','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000381)
;

-- Feb 5, 2014 12:14:05 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000015,1,'N','N',250,'Y',1000257,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','6192ec67-20e8-4fba-a64e-c3570bddd5da','N','Y',0,0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 12:14:05','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000350)
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000249
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000248
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000255
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000253
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000257
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000239
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000235
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000236
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000240
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000238
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000254
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000252
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000246
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000242
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000241
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000245
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000243
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000237
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000247
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000244
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000250
;

-- Feb 5, 2014 12:32:07 PM BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000256
;

-- Feb 5, 2014 12:34:08 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-05 12:34:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000234
;

-- Feb 5, 2014 12:35:15 PM BRST
UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', XPosition=4,Updated=TO_DATE('2014-02-05 12:35:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000253
;

-- Feb 5, 2014 12:36:26 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_DATE('2014-02-05 12:36:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000239
;

-- Feb 5, 2014 12:38:44 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-05 12:38:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000236
;

-- Feb 5, 2014 12:38:56 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-05 12:38:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000240
;

-- Feb 5, 2014 12:39:11 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-05 12:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000238
;

-- Feb 5, 2014 12:39:24 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-05 12:39:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000254
;

-- Feb 5, 2014 12:39:55 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:39:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000252
;

-- Feb 5, 2014 12:40:08 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:40:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000246
;

-- Feb 5, 2014 12:40:36 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000242
;

-- Feb 5, 2014 12:40:48 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000241
;

-- Feb 5, 2014 12:40:59 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:40:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000245
;

-- Feb 5, 2014 12:41:11 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 12:41:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000243
;

-- Feb 5, 2014 12:41:41 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2014-02-05 12:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000237
;

-- Feb 5, 2014 12:41:53 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=113,Updated=TO_DATE('2014-02-05 12:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000251
;

-- Feb 5, 2014 12:42:12 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 12:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000247
;

-- Feb 5, 2014 12:42:25 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 12:42:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000244
;

-- Feb 5, 2014 12:42:36 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 12:42:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000250
;

-- Feb 5, 2014 12:42:46 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 12:42:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000256
;

-- Feb 5, 2014 1:00:14 PM BRST
UPDATE AD_Tab SET SeqNo=80,Updated=TO_DATE('2014-02-05 13:00:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000015
;

-- Feb 5, 2014 1:49:43 PM BRST
INSERT INTO AD_Table (ImportTable,CopyColumnsFromTable,IsSecurityEnabled,AccessLevel,LoadSeq,AD_Window_ID,AD_Table_ID,IsHighVolume,IsView,IsChangeLog,EntityType,ReplicationType,AD_Table_UU,IsCentrallyMaintained,IsDeleteable,TableName,Name,IsActive,AD_Org_ID,CreatedBy,Updated,UpdatedBy,Created,AD_Client_ID,Processing,DatabaseViewDrop) VALUES ('N','N','N','3',0,1000012,1000025,'N','N','N','LBR','L','5734a73b-8190-4bea-acd7-6d7f65ed472f','Y','Y','LBR_CFOPLine','CFOP Line','Y',0,0,TO_DATE('2014-02-05 13:49:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 13:49:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N')
;

-- Feb 5, 2014 1:49:44 PM BRST
INSERT INTO AD_Sequence (StartNewYear,CurrentNextSys,IsTableID,CurrentNext,IsAudited,IsAutoSequence,AD_Sequence_ID,Description,Name,IncrementNo,AD_Sequence_UU,Created,CreatedBy,Updated,UpdatedBy,IsActive,StartNo,AD_Client_ID,AD_Org_ID) VALUES ('N',200000,'Y',1000000,'N','Y',1000029,'Table LBR_CFOPLine','LBR_CFOPLine',1,'8222926b-4b9b-4813-b997-048c0404d2bd',TO_DATE('2014-02-05 13:49:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 13:49:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000000,0,0)
;

-- Feb 5, 2014 1:50:08 PM BRST
UPDATE AD_Table SET IsHighVolume='Y', EntityType='LBR',Updated=TO_DATE('2014-02-05 13:50:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1000025
;

-- Feb 5, 2014 1:50:40 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000382,'N','N','N',0,'N',22,'N','N','N','Y','aa117db8-0ea7-4db0-a62f-f648ceb832a2','N','AD_Client_ID','Client/Tenant for this installation.','@#AD_Client_ID@','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Client','N',TO_DATE('2014-02-05 13:50:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:50:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',102,19,1000025,129,0,'LBR')
;

-- Feb 5, 2014 1:50:46 PM BRST
UPDATE AD_Column SET FKConstraintName='ADClient_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000382
;

-- Feb 5, 2014 1:50:46 PM BRST
CREATE TABLE LBR_CFOPLine (AD_Client_ID NUMBER(10) DEFAULT NULL )
;

-- Feb 5, 2014 1:50:46 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT ADClient_LBRCFOPLine FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:51:08 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000383,'N','N','N',0,'N',22,'N','N','N','Y','408d2173-4f35-4a5d-a50f-2a853c9ecba9','N','AD_Org_ID','Organizational entity within client','@#AD_Org_ID@','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Organization','N',TO_DATE('2014-02-05 13:51:08','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:51:08','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',113,19,1000025,104,0,'LBR')
;

-- Feb 5, 2014 1:51:13 PM BRST
UPDATE AD_Column SET FKConstraintName='ADOrg_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000383
;

-- Feb 5, 2014 1:51:13 PM BRST
ALTER TABLE LBR_CFOPLine ADD AD_Org_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 1:51:13 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT ADOrg_LBRCFOPLine FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:51:58 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000384,'Y','N','N',0,'N',22,'N','N','N','Y','d77254ec-74d0-44bf-bd78-a3b6b175c08a','Y','C_DocType_ID','Document type or rules','The Document Type determines document sequence and processing rules','Document Type','Y',TO_DATE('2014-02-05 13:51:58','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:51:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',196,30,170,1000025,0,'LBR')
;

-- Feb 5, 2014 1:52:03 PM BRST
UPDATE AD_Column SET FKConstraintName='CDocType_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000384
;

-- Feb 5, 2014 1:52:03 PM BRST
ALTER TABLE LBR_CFOPLine ADD C_DocType_ID NUMBER(10) NOT NULL
;

-- Feb 5, 2014 1:52:03 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT CDocType_LBRCFOPLine FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:52:28 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000385,'N','N','N',0,'N',7,'N','N','N','Y','0677beea-eee7-4461-8b39-08398fb8a5c6','N','Created','Date this record was created','The Created field indicates the date that this record was created.','Created','N',TO_DATE('2014-02-05 13:52:28','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:52:28','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',245,16,1000025,0,'LBR')
;

-- Feb 5, 2014 1:52:32 PM BRST
ALTER TABLE LBR_CFOPLine ADD Created DATE DEFAULT NULL 
;

-- Feb 5, 2014 1:52:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000386,'N','N','N',0,'N',22,'N','N','N','Y','0b620e85-a61f-45e3-9f2c-69dc9041ac39','N','CreatedBy','User who created this records','The Created By field indicates the user who created this record.','Created By','N',TO_DATE('2014-02-05 13:52:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:52:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',246,18,110,1000025,0,'LBR')
;

-- Feb 5, 2014 1:52:46 PM BRST
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000386
;

-- Feb 5, 2014 1:52:47 PM BRST
ALTER TABLE LBR_CFOPLine ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 1:52:47 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT CreatedBy_LBRCFOPLine FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:53:04 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000387,'N','N','N',0,'N',1,'N','N','N','Y','34068757-60a5-43ac-9930-74eb88dbb9f3','Y','IsActive','The record is active in the system','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active','N',TO_DATE('2014-02-05 13:53:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:53:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',348,20,1000025,0,'LBR')
;

-- Feb 5, 2014 1:53:08 PM BRST
ALTER TABLE LBR_CFOPLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N'))
;

-- Feb 5, 2014 1:53:50 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000388,'N','N','N',0,'N',22,'N','N','N','Y','368f7c78-c81b-4720-bc47-27f99a01b48b','Y','LBR_BPartnerCategory_ID','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','Y',TO_DATE('2014-02-05 13:53:50','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:53:50','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000024,18,1000004,1000025,0,'LBR')
;

-- Feb 5, 2014 1:55:03 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRBPartnerCategory_LBRCFOPLin', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:55:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000388
;

-- Feb 5, 2014 1:55:03 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_BPartnerCategory_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 1:55:03 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBRBPartnerCategory_LBRCFOPLin FOREIGN KEY (LBR_BPartnerCategory_ID) REFERENCES lbr_bpartnercategory(lbr_bpartnercategory_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:56:33 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000018,'LBR_CFOP','LBR','0c207641-fd8f-4b9c-b0bb-b4cfaac5a98a','N','T',0,0,TO_DATE('2014-02-05 13:56:33','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 13:56:33','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 1:57:07 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('Y','098466b6-bfa1-4468-8040-5f06486611a6',0,TO_DATE('2014-02-05 13:57:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 13:57:07','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000374,1000376,1000018,1000024,'LBR')
;

-- Feb 5, 2014 1:57:24 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000389,'Y','N','N',0,'N',22,'N','N','N','Y','6f4d398b-32bd-4168-9053-c48140f2d818','Y','LBR_CFOP_ID','Indentifies the CFOP','CFOP','Y',TO_DATE('2014-02-05 13:57:24','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:57:24','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000089,30,1000018,1000025,0,'LBR')
;

-- Feb 5, 2014 1:57:28 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRCFOP_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 13:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000389
;

-- Feb 5, 2014 1:57:28 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_CFOP_ID NUMBER(10) NOT NULL
;

-- Feb 5, 2014 1:57:28 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBRCFOP_LBRCFOPLine FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 1:58:10 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CFOPLine_ID',1000091,'CFOP Line','Identifies the CFOP Line','CFOP Line','06490c46-07b5-45c9-9c70-ad7194a8e9e0',TO_DATE('2014-02-05 13:58:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 13:58:10','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 1:58:23 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000390,'Y','N','N',0,'N',22,'N','Y','N','Y','a0c8beb0-830a-498c-9c27-29f902763cd8','N','LBR_CFOPLine_ID','Identifies the CFOP Line','CFOP Line','N',TO_DATE('2014-02-05 13:58:23','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:58:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000091,13,1000025,0,'LBR')
;

-- Feb 5, 2014 1:58:26 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_CFOPLine_ID NUMBER(10) NOT NULL
;

-- Feb 5, 2014 1:58:26 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBR_CFOPLine_Key PRIMARY KEY (LBR_CFOPLine_ID)
;

-- Feb 5, 2014 1:58:48 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_CFOPLine_UU',1000092,'LBR_CFOPLine_UU',NULL,'LBR_CFOPLine_UU','24cef890-0225-4870-a458-054aef0dfc51',TO_DATE('2014-02-05 13:58:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 13:58:48','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 1:59:01 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000391,'N','N','N',0,'N',36,'N','N','N','Y','13a2d2c6-2b8e-4220-8f76-5011473f6d44','N','LBR_CFOPLine_UU','LBR_CFOPLine_UU','N',TO_DATE('2014-02-05 13:59:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 13:59:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000092,10,1000025,0,'LBR')
;

-- Feb 5, 2014 1:59:05 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_CFOPLine_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Feb 5, 2014 1:59:05 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBR_CFOPLine_UU_idx UNIQUE (LBR_CFOPLine_UU)
;

-- Feb 5, 2014 2:01:32 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_DestionationType',1000093,'Destination Type','Defines the Destination Type','Destination Type','ce1d280d-9e52-4262-b505-d7adcdf25813',TO_DATE('2014-02-05 14:01:32','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 14:01:32','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Feb 5, 2014 2:02:28 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000019,'LBR_DestionationType','LBR','4e4eee5e-07f2-4036-acc2-b515b601c48a','N','L',0,0,TO_DATE('2014-02-05 14:02:28','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 14:02:28','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 2:04:02 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000037,1000019,'4002f013-02c6-4ff1-90f1-fdec00e9eb3c','0',TO_DATE('2014-02-05 14:04:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 14:04:02','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Estados Identicos')
;

-- Feb 5, 2014 2:04:21 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000038,1000019,'e65df3e7-5783-47d3-ab54-4dd6ce9695ff','1',TO_DATE('2014-02-05 14:04:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 14:04:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Estados Diferentes')
;

-- Feb 5, 2014 2:04:35 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000039,1000019,'2379b721-1f5f-4af2-8db4-3718c26a6f70','2',TO_DATE('2014-02-05 14:04:35','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 14:04:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Estrangeiro')
;

-- Feb 5, 2014 2:04:49 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (1000040,1000019,'085e7fb2-246e-43da-9c11-d704d0e6e597','3',TO_DATE('2014-02-05 14:04:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 14:04:49','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Zona Franca')
;

-- Feb 5, 2014 2:07:14 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000392,'Y','N','N',0,'N',1,'N','N','N','Y','3a64ed32-b0a2-4105-95fb-e85c19aacd63','Y','LBR_DestionationType','Defines the Destination Type','Destination Type','Y',TO_DATE('2014-02-05 14:07:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 14:07:14','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000093,17,1000019,1000025,0,'LBR')
;

-- Feb 5, 2014 2:07:18 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_DestionationType CHAR(1) NOT NULL
;

-- Feb 5, 2014 2:08:54 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000393,'Y','N','N',0,'N',1,'N','N','N','Y','3a9b2be3-19ae-4fd8-a609-b04790d7e990','Y','IsManufactured','This product is manufactured','N','Manufactured','Y',TO_DATE('2014-02-05 14:08:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 14:08:54','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',55245,17,1000016,1000025,0,'LBR')
;

-- Feb 5, 2014 2:08:58 PM BRST
ALTER TABLE LBR_CFOPLine ADD IsManufactured CHAR(1) DEFAULT 'N' NOT NULL
;

-- Feb 5, 2014 2:09:41 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000394,'Y','N','N',0,'N',1,'N','N','N','Y','22428f4e-0dd3-409b-89c4-146dc044ca94','Y','LBR_IsSubTributaria','Defines the Is Substituicao Tributaria Status','N','Is Substituicao Tributaria','Y',TO_DATE('2014-02-05 14:09:41','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 14:09:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000086,17,1000016,1000025,0,'LBR')
;

-- Feb 5, 2014 2:09:45 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_IsSubTributaria CHAR(1) DEFAULT 'N' NOT NULL
;

-- Feb 5, 2014 2:58:25 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000395,'N','N','N',0,'N',22,'N','N','N','Y','943bf97a-f814-446b-8cd6-c8d7666c610e','Y','LBR_LegalMessage_ID','Identifies a Legal Message','Legal Message','Y',TO_DATE('2014-02-05 14:58:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 14:58:25','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000014,30,1000014,1000025,0,'LBR')
;

-- Feb 5, 2014 2:58:30 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRLegalMessage_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 14:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000395
;

-- Feb 5, 2014 2:58:30 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 2:58:31 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBRLegalMessage_LBRCFOPLine FOREIGN KEY (LBR_LegalMessage_ID) REFERENCES lbr_legalmessage(lbr_legalmessage_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 3:00:00 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000020,'LBR_ProductCategory','LBR','a05b25b6-7ac1-486a-b0ab-de37e001cf0e','N','T',0,0,TO_DATE('2014-02-05 15:00:00','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 15:00:00','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 3:00:36 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','ba46bc56-9ba9-4ca2-a2c9-456bab095788',0,TO_DATE('2014-02-05 15:00:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 15:00:36','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000081,1000079,1000020,1000005,'LBR')
;

-- Feb 5, 2014 3:01:01 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000396,'N','N','N',0,'N',22,'N','N','N','Y','d41fdad5-8b04-4552-8611-63300b4c0187','Y','LBR_ProductCategory_ID','Identifies a CFOP Product Category','CFOP Product Category','Y',TO_DATE('2014-02-05 15:01:01','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:01:01','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000022,18,1000020,1000025,0,'LBR')
;

-- Feb 5, 2014 3:01:07 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRProductCategory_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 15:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000396
;

-- Feb 5, 2014 3:01:07 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 3:01:07 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBRProductCategory_LBRCFOPLine FOREIGN KEY (LBR_ProductCategory_ID) REFERENCES lbr_productcategory(lbr_productcategory_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 3:01:32 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000397,'N','N','N',0,'N',10,'N','N','N','Y','8ee3671f-fbb6-42dd-842c-9e6bf9e87b4a','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-05 15:01:32','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:01:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,1000025,0,'LBR')
;

-- Feb 5, 2014 3:01:37 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 3:02:06 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000398,'N','N','N',0,'N',2,'N','N','N','Y','699ae944-4b76-4dbe-8d46-b6e251bd06b8','Y','LBR_TaxStatus','Defines the Tax Status','Tax Status','Y',TO_DATE('2014-02-05 15:02:05','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:02:05','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000077,17,1000015,1000025,0,'LBR')
;

-- Feb 5, 2014 3:02:10 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Feb 5, 2014 3:02:53 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000399,'N','N','N',0,'N',3,'N','N','N','Y','691f7bdb-88b2-41da-a32e-0d0c380c18b5','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-02-05 15:02:53','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:02:53','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,1000025,0,'LBR')
;

-- Feb 5, 2014 3:02:58 PM BRST
ALTER TABLE LBR_CFOPLine ADD LBR_TransactionType NVARCHAR2(3) DEFAULT NULL 
;

-- Feb 5, 2014 3:03:20 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000400,'N','N','N',0,'N',7,'N','N','N','Y','a9402edc-8d77-4495-a99d-b0dd4c1a5f18','N','Updated','Date this record was updated','The Updated field indicates the date that this record was updated.','Updated','N',TO_DATE('2014-02-05 15:03:20','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:03:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',607,16,1000025,0,'LBR')
;

-- Feb 5, 2014 3:03:23 PM BRST
ALTER TABLE LBR_CFOPLine ADD Updated DATE DEFAULT NULL 
;

-- Feb 5, 2014 3:03:34 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000401,'N','N','N',0,'N',22,'N','N','N','Y','b78db20b-396e-4201-a39a-9aa0d73f7b06','N','UpdatedBy','User who updated this records','The Updated By field indicates the user who updated this record.','Updated By','N',TO_DATE('2014-02-05 15:03:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 15:03:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',608,18,110,1000025,0,'LBR')
;

-- Feb 5, 2014 3:03:39 PM BRST
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBRCFOPLine', FKConstraintType='N',Updated=TO_DATE('2014-02-05 15:03:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000401
;

-- Feb 5, 2014 3:03:39 PM BRST
ALTER TABLE LBR_CFOPLine ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 3:03:39 PM BRST
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT UpdatedBy_LBRCFOPLine FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 3:06:19 PM BRST
INSERT INTO AD_Tab (ImportFields,Processing,IsSingleRow,AD_Window_ID,SeqNo,IsTranslationTab,IsSortTab,HasTree,IsInfoTab,IsReadOnly,IsInsertRecord,IsAdvancedTab,TabLevel,AD_Tab_UU,EntityType,Name,AD_Tab_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Column_ID,AD_Table_ID,TreeDisplayedOn) VALUES ('N','N','Y',1000012,20,'N','N','N','N','N','Y','N',1,'e608b0c5-2b23-47f9-b279-0e2b3f350228','LBR','Line',1000023,0,TO_DATE('2014-02-05 15:06:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:19','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,1000389,1000025,'B')
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',10,'Y',1000258,'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBR','Client/Tenant for this installation.','Client','29e7a6b7-2f97-455f-b316-e84294a271c5','N','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000382)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,IsAllowCopy,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',20,'Y',1000259,'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBR','Organizational entity within client','Organization','a6cae28b-73de-46a9-8385-defe4c4aa6c0','N','Y','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y',4,0,2,1000383)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',30,'Y',1000260,'N','The Document Type determines document sequence and processing rules','LBR','Document type or rules','Document Type','a903eab5-ec36-4735-93da-f88a0d996232','N','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000384)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',40,'Y',1000261,'N','LBR','Identifies a CFOP Business Partner Category','CFOP Business Partner Category','08056f22-dc01-413f-995b-31a4fec42172','N','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000388)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',50,'Y',1000262,'N','LBR','Indentifies the CFOP','CFOP','c1805e0a-99db-4d51-9287-1e69f2dfe607','N','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000389)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',60,'Y',1000263,'N','LBR','Identifies the CFOP Line','CFOP Line','9313c058-d5a2-408c-83eb-0c1fc1ac7ff8','N','N',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000390)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,36,'N','N',70,'Y',1000264,'N','LBR','LBR_CFOPLine_UU','fcdbd6c2-9524-4fff-b84d-dab813775ccc','N','N',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,1000391)
;

-- Feb 5, 2014 3:06:25 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,1,'N','N',80,'Y',1000265,'N','LBR','Defines the Destination Type','Destination Type','388ddab1-e5f4-4f0a-b297-f696991276be','N','Y',0,0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:25','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000392)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,1,'N','N',90,'Y',1000266,'N','LBR','This product is manufactured','Manufactured','6430b386-f836-47d0-a66e-ca932c7b9113','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000393)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,1,'N','N',100,'Y',1000267,'N','LBR','Defines the Is Substituicao Tributaria Status','Is Substituicao Tributaria','bf148df4-229b-455a-9b7d-bf55e4027a64','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000394)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',110,'Y',1000268,'N','LBR','Identifies a Legal Message','Legal Message','b4025687-f6e8-46be-8cea-ee84fc5e7e7e','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000395)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,22,'N','N',120,'Y',1000269,'N','LBR','Identifies a CFOP Product Category','CFOP Product Category','74677e7f-9a1b-4d25-8c8a-be05e2f42f38','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000396)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,10,'N','N',130,'Y',1000270,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','1adabf65-bc8b-40f2-af62-a3d5ec35f566','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000397)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,2,'N','N',140,'Y',1000271,'N','LBR','Defines the Tax Status','Tax Status','4a710013-4a69-4242-8f68-59f10af3fdca','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000398)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,3,'N','N',150,'Y',1000272,'N','LBR','Identifies a Transaction Type','Transaction Type','1e97e2e5-e906-45cc-9ad6-cc8f6a52cf64','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000399)
;

-- Feb 5, 2014 3:06:26 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000023,1,'N','N',160,'Y',1000273,'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBR','The record is active in the system','Active','bab0c1e4-a2a0-4d86-a06f-e9fdc7a60b0e','N','Y',0,0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-05 15:06:26','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,1000387)
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000263
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000264
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000262
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000273
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000260
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000272
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000265
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000267
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000269
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000266
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000261
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000270
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000271
;

-- Feb 5, 2014 3:08:03 PM BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000268
;

-- Feb 5, 2014 3:13:52 PM BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-05 15:13:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000259
;

-- Feb 5, 2014 3:14:08 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-02-05 15:14:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000273
;

-- Feb 5, 2014 3:14:26 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2014-02-05 15:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000260
;

-- Feb 5, 2014 3:14:41 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=125,Updated=TO_DATE('2014-02-05 15:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000272
;

-- Feb 5, 2014 3:14:50 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2014-02-05 15:14:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000265
;

-- Feb 5, 2014 3:15:04 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=125,Updated=TO_DATE('2014-02-05 15:15:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000267
;

-- Feb 5, 2014 3:15:23 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 15:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000269
;

-- Feb 5, 2014 3:15:53 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=106,Updated=TO_DATE('2014-02-05 15:15:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000266
;

-- Feb 5, 2014 3:16:12 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-02-05 15:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000261
;

-- Feb 5, 2014 3:16:37 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 15:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000270
;

-- Feb 5, 2014 3:16:51 PM BRST
UPDATE AD_Field SET IsSameLine='Y', XPosition=4, AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 15:16:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000271
;

-- Feb 5, 2014 3:17:03 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000002,Updated=TO_DATE('2014-02-05 15:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000268
;

-- Feb 5, 2014 3:19:17 PM BRST
UPDATE AD_Field SET IsSameLine='N', XPosition=1, ColumnSpan=5,Updated=TO_DATE('2014-02-05 15:19:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000271
;

-- Feb 5, 2014 5:43:44 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000021,'LBR_TaxGroup','LBR','dcc3cbdf-120b-4bad-a5f6-fca4ee840154','N','T',0,0,TO_DATE('2014-02-05 17:43:44','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-02-05 17:43:44','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Feb 5, 2014 5:44:11 PM BRST
INSERT INTO AD_Ref_Table (IsValueDisplayed,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','295fffb4-ae3a-4f9f-8107-decdf763a136',0,TO_DATE('2014-02-05 17:44:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-02-05 17:44:11','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000048,1000046,1000021,1000002,'LBR')
;

-- Feb 5, 2014 5:44:43 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000402,'N','N','N',0,'N',22,'N','N','N','Y','98270770-be12-4653-84bc-a3379c078381','Y','LBR_TaxGroup_ID','Identifies a NF Tax Group','Tax Group','Y',TO_DATE('2014-02-05 17:44:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 17:44:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000016,18,1000021,261,0,'LBR')
;

-- Feb 5, 2014 5:44:48 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxGroup_CTax', FKConstraintType='N',Updated=TO_DATE('2014-02-05 17:44:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000402
;

-- Feb 5, 2014 5:44:48 PM BRST
ALTER TABLE C_Tax ADD LBR_TaxGroup_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 5:44:49 PM BRST
ALTER TABLE C_Tax ADD CONSTRAINT LBRTaxGroup_CTax FOREIGN KEY (LBR_TaxGroup_ID) REFERENCES lbr_taxgroup(lbr_taxgroup_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 5, 2014 5:45:47 PM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000403,'N','N','N',0,'N',22,'Y','N','N','Y','86199e56-6ea6-4379-a913-4b162e8929eb','Y','LBR_TaxName_ID','Primary key table LBR_TaxName','Primary key table LBR_TaxName','Tax Name','Y',TO_DATE('2014-02-05 17:45:47','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-05 17:45:47','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000034,18,1000006,261,0,'LBR')
;

-- Feb 5, 2014 5:45:50 PM BRST
UPDATE AD_Column SET FKConstraintName='LBRTaxName_CTax', FKConstraintType='N',Updated=TO_DATE('2014-02-05 17:45:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000403
;

-- Feb 5, 2014 5:45:50 PM BRST
ALTER TABLE C_Tax ADD LBR_TaxName_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 5, 2014 5:45:51 PM BRST
ALTER TABLE C_Tax ADD CONSTRAINT LBRTaxName_CTax FOREIGN KEY (LBR_TaxName_ID) REFERENCES lbr_taxname(lbr_taxname_id) DEFERRABLE INITIALLY DEFERRED
;

-- Feb 6, 2014 12:09:07 PM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',174,0,'N','N',250,'Y',1000274,'N','Primary key table LBR_TaxName','@IsSummary@=N','LBR','Primary key table LBR_TaxName','Tax Name','35a2bcb3-efef-4f71-b225-3aab827de74a','N','Y',0,0,TO_DATE('2014-02-06 12:09:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-06 12:09:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',250,1,'N',0,2,1,'N','N',1000403,1000000)
;

-- Feb 6, 2014 12:10:19 PM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',174,0,'Y','N',260,'Y',1000275,'N','@IsSummary@=N & @LBR_TaxName_ID@!0','LBR','Identifies a NF Tax Group','Tax Group','d059a5b1-f372-4ff5-b2af-57ec2cc685fe','N','Y',0,0,TO_DATE('2014-02-06 12:10:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-06 12:10:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',260,4,'N',0,2,1,'N','N',1000402,1000000)
;

SELECT lbr_register_migration_script('201402031701.sql') FROM dual
;

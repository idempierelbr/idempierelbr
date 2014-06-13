SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jun 11, 2014 9:56:46 AM BRT
-- Adjusting Layout (NF-e Lot)
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000003,'N','N','c99525cd-78cc-4232-bda4-b3df8ba3eb39','3','N','N',54,36,'N','LBR','Query NF-e Lot to Sefaz','Query NF-e Lot to Sefaz',0,0,'Y',0,'org.idempierelbr.nfe.process.QueryNFeLot','LBR_ProcQueryNFeLot',0,TO_DATE('2014-06-11 09:56:46','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-11 09:56:46','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 11, 2014 9:57:54 AM BRT
UPDATE AD_Column SET AD_Process_ID=1000003,Updated=TO_DATE('2014-06-11 09:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000897
;

-- Jun 11, 2014 10:02:08 AM BRT
UPDATE AD_Column SET ReadOnlyLogic='@LBR_LotQueried@=Y',Updated=TO_DATE('2014-06-11 10:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000897
;

-- Jun 11, 2014 10:02:19 AM BRT
UPDATE AD_Column SET ReadOnlyLogic='@LBR_LotSent@=Y',Updated=TO_DATE('2014-06-11 10:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000891
;

-- Jun 11, 2014 1:06:14 PM BRT
UPDATE AD_Column SET FKConstraintType='C',Updated=TO_DATE('2014-06-11 13:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000918
;

-- Jun 11, 2014 1:06:23 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine MODIFY LBR_NotaFiscalLot_ID NUMBER(10)
;

-- Jun 11, 2014 1:06:23 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine DROP CONSTRAINT lbrnotafiscallot_lbrnotafiscal
;

-- Jun 11, 2014 1:06:23 PM BRT
ALTER TABLE LBR_NotaFiscalLotLine ADD CONSTRAINT LBRNotaFiscalLot_LBRNotaFiscal FOREIGN KEY (LBR_NotaFiscalLot_ID) REFERENCES lbr_notafiscallot(lbr_notafiscallot_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Jun 11, 2014 1:26:10 PM BRT
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-06-11 13:26:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000903
;

-- Jun 11, 2014 1:30:27 PM BRT
UPDATE AD_Tab SET ReadOnlyLogic='@LBR_LotSent@=Y',Updated=TO_DATE('2014-06-11 13:30:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000089
;

-- Jun 13, 2014 10:57:18 AM BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-06-13 10:57:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000912
;

-- Jun 13, 2014 11:00:10 AM BRT
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=Y',Updated=TO_DATE('2014-06-13 11:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000619
;

-- Jun 13, 2014 11:28:06 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000919,'N','N','N',0,'N',255,'N','N','N','Y','d03dcd90-7011-4717-9811-2e408644bb08','Y','LBR_DigestValue','Identifies a DigestValue','DigestValue','Y',TO_DATE('2014-06-13 11:28:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-13 11:28:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000273,10,1000033,0,'LBR')
;

-- Jun 13, 2014 11:28:10 AM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_DigestValue VARCHAR2(255) DEFAULT NULL 
;

-- Jun 13, 2014 11:28:33 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000920,'N','N','N',0,'N',255,'N','N','N','Y','90c00c2a-5d88-4d2c-81c5-e001e4bd3396','Y','LBR_LotSendingProt','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','Y',TO_DATE('2014-06-13 11:28:33','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-13 11:28:33','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000270,10,1000033,0,'LBR')
;

-- Jun 13, 2014 11:28:41 AM BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_LotSendingProt VARCHAR2(255) DEFAULT NULL 
;

-- Jun 13, 2014 11:29:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,255,'N','N',420,'Y',1001673,'N','LBR','Identifies a DigestValue','DigestValue','00619532-fc83-4497-a83b-4d2a84feb734','N','Y',0,0,0,TO_DATE('2014-06-13 11:29:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,0,5,1000919,TO_DATE('2014-06-13 11:29:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 13, 2014 11:29:03 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000068,255,'N','N',430,'Y',1001674,'N','LBR','Indicates the protocol of the sending process to Sefaz','NF-e Lot Sending Protocol','7d402a9b-5a35-465d-8e7d-36cd5930f2ea','N','Y',0,0,0,TO_DATE('2014-06-13 11:29:03','YYYY-MM-DD HH24:MI:SS'),'Y','Y',400,0,5,1000920,TO_DATE('2014-06-13 11:29:03','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1001674
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001673
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001191
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001197
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1001198
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001199
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1001190
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1001200
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1001201
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1001202
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1001203
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1001204
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1001205
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1001206
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1001207
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1001220
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001221
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001208
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001209
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001210
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001211
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1001212
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1001213
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1001629
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1001214
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1001630
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1001215
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1001397
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1001216
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1001217
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1001218
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1001462
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1001463
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1001224
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1001219
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1001193
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1001192
;

-- Jun 13, 2014 11:29:56 AM BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1001507
;

-- Jun 13, 2014 11:31:03 AM BRT
UPDATE AD_Field SET DisplayLogic='@LBR_LotSendingProt@!''''', ColumnSpan=2, AD_FieldGroup_ID=113,Updated=TO_DATE('2014-06-13 11:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001674
;

-- Jun 13, 2014 11:31:28 AM BRT
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@LBR_DigestValue@!''''', XPosition=4, ColumnSpan=2, AD_FieldGroup_ID=113,Updated=TO_DATE('2014-06-13 11:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001673
;

-- Jun 13, 2014 3:47:40 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000633
;

-- Jun 13, 2014 3:47:44 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000632
;

-- Jun 13, 2014 3:48:10 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000607
;

-- Jun 13, 2014 3:48:20 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:48:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000635
;

-- Jun 13, 2014 3:48:38 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:48:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000919
;

-- Jun 13, 2014 3:48:47 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:48:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000920
;

-- Jun 13, 2014 3:48:55 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000612
;

-- Jun 13, 2014 3:49:14 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000611
;

-- Jun 13, 2014 3:49:29 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000634
;

-- Jun 13, 2014 3:49:37 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000820
;

-- Jun 13, 2014 3:49:41 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000610
;

-- Jun 13, 2014 3:49:47 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000821
;

-- Jun 13, 2014 3:49:55 PM BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2014-06-13 15:49:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000639
;

-- Jun 13, 2014 4:40:16 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000059,'RelType NF-e <= NF-e Lot','LBR','744a3c0a-753c-4cc7-adcc-4a8dcf46c286','N','T',0,0,TO_DATE('2014-06-13 16:40:15','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-06-13 16:40:15','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jun 13, 2014 4:41:51 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,WhereClause,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','LBR_NotaFiscal.LBR_NotaFiscal_ID=@LBR_NotaFiscal_ID@','c3c1f5d4-9562-4856-b518-1ba898f19c47',0,TO_DATE('2014-06-13 16:41:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-13 16:41:51','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000607,1000599,1000059,1000033,'LBR')
;

-- Jun 13, 2014 4:42:33 PM BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000060,'RelType NF-e Lot <= NF-e','LBR','d9c4181a-aa24-4b7e-9a0f-2f08df8c09df','N','T',0,0,TO_DATE('2014-06-13 16:42:33','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-06-13 16:42:33','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jun 13, 2014 4:44:11 PM BRT
INSERT INTO AD_Ref_Table (IsValueDisplayed,WhereClause,AD_Window_ID,AD_Ref_Table_UU,CreatedBy,Updated,Created,UpdatedBy,AD_Org_ID,IsActive,AD_Client_ID,AD_Display,AD_Key,AD_Reference_ID,AD_Table_ID,EntityType) VALUES ('N','LBR_NotaFiscalLot.LBR_NotaFiscalLot_ID IN (SELECT LBR_NotaFiscalLotLine.LBR_NotaFiscalLot_ID FROM LBR_NotaFiscalLotLine WHERE  LBR_NotaFiscalLotLine.LBR_NotaFiscal_ID=@LBR_NotaFiscal_ID@)',1000017,'f4b652bb-5248-4998-aba8-f8384e0a2a54',0,TO_DATE('2014-06-13 16:44:11','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-13 16:44:11','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,1000888,1000886,1000060,1000046,'LBR')
;

-- Jun 13, 2014 4:44:54 PM BRT
INSERT INTO AD_RelationType (Type,IsDirected,AD_Reference_Target_ID,AD_RelationType_ID,Name,AD_RelationType_UU,AD_Client_ID,AD_Org_ID,CreatedBy,Updated,UpdatedBy,IsActive,AD_Reference_Source_ID,Created) VALUES ('I','N',1000060,1000000,'NF-e<->NF-eLot','e7a43ca8-ca21-4c00-9054-60178963bbca',0,0,0,TO_DATE('2014-06-13 16:44:54','YYYY-MM-DD HH24:MI:SS'),0,'Y',1000059,TO_DATE('2014-06-13 16:44:54','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 13, 2014 4:47:55 PM BRT
UPDATE AD_RelationType SET IsDirected='Y',Updated=TO_DATE('2014-06-13 16:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_RelationType_ID=1000000
;

-- Jun 13, 2014 4:49:00 PM BRT
--INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_NotaFiscalLot_UU',1000274,'NF-e Lot','Identifies a NF-e Lot','NF-e Lot','dee43ebd-0c40-42b3-ba7b-84de4710d164',0,0,0,'Y',0,'LBR',TO_DATE('2014-06-13 16:49:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-13 16:49:00','YYYY-MM-DD HH24:MI:SS'))
--;

-- Jun 13, 2014 4:49:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000921,'N','N','N',0,'N',36,'N','N','N','Y','255e5aac-37fe-4587-af51-6256448e3711','N','LBR_NotaFiscalLot_UU','Identifies a NF-e Lot','NF-e Lot','N',TO_DATE('2014-06-13 16:49:18','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-13 16:49:18','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000261,10,1000046,0,'LBR')
;

-- Jun 13, 2014 4:49:20 PM BRT
ALTER TABLE LBR_NotaFiscalLot ADD LBR_NotaFiscalLot_UU VARCHAR2(36) DEFAULT NULL 
;

-- Jun 13, 2014 4:49:20 PM BRT
ALTER TABLE LBR_NotaFiscalLot ADD CONSTRAINT LBR_NotaFiscalLot_UU_idx UNIQUE (LBR_NotaFiscalLot_UU)
;

SELECT lbr_register_migration_script('201406111751.sql') FROM dual
;

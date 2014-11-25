SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24/11/2014 13h39min21s BRST
-- Improving user interface related to DI, and adding necessary columns/fields
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-11-24 13:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800052
;

-- 24/11/2014 13h39min42s BRST
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-11-24 13:39:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800020
;

-- 24/11/2014 13h39min54s BRST
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2014-11-24 13:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800034
;

-- 24/11/2014 14h49min24s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_AfrmmAmt',800018,'AFRMM Amount','AFRMM Amount','82155eb3-905a-4a0a-b959-8eb82b0cc05e',0,0,0,'Y',0,'LBR',TO_DATE('2014-11-24 14:49:23','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 14:49:23','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 14h54min25s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800063,'N','N','N',0,'N',14,'N','N','N','Y','e8a20bca-470f-419a-827a-9ebe52feef54','Y','LBR_AfrmmAmt','AFRMM Amount','Y',0,'Y',TO_DATE('2014-11-24 14:54:23','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800018,12,800003,0,'LBR',TO_DATE('2014-11-24 14:54:23','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 14h54min28s BRST
ALTER TABLE LBR_NotaFiscalDI ADD LBR_AfrmmAmt NUMBER DEFAULT NULL 
;

-- 24/11/2014 14h56min8s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',800003,36,'N','N',50,'Y',800046,'N','The DI is a document used in a product/service import.','LBR','Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI','Brazilian Fiscal Invoice (Nota Fiscal) DI','dde17514-d2ed-4e16-a87d-6ff46d6bc42e','N','Y',0,0,0,'Y','Y',60,0,2,800059,TO_DATE('2014-11-24 14:56:07','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 14:56:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 14h56min9s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',800003,14,'N','N',60,'Y',800047,'N','LBR','AFRMM Amount','d00562dd-bb73-42ff-88ef-5931251ce557','N','Y',0,0,0,'Y','Y',70,0,2,800063,TO_DATE('2014-11-24 14:56:08','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 14:56:08','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 14h56min30s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800046
;

-- 24/11/2014 14h56min30s BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=800047
;

-- 24/11/2014 15h15min42s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800064,'N','N','N',0,'N',14,'N','N','N','Y','20296130-ff91-4c5d-b193-f9f6602d16e2','Y','LBR_AfrmmAmt','AFRMM Amount','Y',0,'Y',TO_DATE('2014-11-24 15:15:41','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',800018,12,800000,0,'LBR',TO_DATE('2014-11-24 15:15:41','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 15h15min44s BRST
ALTER TABLE LBR_DI ADD LBR_AfrmmAmt NUMBER DEFAULT NULL 
;

-- 24/11/2014 15h17min3s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',800000,14,'N','N',140,'Y',800048,'N','LBR','AFRMM Amount','09066a82-f395-4d1d-a2af-648bc678f235','N','Y',0,0,0,'Y','Y',140,0,2,800064,TO_DATE('2014-11-24 15:17:01','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 15:17:01','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 15h20min43s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Help,Name,Description,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_BP_BuyerLocation_ID',800019,NULL,'Business Partner (Buyer) Location','Identifies a Business Partner Location','Business Partner (Buyer) Location','dff57b15-3f2a-455d-8b26-cf188b94dcd1',0,0,0,'Y',0,'LBR',TO_DATE('2014-11-24 15:20:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 15:20:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 15h23min20s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,MandatoryLogic,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800065,'N','N','N',0,'N',22,'N','N','N','Y','@LBR_BP_Buyer_ID@ > 0','9d15840c-8725-496d-8d09-bfa5a6f63051','Y','LBR_BP_BuyerLocation_ID','Identifies a Business Partner Location','Business Partner (Buyer) Location','Y',0,'Y',TO_DATE('2014-11-24 15:23:19','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800019,18,159,800000,0,'LBR',TO_DATE('2014-11-24 15:23:19','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 15h23min22s BRST
UPDATE AD_Column SET FKConstraintName='LBRBPBuyerLocation_LBRDI', FKConstraintType='N',Updated=TO_DATE('2014-11-24 15:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800065
;

-- 24/11/2014 15h23min22s BRST
ALTER TABLE LBR_DI ADD LBR_BP_BuyerLocation_ID NUMBER(10) DEFAULT NULL 
;

-- 24/11/2014 15h23min23s BRST
ALTER TABLE LBR_DI ADD CONSTRAINT LBRBPBuyerLocation_LBRDI FOREIGN KEY (LBR_BP_BuyerLocation_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24/11/2014 15h24min52s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',800000,22,'N','N',150,'Y',800049,'N','LBR','Identifies a Business Partner Location','Business Partner (Buyer) Location','c455fb89-a3a3-4a05-a48a-995dfd75eced','N','Y',0,0,0,'Y','Y',150,0,2,800065,TO_DATE('2014-11-24 15:24:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 15:24:51','YYYY-MM-DD HH24:MI:SS'))
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=800049
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=800009
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=800010
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=800011
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=800012
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=800013
;

-- 24/11/2014 15h25min6s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=800048
;

-- 24/11/2014 15h25min29s BRST
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-11-24 15:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800049
;

-- 24/11/2014 15h35min3s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_BP_Buyer_ID@ > 0',Updated=TO_DATE('2014-11-24 15:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800049
;

-- 24/11/2014 15h47min0s BRST
INSERT INTO AD_Process (Help,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES (NULL,800000,'N','N','4a057e38-c5b1-476f-8cad-101fc5d68e01','1','N','N',0,0,'Y','LBR','Distribute a given amount to line details of a document','Distribute Amount to Doc Line Details',0,0,'Y',0,'org.idempierelbr.tax.process.DistributeAmtToDetails','LBR_ProcDistributeAmtToDocLineDetails',0,TO_DATE('2014-11-24 15:46:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-24 15:46:58','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h11min14s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,IsActive,Created,UpdatedBy,AD_Client_ID,Updated) VALUES (800004,'LBR_DistribAmtToDetailsTarget','LBR','4fc60285-0aa2-4925-83a7-f025981ef85b','N','L',0,0,'Y',TO_DATE('2014-11-25 09:11:13','YYYY-MM-DD HH24:MI:SS'),0,0,TO_DATE('2014-11-25 09:11:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h11min50s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800013,800004,'2346121a-9cf3-470b-bf36-51a47861ba73','1',TO_DATE('2014-11-25 09:11:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Insurance',TO_DATE('2014-11-25 09:11:49','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h13min5s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800014,800004,'f0590371-96ab-480d-a060-e4318fb1e5d0','2',TO_DATE('2014-11-25 09:13:04','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Freight',TO_DATE('2014-11-25 09:13:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h13min27s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800015,800004,'e05eac10-784a-4bc8-874a-e5718705d6a0','3',TO_DATE('2014-11-25 09:13:25','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Surcharges',TO_DATE('2014-11-25 09:13:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h14min15s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created,Updated) VALUES ('N',200247,800000,'eb413c87-5b7d-4843-b956-351d0dea2524',800000,17,'Y','Target','Target',1,'N',10,'-1','Y',0,0,0,'N',0,800004,'LBR',TO_DATE('2014-11-25 09:14:14','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:14:14','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h15min56s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,Help,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,IsActive,UpdatedBy,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created,Updated) VALUES ('N',1367,800001,'e9458574-a7d5-4d4a-879e-6debbeb65b95','The Amount indicates the amount for this document line.',800000,12,'Y','Amount','Amount','Amount in a defined currency',14,'Y',20,'Y',0,0,0,'N',0,'LBR',TO_DATE('2014-11-25 09:15:55','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:15:55','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h17min18s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_ResetAmt',800020,'Reset Amount','Reset Amount','9f9be33a-bfb7-4086-96af-668ef6c33201',0,0,0,'Y',0,'LBR',TO_DATE('2014-11-25 09:17:17','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:17:17','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h18min38s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created,Updated) VALUES ('N',800020,800002,'844829cf-b393-4908-a917-c019a8a99e93',800000,20,'Y','Reset Amount','LBR_ResetAmt',1,'Y',30,'''N''','Y',0,0,0,'N',0,'LBR',TO_DATE('2014-11-25 09:18:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:18:37','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h20min23s BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,IsActive,Created,UpdatedBy,AD_Client_ID,Updated) VALUES (800005,'LBR_DistribAmtToDetailsType','LBR','e3c4d338-1a4d-4316-a76f-cb169027e0ee','N','L',0,0,'Y',TO_DATE('2014-11-25 09:20:22','YYYY-MM-DD HH24:MI:SS'),0,0,TO_DATE('2014-11-25 09:20:22','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h22min29s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800016,800005,'67590730-3ec6-4d7e-a9c9-01302d35aada','1',TO_DATE('2014-11-25 09:22:28','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Lines No.',TO_DATE('2014-11-25 09:22:28','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h23min0s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800017,800005,'40af3650-ab0b-4dd6-8935-1eeea5f8666f','2',TO_DATE('2014-11-25 09:22:59','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Quantity',TO_DATE('2014-11-25 09:22:59','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h23min39s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name,Updated) VALUES (800018,800005,'8c45426e-f08f-4325-a12d-ca14b8f35034','3',TO_DATE('2014-11-25 09:23:38','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBR',0,0,'Amount',TO_DATE('2014-11-25 09:23:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h24min11s BRST
INSERT INTO AD_Process_Para (IsRange,AD_Element_ID,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,Description,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,AD_Reference_Value_ID,EntityType,Created,Updated) VALUES ('N',53810,800003,'d8f438e1-0d0d-4559-8ec3-4e62630e4b14',800000,17,'Y','Distribution Type','DistributionType','Type of quantity distribution calculation using comparison qty and order qty as operand',1,'Y',40,'-1','Y',0,0,0,'N',0,800005,'LBR',TO_DATE('2014-11-25 09:24:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:24:10','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h27min22s BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_AmtDistribution',800021,'Amount Distribution','Amt Distribution','0574b63f-5f96-4344-b132-06e9a69fcfc0',0,0,0,'Y',0,'LBR',TO_DATE('2014-11-25 09:27:21','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:27:21','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h28min51s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800066,'N','N','N',0,'N',1,'N','N',800000,'N','Y','70f1b400-5ac7-46a4-ad6a-2ac9538e3006','Y','LBR_AmtDistribution','Amount Distribution','N',0,'Y',TO_DATE('2014-11-25 09:28:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',800021,28,259,0,'LBR',TO_DATE('2014-11-25 09:28:50','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h28min56s BRST
ALTER TABLE C_Order ADD LBR_AmtDistribution CHAR(1) DEFAULT NULL 
;

-- 25/11/2014 9h29min49s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',294,1,'N','N',500,'Y',800050,'N','LBR','Amount Distribution','a69bbe69-46e7-4765-bdad-b1397d149609','N','Y',0,0,0,'Y','Y',510,2,0,2,800066,TO_DATE('2014-11-25 09:29:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:29:48','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h29min50s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',294,2,'N','N',510,'Y',800051,'N','LBR','Payment Instrument','68095061-b41f-4ebd-9538-4470937bfc84','N','Y',0,0,0,'Y','Y',520,0,2,1001136,TO_DATE('2014-11-25 09:29:49','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:29:49','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h29min51s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',294,3,'N','N',520,'Y',800052,'N','LBR','Issue / Distribution','018ef3c2-50f4-49a0-bddb-c75cd95632d9','N','Y',0,0,0,'Y','Y',530,0,2,1001137,TO_DATE('2014-11-25 09:29:50','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:29:50','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h29min53s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',294,22,'N','N',530,'Y',800053,'N','The Bank Account identifies an account at this Bank.','LBR','Account at the Bank','Bank Account','546a2f27-2f0e-4c86-9563-4441ffd15a3f','N','Y',0,0,0,'Y','Y',540,0,2,1001138,TO_DATE('2014-11-25 09:29:51','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 09:29:51','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800051
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800052
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=800053
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3451
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=10123
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=55413
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=55414
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=55415
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3444
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3447
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3464
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3443
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3448
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=3420
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=3441
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=8652
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3438
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3467
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=3456
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=3454
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=3466
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3439
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3459
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3457
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3446
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=7039
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=7824
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=7823
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3425
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3427
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3449
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=3450
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=60923
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=6506
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=3426
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=60973
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=3671
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1001706
;

-- 25/11/2014 9h30min24s BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=800050
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=800053
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=800052
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=800051
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=3422
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1001706
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=3453
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=3424
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=3455
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=3429
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=3428
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=3435
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=3436
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=3419
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=6505
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=3458
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=6507
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=3452
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=6504
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=3451
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=10123
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=55413
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=55414
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=55415
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=3444
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=3447
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=3464
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=3443
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=3448
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=3420
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=3441
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=8652
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=3438
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=3467
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=3456
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=3454
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=3466
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=3439
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=3459
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=3457
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=3446
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=360,IsDisplayedGrid='Y' WHERE AD_Field_ID=7039
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=370,IsDisplayedGrid='Y' WHERE AD_Field_ID=7824
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=380,IsDisplayedGrid='Y' WHERE AD_Field_ID=7823
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=390,IsDisplayedGrid='Y' WHERE AD_Field_ID=3425
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=400,IsDisplayedGrid='Y' WHERE AD_Field_ID=3427
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=410,IsDisplayedGrid='Y' WHERE AD_Field_ID=3449
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=420,IsDisplayedGrid='Y' WHERE AD_Field_ID=3450
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=430,IsDisplayedGrid='Y' WHERE AD_Field_ID=60923
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=440,IsDisplayedGrid='Y' WHERE AD_Field_ID=6506
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=450,IsDisplayedGrid='Y' WHERE AD_Field_ID=3426
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=460,IsDisplayedGrid='Y' WHERE AD_Field_ID=3671
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=470,IsDisplayedGrid='Y' WHERE AD_Field_ID=60973
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=480,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000304
;

-- 25/11/2014 9h30min38s BRST
UPDATE AD_Field SET SeqNoGrid=490,IsDisplayedGrid='Y' WHERE AD_Field_ID=800050
;

-- 25/11/2014 10h25min22s BRST
UPDATE AD_Process_Para SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-11-25 10:25:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=800002
;

-- 25/11/2014 10h34min43s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',186,1,'N','N',620,'Y',800054,'N','LBR','Amount Distribution','94a6c0a4-cd9d-435a-85a9-2d05a18be716','N','Y',0,0,0,'Y','Y',620,2,0,2,800066,TO_DATE('2014-11-25 10:34:42','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:34:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h36min26s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800067,'N','N','N',0,'N',1,'N','N',800000,'N','Y','1a093c08-a57b-4eee-8e30-f0e1be7d190d','Y','LBR_AmtDistribution','Amount Distribution','N',0,'Y',TO_DATE('2014-11-25 10:36:25','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',800021,28,318,0,'LBR',TO_DATE('2014-11-25 10:36:25','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h36min27s BRST
ALTER TABLE C_Invoice ADD LBR_AmtDistribution CHAR(1) DEFAULT NULL 
;

-- 25/11/2014 10h36min41s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',263,1,'N','N',520,'Y',800055,'N','LBR','Amount Distribution','01a9a891-e72b-46f8-8f77-a537ba270936','N','Y',0,0,0,'Y','Y',510,2,0,2,800067,TO_DATE('2014-11-25 10:36:40','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:36:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h37min5s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',290,1,'N','N',450,'Y',800056,'N','LBR','Amount Distribution','58da0a2d-31dc-4f21-b05f-0a5e87ba17c9','N','Y',0,0,0,'Y','Y',450,2,0,2,800067,TO_DATE('2014-11-25 10:37:04','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:37:04','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h38min51s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800068,'N','N','N',0,'N',1,'N','N',800000,'N','Y','d0504736-3ff0-478b-bede-804ee6947d91','Y','LBR_AmtDistribution','Amount Distribution','N',0,'Y',TO_DATE('2014-11-25 10:38:49','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',800021,28,661,0,'LBR',TO_DATE('2014-11-25 10:38:49','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h38min52s BRST
ALTER TABLE M_RMA ADD LBR_AmtDistribution CHAR(1) DEFAULT NULL 
;

-- 25/11/2014 10h39min10s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',628,1,'N','N',190,'Y',800057,'N','LBR','Amount Distribution','8045be80-1ae7-4bb8-9441-6b56cbe84643','N','Y',0,0,0,'Y','Y',180,2,0,2,800068,TO_DATE('2014-11-25 10:39:09','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:39:09','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h39min49s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',53280,1,'N','N',190,'Y',800058,'N','LBR','Amount Distribution','427add3e-4d6c-4a49-836e-f878d5bb63b3','N','Y',0,0,0,'Y','Y',180,2,0,2,800068,TO_DATE('2014-11-25 10:39:48','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:39:48','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h41min14s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType,Updated) VALUES (0,'N',0,800069,'N','N','N',0,'N',1,'N','N',800000,'N','Y','66fc35ab-983f-424d-9bd8-a59c12dc01b2','Y','LBR_AmtDistribution','Amount Distribution','N',0,'Y',TO_DATE('2014-11-25 10:41:13','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N','N',800021,28,1000033,0,'LBR',TO_DATE('2014-11-25 10:41:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 25/11/2014 10h41min16s BRST
ALTER TABLE LBR_NotaFiscal ADD LBR_AmtDistribution CHAR(1) DEFAULT NULL 
;

-- 25/11/2014 10h41min32s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created,Updated) VALUES ('N',1000068,1,'N','N',450,'Y',800059,'N','LBR','Amount Distribution','59d138b3-f282-432e-b300-5e96ae4020a7','N','Y',0,0,0,'Y','Y',420,2,0,2,800069,TO_DATE('2014-11-25 10:41:31','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-11-25 10:41:31','YYYY-MM-DD HH24:MI:SS'))
;

SELECT lbr_register_migration_script('201411251045.sql') FROM dual
;

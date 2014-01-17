SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 17, 2014 10:28:21 AM BRST
-- Adding brazilian fiscal rules fields to Product and BP windows
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000002,'LBR_ProductSource','LBR','6629940a-78af-4456-875b-9d689cd5edd9','Y','Product Source','L',0,0,TO_DATE('2014-01-17 10:28:21','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-01-17 10:28:21','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 17, 2014 10:33:30 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000003,1000002,'0 - Domestic','9a100e35-c27b-4928-a7c8-74877c71268f','0',TO_DATE('2014-01-17 10:33:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:33:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:33:54 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000004,1000002,'1 - Imported','9c7c8524-dce1-48da-b004-7e479b4f9c36','1',TO_DATE('2014-01-17 10:33:54','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:33:54','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:34:21 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000005,1000002,'2 - Imported - Acquired from a domestic distributor','416d32b4-3185-46a8-8a36-8030c87774f6','2',TO_DATE('2014-01-17 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:34:21','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:35:29 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000006,1000002,'3 - Domestic with more than 40 percent Imported','6395edea-dd93-4585-b0a1-8d4fc84fc0c7','3',TO_DATE('2014-01-17 10:35:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:35:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:39:03 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000007,1000002,'4 - Domestic according to adjustments','00a8d963-b388-4c74-8a4a-8fe7dc223ce3','4',TO_DATE('2014-01-17 10:39:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:39:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:39:30 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000008,1000002,'5 - Domestic until 40 percent Imported','7b570f94-ba1e-454c-99ae-55832c5020c9','5',TO_DATE('2014-01-17 10:39:30','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:39:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:40:24 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000009,1000002,'6 - Foreign - Direct import no domestic similar','a5cbbf8a-68a1-4a00-9318-e81dc00dc55a','6',TO_DATE('2014-01-17 10:40:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:40:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:41:34 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000010,1000002,'7 - Foreign - Acquired from domestic distributor no similar','d06db9d5-3748-4f5c-9162-92dfa2066cba','7',TO_DATE('2014-01-17 10:41:34','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:41:34','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:42:24 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000011,1000002,'8 - Domestic with more than 70 percent Imported','a1f06640-938c-41ab-b31d-892bea918f1a','8',TO_DATE('2014-01-17 10:42:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:42:24','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 10:45:30 AM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ProductSource',1000026,'Product Source','Identifies a Product Source','Product Source','22057fd9-3ab4-47c2-9d25-3c4781c89f8d',TO_DATE('2014-01-17 10:45:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-01-17 10:45:30','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Jan 17, 2014 10:49:17 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000095,'Y','N','N',0,'N',1,'N','N','N','Y','aadccb5e-ba04-4f97-9844-c9b3459b30db','Y','LBR_ProductSource','Identifies a Product Source','''0''','Product Source','Y',TO_DATE('2014-01-17 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 10:49:16','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000026,17,1000002,208,0,'LBR')
;

-- Jan 17, 2014 10:52:57 AM BRST
ALTER TABLE M_Product ADD LBR_ProductSource CHAR(1) DEFAULT '0' NOT NULL
;

-- Jan 17, 2014 10:53:56 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000096,'N','N','N',0,'N',22,'N','N','N','Y','473e1bff-84f4-4e2b-9af0-4a80b4c8cd29','Y','LBR_ProductCategory_ID','Identifies a CFOP Product Category','CFOP Product Category','Y',TO_DATE('2014-01-17 10:53:55','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 10:53:55','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000022,18,208,0,'LBR')
;

-- Jan 17, 2014 10:54:01 AM BRST
ALTER TABLE M_Product ADD LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 17, 2014 10:54:44 AM BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000097,'N','N','N',0,'N',22,'N','N','N','Y','3e6c9f04-8cae-4c25-a68e-c08f7f6f3c07','Y','LBR_FiscalGroup_Product_ID','Identifies a Product Fiscal Group','Product Fiscal Group','Y',TO_DATE('2014-01-17 10:54:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-17 10:54:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000018,18,208,0,'LBR')
;

-- Jan 17, 2014 10:54:49 AM BRST
ALTER TABLE M_Product ADD LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 17, 2014 10:57:49 AM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',180,0,'N','N',600,'Y',1000067,'N','LBR','Identifies a Product Source','Product Source','2165ab45-529b-4a1c-8f07-9f09ba287fa0','N','Y',0,0,TO_DATE('2014-01-17 10:57:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:57:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',600,1,'N',0,5,1,'N','N',1000095)
;

-- Jan 17, 2014 10:59:04 AM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',180,0,'N','N',610,'Y',1000068,'N','LBR','Identifies a CFOP Product Category','CFOP Product Category','56e21592-3d1b-468e-81f0-6ee353861867','N','Y',0,0,TO_DATE('2014-01-17 10:59:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 10:59:04','YYYY-MM-DD HH24:MI:SS'),'Y','Y',610,1,'N',0,2,1,'N','N',1000096)
;

-- Jan 17, 2014 11:00:41 AM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',180,0,'Y','N',620,'Y',1000069,'N','LBR','Identifies a Product Fiscal Group','Product Fiscal Group','b176252b-e92e-489e-877b-020a4e9d055b','N','Y',0,0,TO_DATE('2014-01-17 11:00:41','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:00:41','YYYY-MM-DD HH24:MI:SS'),'Y','Y',620,4,'N',0,2,1,'N','N',1000097)
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000067
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000068
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000069
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1025
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2587
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=5888
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=6129
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1032
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1031
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=201343
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=6841
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=10411
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1026
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=200294
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=200295
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=200296
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=200297
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7646
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1319
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1320
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1321
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1322
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3743
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3746
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3747
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3744
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3745
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1027
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1028
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1568
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1569
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=5381
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=5383
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=12418
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=5910
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=9286
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=5911
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=6130
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=8307
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=6343
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=6344
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=58973
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=8608
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=8613
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=52015
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=52016
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=3079
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000025
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000067
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000068
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000069
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1025
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=2587
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=5888
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=6129
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1032
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=1031
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=201343
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=6841
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=10411
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=1026
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=7646
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=200294
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=200295
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=1319
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=200296
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=1320
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=200297
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=360,IsDisplayedGrid='Y' WHERE AD_Field_ID=1321
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=370,IsDisplayedGrid='Y' WHERE AD_Field_ID=1322
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=380,IsDisplayedGrid='Y' WHERE AD_Field_ID=3743
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=390,IsDisplayedGrid='Y' WHERE AD_Field_ID=3746
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=400,IsDisplayedGrid='Y' WHERE AD_Field_ID=3747
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=410,IsDisplayedGrid='Y' WHERE AD_Field_ID=3744
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=420,IsDisplayedGrid='Y' WHERE AD_Field_ID=3745
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=430,IsDisplayedGrid='Y' WHERE AD_Field_ID=1027
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=440,IsDisplayedGrid='Y' WHERE AD_Field_ID=1028
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=450,IsDisplayedGrid='Y' WHERE AD_Field_ID=1568
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=460,IsDisplayedGrid='Y' WHERE AD_Field_ID=1569
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=470,IsDisplayedGrid='Y' WHERE AD_Field_ID=5381
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=480,IsDisplayedGrid='Y' WHERE AD_Field_ID=5383
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=490,IsDisplayedGrid='Y' WHERE AD_Field_ID=9286
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=500,IsDisplayedGrid='Y' WHERE AD_Field_ID=12418
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=510,IsDisplayedGrid='Y' WHERE AD_Field_ID=5910
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=520,IsDisplayedGrid='Y' WHERE AD_Field_ID=5911
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=530,IsDisplayedGrid='Y' WHERE AD_Field_ID=6130
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=540,IsDisplayedGrid='Y' WHERE AD_Field_ID=8307
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=550,IsDisplayedGrid='Y' WHERE AD_Field_ID=6343
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=560,IsDisplayedGrid='Y' WHERE AD_Field_ID=6344
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=570,IsDisplayedGrid='Y' WHERE AD_Field_ID=8608
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=580,IsDisplayedGrid='Y' WHERE AD_Field_ID=8613
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=590,IsDisplayedGrid='Y' WHERE AD_Field_ID=52015
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=600,IsDisplayedGrid='Y' WHERE AD_Field_ID=52016
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=610,IsDisplayedGrid='Y' WHERE AD_Field_ID=58973
;

-- Jan 17, 2014 11:31:42 AM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000003,'LBR_TransactionType','LBR','79a45234-c0a7-4dc8-88c9-9fba1919fc38','N','Transaction Type','L',0,0,TO_DATE('2014-01-17 11:31:41','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2014-01-17 11:31:41','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 17, 2014 11:56:16 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000012,1000003,'End User','22c0880b-ce09-4831-a155-3fd3d8e76852','END',TO_DATE('2014-01-17 11:56:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:56:16','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 11:57:14 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000013,1000003,'Export','438f8384-50f1-4997-ae3a-7b5700f53f42','EXP',TO_DATE('2014-01-17 11:57:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:57:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 11:57:29 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000014,1000003,'Import','896d108b-3a13-4f80-be02-d365eb632392','IMP',TO_DATE('2014-01-17 11:57:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:57:29','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 11:57:48 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000015,1000003,'Manufacturing','6ce5d64d-7be5-4f57-b261-86df80d88317','MAN',TO_DATE('2014-01-17 11:57:48','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:57:48','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 11:58:05 AM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID) VALUES (1000016,1000003,'Resale','c8589a36-558d-4723-8916-190bb8f4576f','RES',TO_DATE('2014-01-17 11:58:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-17 11:58:05','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0)
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000067
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000068
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000069
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1025
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2587
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=5888
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=6129
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1032
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1031
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=201343
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=6841
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=10411
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1026
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=200294
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=200295
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=200296
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=200297
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7646
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1319
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1320
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1321
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1322
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3743
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3746
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3747
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3744
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3745
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1027
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1028
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1568
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1569
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=5381
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=5383
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=12418
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=5910
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=9286
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=5911
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=6130
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=8307
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=6343
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=6344
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=58973
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=8608
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=8613
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=52015
;

-- Jan 17, 2014 11:15:25 AM BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=52016
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=3079
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000025
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000067
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000068
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000069
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=1025
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=2587
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=5888
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=6129
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=1032
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=1031
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=201343
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=6841
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=10411
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=1026
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=7646
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=200294
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=200295
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=1319
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=200296
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=1320
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=200297
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=360,IsDisplayedGrid='Y' WHERE AD_Field_ID=1321
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=370,IsDisplayedGrid='Y' WHERE AD_Field_ID=1322
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=380,IsDisplayedGrid='Y' WHERE AD_Field_ID=3743
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=390,IsDisplayedGrid='Y' WHERE AD_Field_ID=3746
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=400,IsDisplayedGrid='Y' WHERE AD_Field_ID=3747
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=410,IsDisplayedGrid='Y' WHERE AD_Field_ID=3744
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=420,IsDisplayedGrid='Y' WHERE AD_Field_ID=3745
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=430,IsDisplayedGrid='Y' WHERE AD_Field_ID=1027
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=440,IsDisplayedGrid='Y' WHERE AD_Field_ID=1028
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=450,IsDisplayedGrid='Y' WHERE AD_Field_ID=1568
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=460,IsDisplayedGrid='Y' WHERE AD_Field_ID=1569
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=470,IsDisplayedGrid='Y' WHERE AD_Field_ID=5381
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=480,IsDisplayedGrid='Y' WHERE AD_Field_ID=5383
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=490,IsDisplayedGrid='Y' WHERE AD_Field_ID=9286
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=500,IsDisplayedGrid='Y' WHERE AD_Field_ID=12418
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=510,IsDisplayedGrid='Y' WHERE AD_Field_ID=5910
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=520,IsDisplayedGrid='Y' WHERE AD_Field_ID=5911
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=530,IsDisplayedGrid='Y' WHERE AD_Field_ID=6130
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=540,IsDisplayedGrid='Y' WHERE AD_Field_ID=8307
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=550,IsDisplayedGrid='Y' WHERE AD_Field_ID=6343
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=560,IsDisplayedGrid='Y' WHERE AD_Field_ID=6344
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=570,IsDisplayedGrid='Y' WHERE AD_Field_ID=8608
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=580,IsDisplayedGrid='Y' WHERE AD_Field_ID=8613
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=590,IsDisplayedGrid='Y' WHERE AD_Field_ID=52015
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=600,IsDisplayedGrid='Y' WHERE AD_Field_ID=52016
;

-- Jan 17, 2014 11:15:56 AM BRST
UPDATE AD_Field SET SeqNoGrid=610,IsDisplayedGrid='Y' WHERE AD_Field_ID=58973
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000070
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000071
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000072
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=9610
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=9603
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=200622
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=9621
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=9608
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=201865
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=201866
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000073
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000074
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000075
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=9609
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=2124
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=3261
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=9604
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=9618
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=9625
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=9613
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=2154
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=2132
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=2144
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=2127
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=2146
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=2153
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=2148
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=2128
;

-- Jan 17, 2014 1:28:22 PM BRST
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=2135
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000003
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000011
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000004
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000007
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000008
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000005
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000006
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000009
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=1000010
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=9623
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=2125
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=2156
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=9627
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=3261
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=2145
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=3228
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=2133
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=2136
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=2141
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=8238
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=10592
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=2155
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=2160
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=57981
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y' WHERE AD_Field_ID=54555
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y' WHERE AD_Field_ID=2132
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y' WHERE AD_Field_ID=2149
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y' WHERE AD_Field_ID=2144
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y' WHERE AD_Field_ID=2162
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=320,IsDisplayedGrid='Y' WHERE AD_Field_ID=3955
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=330,IsDisplayedGrid='Y' WHERE AD_Field_ID=2124
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=340,IsDisplayedGrid='Y' WHERE AD_Field_ID=2164
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=350,IsDisplayedGrid='Y' WHERE AD_Field_ID=2139
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=360,IsDisplayedGrid='Y' WHERE AD_Field_ID=9620
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=370,IsDisplayedGrid='Y' WHERE AD_Field_ID=2148
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=380,IsDisplayedGrid='Y' WHERE AD_Field_ID=2128
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=390,IsDisplayedGrid='Y' WHERE AD_Field_ID=2127
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=400,IsDisplayedGrid='Y' WHERE AD_Field_ID=2146
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=410,IsDisplayedGrid='Y' WHERE AD_Field_ID=2154
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=420,IsDisplayedGrid='Y' WHERE AD_Field_ID=2153
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=430,IsDisplayedGrid='Y' WHERE AD_Field_ID=2135
;

-- Jan 17, 2014 1:30:35 PM BRST
UPDATE AD_Field SET SeqNoGrid=440,IsDisplayedGrid='Y' WHERE AD_Field_ID=57533
;

-- Jan 17, 2014 1:38:10 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-01-17 13:38:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000070
;

-- Jan 17, 2014 1:38:18 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-01-17 13:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000071
;

-- Jan 17, 2014 1:38:24 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200005,Updated=TO_DATE('2014-01-17 13:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000072
;

-- Jan 17, 2014 1:38:40 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200006,Updated=TO_DATE('2014-01-17 13:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000073
;

-- Jan 17, 2014 1:38:46 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200006,Updated=TO_DATE('2014-01-17 13:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000074
;

-- Jan 17, 2014 1:38:52 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=200006,Updated=TO_DATE('2014-01-17 13:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000075
;

-- Jan 17, 2014 1:44:00 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-01-17 13:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000070
;

-- Jan 17, 2014 1:44:07 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-01-17 13:44:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000071
;

-- Jan 17, 2014 1:44:15 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_DATE('2014-01-17 13:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000072
;

-- Jan 17, 2014 1:44:43 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsVendor@=Y',Updated=TO_DATE('2014-01-17 13:44:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000073
;

-- Jan 17, 2014 1:44:50 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsVendor@=Y',Updated=TO_DATE('2014-01-17 13:44:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000074
;

-- Jan 17, 2014 1:44:57 PM BRST
UPDATE AD_Field SET DisplayLogic='@IsVendor@=Y',Updated=TO_DATE('2014-01-17 13:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000075
;

SELECT lbr_register_migration_script('201401171108.sql') FROM dual
;

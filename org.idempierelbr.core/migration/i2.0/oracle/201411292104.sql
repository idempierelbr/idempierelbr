SET SQLBLANKLINES ON
SET DEFINE OFF

-- 29/11/2014 12h58min23s BRST
UPDATE AD_Column SET FKConstraintType=NULL, AD_Reference_ID=19,Updated=TO_DATE('2014-11-29 12:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000097
;

-- 29/11/2014 12h58min43s BRST
UPDATE AD_Column SET FKConstraintType=NULL, AD_Reference_ID=19,Updated=TO_DATE('2014-11-29 12:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000096
;

-- 29/11/2014 13h2min28s BRST
UPDATE AD_Column SET FKConstraintName='LBRFiscalGroupProduct_MProduct', FKConstraintType='N',Updated=TO_DATE('2014-11-29 13:02:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000097
;

-- 29/11/2014 13h2min28s BRST
ALTER TABLE M_Product MODIFY LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL 
;

-- 29/11/2014 13h2min28s BRST
ALTER TABLE M_Product ADD CONSTRAINT LBRFiscalGroupProduct_MProduct FOREIGN KEY (LBR_FiscalGroup_Product_ID) REFERENCES lbr_fiscalgroup_product(lbr_fiscalgroup_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/11/2014 13h2min40s BRST
UPDATE AD_Column SET FKConstraintName='LBRProductCategory_MProduct', FKConstraintType='N',Updated=TO_DATE('2014-11-29 13:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000096
;

-- 29/11/2014 13h2min40s BRST
ALTER TABLE M_Product MODIFY LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL 
;

-- 29/11/2014 13h2min40s BRST
ALTER TABLE M_Product ADD CONSTRAINT LBRProductCategory_MProduct FOREIGN KEY (LBR_ProductCategory_ID) REFERENCES lbr_productcategory(lbr_productcategory_id) DEFERRABLE INITIALLY DEFERRED
;

-- 29/11/2014 13h13min3s BRST
UPDATE AD_Column SET SeqNoSelection=NULL, IsSelectionColumn='Y',Updated=TO_DATE('2014-11-29 13:13:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000004
;

-- 29/11/2014 13h13min17s BRST
UPDATE AD_Column SET SeqNoSelection=NULL, IsSelectionColumn='Y',Updated=TO_DATE('2014-11-29 13:13:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000005
;

-- 29/11/2014 13h19min21s BRST
UPDATE AD_Column SET SeqNoSelection=1, IsSelectionColumn='Y',Updated=TO_DATE('2014-11-29 13:19:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000612
;

-- 29/11/2014 13h19min49s BRST
UPDATE AD_Column SET SeqNoSelection=2, IsSelectionColumn='Y',Updated=TO_DATE('2014-11-29 13:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000628
;

-- 29/11/2014 13h20min7s BRST
UPDATE AD_Column SET SeqNoSelection=3,Updated=TO_DATE('2014-11-29 13:20:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000638
;

-- 29/11/2014 13h24min58s BRST
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2014-11-29 13:24:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1001052
;

-- 29/11/2014 13h36min39s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800071,'N','N','N',0,'N',0,'N','N','N','Y','7bcf48bb-a93f-4431-9ea3-acb72632c233','Y','LBR_TaxPayerInfo','Tax Payer Information','Tax Payer Info','Y',TO_DATE('2014-11-29 13:36:38','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-11-29 13:36:38','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000215,36,259,0,'LBR')
;

-- 29/11/2014 13h36min41s BRST
ALTER TABLE C_Order ADD LBR_TaxPayerInfo CLOB DEFAULT NULL 
;

-- 29/11/2014 13h37min17s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,Created) VALUES ('N',186,0,'N','N',630,'Y',800061,'N','LBR','Tax Payer Information','Tax Payer Info','f3ab32e9-4036-42cf-aa46-9e86b2ace28f','N','Y',0,0,0,TO_DATE('2014-11-29 13:37:16','YYYY-MM-DD HH24:MI:SS'),'Y','Y',630,0,2,5,800071,TO_DATE('2014-11-29 13:37:16','YYYY-MM-DD HH24:MI:SS'))
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=800061
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1112
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1113
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1082
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1084
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=60922
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=6560
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1083
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=58037
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=3660
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=60972
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1001703
;

-- 29/11/2014 13h37min49s BRST
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=800054
;

-- 29/11/2014 13h39min6s BRST
UPDATE AD_Field SET ColumnSpan=5, NumLines=3, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-11-29 13:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800061
;

-- 29/11/2014 13h41min1s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800072,'N','N','N',0,'N',0,'N','N','N','Y','6f986483-96b8-4e49-84a4-a63b771556ab','Y','LBR_TaxPayerInfo','Tax Payer Information','Tax Payer Info','Y',TO_DATE('2014-11-29 13:41:00','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-11-29 13:41:00','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000215,36,318,0,'LBR')
;

-- 29/11/2014 13h41min3s BRST
ALTER TABLE C_Invoice ADD LBR_TaxPayerInfo CLOB DEFAULT NULL 
;

-- 29/11/2014 13h41min39s BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID,Created) VALUES ('N',263,0,'N','N',530,'Y',800062,'N','LBR','Tax Payer Information','Tax Payer Info','6fb2ed34-5a34-490c-a831-6168335c5df3','N','Y',0,0,0,TO_DATE('2014-11-29 13:41:38','YYYY-MM-DD HH24:MI:SS'),'Y','Y',520,0,2,5,800072,TO_DATE('2014-11-29 13:41:38','YYYY-MM-DD HH24:MI:SS'))
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=800062
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=60970
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=200050
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1001704
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1002049
;

-- 29/11/2014 13h42min26s BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=800055
;

-- 29/11/2014 13h43min3s BRST
UPDATE AD_Field SET ColumnSpan=5, NumLines=3, AD_FieldGroup_ID=1000015,Updated=TO_DATE('2014-11-29 13:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800062
;

-- 29/11/2014 20h58min52s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-11-29 20:58:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000607
;

-- 29/11/2014 21h0min33s BRST
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2014-11-29 21:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001199
;

-- 29/11/2014 21h2min15s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1001199
;

-- 29/11/2014 21h2min15s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1001197
;

SELECT lbr_register_migration_script('201411292104.sql') FROM dual
;

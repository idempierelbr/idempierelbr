-- 19/03/2015 10h32min10s BRT
-- Siscomex
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created,Updated) VALUES ('LBR_SiscomexAmt',800103,'Siscomex Amount','Siscomex Amt','4eeb4a88-aed1-45dc-a65b-dc37bb0a7c17',0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-03-19 10:32:07','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2015-03-19 10:32:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h34min36s BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800522,'N','N','N',0,'N',22,'N','N','N','Y','39cd61f6-7706-40c9-91b1-a3946506433e','Y','LBR_SiscomexAmt','Siscomex Amount','Y',TO_TIMESTAMP('2015-03-19 10:34:35','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-03-19 10:34:35','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',800103,12,1000026,0,'LBR')
;

-- 19/03/2015 10h34min39s BRT
ALTER TABLE LBR_DocLine_Details ADD COLUMN LBR_SiscomexAmt NUMERIC DEFAULT NULL 
;

-- 19/03/2015 10h37min0s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000040,22,'N','N',260,'Y',800083,'N','LBR','Siscomex Amount','aeba862c-50eb-447e-8ff0-a548920f5935','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:37:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:37:00','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h37min36s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=800083
;

-- 19/03/2015 10h37min36s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000633
;

-- 19/03/2015 10h37min36s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000634
;

-- 19/03/2015 10h37min36s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000635
;

-- 19/03/2015 10h37min36s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000636
;

-- 19/03/2015 10h37min44s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800083
;

-- 19/03/2015 10h37min44s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000632
;

-- 19/03/2015 10h38min4s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800083
;

-- 19/03/2015 10h41min9s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000026,22,'N','N',260,'Y',800084,'N','LBR','Siscomex Amount','dfca1b23-742e-42ac-8c8d-b9603276d9a8','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:41:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:41:08','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800084
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- 19/03/2015 10h41min26s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000344
;

-- 19/03/2015 10h41min47s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800084
;

-- 19/03/2015 10h42min43s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000071,22,'N','N',260,'Y',800085,'N','LBR','Siscomex Amount','f879ab6d-9908-424f-9d93-7accb230f356','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:42:42','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:42:42','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800085
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1001277
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1001278
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1001279
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1001280
;

-- 19/03/2015 10h42min55s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1001281
;

-- 19/03/2015 10h43min21s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800085
;

-- 19/03/2015 10h44min14s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000033,22,'N','N',260,'Y',800086,'N','LBR','Siscomex Amount','5e164c73-24fe-4010-a888-286c9a4fbb39','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:44:13','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:44:13','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800086
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000487
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000488
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000489
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000490
;

-- 19/03/2015 10h44min26s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000491
;

-- 19/03/2015 10h44min44s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:44:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800086
;

-- 19/03/2015 10h45min41s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000047,22,'N','N',260,'Y',800087,'N','LBR','Siscomex Amount','880b7a0f-7df1-4682-b348-7ee5838864a1','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:45:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:45:40','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800087
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000777
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000778
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000779
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000780
;

-- 19/03/2015 10h45min54s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000781
;

-- 19/03/2015 10h46min13s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800087
;

-- 19/03/2015 10h47min8s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000054,22,'N','N',260,'Y',800088,'N','LBR','Siscomex Amount','c318d82b-19dc-49a9-9d31-1b6334d3a7ac','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:47:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:47:07','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800088
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000922
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000923
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000924
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000925
;

-- 19/03/2015 10h47min21s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000926
;

-- 19/03/2015 10h47min42s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800088
;

-- 19/03/2015 10h48min32s BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000055,22,'N','N',260,'Y',800089,'N','LBR','Siscomex Amount','b63a3f9f-8450-4114-ae28-8629e5d05e2a','N','Y',0,0,0,TO_TIMESTAMP('2015-03-19 10:48:31','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,0,2,800522,TO_TIMESTAMP('2015-03-19 10:48:31','YYYY-MM-DD HH24:MI:SS'))
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=800089
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000953
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000954
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000955
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000956
;

-- 19/03/2015 10h48min48s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000957
;

-- 19/03/2015 10h49min11s BRT
UPDATE AD_Field SET XPosition=4, AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2015-03-19 10:49:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800089
;

-- 19/03/2015 10h55min54s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,EntityType,AD_Client_ID,AD_Org_ID,Name) VALUES (800026,800004,'aee9b8f0-444a-44e0-ba44-8832c11b9a49','4',TO_TIMESTAMP('2015-03-19 10:55:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2015-03-19 10:55:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBR',0,0,'Siscomex')
;

SELECT lbr_register_migration_script('201503191112.sql') FROM dual
;

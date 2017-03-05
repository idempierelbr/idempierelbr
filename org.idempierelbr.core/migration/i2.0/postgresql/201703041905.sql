-- Implementing Interest Amount
-- 04/03/2017 18h46min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801629,0,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',335,'InterestAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2017-03-04 18:46:10','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-03-04 18:46:10','YYYY-MM-DD HH24:MI:SS'),0,1457,'Y','N','U','N','N','N','Y','ba0de4ba-3ba4-49b4-bc8d-fc67f86d6cc9','Y',0,'N','N')
;

-- 04/03/2017 18h46min23s BRT
ALTER TABLE C_Payment ADD COLUMN InterestAmt NUMERIC DEFAULT NULL 
;

-- 04/03/2017 18h46min28s BRT
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2017-03-04 18:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801629
;

-- 04/03/2017 18h48min5s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801377,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',330,801629,'Y',22,750,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-03-04 18:48:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2017-03-04 18:48:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','10725b59-fa95-41b8-ad8a-74bee21ce063','Y',750,2)
;

-- 04/03/2017 18h50min16s BRT
UPDATE AD_Field SET SeqNo=255, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:50:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801377
;

-- 04/03/2017 18h50min54s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:50:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801377
;

-- 04/03/2017 18h53min13s BRT
UPDATE AD_Field SET DisplayLogic='@C_Invoice_ID@^''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801377
;

-- 04/03/2017 18h55min8s BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsDisplayedGrid='N', IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:55:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800126
;

-- 04/03/2017 18h55min36s BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsDisplayedGrid='N', IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800127
;

-- 04/03/2017 18h56min12s BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsDisplayedGrid='N', IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-03-04 18:56:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800128
;

-- 05/03/2017 7h11min29s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10265
;

-- 05/03/2017 7h12min10s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5299
;

-- 05/03/2017 7h12min30s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5301
;

-- 05/03/2017 7h13min5s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7035
;

-- 05/03/2017 7h13min9s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:13:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7034
;

-- 05/03/2017 7h13min14s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:13:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5303
;

-- 05/03/2017 7h13min19s BRT
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2017-03-05 07:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6475
;

DROP FUNCTION boletojuros(integer, timestamp with time zone);

DROP FUNCTION boletomulta(integer, timestamp with time zone);

SELECT lbr_register_migration_script('201703041905.sql') FROM dual
;

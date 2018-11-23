SET SQLBLANKLINES ON
SET DEFINE OFF

-- Implementing Interest Amount
-- 24/04/2017 9h52min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801636,0,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',390,'InterestAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2017-04-24 09:52:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 09:52:16','YYYY-MM-DD HH24:MI:SS'),0,1457,'N','N','LBR','N','N','N','Y','ffebc705-3f87-488b-b66f-a4dfce98e269','Y',0,'N','N')
;

-- 24/04/2017 9h55min20s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2017-04-24 09:55:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801636
;

-- 24/04/2017 9h55min25s BRT
ALTER TABLE C_AllocationLine ADD InterestAmt NUMBER DEFAULT NULL 
;

-- 24/04/2017 9h57min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801386,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',349,801636,'Y',22,150,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 09:57:33','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 09:57:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e738cd15-376f-4257-965c-2f1dc3cf1f41','Y',150,2)
;

-- 24/04/2017 9h57min56s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801380
;

-- 24/04/2017 9h57min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801386
;

-- 24/04/2017 9h57min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4380
;

-- 24/04/2017 9h57min56s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8931
;

-- 24/04/2017 9h57min56s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=4371
;

-- 24/04/2017 9h59min24s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801387,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',684,801636,'Y',22,120,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 09:59:24','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 09:59:24','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','57358898-fc09-4360-b26b-905e398063e8','Y',140,2)
;

-- 24/04/2017 9h59min38s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:59:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801387
;

-- 24/04/2017 9h59min38s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:59:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11042
;

-- 24/04/2017 9h59min38s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 09:59:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11041
;

-- 24/04/2017 10h0min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801388,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',685,801636,'Y',22,120,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:00:06','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:00:06','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5554702e-6a4d-4253-831e-69f98b0859ba','Y',140,2)
;

-- 24/04/2017 10h0min18s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801388
;

-- 24/04/2017 10h0min18s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11059
;

-- 24/04/2017 10h0min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11058
;

-- 24/04/2017 10h3min51s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10265
;

-- 24/04/2017 10h4min16s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5299
;

-- 24/04/2017 10h4min33s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:04:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5301
;

-- 24/04/2017 10h5min6s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:05:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7035
;

-- 24/04/2017 10h5min26s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:05:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7034
;

-- 24/04/2017 10h6min4s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:06:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5303
;

-- 24/04/2017 10h6min13s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6475
;

-- 24/04/2017 10h6min38s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPayment.amounts',Updated=TO_DATE('2017-04-24 10:06:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801629
;

-- 24/04/2017 10h12min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801389,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',1000097,801629,'Y',22,150,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','85ade8ea-fe1b-4330-ade1-60dd7fe97497','Y',130,2)
;

-- 24/04/2017 10h12min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801390,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',1000097,801631,'Y',10,160,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f28c4d87-8ba4-4497-b72c-51ff772dba28','Y',140,2)
;

-- 24/04/2017 10h12min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801391,'Brazilian Bank Collection (Boleto)','Brazilian Bank Collection (Boleto) Identifier','The Brazilian Bank Collection (Boleto) Document.',1000097,1001070,'Y',22,170,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:12:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','fedf9788-2524-41df-8983-cbab0ab8de28','Y',150,2)
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801389
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001900
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001902
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801390
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001903
;

-- 24/04/2017 10h13min19s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801391
;

-- 24/04/2017 10h14min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (801637,0,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',812,'InterestAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2017-04-24 10:14:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:14:15','YYYY-MM-DD HH24:MI:SS'),0,1457,'Y','N','LBR','N','N','N','Y','949193e1-8d4e-4d16-a18a-32d6e76a842b','Y',0,'N','N')
;

-- 24/04/2017 10h14min18s BRT
ALTER TABLE C_PaymentAllocate ADD InterestAmt NUMBER DEFAULT NULL 
;

-- 24/04/2017 10h15min53s BRT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPaymentAllocate.amounts',Updated=TO_DATE('2017-04-24 10:15:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801637
;

-- 24/04/2017 10h16min43s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801392,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',755,801637,'Y',22,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:16:43','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:16:43','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','56331adc-4816-432a-bc20-d7045249f51a','Y',140,2)
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801379
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12231
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12223
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12225
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801392
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12230
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12228
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12232
;

-- 24/04/2017 10h17min7s BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12222
;

-- 24/04/2017 10h17min37s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801393,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',686,801636,'Y',22,130,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:17:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:17:37','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','dfb83039-1b55-49af-915c-1c7e2ab9a56d','Y',140,2)
;

-- 24/04/2017 10h17min50s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801393
;

-- 24/04/2017 10h17min50s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:17:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11076
;

-- 24/04/2017 10h18min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (801638,0,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',597,'InterestAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2017-04-24 10:18:17','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:18:17','YYYY-MM-DD HH24:MI:SS'),0,1457,'Y','N','LBR','N','N','N','Y','4d24e46f-6087-435d-923c-1565f91bc7ec','Y',0,'N','N','N')
;

-- 24/04/2017 10h18min48s BRT
ALTER TABLE I_Payment ADD InterestAmt NUMBER DEFAULT NULL 
;

-- 24/04/2017 10h19min15s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801394,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',511,801638,'Y',22,550,'N','N','N','N',0,0,'Y',TO_DATE('2017-04-24 10:19:14','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2017-04-24 10:19:14','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','03be677d-8395-4666-9c55-166c47a914fa','Y',550,2)
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801394
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7304
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7284
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7290
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7258
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7252
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7296
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7308
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7306
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7253
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7311
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7289
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=204362
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=204363
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7270
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7305
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7257
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7254
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7307
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7265
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7267
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7297
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7264
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7255
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7266
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7300
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7286
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7276
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7263
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7281
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7260
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7275
;

-- 24/04/2017 10h19min46s BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2017-04-24 10:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=8727
;

CREATE OR REPLACE FUNCTION invoiceOpen
(
	p_C_Invoice_ID	            IN	NUMBER,
    p_C_InvoicePaySchedule_ID   IN  NUMBER
)
RETURN NUMBER
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *************************************************************************
 * $Id: C_Invoice_Open.sql,v 1.1 2006/04/21 17:51:58 jjanke Exp $
 ***
 * Title:	Calculate Open Item Amount in Invoice Currency
 * Description:
 *	Add up total amount open for C_Invoice_ID if no split payment.
 *  Grand Total minus Sum of Allocations in Invoice Currency
 *
 *  For Split Payments:
 *  Allocate Payments starting from first schedule.

SELECT C_Invoice_Open (109) FROM DUAL;
SELECT C_Invoice_Open (109, null) FROM DUAL;
SELECT C_Invoice_Open (109, 11) FROM DUAL;
SELECT C_Invoice_Open (109, 102) FROM DUAL;
SELECT C_Invoice_Open (109, 103) FROM DUAL;
SELECT * FROM RV_OpenItem WHERE C_Invoice_ID=109;
SELECT C_InvoicePaySchedule_ID, DueAmt FROM C_InvoicePaySchedule WHERE C_Invoice_ID=109 ORDER BY DueDate;

 *  Cannot be used for IsPaid as mutating
 ************************************************************************/
AS
	v_Currency_ID		NUMBER(10);
	v_Precision			NUMBER := 0;
	v_Min				NUMBER := 0;
	v_TotalOpenAmt  	NUMBER := 0;
	v_PaidAmt  	        NUMBER := 0;
	v_Remaining	        NUMBER := 0;
    v_MultiplierAP      NUMBER := 0;
    v_MultiplierCM      NUMBER := 0;
    v_Temp              NUMBER := 0;
    v_HasAllocationsToInvoiceOnly  		BOOLEAN := false;
    --
	CURSOR	Cur_Alloc	IS
		SELECT	a.AD_Client_ID, a.AD_Org_ID,
            al.Amount, al.DiscountAmt, al.WriteOffAmt, al.InterestAmt,
            a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
          INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
		  AND al.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID
          AND   a.IsActive='Y';
    --
	CURSOR	Cur_PaySchedule	IS
        SELECT  C_InvoicePaySchedule_ID, DueAmt
        FROM    C_InvoicePaySchedule
		WHERE	C_Invoice_ID = p_C_Invoice_ID
		  AND C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID
          AND   IsValid='Y'
        ORDER BY DueDate;

BEGIN
	--	Get Currency
	BEGIN
		SELECT	MAX(C_Currency_ID), SUM(GrandTotal), MAX(MultiplierAP), MAX(Multiplier)
		  INTO	v_Currency_ID, v_TotalOpenAmt, v_MultiplierAP, v_MultiplierCM
		FROM	C_Invoice_v		--	corrected for CM / Split Payment
		WHERE	C_Invoice_ID = p_C_Invoice_ID;
	EXCEPTION	--	Invoice in draft form
		WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('InvoiceOpen - ' || SQLERRM);
			RETURN NULL;
	END;
--  DBMS_OUTPUT.PUT_LINE('== C_Invoice_ID=' || p_C_Invoice_ID || ', Total=' || v_TotalOpenAmt || ', AP=' || v_MultiplierAP || ', CM=' || v_MultiplierCM);

	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = v_Currency_ID;

	SELECT POWER(1/10,v_Precision) INTO v_Min FROM DUAL;
	
	IF (lbr_allocationstoinvoiceonly(p_C_Invoice_ID)) THEN
		--  iDempiere
	    --	Calculate Allocated Amount
		FOR a IN Cur_Alloc LOOP
	        v_Temp := a.Amount + a.DisCountAmt + a.WriteOffAmt - a.InterestAmt;
			v_PaidAmt := v_PaidAmt
	        -- Allocation
				+ currencyConvert(v_Temp * v_MultiplierAP,
					a.C_Currency_ID, v_Currency_ID, a.DateTrx, null, a.AD_Client_ID, a.AD_Org_ID);
	      DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp || ' * ' || v_MultiplierAP);
		END LOOP;
	
	    --  Do we have a Payment Schedule ?
	    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
	        v_Remaining := v_PaidAmt;
	        FOR s IN Cur_PaySchedule LOOP
	            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
	                v_TotalOpenAmt := (s.DueAmt*v_MultiplierCM) - v_Remaining;
	                IF (s.DueAmt - v_Remaining < 0) THEN
	                    v_TotalOpenAmt := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
	            ELSE -- calculate amount, which can be allocated to next schedule
	                v_Remaining := v_Remaining - s.DueAmt;
	                IF (v_Remaining < 0) THEN
	                    v_Remaining := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
	            END IF;
	        END LOOP;
	    ELSE
	        v_TotalOpenAmt := v_TotalOpenAmt - v_PaidAmt;
	    END IF;	    
	ELSE
		--  LBR
		--	Calculate Allocated Amount
		FOR a IN Cur_Alloc LOOP
	        v_Temp := a.Amount + a.DisCountAmt + a.WriteOffAmt;
			v_PaidAmt := v_PaidAmt
	        -- Allocation
				+ currencyConvert(v_Temp * v_MultiplierAP,
					a.C_Currency_ID, v_Currency_ID, a.DateTrx, null, a.AD_Client_ID, a.AD_Org_ID);
	      DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp || ' * ' || v_MultiplierAP);
		END LOOP;
	
	    --  Do we have a Payment Schedule ?
	    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
	        v_Remaining := v_PaidAmt;
	        FOR s IN Cur_PaySchedule LOOP
	            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
	                v_TotalOpenAmt := (s.DueAmt*v_MultiplierCM) - v_Remaining;
	                IF (s.DueAmt - v_Remaining < 0) THEN
	                    v_TotalOpenAmt := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
	            ELSE -- calculate amount, which can be allocated to next schedule
	                v_Remaining := v_Remaining - s.DueAmt;
	                IF (v_Remaining < 0) THEN
	                    v_Remaining := 0;
	                END IF;
	            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
	            END IF;
	        END LOOP;
	    ELSE
	        v_TotalOpenAmt := v_TotalOpenAmt - v_PaidAmt;
	    END IF;
	END IF;
--  DBMS_OUTPUT.PUT_LINE('== Total=' || v_TotalOpenAmt);

	--	Ignore Rounding
	IF (v_TotalOpenAmt > -v_Min AND v_TotalOpenAmt < v_Min) THEN
		v_TotalOpenAmt := 0;
	END IF;

	--	Round to currency precision
	v_TotalOpenAmt := ROUND(COALESCE(v_TotalOpenAmt,0), v_Precision);
	
	RETURN v_TotalOpenAmt;
END invoiceOpen;
/

CREATE OR REPLACE FUNCTION InvoiceopenToDate
(
 p_C_Invoice_ID             IN NUMBER,
    p_C_InvoicePaySchedule_ID   IN  NUMBER,
	p_DateAcct IN DATE
)
RETURN NUMBER
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *************************************************************************
 * $Id: C_Invoice_Open.sql,v 1.1 2006/04/21 17:51:58 jjanke Exp $
 ***
 * Title: Calculate Open Item Amount in Invoice Currency
 * Description:
 * Add up total amount open for C_Invoice_ID if no split payment.
 *  Grand Total minus Sum of Allocations in Invoice Currency
 *
 *  For Split Payments:
 *  Allocate Payments starting from first schedule.

SELECT C_Invoice_Open (109) FROM DUAL;
SELECT C_Invoice_Open (109, null) FROM DUAL;
SELECT C_Invoice_Open (109, 11) FROM DUAL;
SELECT C_Invoice_Open (109, 102) FROM DUAL;
SELECT C_Invoice_Open (109, 103) FROM DUAL;
SELECT * FROM RV_OpenItem WHERE C_Invoice_ID=109;
SELECT C_InvoicePaySchedule_ID, DueAmt FROM C_InvoicePaySchedule WHERE C_Invoice_ID=109 ORDER BY DueDate;

 *  Cannot be used for IsPaid as mutating
 ************************************************************************/
AS
 v_Currency_ID  NUMBER(10);
 v_Precision	NUMBER := 0;
 v_Min			NUMBER := 0;
 v_TotalOpenAmt   NUMBER := 0;
 v_PaidAmt           NUMBER := 0;
 v_Remaining         NUMBER := 0;
    v_MultiplierAP      NUMBER := 0;
    v_MultiplierCM      NUMBER := 0;
    v_Temp              NUMBER := 0;
    --
 CURSOR Cur_Alloc IS
  SELECT a.AD_Client_ID, a.AD_Org_ID,
            al.Amount, al.DiscountAmt, al.WriteOffAmt, al.InterestAmt,
            a.C_Currency_ID, a.DateTrx
  FROM C_ALLOCATIONLINE al
          INNER JOIN C_ALLOCATIONHDR a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
  WHERE al.C_Invoice_ID = p_C_Invoice_ID
    AND a.DateAcct <= p_DateAcct
    AND   a.IsActive='Y';
    --
 CURSOR Cur_PaySchedule IS
        SELECT  C_InvoicePaySchedule_ID, DueAmt
        FROM    C_INVOICEPAYSCHEDULE
  WHERE C_Invoice_ID = p_C_Invoice_ID
          AND   IsValid='Y'
        ORDER BY DueDate;

BEGIN
 -- Get Currency
 BEGIN
  SELECT MAX(C_Currency_ID), SUM(GrandTotal), MAX(MultiplierAP), MAX(Multiplier)
    INTO v_Currency_ID, v_TotalOpenAmt, v_MultiplierAP, v_MultiplierCM
  FROM C_Invoice_v  -- corrected for CM / Split Payment
  WHERE C_Invoice_ID = p_C_Invoice_ID
    AND DateAcct <= p_DateAcct;
 EXCEPTION -- Invoice in draft form
  WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('InvoiceOpen - ' || SQLERRM);
   RETURN NULL;
 END;
--  DBMS_OUTPUT.PUT_LINE('== C_Invoice_ID=' || p_C_Invoice_ID || ', Total=' || v_TotalOpenAmt || ', AP=' || v_MultiplierAP || ', CM=' || v_MultiplierCM);

	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = v_Currency_ID;

	SELECT POWER(1/10,v_Precision) INTO v_Min FROM DUAL;

 -- Calculate Allocated Amount
 FOR a IN Cur_Alloc LOOP
        v_Temp := a.Amount + a.DisCountAmt + a.WriteOffAmt - a.InterestAmt;
  v_PaidAmt := v_PaidAmt
        -- Allocation
   + Currencyconvert(v_Temp * v_MultiplierAP,
    a.C_Currency_ID, v_Currency_ID, a.DateTrx, NULL, a.AD_Client_ID, a.AD_Org_ID);
      DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp || ' * ' || v_MultiplierAP);
 END LOOP;

    --  Do we have a Payment Schedule ?
    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
        v_Remaining := v_PaidAmt;
        FOR s IN Cur_PaySchedule LOOP
            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
                v_TotalOpenAmt := (s.DueAmt*v_MultiplierCM) - v_Remaining;
                IF (s.DueAmt - v_Remaining < 0) THEN
                    v_TotalOpenAmt := 0;
                END IF;
            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
            ELSE -- calculate amount, which can be allocated to next schedule
                v_Remaining := v_Remaining - s.DueAmt;
                IF (v_Remaining < 0) THEN
                    v_Remaining := 0;
                END IF;
            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
            END IF;
        END LOOP;
    ELSE
        v_TotalOpenAmt := v_TotalOpenAmt - v_PaidAmt;
    END IF;
--  DBMS_OUTPUT.PUT_LINE('== Total=' || v_TotalOpenAmt);

	--	Ignore Rounding
	IF (v_TotalOpenAmt > -v_Min AND v_TotalOpenAmt < v_Min) THEN
		v_TotalOpenAmt := 0;
	END IF;

	--	Round to currency precision
	v_TotalOpenAmt := ROUND(COALESCE(v_TotalOpenAmt,0), v_Precision);
	
	RETURN v_TotalOpenAmt;
END InvoiceopenToDate;
/

CREATE OR REPLACE FUNCTION invoicePaid
(
	p_C_Invoice_ID		IN	NUMBER,
	p_C_Currency_ID	    IN	NUMBER,
	p_MultiplierAP		IN	NUMBER	-- DEFAULT 1
)
RETURN NUMBER
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html 
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either 
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *************************************************************************
 * $Id: C_Invoice_Paid.sql,v 1.1 2006/04/21 17:51:58 jjanke Exp $
 ***
 * Title:	Calculate Paid/Allocated amount in Currency
 * Description:
 *	Add up total amount paid for for C_Invoice_ID.
 *  Split Payments are ignored.
 *  all allocation amounts  converted to invoice C_Currency_ID
 *	round it to the nearest cent
 *	and adjust for CreditMemos by using C_Invoice_v
 *  and for Payments with the multiplierAP (-1, 1)
 *
    SELECT C_Invoice_ID, IsPaid, IsSOTrx, GrandTotal, 
    C_Invoice_Paid (C_Invoice_ID, C_Currency_ID, MultiplierAP)
    FROM C_Invoice_v;
    --
    UPDATE C_Invoice_v1	
 	SET IsPaid = CASE WHEN C_Invoice_Paid(C_Invoice_ID,C_Currency_ID,MultiplierAP)=GrandTotal THEN 'Y' ELSE 'N' END 
    WHERE C_Invoice_ID>1000000
 *	
 ************************************************************************/
AS
	v_Precision         NUMBER := 0;
    v_Min            	NUMBER := 0;
	v_MultiplierAP		NUMBER := 1;
	v_PaymentAmt		NUMBER := 0;
	CURSOR	Cur_Alloc	IS
		SELECT	a.AD_Client_ID, a.AD_Org_ID, 
            al.Amount, al.DiscountAmt, al.WriteOffAmt, al.InterestAmt,
            a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
          INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
          AND   a.IsActive='Y';
BEGIN
	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = p_C_Currency_ID;

	SELECT POWER(1/10,v_Precision) INTO v_Min FROM DUAL;
	
	--	Default
	IF (p_MultiplierAP IS NOT NULL) THEN
		v_MultiplierAP := p_MultiplierAP;
	END IF;
	--	Calculate Allocated Amount
	FOR a IN Cur_Alloc LOOP
		v_PaymentAmt := v_PaymentAmt
			+ currencyConvert(a.Amount + a.DisCountAmt + a.WriteOffAmt - a.InterestAmt,
				a.C_Currency_ID, p_C_Currency_ID, a.DateTrx, null, a.AD_Client_ID, a.AD_Org_ID);
	END LOOP;
	
	--	Ignore Rounding
	IF (v_PaymentAmt > -v_Min AND v_PaymentAmt < v_Min) THEN
		v_PaymentAmt := 0;
	END IF;

	--	Round to currency precision
	v_PaymentAmt := ROUND(COALESCE(v_PaymentAmt,0), v_Precision);
	
	RETURN	v_PaymentAmt * v_MultiplierAP;
END invoicePaid;
/

CREATE OR REPLACE FUNCTION InvoicepaidToDate
(
	p_C_Invoice_ID		IN	NUMBER,
	p_C_Currency_ID	    IN	NUMBER,
	p_MultiplierAP		IN	NUMBER,	-- DEFAULT 1
	p_DateAcct IN DATE
)
RETURN NUMBER
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *************************************************************************
 * $Id: C_Invoice_Paid.sql,v 1.1 2006/04/21 17:51:58 jjanke Exp $
 ***
 * Title:	Calculate Paid/Allocated amount in Currency
 * Description:
 *	Add up total amount paid for for C_Invoice_ID.
 *  Split Payments are ignored.
 *  all allocation amounts  converted to invoice C_Currency_ID
 *	round it to the nearest cent
 *	and adjust for CreditMemos by using C_Invoice_v
 *  and for Payments with the multiplierAP (-1, 1)
 *
    SELECT C_Invoice_ID, IsPaid, IsSOTrx, GrandTotal,
    C_Invoice_Paid (C_Invoice_ID, C_Currency_ID, MultiplierAP)
    FROM C_Invoice_v;
    --
    UPDATE C_Invoice_v1
 	SET IsPaid = CASE WHEN C_Invoice_Paid(C_Invoice_ID,C_Currency_ID,MultiplierAP)=GrandTotal THEN 'Y' ELSE 'N' END
    WHERE C_Invoice_ID>1000000
 *
 ************************************************************************/
AS
	v_Precision         NUMBER := 0;
    v_Min            	NUMBER := 0;
	v_MultiplierAP		NUMBER := 1;
	v_PaymentAmt		NUMBER := 0;
	CURSOR	Cur_Alloc	IS
		SELECT	a.AD_Client_ID, a.AD_Org_ID,
            al.Amount, al.DiscountAmt, al.WriteOffAmt, al.InterestAmt,
            a.C_Currency_ID, a.DateTrx
		FROM	C_ALLOCATIONLINE al
          INNER JOIN C_ALLOCATIONHDR a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
          AND   a.IsActive='Y'
		  AND a.DateAcct <= p_DateAcct;
BEGIN
	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = p_C_Currency_ID;

	SELECT POWER(1/10,v_Precision) INTO v_Min FROM DUAL;
	
	--	Default
	IF (p_MultiplierAP IS NOT NULL) THEN
		v_MultiplierAP := p_MultiplierAP;
	END IF;
	--	Calculate Allocated Amount
	FOR a IN Cur_Alloc LOOP
		v_PaymentAmt := v_PaymentAmt
			+ Currencyconvert(a.Amount + a.DisCountAmt + a.WriteOffAmt - a.InterestAmt,
				a.C_Currency_ID, p_C_Currency_ID, a.DateTrx, NULL, a.AD_Client_ID, a.AD_Org_ID);
	END LOOP;
	
	--	Ignore Rounding
	IF (v_PaymentAmt > -v_Min AND v_PaymentAmt < v_Min) THEN
		v_PaymentAmt := 0;
	END IF;

	--	Round to currency precision
	v_PaymentAmt := ROUND(COALESCE(v_PaymentAmt,0), v_Precision);
	
	RETURN	v_PaymentAmt * v_MultiplierAP;
END InvoicepaidToDate;
/

CREATE OR REPLACE VIEW c_payment_v
AS
  SELECT c_payment.c_payment_id,
         c_payment.ad_client_id,
         c_payment.ad_org_id,
         c_payment.isactive,
         c_payment.created,
         c_payment.createdby,
         c_payment.updated,
         c_payment.updatedby,
         c_payment.documentno,
         c_payment.datetrx,
         c_payment.isreceipt,
         c_payment.c_doctype_id,
         c_payment.trxtype,
         c_payment.c_bankaccount_id,
         c_payment.c_bpartner_id,
         c_payment.c_invoice_id,
         c_payment.c_bp_bankaccount_id,
         c_payment.c_paymentbatch_id,
         c_payment.tendertype,
         c_payment.creditcardtype,
         c_payment.creditcardnumber,
         c_payment.creditcardvv,
         c_payment.creditcardexpmm,
         c_payment.creditcardexpyy,
         c_payment.micr,
         c_payment.routingno,
         c_payment.accountno,
         c_payment.checkno,
         c_payment.a_name,
         c_payment.a_street,
         c_payment.a_city,
         c_payment.a_state,
         c_payment.a_zip,
         c_payment.a_ident_dl,
         c_payment.a_ident_ssn,
         c_payment.a_email,
         c_payment.voiceauthcode,
         c_payment.orig_trxid,
         c_payment.ponum,
         c_payment.c_currency_id,
         c_payment.c_conversiontype_id,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.payamt
           ELSE c_payment.payamt * ( -1 )
         END AS payamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.discountamt
           ELSE c_payment.discountamt * ( -1 )
         END AS discountamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.writeoffamt
           ELSE c_payment.writeoffamt * ( -1 )
         END AS writeoffamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.taxamt
           ELSE c_payment.taxamt * ( -1 )
         END AS taxamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.overunderamt
           ELSE c_payment.overunderamt * ( -1 )
         END AS overunderamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN 1
           ELSE ( -1 )
         END AS multiplierap,
         c_payment.isoverunderpayment,
         c_payment.isapproved,
         c_payment.r_pnref,
         c_payment.r_result,
         c_payment.r_respmsg,
         c_payment.r_authcode,
         c_payment.r_avsaddr,
         c_payment.r_avszip,
         c_payment.r_info,
         c_payment.processing,
         c_payment.oprocessing,
         c_payment.docstatus,
         c_payment.docaction,
         c_payment.isprepayment,
         c_payment.c_charge_id,
         c_payment.isreconciled,
         c_payment.isallocated,
         c_payment.isonline,
         c_payment.processed,
         c_payment.posted,
         c_payment.c_campaign_id,
         c_payment.c_project_id,
         c_payment.c_activity_id,
         c_payment.ad_orgtrx_id,
         c_payment.chargeamt,
         c_payment.c_order_id,
         c_payment.dateacct,
         c_payment.description,
         c_payment.isselfservice,
         c_payment.processedon,
         c_payment.reversal_id,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.interestamt
           ELSE c_payment.interestamt * ( -1 )
         END AS interestamt
  FROM   c_payment
;

DROP VIEW rv_allocation;

CREATE OR REPLACE VIEW rv_allocation
AS
  SELECT h.c_allocationhdr_id,
         h.ad_client_id,
         h.ad_org_id,
         h.isactive,
         h.created,
         h.createdby,
         h.updated,
         h.updatedby,
         h.documentno,
         h.description,
         h.datetrx,
         h.dateacct,
         h.c_currency_id,
         h.approvalamt,
         h.ismanual,
         h.docstatus,
         h.docaction,
         h.processed,
         l.c_allocationline_id,
         l.c_invoice_id,
         l.c_bpartner_id,
         l.c_order_id,
         l.c_payment_id,
         l.c_cashline_id,
         l.amount,
         l.discountamt,
         l.writeoffamt,
         l.overunderamt,
         h.isapproved,
         h.posted,
         l.ad_org_id AS c_allocationline_ad_org_id,
         l.created   AS c_allocationline_created,
         l.createdby AS c_allocationline_createdby,
         l.datetrx   AS c_allocationline_datetrx,
         l.isactive  AS c_allocationline_isactive,
         l.ismanual  AS c_allocationline_ismanual,
         l.updated   AS c_allocationline_updated,
         l.updatedby AS c_allocationline_updatedby,
         l.interestamt
  FROM   c_allocationhdr h
         JOIN c_allocationline l
           ON h.c_allocationhdr_id = l.c_allocationhdr_id
;

DROP VIEW rv_payment;

CREATE OR REPLACE VIEW rv_payment
AS
  SELECT c_payment.c_payment_id,
         c_payment.ad_client_id,
         c_payment.ad_org_id,
         c_payment.isactive,
         c_payment.created,
         c_payment.createdby,
         c_payment.updated,
         c_payment.updatedby,
         c_payment.documentno,
         c_payment.datetrx,
         c_payment.isreceipt,
         c_payment.c_doctype_id,
         c_payment.trxtype,
         c_payment.c_bankaccount_id,
         c_payment.c_bpartner_id,
         c_payment.c_invoice_id,
         c_payment.c_bp_bankaccount_id,
         c_payment.c_paymentbatch_id,
         c_payment.tendertype,
         c_payment.creditcardtype,
         c_payment.creditcardnumber,
         c_payment.creditcardvv,
         c_payment.creditcardexpmm,
         c_payment.creditcardexpyy,
         c_payment.micr,
         c_payment.routingno,
         c_payment.accountno,
         c_payment.checkno,
         c_payment.a_name,
         c_payment.a_street,
         c_payment.a_city,
         c_payment.a_state,
         c_payment.a_zip,
         c_payment.a_ident_dl,
         c_payment.a_ident_ssn,
         c_payment.a_email,
         c_payment.voiceauthcode,
         c_payment.orig_trxid,
         c_payment.ponum,
         c_payment.c_currency_id,
         c_payment.c_conversiontype_id,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.payamt
           ELSE c_payment.payamt * ( -1 )
         END                                                               AS payamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.discountamt
           ELSE c_payment.discountamt * ( -1 )
         END                                                               AS discountamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.writeoffamt
           ELSE c_payment.writeoffamt * ( -1 )
         END                                                               AS writeoffamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.taxamt
           ELSE c_payment.taxamt * ( -1 )
         END                                                               AS taxamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.overunderamt
           ELSE c_payment.overunderamt * ( -1 )
         END                                                               AS overunderamt,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN 1
           ELSE ( -1 )
         END                                                               AS multiplierap,
         paymentallocated(c_payment.c_payment_id, c_payment.c_currency_id) AS allocatedamt,
         paymentavailable(c_payment.c_payment_id)                          AS availableamt,
         c_payment.isoverunderpayment,
         c_payment.isapproved,
         c_payment.r_pnref,
         c_payment.r_result,
         c_payment.r_respmsg,
         c_payment.r_authcode,
         c_payment.r_avsaddr,
         c_payment.r_avszip,
         c_payment.r_info,
         c_payment.processing,
         c_payment.oprocessing,
         c_payment.docstatus,
         c_payment.docaction,
         c_payment.isprepayment,
         c_payment.c_charge_id,
         c_payment.isreconciled,
         c_payment.isallocated,
         c_payment.isonline,
         c_payment.processed,
         c_payment.posted,
         c_payment.c_campaign_id,
         c_payment.c_project_id,
         c_payment.c_activity_id,
         c_payment.a_country,
         c_payment.ad_orgtrx_id,
         c_payment.chargeamt,
         c_payment.c_order_id,
         c_payment.dateacct,
         c_payment.description,
         c_payment.isdelayedcapture,
         c_payment.isselfservice,
         c_payment.processedon,
         c_payment.r_authcode_dc,
         c_payment.r_cvv2match,
         c_payment.ref_payment_id,
         c_payment.reversal_id,
         c_payment.r_pnref_dc,
         c_payment.swipe,
         c_payment.user1_id,
         c_payment.user2_id,
         CASE c_payment.isreceipt
           WHEN 'Y' THEN c_payment.interestamt
           ELSE c_payment.interestamt * ( -1 )
         END                                                               AS interestamt
  FROM   c_payment
;

-- 24/04/2017 10h42min5s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2017-04-24 10:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801636
;

SELECT lbr_register_migration_script('201704240800.sql') FROM dual
;

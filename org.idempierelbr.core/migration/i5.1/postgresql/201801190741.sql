-- Creating missing fields
-- 19/01/2018 7h27min49s BRST
UPDATE AD_Column SET EntityType='LBR',Updated=TO_TIMESTAMP('2018-01-19 07:27:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=801144
;

-- 19/01/2018 7h28min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801439,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000026,800561,'Y',10,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:02','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','aa0b45a1-5ddb-4269-b433-666cf60f71b3','Y',230,2)
;

-- 19/01/2018 7h28min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801440,'Nota Fiscal de Serviço',1000026,801144,'Y',10,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','959262dc-0063-4229-8853-3d1aa59848bf','Y',240,2)
;

-- 19/01/2018 7h28min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801441,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000026,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','885f1922-390f-4b3f-b4e8-d773776e08a7','N',2)
;

-- 19/01/2018 7h28min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801442,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000026,1000424,'Y',36,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0a3e9e35-357f-47ac-9663-70f5a4c6601f','Y',250,2)
;

-- 19/01/2018 7h28min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801443,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000026,1000425,'Y',10,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a2268ca1-9568-4919-b7f8-75e2aa6636e6','Y',260,2)
;

-- 19/01/2018 7h28min8s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801444,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1000026,1000426,'Y',22,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f047ed8b-6f6f-42c4-a1be-817d237248cb','Y',270,2)
;

-- 19/01/2018 7h28min8s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801445,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',1000026,1000427,'Y',10,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6a959f4d-f2a2-4c2c-be62-45ef13513bac','Y',280,2)
;

-- 19/01/2018 7h28min8s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801446,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000026,1000674,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','0d795973-24f0-4f86-bbca-0884aa7513da','Y',290,2)
;

-- 19/01/2018 7h28min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801447,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1000026,1000422,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:28:08','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6483b2de-af1b-450b-95e5-32115efe973d','Y',300,2,2)
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000316
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000317
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000323
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000324
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000325
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000326
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000327
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000334
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000329
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000328
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000342
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000346
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000330
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000331
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000332
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000333
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000335
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000336
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000337
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000345
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800084
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000338
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000339
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000340
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000341
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000344
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801447
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801446
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801439
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801442
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801441
;

-- 19/01/2018 7h28min58s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801444
;

-- 19/01/2018 7h28min59s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801440
;

-- 19/01/2018 7h28min59s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801445
;

-- 19/01/2018 7h28min59s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801443
;

-- 19/01/2018 7h29min40s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801448,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000040,800561,'Y',10,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','03c508e2-3b93-4183-941c-ecba1f38c76b','Y',230,2)
;

-- 19/01/2018 7h29min48s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801449,'Nota Fiscal de Serviço',1000040,801144,'Y',10,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:40','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ff1d184f-4796-4ede-bf17-3d61b5697e5c','Y',240,2)
;

-- 19/01/2018 7h29min48s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801450,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000040,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6df5c0c0-9bc7-4fb2-ade9-4377a2dfa2e6','N',2)
;

-- 19/01/2018 7h29min48s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801451,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000040,1000424,'Y',36,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f11d821f-6710-4b36-85c3-9501e4b3088a','Y',250,2)
;

-- 19/01/2018 7h29min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801452,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000040,1000425,'Y',10,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7c1e0891-1bc5-48ff-888c-e8bbe6d40d95','Y',260,2)
;

-- 19/01/2018 7h29min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801453,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1000040,1000426,'Y',22,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c28244c9-91a7-4f7a-8768-919430c6ddec','Y',270,2)
;

-- 19/01/2018 7h29min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801454,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',1000040,1000427,'Y',10,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a818a57b-8a1a-4833-ba19-f658c2ee67e0','Y',280,2)
;

-- 19/01/2018 7h29min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801455,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000040,1000674,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','fc394d77-8dac-4977-b8c4-546c35960bb6','Y',290,2)
;

-- 19/01/2018 7h29min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801456,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1000040,1000422,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:29:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:29:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','31f44d58-49ef-47ed-9eda-5fe801482420','Y',300,2,2)
;

-- 19/01/2018 7h30min28s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000612
;

-- 19/01/2018 7h30min28s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000613
;

-- 19/01/2018 7h30min28s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000614
;

-- 19/01/2018 7h30min28s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000615
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000616
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000617
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000618
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000619
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000620
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000621
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000622
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000623
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000624
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000625
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000626
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000627
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000628
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000629
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000630
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000631
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800083
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000632
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000633
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000634
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000635
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000636
;

-- 19/01/2018 7h30min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801456
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801455
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801448
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801451
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801450
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801453
;

-- 19/01/2018 7h30min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801449
;

-- 19/01/2018 7h30min31s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801454
;

-- 19/01/2018 7h30min31s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801452
;

-- 19/01/2018 7h32min49s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801457,'Nota Fiscal de Serviço',1000071,801144,'Y',10,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ca77e748-aec9-44a9-88a2-50503191d20a','Y',240,2)
;

-- 19/01/2018 7h32min49s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801458,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000071,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6025021c-7b7f-4cec-9734-ed2efd75de38','N',2)
;

-- 19/01/2018 7h32min49s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801459,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000071,1000424,'Y',36,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7405c6b4-5ed6-4e91-9dc4-42b8f1c329ff','Y',250,2)
;

-- 19/01/2018 7h32min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801460,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000071,1000425,'Y',10,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:49','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ba863413-b7ca-4ac8-ae74-c8f0b564dbbc','Y',260,2)
;

-- 19/01/2018 7h32min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801461,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1000071,1000426,'Y',22,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','56bcc2d7-3664-4588-ada1-eb143acc5e05','Y',270,2)
;

-- 19/01/2018 7h32min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801462,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',1000071,1000427,'Y',10,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','77a3d05a-1e71-47a8-94e9-56c44772d3c3','Y',280,2)
;

-- 19/01/2018 7h32min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801463,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000071,1000674,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','74c623a4-7911-42f5-a79d-7aef0ed8c34c','Y',290,2)
;

-- 19/01/2018 7h32min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801464,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1000071,1000422,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:32:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:32:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ec8ce7fe-1421-41b4-8d1b-e5febae29e70','Y',300,2,2)
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001257
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001258
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001259
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001260
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001261
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001262
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001263
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001264
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800120
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001265
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001266
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001267
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001268
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001269
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001270
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001271
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001272
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001273
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001274
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001275
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001276
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800085
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001277
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001278
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001279
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001280
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1001281
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801464
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801463
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801459
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801458
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801461
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801457
;

-- 19/01/2018 7h33min15s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801462
;

-- 19/01/2018 7h33min16s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:33:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801460
;

-- 19/01/2018 7h33min53s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801465,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000047,800561,'Y',10,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','95014f5b-3e19-428e-8221-9f81e2ce509a','Y',230,2)
;

-- 19/01/2018 7h33min54s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801466,'Nota Fiscal de Serviço',1000047,801144,'Y',10,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:53','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:53','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1d719b48-8de1-458a-bb32-b0067cfc16f8','Y',240,2)
;

-- 19/01/2018 7h33min54s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801467,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000047,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','88006f03-46a5-43b5-bf3c-013960a59f49','N',2)
;

-- 19/01/2018 7h33min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801468,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000047,1000424,'Y',36,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a7244116-8173-4c33-b1cc-828e7f559dfd','Y',250,2)
;

-- 19/01/2018 7h33min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801469,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000047,1000425,'Y',10,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d9831d87-7c54-4f52-a63a-f212cc1f428f','Y',260,2)
;

-- 19/01/2018 7h33min55s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801470,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1000047,1000426,'Y',22,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b4d0f413-f017-466d-a77f-4067b2ad23f5','Y',270,2)
;

-- 19/01/2018 7h33min57s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801471,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',1000047,1000427,'Y',10,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:55','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','765423e6-bbd3-4de0-9fa7-ea90c6291a5a','Y',280,2)
;

-- 19/01/2018 7h33min58s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801472,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000047,1000674,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:57','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:57','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','9c313060-f37f-47a7-a28f-7e23e3b8dc59','Y',290,2)
;

-- 19/01/2018 7h33min58s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801473,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1000047,1000422,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:33:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:33:58','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8ac3ecad-ea79-4da9-b14c-896b4ca4cee5','Y',300,2,2)
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000757
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000758
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000759
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000760
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000761
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000762
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000763
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000764
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000765
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000766
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000767
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000768
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000769
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000770
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000771
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000772
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000773
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000774
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000775
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000776
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800087
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000777
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000778
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000779
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000780
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000781
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801473
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801472
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801465
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801468
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801467
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801470
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801466
;

-- 19/01/2018 7h34min29s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801471
;

-- 19/01/2018 7h34min30s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801469
;

-- 19/01/2018 7h34min49s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801474,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000033,800561,'Y',10,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:48','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:48','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','51090b4d-7bc8-478f-a8a8-0703c06b7594','Y',230,2)
;

-- 19/01/2018 7h34min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801475,'Nota Fiscal de Serviço',1000033,801144,'Y',10,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:49','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','ee506398-67e2-4399-9ef2-2fc6eb7a0f71','Y',240,2)
;

-- 19/01/2018 7h34min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801476,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000033,1000423,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1c442490-f015-46b0-ac9f-4129ca25f96f','N',2)
;

-- 19/01/2018 7h34min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801477,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',1000033,1000424,'Y',36,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b6d26f8c-52d0-47c7-b405-82c444c2f564','Y',250,2)
;

-- 19/01/2018 7h34min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801478,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000033,1000425,'Y',10,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','589a84b9-9c42-4ea2-9478-aedf98c9c4fa','Y',260,2)
;

-- 19/01/2018 7h34min52s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801479,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1000033,1000426,'Y',22,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','7a589a62-b2c5-4322-873c-d3cb6e8c1dc6','Y',270,2)
;

-- 19/01/2018 7h34min52s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801480,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',1000033,1000427,'Y',10,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:52','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e8d82128-2b65-49a0-bac3-9e939c7ba57a','Y',280,2)
;

-- 19/01/2018 7h34min53s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801481,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000033,1000674,'Y',22,390,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:52','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:52','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','368074db-441c-41be-8653-858d11a6ed6e','Y',290,2)
;

-- 19/01/2018 7h34min54s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801482,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1000033,1000422,'Y',1,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:34:54','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:34:54','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cfb9184b-0605-4c22-9c64-31e303f62f5d','Y',300,2,2)
;

-- 19/01/2018 7h35min26s BRST
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000467
;

-- 19/01/2018 7h35min26s BRST
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000468
;

-- 19/01/2018 7h35min26s BRST
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000469
;

-- 19/01/2018 7h35min26s BRST
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000470
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000471
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000472
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000473
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000474
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000475
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000476
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000477
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000478
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000479
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000480
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000481
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000482
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000483
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000484
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000485
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000486
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=800086
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000487
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000488
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000489
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000490
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000491
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801482
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801481
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801474
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801477
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801476
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801479
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801475
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801480
;

-- 19/01/2018 7h35min27s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801478
;

-- 19/01/2018 7h36min28s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801483,'Siscomex Amount',800044,800522,'Y',22,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:27','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:27','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','28f3e3a5-dd98-4c58-b482-4694b777f9f1','Y',540,2)
;

-- 19/01/2018 7h36min28s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801484,'Declarant CFOP Code','CFOP code from the point of view of the declarant',800044,800561,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','977e1fa6-0dde-4c6c-92da-2dd6f61d6d6e','Y',550,2)
;

-- 19/01/2018 7h36min28s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801485,'Nota Fiscal de Serviço',800044,801144,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f1b9e85e-5a49-4cd1-8527-ef4a0dab7ade','Y',560,2)
;

-- 19/01/2018 7h36min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801486,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800044,1000424,'Y',36,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:28','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','db760ce6-96b2-43df-90bb-6b8b7e92db63','Y',570,2)
;

-- 19/01/2018 7h36min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801487,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',800044,1000425,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e047ba68-ddab-44c5-a0bc-270c79d4874f','Y',580,2)
;

-- 19/01/2018 7h36min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801488,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',800044,1000426,'Y',22,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e6d70836-fe94-43dc-9e30-26b04d156b63','Y',590,2)
;

-- 19/01/2018 7h36min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801489,'RMA Line','Return Material Authorization Line','Detail information about the returned goods',800044,1000427,'Y',10,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5cc3b540-85bf-4ba2-bbe8-29b70e4d14b4','Y',600,2)
;

-- 19/01/2018 7h36min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801490,'NCM','NCM stands for Nomenclatura Comum do MERCOSUL',800044,1000430,'Y',22,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:29','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','8a62e813-70b8-4b75-9486-cc00457884cd','Y',610,2)
;

-- 19/01/2018 7h36min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801491,'EX TIPI','NCM Exception','Identifies an exception to a NCM rule.',800044,1000431,'Y',6,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','cc08753e-22e8-4478-a607-aa685c64e732','Y',620,2)
;

-- 19/01/2018 7h36min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801492,'CFOP','Indentifies the CFOP',800044,1000432,'Y',22,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','42b9300c-aa69-499d-9d21-3ff5e95009fa','Y',630,2)
;

-- 19/01/2018 7h36min31s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801493,'Insured Amount',800044,1000436,'Y',14,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:30','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f36d35a5-6374-49f7-a908-7c75ecf98515','Y',640,2)
;

-- 19/01/2018 7h36min31s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801494,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',800044,1000437,'Y',22,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','4df20587-c90f-4ca1-8b60-80aceb28e1b5','Y',650,2)
;

-- 19/01/2018 7h36min31s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801495,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',800044,1000438,'Y',22,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','491c2b63-6e73-449f-8924-82151ca450a7','Y',660,2)
;

-- 19/01/2018 7h36min31s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801496,'Taxable UPC/EAN','Taxable Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ',800044,1000439,'Y',30,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','86e00c28-98a6-4c87-9b5f-26b2e14d1e50','Y',670,2)
;

-- 19/01/2018 7h36min32s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801497,'Surcharges',800044,1000440,'Y',14,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:31','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','79db89e4-b3a2-46d0-a513-b99b58b2784b','Y',680,2)
;

-- 19/01/2018 7h36min32s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801498,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',800044,1000443,'Y',20,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','039cfaf7-0dfd-4809-a717-81e27ebb4c1e','Y',690,2)
;

-- 19/01/2018 7h36min32s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801499,'Order Line Reference','Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner','The business partner order line reference is the order line reference for this specific transaction; Often Purchase Order line numbers are given to print on Invoices for easier reference.',800044,1000444,'Y',22,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','55efddec-c029-4077-9480-c114ba47885a','Y',700,2)
;

-- 19/01/2018 7h36min32s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801500,'NF-e Specific Product','Specific Product in a NF-e',800044,1000445,'Y',3,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','db50ddb7-21dd-4049-aef9-df5e8785097f','Y',710,2)
;

-- 19/01/2018 7h36min33s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801501,'FCI Control Number','Import Content Sheet (FCI) Control Number','Identifies the FCI Control Number',800044,1000446,'Y',36,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:32','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e75ae0a5-1adb-4f7b-a5d8-58636b578a97','Y',720,2)
;

-- 19/01/2018 7h36min33s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (801502,'Memo','Memo Text',800044,1000448,'Y',500,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a6977473-e3c4-4ee3-87dd-43548e80faca','Y',730,5,8)
;

-- 19/01/2018 7h36min33s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801503,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',800044,1000674,'Y',22,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','a99aadd3-7164-43e0-94cc-b1c913e42bd1','Y',740,2)
;

-- 19/01/2018 7h36min34s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801504,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800044,1000422,'Y',1,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:36:33','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','3edc0aa5-f63e-46c1-85e1-ffcc163a19c7','Y',750,2,2)
;

-- 19/01/2018 7h37min45s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801504
;

-- 19/01/2018 7h37min45s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801503
;

-- 19/01/2018 7h37min45s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801492
;

-- 19/01/2018 7h37min45s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801484
;

-- 19/01/2018 7h37min45s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801494
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801486
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801491
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801501
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801495
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801493
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801488
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801502
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801490
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801500
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801485
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801499
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801498
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801489
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801487
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801483
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801497
;

-- 19/01/2018 7h37min46s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801496
;

-- 19/01/2018 7h39min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801505,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000054,800561,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b9309dc8-4f0d-4e5e-ae1c-7bfc00f1d112','Y',230,2)
;

-- 19/01/2018 7h39min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801506,'Nota Fiscal de Serviço',1000054,801144,'Y',10,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','c0325c15-d152-4e6b-83b7-35985de4d0f3','Y',240,2)
;

-- 19/01/2018 7h39min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801507,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000054,1000674,'Y',22,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:09','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','608052f3-0350-47ba-a9bb-c602a0dc7635','Y',250,2)
;

-- 19/01/2018 7h39min26s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801507
;

-- 19/01/2018 7h39min26s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801505
;

-- 19/01/2018 7h39min26s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801506
;

-- 19/01/2018 7h39min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801508,'Declarant CFOP Code','CFOP code from the point of view of the declarant',1000055,800561,'Y',10,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','09fda1b3-1481-4e1c-bee9-97de3b1223e6','Y',230,2)
;

-- 19/01/2018 7h39min50s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801509,'Nota Fiscal de Serviço',1000055,801144,'Y',10,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:50','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:50','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','5b956523-df7c-4443-9a62-453f2ad0873a','Y',240,2)
;

-- 19/01/2018 7h39min51s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801510,'Brazilian Fiscal Invoice (Nota Fiscal) Line','Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier','The Brazilian Fiscal Invoice (Nota Fiscal) Line',1000055,1000674,'Y',22,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-19 07:39:51','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2018-01-19 07:39:51','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','76f6fa10-ee31-4a67-8dca-01e3404e4405','Y',250,2)
;

-- 19/01/2018 7h40min5s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801510
;

-- 19/01/2018 7h40min5s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801508
;

-- 19/01/2018 7h40min5s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-01-19 07:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801509
;

SELECT lbr_register_migration_script('201801190741.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Missing fields for NFS' ISSQN tab
-- 06/01/2018 8h36min2s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801429,'Doc Line Details','Doc Line Details','The Doc Line Details is a unique identifier for a details line in an document (order, invoice, RMA, etc) line.',800045,1000581,'Y',22,200,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:02','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:02','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','47bd35fe-66db-45bd-998a-8af333125271','Y',280,2)
;

-- 06/01/2018 8h36min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (801430,'Doc Line ISSQN','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.',800045,1000582,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f626dd9d-be53-4caf-83bf-99e0a42764a4','N',2)
;

-- 06/01/2018 8h36min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801431,'Doc Line ISSQN','Doc Line ISSQN','The Doc Line ISSQN is a unique identifier for a doc line details.',800045,1000583,'Y',36,210,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','d3a04bd6-4036-473a-9e67-b7e687797882','Y',290,2)
;

-- 06/01/2018 8h36min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801432,'Service Type',800045,1000586,'Y',5,220,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:03','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','f87428f6-c939-45c8-b144-f2ba05d1a13c','Y',300,2)
;

-- 06/01/2018 8h36min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801433,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800045,1000587,'Y',10,230,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','e7792e3b-638c-4271-8f4d-63c885a33a65','Y',310,2)
;

-- 06/01/2018 8h36min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801434,'City','City','City in a country',800045,1000589,'Y',10,240,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','20d99f33-b19e-48ae-925c-4e6e9a48a210','Y',320,2)
;

-- 06/01/2018 8h36min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801435,'Country','Country ','The Country defines a Country.  Each Country must be defined before it can be used in any document.',800045,1000857,'Y',10,250,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','6f6d766d-eded-4288-9ef5-9bf13b46b251','Y',330,2)
;

-- 06/01/2018 8h36min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801436,'Incidence Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',800045,1000858,'Y',10,260,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:04','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','1056114d-570a-4270-9b0a-b20dfd70977c','Y',340,2)
;

-- 06/01/2018 8h36min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (801437,'Incidence City','Incidence City','City in a country',800045,1000859,'Y',10,270,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','b629fdf2-4c0d-4aae-9990-cb99e7e97db5','Y',350,2)
;

-- 06/01/2018 8h36min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (801438,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',800045,1000580,'Y',1,280,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-06 08:36:05','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2018-01-06 08:36:05','YYYY-MM-DD HH24:MI:SS'),0,'N','Y','LBR','907dd463-8c7d-42a1-9b5c-1e3ecf3c5367','Y',360,2,2)
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801438
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801434
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801435
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801429
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801431
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801430
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801437
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801436
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801433
;

-- 06/01/2018 8h37min11s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-06 08:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=801432
;

SELECT lbr_register_migration_script('201801060839.sql') FROM dual;

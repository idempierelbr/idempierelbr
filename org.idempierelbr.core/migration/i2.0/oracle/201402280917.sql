SET SQLBLANKLINES ON
SET DEFINE OFF

-- Feb 28, 2014 9:11:06 AM BRT
-- Adding missing columns/fields from previous adempierelbr scripts
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000409,'N','N','N',0,'N',7,'N','N','N','Y','a0e51b54-f283-43f4-b5bf-560d18a08f7b','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-02-28 09:11:06','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-28 09:11:06','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000016,0,'LBR')
;

-- Feb 28, 2014 9:11:39 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000410,'N','N','N',0,'N',255,'Y','N','N','Y','fe9ce487-3102-460a-9ad8-77486eb44623','Y','Description','Optional short description of the record','A description is limited to 255 characters.','Description','Y',TO_DATE('2014-02-28 09:11:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-28 09:11:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',275,14,1000016,0,'LBR')
;

-- Feb 28, 2014 9:13:40 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,NumLines,AD_Column_ID) VALUES ('N',1000014,255,'N','N',80,'Y',1000309,'N','A description is limited to 255 characters.','LBR','Optional short description of the record','Description','6cfbdbbc-5e15-46ea-9a1b-4709f66d0eea','N','Y',0,0,TO_DATE('2014-02-28 09:13:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-28 09:13:40','YYYY-MM-DD HH24:MI:SS'),'Y',0,5,3,1000410)
;

-- Feb 28, 2014 9:13:40 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000014,7,'N','N',90,'Y',1000310,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','fa2a62d7-5668-4482-bb40-13d73c8f0838','N','Y',0,0,TO_DATE('2014-02-28 09:13:40','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-28 09:13:40','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000409)
;

-- Feb 28, 2014 9:14:03 AM BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- Feb 28, 2014 9:14:03 AM BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000164
;

-- Feb 28, 2014 9:14:03 AM BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- Feb 28, 2014 9:14:03 AM BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000163
;

-- Feb 28, 2014 9:14:04 AM BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000159
;

-- Feb 28, 2014 9:14:04 AM BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000158
;

-- Feb 28, 2014 9:14:04 AM BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000162
;

-- Feb 28, 2014 9:15:03 AM BRT
UPDATE AD_Field SET IsSameLine='Y', XPosition=5,Updated=TO_DATE('2014-02-28 09:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000164
;

SELECT lbr_register_migration_script('201402280917.sql') FROM dual
;

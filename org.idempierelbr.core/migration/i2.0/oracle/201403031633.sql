SET SQLBLANKLINES ON
SET DEFINE OFF

-- Mar 3, 2014 4:19:27 PM BRT
-- Adding missing fields from ADempiereLBR scripts to LBR tables/windows
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000411,'N','N','N',0,'N',7,'N','N','N','Y','a989e47c-5adc-4743-b477-b14c91b4c351','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-03-03 16:19:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-03 16:19:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000023,0,'LBR')
;

-- Mar 3, 2014 4:20:16 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000021,7,'N','N',70,'Y',1000311,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','5983b9f5-448e-4573-a375-ca3a2dd6dfad','N','Y',0,0,TO_DATE('2014-03-03 16:20:16','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-03 16:20:16','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000411)
;

-- Mar 3, 2014 4:20:44 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-03 16:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000311
;

-- Mar 3, 2014 4:22:30 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000412,'N','N','N',0,'N',7,'N','N','N','Y','536cf3fe-a2ae-463e-be88-504352c1deda','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-03-03 16:22:30','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-03 16:22:30','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000022,0,'LBR')
;

-- Mar 3, 2014 4:22:49 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000020,7,'N','N',70,'Y',1000312,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','742bdc38-38f6-41f2-8f70-69ed3cf32b7b','N','Y',0,0,TO_DATE('2014-03-03 16:22:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-03 16:22:49','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000412)
;

-- Mar 3, 2014 4:23:44 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-03 16:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000312
;

-- Mar 3, 2014 4:24:48 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000413,'N','N','N',0,'N',7,'N','N','N','Y','545e4b44-d295-4bba-b91b-7704b13c7e1b','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-03-03 16:24:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-03 16:24:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000021,0,'LBR')
;

-- Mar 3, 2014 4:25:29 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000019,7,'N','N',80,'Y',1000313,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','14221148-550b-4dd4-b295-b3748c116a8b','N','Y',0,0,TO_DATE('2014-03-03 16:25:29','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-03 16:25:29','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000413)
;

-- Mar 3, 2014 4:25:55 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-03 16:25:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000313
;

-- Mar 3, 2014 4:26:34 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000414,'N','N','N',0,'N',7,'N','N','N','Y','54959427-a13b-43ee-ad5e-dc6b196b4e83','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-03-03 16:26:34','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-03 16:26:34','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000020,0,'LBR')
;

-- Mar 3, 2014 4:26:57 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000018,7,'N','N',70,'Y',1000314,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','b07ad9c3-9fbd-44c7-996f-cca41be124a4','N','Y',0,0,TO_DATE('2014-03-03 16:26:57','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-03 16:26:57','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000414)
;

-- Mar 3, 2014 4:27:15 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-03 16:27:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000314
;

-- Mar 3, 2014 4:27:44 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000415,'N','N','N',0,'N',7,'N','N','N','Y','3db4324c-846d-4250-bf7a-42c0ef2567fb','Y','ValidFrom','Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from','Y',TO_DATE('2014-03-03 16:27:44','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-03-03 16:27:44','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N',617,15,1000019,0,'LBR')
;

-- Mar 3, 2014 4:28:03 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,AD_Client_ID,ColumnSpan,AD_Column_ID) VALUES ('N',1000017,7,'N','N',70,'Y',1000315,'N','The Valid From date indicates the first day of a date range','LBR','Valid from including this date (first day)','Valid from','527e9689-b0fc-4eaf-9610-25beed330b2e','N','Y',0,0,TO_DATE('2014-03-03 16:28:03','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-03-03 16:28:03','YYYY-MM-DD HH24:MI:SS'),'Y',0,2,1000415)
;

-- Mar 3, 2014 4:28:19 PM BRT
UPDATE AD_Field SET XPosition=4,Updated=TO_DATE('2014-03-03 16:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000315
;

-- Mar 3, 2014 4:29:10 PM BRT
ALTER TABLE LBR_TaxConfig_BPartner ADD ValidFrom DATE DEFAULT NULL 
;

-- Mar 3, 2014 4:30:01 PM BRT
ALTER TABLE LBR_TaxConfig_BPGroup ADD ValidFrom DATE DEFAULT NULL 
;

-- Mar 3, 2014 4:30:31 PM BRT
ALTER TABLE LBR_TaxConfig_Region ADD ValidFrom DATE DEFAULT NULL 
;

-- Mar 3, 2014 4:31:01 PM BRT
ALTER TABLE LBR_TaxConfig_Product ADD ValidFrom DATE DEFAULT NULL 
;

-- Mar 3, 2014 4:31:32 PM BRT
ALTER TABLE LBR_TaxConfig_ProductGroup ADD ValidFrom DATE DEFAULT NULL 
;

SELECT lbr_register_migration_script('201403031633.sql') FROM dual
;

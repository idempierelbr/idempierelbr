SET SQLBLANKLINES ON
SET DEFINE OFF

-- Feb 26, 2014 10:23:04 AM BRT
-- Adding LBR fields to C_Order, C_OrderLine, C_Invoice and C_InvoiceLine
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000404,'N','N','N',0,'N',10,'N','N','N','Y','1b46e064-96d8-48ff-a7ca-c73b3b9f8a87','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-26 10:23:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-26 10:23:04','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,260,0,'LBR')
;

-- Feb 26, 2014 10:23:12 AM BRT
ALTER TABLE C_OrderLine ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 26, 2014 10:26:01 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',187,0,'N','N',275,'Y',1000300,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','644f20fe-f006-4d93-831b-7fd753f32fd8','N','Y',0,0,TO_DATE('2014-02-26 10:26:01','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 10:26:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',390,1,'N',0,2,1,'N','N',1000404,103)
;

-- Feb 26, 2014 1:00:39 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000405,'N','N','N',0,'N',3,'N','N','N','Y','32ed9094-6f4e-4435-8755-8544f111b769','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-02-26 13:00:39','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-26 13:00:39','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,259,0,'LBR')
;

-- Feb 26, 2014 1:00:44 PM BRT
ALTER TABLE C_Order ADD LBR_TransactionType NVARCHAR2(3) DEFAULT NULL 
;

-- Feb 26, 2014 1:01:51 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',186,0,'N','N',155,'Y',1000301,'N','LBR','Identifies a Transaction Type','Transaction Type','495abf9f-6158-42ae-b373-f3bbcafae9bf','N','Y',0,0,TO_DATE('2014-02-26 13:01:51','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:01:51','YYYY-MM-DD HH24:MI:SS'),'Y','Y',570,1,'N',0,2,1,'N','N',1000405)
;

-- Feb 26, 2014 1:14:45 PM BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2014-02-26 13:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000301
;

-- Feb 26, 2014 1:26:26 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000406,'N','N','N',0,'N',3,'N','N','N','Y','1db083d9-9476-4998-81fb-ad67bbe1e4fc','Y','LBR_TransactionType','Identifies a Transaction Type','Transaction Type','Y',TO_DATE('2014-02-26 13:26:26','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-26 13:26:26','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000048,17,1000003,318,0,'LBR')
;

-- Feb 26, 2014 1:26:33 PM BRT
ALTER TABLE C_Invoice ADD LBR_TransactionType NVARCHAR2(3) DEFAULT NULL 
;

-- Feb 26, 2014 1:31:07 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',263,0,'N','N',245,'Y',1000302,'N','LBR','Identifies a Transaction Type','Transaction Type','e9df6fb3-7c31-4526-805e-fe936710b778','N','Y',0,0,TO_DATE('2014-02-26 13:31:07','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:31:07','YYYY-MM-DD HH24:MI:SS'),'Y','Y',450,1,'N',0,2,1,'N','N',1000406,125)
;

-- Feb 26, 2014 1:33:40 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000407,'N','N','N',0,'N',10,'N','N','N','Y','b5110590-d7cd-4214-b9eb-cdac66d51d6c','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_DATE('2014-02-26 13:33:40','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-02-26 13:33:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,333,0,'LBR')
;

-- Feb 26, 2014 1:33:47 PM BRT
ALTER TABLE C_InvoiceLine ADD LBR_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 26, 2014 1:35:23 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',270,0,'N','N',175,'Y',1000303,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','bded84c4-db3c-47a0-93ea-784206de5251','N','Y',0,0,TO_DATE('2014-02-26 13:35:23','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:35:23','YYYY-MM-DD HH24:MI:SS'),'Y','Y',270,1,'N',0,2,1,'N','N',1000407,103)
;

-- Feb 26, 2014 1:41:27 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',294,0,'N','N',145,'Y',1000304,'N','LBR','Identifies a Transaction Type','Transaction Type','699e22bc-383b-481a-ba18-89550568cdf5','N','Y',0,0,TO_DATE('2014-02-26 13:41:27','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:41:27','YYYY-MM-DD HH24:MI:SS'),'Y','Y',490,1,'N',0,2,1,'N','N',1000405,125)
;

-- Feb 26, 2014 1:47:37 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',293,0,'N','N',275,'Y',1000305,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','507b8e5b-4eac-45bc-8fe3-df799c1fada8','N','Y',0,0,TO_DATE('2014-02-26 13:47:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:47:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',350,1,'N',0,2,1,'N','N',1000404,103)
;

-- Feb 26, 2014 1:54:19 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',290,0,'N','N',255,'Y',1000306,'N','LBR','Identifies a Transaction Type','Transaction Type','a6334a68-7963-413b-b8cc-93663662a715','N','Y',0,0,TO_DATE('2014-02-26 13:54:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:54:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',430,1,'N',0,2,1,'N','N',1000406,125)
;

-- Feb 26, 2014 1:58:08 PM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',291,0,'N','N',225,'Y',1000307,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','93d443cd-db81-4929-addb-a4aa859cc3b5','N','Y',0,0,TO_DATE('2014-02-26 13:58:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-02-26 13:58:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',320,1,'N',0,2,1,'N','N',1000407,103)
;

SELECT lbr_register_migration_script('201402261233.sql') FROM dual
;

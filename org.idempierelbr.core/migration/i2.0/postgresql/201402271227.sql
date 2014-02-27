-- Feb 27, 2014 10:42:29 AM BRT
-- Adding LBR fields to AD_OrgInfo
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000408,'N','N','N',0,'N',10,'N','N','N','Y','7667c33c-93b9-4422-909b-c50f18cbd790','Y','LBR_Tax_ID','Identifies a transaction tax (document/line)','Transaction Tax','Y',TO_TIMESTAMP('2014-02-27 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2014-02-27 10:42:29','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000053,1000010,228,0,'LBR')
;

-- Feb 27, 2014 10:42:33 AM BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_Tax_ID NUMERIC(10) DEFAULT NULL 
;

-- Feb 27, 2014 10:43:36 AM BRT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,AD_FieldGroup_ID) VALUES (0,'N',170,0,'N','N',180,'Y',1000308,'N','LBR','Identifies a transaction tax (document/line)','Transaction Tax','f66f1358-8cca-40c4-85b1-1232737537aa','N','Y',0,0,TO_TIMESTAMP('2014-02-27 10:43:36','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-02-27 10:43:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,1,'N',0,2,1,'N','N',1000408,1000002)
;

SELECT lbr_register_migration_script('201402271227.sql') FROM dual
;

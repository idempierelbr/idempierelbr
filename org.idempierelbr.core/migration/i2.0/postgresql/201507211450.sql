-- Jul 21, 2015 2:31:54 PM BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_OwnCFOP_ID',800114,'Declarant CFOP Code','CFOP code from the point of view of the declarant','Declarant CFOP Code','8770d9e4-50b9-4ac1-a0f0-fb2961e21c90',TO_TIMESTAMP('2015-07-21 14:31:53','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-07-21 14:31:53','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:33:05 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_COF_OwnTaxStatus',800115,'Declarant COFINS Tax Status','COFINS tax status from the point of view of the declarant','Declarant COFINS Tax Status','801193ad-49b6-4e41-8bb1-e12fe0c01ae5',TO_TIMESTAMP('2015-07-21 14:33:04','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-07-21 14:33:04','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:33:56 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_ICMS_OwnTaxStatus',800116,'Declarant ICMS Tax Status','ICMS tax status from the point of view of the declarant','Declarant ICMS Tax Status','9d784fad-eceb-44f8-be30-3d71773dab7f',TO_TIMESTAMP('2015-07-21 14:33:55','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-07-21 14:33:55','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:34:49 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_IPI_OwnTaxStatus',800117,'Declarant IPI Tax Status','IPI tax status from the point of view of the declarant','Declarant IPI Tax Status','43688c70-c89c-4aa6-b7be-a5b34c6c93ee',TO_TIMESTAMP('2015-07-21 14:34:48','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-07-21 14:34:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:37:13 PM BRT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType,Created) VALUES ('LBR_PIS_OwnTaxStatus',800118,'Declarant PIS Tax Status','PIS tax status from the point of view of the declarant','Declarant PIS Tax Status','cc4b5bc2-6fdc-4334-bf74-93c739d05cf6',TO_TIMESTAMP('2015-07-21 14:37:12','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR',TO_TIMESTAMP('2015-07-21 14:37:12','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:41:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800561,'N','N','N',0,'N',10,'N','N','N','Y','307d4283-9598-4d83-85a3-1f19e4f59443','Y','LBR_OwnCFOP_ID','CFOP code from the point of view of the declarant','Declarant CFOP Code','Y',TO_TIMESTAMP('2015-07-21 14:41:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-07-21 14:41:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800114,18,1000018,1000026,0,0,'LBR')
;

-- Jul 21, 2015 2:41:44 PM BRT
UPDATE AD_Column SET FKConstraintName='LBROwnCFOP_LBRDocLineDetails', FKConstraintType='N',Updated=TO_TIMESTAMP('2015-07-21 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=800561
;

-- Jul 21, 2015 2:41:44 PM BRT
ALTER TABLE LBR_DocLine_Details ADD COLUMN LBR_OwnCFOP_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 21, 2015 2:41:44 PM BRT
ALTER TABLE LBR_DocLine_Details ADD CONSTRAINT LBROwnCFOP_LBRDocLineDetails FOREIGN KEY (LBR_OwnCFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jul 21, 2015 2:42:37 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800562,'N','N','N',0,'N',2,'N','N','N','Y','a40c522f-7ad1-4391-8584-ea4d33c277b5','Y','LBR_COF_OwnTaxStatus','COFINS tax status from the point of view of the declarant','Declarant COFINS Tax Status','Y',TO_TIMESTAMP('2015-07-21 14:42:36','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-07-21 14:42:36','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800115,17,1000031,1000030,0,0,'LBR')
;

-- Jul 21, 2015 2:42:43 PM BRT
ALTER TABLE LBR_DocLine_COFINS ADD COLUMN LBR_COF_OwnTaxStatus VARCHAR(2) DEFAULT NULL 
;

-- Jul 21, 2015 2:43:23 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800563,'N','N','N',0,'N',5,'N','N','N','Y','43f22d24-2023-421b-afc0-51fc2ae3d6f8','Y','LBR_ICMS_OwnTaxStatus','ICMS tax status from the point of view of the declarant','Declarant ICMS Tax Status','Y',TO_TIMESTAMP('2015-07-21 14:43:22','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-07-21 14:43:22','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800116,17,1000015,1000027,0,0,'LBR')
;

-- Jul 21, 2015 2:43:32 PM BRT
ALTER TABLE LBR_DocLine_ICMS ADD COLUMN LBR_ICMS_OwnTaxStatus VARCHAR(5) DEFAULT NULL 
;

-- Jul 21, 2015 2:44:18 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800564,'N','N','N',0,'N',2,'N','N','N','Y','82db1275-bbc1-40bb-9bf2-5a0bbd8f3f6c','Y','LBR_IPI_OwnTaxStatus','IPI tax status from the point of view of the declarant','Declarant IPI Tax Status','Y',TO_TIMESTAMP('2015-07-21 14:44:17','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-07-21 14:44:17','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800117,17,1000029,1000028,0,0,'LBR')
;

-- Jul 21, 2015 2:44:23 PM BRT
ALTER TABLE LBR_DocLine_IPI ADD COLUMN LBR_IPI_OwnTaxStatus VARCHAR(2) DEFAULT NULL 
;

-- Jul 21, 2015 2:46:00 PM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,800565,'N','N','N',0,'N',2,'N','N','N','Y','d99ad8ef-f87e-4592-ad9a-951f68ca8e37','Y','LBR_PIS_OwnTaxStatus','PIS tax status from the point of view of the declarant','Declarant PIS Tax Status','Y',TO_TIMESTAMP('2015-07-21 14:45:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2015-07-21 14:45:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N',800118,17,1000031,1000029,0,0,'LBR')
;

-- Jul 21, 2015 2:46:13 PM BRT
ALTER TABLE LBR_DocLine_PIS ADD COLUMN LBR_PIS_OwnTaxStatus VARCHAR(2) DEFAULT NULL 
;

-- Jul 21, 2015 2:48:02 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000071,10,'N','N',270,'Y',800120,'N','LBR','CFOP code from the point of view of the declarant','Declarant CFOP Code','e47c1d9a-1914-4a31-83df-3e337ca78bb3','Y','N',0,0,TO_TIMESTAMP('2015-07-21 14:48:01','YYYY-MM-DD HH24:MI:SS'),'Y','Y',230,0,2,800561,0,TO_TIMESTAMP('2015-07-21 14:48:01','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:48:22 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000072,5,'N','N',330,'Y',800121,'N','LBR','ICMS tax status from the point of view of the declarant','Declarant ICMS Tax Status','d9c66e5a-b936-491a-8205-2df4f8f0ed0a','Y','N',0,0,TO_TIMESTAMP('2015-07-21 14:48:21','YYYY-MM-DD HH24:MI:SS'),'Y','Y',310,0,2,800563,0,TO_TIMESTAMP('2015-07-21 14:48:21','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:48:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000073,2,'N','N',150,'Y',800122,'N','LBR','IPI tax status from the point of view of the declarant','Declarant IPI Tax Status','0035a982-4b23-4d64-b296-431b0c412128','Y','N',0,0,TO_TIMESTAMP('2015-07-21 14:48:36','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,0,2,800564,0,TO_TIMESTAMP('2015-07-21 14:48:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:49:19 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000074,2,'N','N',160,'Y',800123,'N','LBR','PIS tax status from the point of view of the declarant','Declarant PIS Tax Status','b7872560-8ae5-4f89-b3c6-8e2ca7935089','Y','N',0,0,TO_TIMESTAMP('2015-07-21 14:49:18','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,800565,0,TO_TIMESTAMP('2015-07-21 14:49:18','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 21, 2015 2:49:37 PM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,AD_Client_ID,ColumnSpan,AD_Column_ID,AD_Org_ID,Created) VALUES ('N',1000075,2,'N','N',160,'Y',800124,'N','LBR','COFINS tax status from the point of view of the declarant','Declarant COFINS Tax Status','edf31872-e85b-43e5-8765-4e66b136a1de','Y','N',0,0,TO_TIMESTAMP('2015-07-21 14:49:35','YYYY-MM-DD HH24:MI:SS'),'Y','Y',150,0,2,800562,0,TO_TIMESTAMP('2015-07-21 14:49:35','YYYY-MM-DD HH24:MI:SS'))
;
SELECT lbr_register_migration_script('201507211450.sql') FROM dual
;


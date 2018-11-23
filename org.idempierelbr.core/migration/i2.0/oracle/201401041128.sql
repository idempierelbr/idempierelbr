SET SQLBLANKLINES ON
SET DEFINE OFF

-- 04/01/2014 10h34min27s BRST
-- Funcionalidade LBR_USE_UNIFIED_BP: criação de colunas e campos
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000012,'N','N','N',0,'N',1,'N','N','N','Y','b329a341-f4bc-44b9-9309-909859f91d82','Y','LBR_BPTypeBRIsValid','Brazilian BP is Valid','''N''','Indicates the CNPJ/CPF is valid and there are no duplicates in DB. It''s not possible to change CNPJ/CPF after validation','Brazilian BP Valid','Y',TO_DATE('2014-01-04 10:34:27','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:34:27','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000011,20,293,0,'LBR')
;

-- 04/01/2014 10h34min33s BRST
ALTER TABLE C_BPartner_Location ADD LBR_BPTypeBRIsValid CHAR(1) DEFAULT 'N' CHECK (LBR_BPTypeBRIsValid IN ('Y','N'))
;

-- 04/01/2014 10h36min12s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,ReadOnlyLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000013,'N','N','N',0,'N',14,'N','N','@LBR_BPTypeBRIsValid=''Y''','N','Y','0032f6bc-2ee1-4f4b-b47d-5ea3aaef9951','Y','LBR_CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil','CNPJ','Y',TO_DATE('2014-01-04 10:36:12','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:36:12','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000004,10,293,0,'LBR')
;

-- 04/01/2014 10h36min17s BRST
ALTER TABLE C_BPartner_Location ADD LBR_CNPJ NVARCHAR2(14) DEFAULT NULL 
;

-- 04/01/2014 10h36min22s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-04 10:36:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000013
;

-- 04/01/2014 10h37min59s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000014,'N','N','N',0,'N',30,'N','N','N','Y','037a81ac-9cb0-4bb0-9d15-40cbaaeba2e4','Y','LBR_CCM','City Identification Code used in Brazil (City Tax ID)','City Identification Code used in Brazil (City Tax ID)','CCM','Y',TO_DATE('2014-01-04 10:37:59','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:37:59','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000007,10,293,0,'LBR')
;

-- 04/01/2014 10h38min1s BRST
ALTER TABLE C_BPartner_Location ADD LBR_CCM NVARCHAR2(30) DEFAULT NULL 
;

-- 04/01/2014 10h38min37s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000015,'N','N','N',0,'N',30,'N','N','N','Y','0553bc36-8f1a-4720-87f6-355c7f4f6a8c','Y','LBR_Suframa','Brazilian SUFRAMA Identification Number','Brazilian SUFRAMA Identification Number','Suframa','Y',TO_DATE('2014-01-04 10:38:37','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:38:37','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000008,10,293,0,'LBR')
;

-- 04/01/2014 10h39min48s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000016,'N','N','N',0,'N',1,'N','N','N','Y','533679a6-63fe-4b50-8ad9-3645a67d5619','Y','LBR_IsIEExempt','Business Partner is IE Exempt','''N''','Business Partner is IE Exempt','IE Exempt','Y',TO_DATE('2014-01-04 10:39:48','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:39:48','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000010,20,293,0,'LBR')
;

-- 04/01/2014 10h39min51s BRST
ALTER TABLE C_BPartner_Location ADD LBR_IsIEExempt CHAR(1) DEFAULT 'N' CHECK (LBR_IsIEExempt IN ('Y','N'))
;

-- 04/01/2014 10h40min0s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-04 10:40:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000016
;

-- 04/01/2014 10h40min43s BRST
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000017,'N','N','N',0,'N',30,'N','N','N','Y','24a33626-77de-4312-8224-3d4bc82d5bfd','Y','LBR_IE','Used to identify the IE (State Tax ID)','Used to identify the IE (State Tax ID)','IE','Y',TO_DATE('2014-01-04 10:40:43','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-01-04 10:40:43','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'N','N','N',1000009,10,293,0,'LBR')
;

-- 04/01/2014 10h40min45s BRST
ALTER TABLE C_BPartner_Location ADD LBR_IE NVARCHAR2(30) DEFAULT NULL 
;

-- 04/01/2014 10h40min52s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-04 10:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000017
;

-- 04/01/2014 10h41min47s BRST
ALTER TABLE C_BPartner_Location ADD LBR_Suframa NVARCHAR2(30) DEFAULT NULL 
;

-- 04/01/2014 10h50min8s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'N','N',170,'Y',1000012,'N','Used to identify Legal Entities in Brazil','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''','LBR','Used to identify Legal Entities in Brazil','CNPJ','f7555453-79d2-4252-81a7-c8bbf0a854c6','N','Y',0,0,TO_DATE('2014-01-04 10:50:08','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:50:08','YYYY-MM-DD HH24:MI:SS'),'Y','Y',170,1,'N',0,2,1,'N','N',1000013)
;

-- 04/01/2014 10h53min22s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'Y','N',180,'Y',1000013,'Y','Indicates the CNPJ/CPF is valid and there are no duplicates in DB. It''s not possible to change CNPJ/CPF after validation','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''','LBR','Brazilian BP is Valid','Brazilian BP Valid','3e779318-d7ff-4c6f-8056-bf4c828df0e7','N','Y',0,0,TO_DATE('2014-01-04 10:53:22','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:53:22','YYYY-MM-DD HH24:MI:SS'),'Y','Y',180,5,'N',0,2,1,'N','N',1000012)
;

-- 04/01/2014 10h55min19s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'N','N',190,'Y',1000014,'N','City Identification Code used in Brazil (City Tax ID)','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''','LBR','City Identification Code used in Brazil (City Tax ID)','CCM','0bef9144-6b88-459b-b3d7-c233e6d9dfc1','N','Y',0,0,TO_DATE('2014-01-04 10:55:19','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:55:19','YYYY-MM-DD HH24:MI:SS'),'Y','Y',190,1,'N',0,2,1,'N','N',1000014)
;

-- 04/01/2014 10h56min49s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'Y','N',200,'Y',1000015,'N','Brazilian SUFRAMA Identification Number','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''','LBR','Brazilian SUFRAMA Identification Number','Suframa','c6b91979-c45e-4c95-965c-c9c7c5be2ea7','N','Y',0,0,TO_DATE('2014-01-04 10:56:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:56:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',200,4,'N',0,2,1,'N','N',1000015)
;

-- 04/01/2014 10h58min15s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'N','N',210,'Y',1000016,'N','Business Partner is IE Exempt','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''','LBR','Business Partner is IE Exempt','IE Exempt','4b9f522f-05dd-4f40-9233-8a631225f692','N','Y',0,0,TO_DATE('2014-01-04 10:58:15','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:58:15','YYYY-MM-DD HH24:MI:SS'),'Y','Y',210,2,'N',0,2,1,'N','N',1000016)
;

-- 04/01/2014 10h59min38s BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID) VALUES (0,'N',222,0,'Y','N',220,'Y',1000017,'N','Used to identify the IE (State Tax ID)','@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y'' | @LBR_BPTypeBR@=''PF'' & @LBR_IsIEExempt@=''N''','LBR','Used to identify the IE (State Tax ID)','IE','46c34577-9236-4d0c-a312-a42ca9c3826e','N','Y',0,0,TO_DATE('2014-01-04 10:59:37','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2014-01-04 10:59:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',220,4,'N',0,2,1,'N','N',1000017)
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000012
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000013
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000014
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000015
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000016
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000017
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2191
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2192
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2187
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2188
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2196
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2193
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2194
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2195
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2186
;

-- 04/01/2014 11h18min42s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=200619
;

SELECT lbr_register_migration_script('201401041128.sql') FROM dual
;

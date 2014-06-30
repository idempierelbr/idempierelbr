SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jun 28, 2014 11:35:20 AM BRT
-- Process to validate digital certificate
-- Possibility to generate Sefaz digital certificate keystore to both homologation and production
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000005,'N','N','f73e3d4e-c934-4c01-9e73-00e486f7b391','3','N','N',55,37,'Y','LBR','Validate Digital Certificate','Validate Digital Certificate',0,0,'Y',0,'org.idempierelbr.nfe.process.ValidateDigitalCertificate','LBR_ProcValidateDigitalCertificate',0,TO_DATE('2014-06-28 11:35:20','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-06-28 11:35:20','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 28, 2014 11:37:48 AM BRT
INSERT INTO AD_Process_Para (IsRange,AD_Process_Para_ID,AD_Process_Para_UU,AD_Process_ID,AD_Reference_ID,IsMandatory,Name,ColumnName,FieldLength,IsCentrallyMaintained,SeqNo,DefaultValue,IsActive,UpdatedBy,Updated,CreatedBy,AD_Org_ID,IsEncrypted,AD_Client_ID,EntityType,Created) VALUES ('N',1000001,'61fed42b-e8b6-4654-81bd-f6b8f95dd7ef',1000005,20,'N','Update Fields based on Attachment','UpdateFields',1,'N',10,'N','Y',0,TO_DATE('2014-06-28 11:37:48','YYYY-MM-DD HH24:MI:SS'),0,0,'N',0,'LBR',TO_DATE('2014-06-28 11:37:48','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 28, 2014 11:43:14 AM BRT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,AD_Process_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,IsEncrypted,IsSecure,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Org_ID,EntityType) VALUES (0,'N',0,1000957,'N','N','N',0,'N',1,'N','N',1000005,'N','Y','4575b988-c375-489c-8213-6207a6b406cd','Y','Processing','Process Now','N',TO_DATE('2014-06-28 11:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_DATE('2014-06-28 11:43:14','YYYY-MM-DD HH24:MI:SS'),0,'Y','N',0,'N','N',524,28,1000044,0,'LBR')
;

-- Jun 28, 2014 11:43:24 AM BRT
ALTER TABLE LBR_DigitalCertificate ADD Processing CHAR(1) DEFAULT NULL 
;

-- Jun 28, 2014 11:50:40 AM BRT
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,AD_Client_ID,ColumnSpan,AD_Column_ID,Created) VALUES ('N',1000086,1,'N','N',120,'Y',1001702,'N','LBR','Process Now','83dc4e31-ed71-4ab3-9458-995e1a076974','N','Y',0,0,0,TO_DATE('2014-06-28 11:50:40','YYYY-MM-DD HH24:MI:SS'),'Y','Y',10,2,0,2,1000957,TO_DATE('2014-06-28 11:50:40','YYYY-MM-DD HH24:MI:SS'))
;

-- Jun 28, 2014 11:59:29 AM BRT
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2014-06-28 11:59:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000000
;

-- Jun 28, 2014 12:18:18 PM BRT
UPDATE AD_Process_Para SET DefaultValue=NULL,Updated=TO_DATE('2014-06-28 12:18:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1000000
;

SELECT lbr_register_migration_script('201406281637.sql') FROM dual
;
SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jul 9, 2014 9:08:36 AM BRT
-- Process for generating DANFE
INSERT INTO AD_Process (CopyFromProcess,AD_Process_ID,IsDirectPrint,IsReport,AD_Process_UU,AccessLevel,IsBetaFunctionality,IsServerProcess,Statistic_Seconds,Statistic_Count,ShowHelp,EntityType,Description,Name,AD_Org_ID,UpdatedBy,IsActive,CreatedBy,Classname,Value,AD_Client_ID,Created,Updated) VALUES ('N',1000009,'N','N','8d99f496-dfa0-4f36-890c-790a6ddcb3a4','3','N','N',57,39,'N','LBR','Generate DANFE','Generate DANFE',0,0,'Y',0,'org.idempierelbr.nfe.process.GenerateDanfe','LBR_ProcGenerateDanfe',0,TO_DATE('2014-07-09 09:08:36','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2014-07-09 09:08:36','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 9, 2014 9:10:03 AM BRT
UPDATE AD_Process SET IsReport='Y',Updated=TO_DATE('2014-07-09 09:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1000009
;

-- Jul 9, 2014 9:11:03 AM BRT
UPDATE AD_Tab SET AD_Process_ID=1000009,Updated=TO_DATE('2014-07-09 09:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1000068
;

SELECT lbr_register_migration_script('201407090955.sql') FROM dual
;

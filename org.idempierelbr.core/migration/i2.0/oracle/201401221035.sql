SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jan 22, 2014 10:19:52 AM BRST
-- Ajuste em tamanho de campos para tradução correta, e inserção de mensagens do sistema
UPDATE AD_Menu SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-01-22 10:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=53363
;

-- Jan 22, 2014 10:23:12 AM BRST
UPDATE AD_Column SET FieldLength=255,Updated=TO_DATE('2014-01-22 10:23:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=149
;

-- Jan 22, 2014 10:23:19 AM BRST
ALTER TABLE AD_Ref_List MODIFY Name VARCHAR2(255)
;

-- Jan 22, 2014 10:24:25 AM BRST
UPDATE AD_Column SET FieldLength=255,Updated=TO_DATE('2014-01-22 10:24:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=338
;

-- Jan 22, 2014 10:24:31 AM BRST
ALTER TABLE AD_Ref_List_Trl MODIFY Name VARCHAR2(255)
;

-- Jan 22, 2014 10:26:13 AM BRST
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Client_ID,AD_Org_ID) VALUES ('I','Find Address by ZIP',1000000,'LBR','491fb7c0-ade3-48f4-b346-60ac3292d4f0','LBR_QueryCEPZIP','Y',TO_DATE('2014-01-22 10:26:13','YYYY-MM-DD HH24:MI:SS'),0,0,TO_DATE('2014-01-22 10:26:13','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Jan 22, 2014 10:28:38 AM BRST
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,EntityType,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Client_ID,AD_Org_ID) VALUES ('I','NCM already exists for client/organization',1000001,'LBR','216494c0-7540-4184-a938-8294f7d2274a','LBR_NCMAlreadyExist','Y',TO_DATE('2014-01-22 10:28:38','YYYY-MM-DD HH24:MI:SS'),0,0,TO_DATE('2014-01-22 10:28:38','YYYY-MM-DD HH24:MI:SS'),0,0)
;

SELECT lbr_register_migration_script('201401221035.sql') FROM dual
;

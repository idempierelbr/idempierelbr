-- 02/01/2014 17h51min16s BRST
-- Inclusão dos campos CNPJ, CPF na Info BPartner
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID,AD_Reference_Value_ID) VALUES ('Used to identify if the Business Partner is a Legal Entity or an Individual',190,'cc9ece76-92b6-47e7-be10-c0a3ce4c5a43',1000000,'Y','LBR','Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)',TO_TIMESTAMP('2014-01-02 17:51:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-02 17:51:16','YYYY-MM-DD HH24:MI:SS'),0,0,'Brazilian BP Type','Y','LBR_BPTypeBR','Y','Y','=','bp.LBR_BPTypeBR',0,'N',0,1000003,200001,17,1000001)
;

-- 02/01/2014 17h59min1s BRST
UPDATE AD_InfoColumn SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-01-02 17:59:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=1000000
;

-- 02/01/2014 17h59min40s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID) VALUES ('Used to identify Legal Entities in Brazil',200,'c90fadcf-dba7-4d04-a711-8fbc6486e820',1000001,'Y','LBR','Used to identify Legal Entities in Brazil',TO_TIMESTAMP('2014-01-02 17:59:40','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-02 17:59:40','YYYY-MM-DD HH24:MI:SS'),0,0,'CNPJ','Y','LBR_CNPJ','Y','Y','Like','bp.LBR_CNPJ',0,'N',0,1000004,200001,10)
;

-- 02/01/2014 18h0min7s BRST
INSERT INTO AD_InfoColumn (Help,SeqNo,AD_InfoColumn_UU,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,QueryOperator,SelectClause,SeqNoSelection,IsIdentifier,AD_Client_ID,AD_Element_ID,AD_InfoWindow_ID,AD_Reference_ID) VALUES ('Used to identify individuals in Brazil',210,'a2ec509b-e082-4075-89eb-803fa4c5956e',1000002,'Y','LBR','Used to identify individuals in Brazil',TO_TIMESTAMP('2014-01-02 18:00:07','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2014-01-02 18:00:07','YYYY-MM-DD HH24:MI:SS'),0,0,'CPF','Y','LBR_CPF','Y','Y','Like','bp.LBR_CPF',0,'N',0,1000005,200001,10)
;

UPDATE AD_InfoColumn SET DisplayLogic='@LBR_BPTypeBR@!''PF''',Updated=TO_TIMESTAMP('2014-01-02 18:40:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=1000001
;

-- 02/01/2014 18h40min31s BRST
UPDATE AD_InfoColumn SET DisplayLogic='@LBR_BPTypeBR@!''PJ''',Updated=TO_TIMESTAMP('2014-01-02 18:40:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_InfoColumn_ID=1000002
;

SELECT lbr_register_migration_script('201401021800.sql') FROM dual
;
-- 04/01/2014 9h27min32s BRST
-- Ajuste na visualização dos campos para quem utiliza LBR_USE_UNIFIED_BP e criação do registro de configuração
UPDATE AD_Field SET DisplayLogic='@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_TIMESTAMP('2014-01-04 09:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000008
;

-- 04/01/2014 9h27min57s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y'' | @LBR_BPTypeBR@=''PF''',Updated=TO_TIMESTAMP('2014-01-04 09:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000010
;

-- 04/01/2014 9h44min27s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y'' | @LBR_BPTypeBR@=''PF'' & @LBR_IsIEExempt@=''N''',Updated=TO_TIMESTAMP('2014-01-04 09:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000009
;

-- 04/01/2014 10h1min40s BRST
INSERT INTO AD_SysConfig (AD_SysConfig_ID,ConfigurationLevel,Value,Description,AD_SysConfig_UU,Created,Updated,AD_Org_ID,CreatedBy,IsActive,UpdatedBy,Name,AD_Client_ID,EntityType) VALUES (1000000,'C','N','Permite cadastrar filiais na aba Localização (PN) ao invés de criar um novo PN','694bcf92-692a-4f69-8623-729a7e7592b1',TO_TIMESTAMP('2014-01-04 10:01:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2014-01-04 10:01:40','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0,'LBR_USE_UNIFIED_BP',0,'LBR')
;

SELECT lbr_register_migration_script('201401040946.sql') FROM dual
;


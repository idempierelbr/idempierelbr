SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 05/06/2016 19h39min58s BRT
UPDATE AD_Column SET VFormat=NULL,Updated=TO_DATE('2016-06-05 19:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1000114
;

-- 05/06/2016 19h40min7s BRT
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,LBR_HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxName_UU,Name,LBR_TaxType,LBR_WithHoldFrequency,Updated,UpdatedBy,WithHoldThreshold) VALUES (0,0,TO_DATE('2016-06-05 19:40:07','YYYY-MM-DD HH24:MI:SS'),0,'Indicador da Alíquota do Fundo de Combate a Pobreza - ESPECIAL ** Não Alterar **','N','Y',1000016,'34dbaf6e-4b7f-4d94-a3e6-e6b376452348','FCP','P','M',TO_DATE('2016-06-05 19:40:07','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- BUG FIX - DIFAL / IE - COLUMN LBR_IsIEExempt at C_BPartnerLocation with Print Format 
DELETE FROM AD_PrintFormatItem WHERE AD_Column_ID = 1000016;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000016;
DELETE FROM AD_Column WHERE AD_Column_ID=1000016;

SELECT lbr_register_migration_script('201606051900-FCP.sql') FROM dual;